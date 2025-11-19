@interface HolidayCalDaemonAccount
- (BOOL)_hasCorrectLocaleInCalendar:(id)a3;
- (BOOL)monitorFoldersWithIDs:(id)a3;
- (NSString)language;
- (NSString)region;
- (id)_holidayCalendarInEventStore:(id)a3;
- (id)_lastRefreshDateInCalendar:(id)a3;
- (id)stateString;
- (int)holidayCalendarURLVersion;
- (void)_fetchUpdatedSubscriptionURL;
- (void)_handleCalendarSearchResults:(id)a3;
- (void)_localeDidChange:(id)a3;
- (void)_reallyRemoveHolidaySubscribedCalendar;
- (void)_refresh:(BOOL)a3;
- (void)_refreshTimerFired:(id)a3;
- (void)_removeHolidaySubscribedCalendar;
- (void)_saveHolidayCalMetadata;
- (void)_setCurrentLanguageAndLocaleInCalendar:(id)a3;
- (void)_setLastRefreshDate:(id)a3 inCalendar:(id)a4;
- (void)_tearDownRefreshTimer;
- (void)_unregisterForNotifications;
- (void)dealloc;
- (void)stopMonitoringFolders;
- (void)subCalRefreshTask:(id)a3 finishedWithError:(id)a4;
@end

@implementation HolidayCalDaemonAccount

- (void)_unregisterForNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];
}

- (void)_tearDownRefreshTimer
{
  [(NSTimer *)self->_refreshTimer invalidate];
  refreshTimer = self->_refreshTimer;
  self->_refreshTimer = 0;
}

- (void)dealloc
{
  [(HolidayCalDaemonAccount *)self _unregisterForNotifications];
  [(HolidayCalDaemonAccount *)self _tearDownRefreshTimer];
  [(HolidayCalDaemonAccount *)self setSearchTask:0];
  v3 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v3 unregisterWaiterForDataclassLocks:self];

  v4.receiver = self;
  v4.super_class = HolidayCalDaemonAccount;
  [(HolidayCalDaemonAccount *)&v4 dealloc];
}

- (NSString)language
{
  v2 = +[NSLocale preferredLanguages];
  v3 = [v2 count];

  if (v3)
  {
    v4 = +[NSLocale preferredLanguages];
    v5 = [v4 objectAtIndex:0];
  }

  else
  {
    v5 = &stru_1C8E8;
  }

  return v5;
}

- (NSString)region
{
  v2 = +[NSLocale autoupdatingCurrentLocale];
  v3 = [v2 objectForKey:NSLocaleCountryCode];

  return v3;
}

- (BOOL)_hasCorrectLocaleInCalendar:(id)a3
{
  v4 = [a3 externalRepresentation];
  v5 = [CalSubscribedCalendarExternalRepresentation dictionaryWithExternalRepresentationData:v4];
  v6 = [CalSubscribedCalendarExternalRepresentation lastHolidayLanguageFromDictionary:v5];
  v7 = [CalSubscribedCalendarExternalRepresentation lastHolidayRegionFromDictionary:v5];
  v8 = [(HolidayCalDaemonAccount *)self language];
  v9 = [(HolidayCalDaemonAccount *)self region];
  if ([v8 isEqual:v6] && (objc_msgSend(v9, "isEqual:", v7) & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v11, v12))
    {
      v13 = [(HolidayCalDaemonAccount *)self accountID];
      v14 = [(HolidayCalDaemonAccount *)self subscriptionURL];
      v18 = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_0, v11, v12, "Could not retrieve Language or Region for the Holiday Calendar AccountID %{public}@ with Subscription-URL %{public}@", &v18, 0x16u);
    }

    if (([v8 isEqual:v6] & 1) == 0)
    {
      v15 = DALoggingwithCategory();
      if (os_log_type_enabled(v15, v12))
      {
        v18 = 138412546;
        v19 = v8;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_0, v15, v12, "Language mismatch. currentLanguage = %@ | existingLanguage = %@", &v18, 0x16u);
      }
    }

    if (([v9 isEqual:v7] & 1) == 0)
    {
      v16 = DALoggingwithCategory();
      if (os_log_type_enabled(v16, v12))
      {
        v18 = 138412546;
        v19 = v9;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_0, v16, v12, "Region mismatch. currentRegion = %@ | existingRegion = %@", &v18, 0x16u);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (int)holidayCalendarURLVersion
{
  v2 = [(HolidayCalDaemonAccount *)self objectForKeyedSubscript:@"HolidayCalURLVersion"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 intValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_reallyRemoveHolidaySubscribedCalendar
{
  v3 = [(SubCalDaemonAccount *)self changeTrackingID];
  v4 = [SubCalLocalDBHelper eventStoreWithClientId:v3];

  v5 = [(HolidayCalDaemonAccount *)self _holidayCalendarInEventStore:v4];
  if (v5)
  {
    v11 = 0;
    v6 = [v4 removeCalendar:v5 commit:1 error:&v11];
    v7 = v11;
    if ((v6 & 1) == 0)
    {
      v8 = DALoggingwithCategory();
      v9 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&dword_0, v8, v9, "Could not remove calendar from store. Error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v7, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, v10, "Removing nil calendar in _reallyRemoveHolidaySubscribedCalendar", buf, 2u);
    }
  }
}

- (void)_removeHolidaySubscribedCalendar
{
  v3 = objc_opt_new();
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [v3 transactionId];
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_0, v4, v5, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v7 = +[DALocalDBGateKeeper sharedGateKeeper];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_B7B8;
  v9[3] = &unk_1C630;
  v9[4] = self;
  v10 = v3;
  v8 = v3;
  [v7 registerWaiter:self forDataclassLocks:4 completionHandler:v9];
}

- (void)_handleCalendarSearchResults:(id)a3
{
  v73 = a3;
  if (v73)
  {
    v4 = DALoggingwithCategory();
    v5 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v4, v5))
    {
      v6 = [(HolidayCalDaemonAccount *)self region];
      v7 = [(HolidayCalDaemonAccount *)self language];
      *buf = 138543874;
      v92 = v73;
      v93 = 2114;
      v94 = v6;
      v95 = 2114;
      v96 = v7;
      _os_log_impl(&dword_0, v4, v5, "Found the following holiday calendars: %{public}@.\nSearching for a calendar that matches %{public}@/%{public}@", buf, 0x20u);
    }

    type = v5;

    v8 = [v73 allKeys];
    v9 = [v8 mutableCopy];

    v66 = +[NSMutableArray array];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v84 objects:v90 count:16];
    v65 = self;
    if (v10)
    {
      v11 = v10;
      v12 = *v85;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v85 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v84 + 1) + 8 * i);
          v15 = [v73 objectForKey:v14];
          v16 = [v15 region];
          v17 = [v16 payloadAsString];

          v18 = [(HolidayCalDaemonAccount *)self region];
          v19 = [v17 isEqualToString:v18];

          if ((v19 & 1) == 0)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, type))
            {
              v21 = [v14 absoluteString];
              v22 = [(HolidayCalDaemonAccount *)self region];
              *buf = 138543618;
              v92 = v21;
              v93 = 2114;
              v94 = v22;
              _os_log_impl(&dword_0, v20, type, "Removing %{public}@, since our locale is %{public}@", buf, 0x16u);

              self = v65;
            }

            [v66 addObject:v14];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v84 objects:v90 count:16];
      }

      while (v11);
    }

    [obj removeObjectsInArray:v66];
    if ([obj count])
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v61 = +[NSLocale preferredLanguages];
      v63 = [v61 countByEnumeratingWithState:&v80 objects:v89 count:16];
      if (v63)
      {
        v71 = 0;
        v62 = *v81;
        v23 = -1;
        while (2)
        {
          for (j = 0; j != v63; j = j + 1)
          {
            if (*v81 != v62)
            {
              objc_enumerationMutation(v61);
            }

            v25 = [*(*(&v80 + 1) + 8 * j) lowercaseString];
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v26 = obj;
            v27 = [v26 countByEnumeratingWithState:&v76 objects:v88 count:16];
            if (v27)
            {
              v28 = v27;
              v69 = v25;
              v70 = v26;
              v64 = j;
              v72 = 0;
              v29 = *v77;
              do
              {
                for (k = 0; k != v28; k = k + 1)
                {
                  if (*v77 != v29)
                  {
                    objc_enumerationMutation(v70);
                  }

                  v31 = *(*(&v76 + 1) + 8 * k);
                  v32 = [v73 objectForKey:v31];
                  v33 = [v32 language];
                  v34 = [v33 payloadAsString];
                  v35 = [v34 lowercaseString];

                  v36 = [v32 rank];
                  v37 = [v36 payloadAsString];
                  v38 = [v37 intValue];

                  if (v38 > v23 && (([v69 isEqualToString:v35] & 1) != 0 || objc_msgSend(v69, "hasPrefix:", v35) && objc_msgSend(v69, "rangeOfString:", @"-") != 0x7FFFFFFFFFFFFFFFLL))
                  {
                    v39 = v31;

                    v40 = [v32 calendarDescription];
                    v41 = [v40 payloadAsString];

                    v23 = v38;
                    v71 = v41;
                    v72 = v39;
                  }
                }

                v28 = [v70 countByEnumeratingWithState:&v76 objects:v88 count:16];
              }

              while (v28);

              if (v72)
              {

                v42 = DALoggingwithCategory();
                self = v65;
                if (os_log_type_enabled(v42, type))
                {
                  *buf = 138543362;
                  v92 = v72;
                  _os_log_impl(&dword_0, v42, type, "Matching subscription URL found at %{public}@", buf, 0xCu);
                }

                v43 = [v72 scheme];
                v44 = [v43 lowercaseString];
                -[HolidayCalDaemonAccount setUseSSL:](v65, "setUseSSL:", [v44 isEqualToString:@"https"]);

                v45 = [v72 host];
                [(HolidayCalDaemonAccount *)v65 setHost:v45];

                v46 = [v72 port];
                -[HolidayCalDaemonAccount setPort:](v65, "setPort:", [v46 intValue]);

                v47 = [v72 relativePath];
                [(HolidayCalDaemonAccount *)v65 setPrincipalPath:v47];

                [(HolidayCalDaemonAccount *)v65 setAccountDescription:v71];
                goto LABEL_48;
              }

              j = v64;
              self = v65;
            }

            else
            {
            }
          }

          v63 = [v61 countByEnumeratingWithState:&v80 objects:v89 count:16];
          if (v63)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v71 = 0;
      }
    }
  }

  v48 = DALoggingwithCategory();
  v49 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v48, v49))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v48, v49, "Couldn't find any matching subscription calendars. Removing the one we have", buf, 2u);
  }

  [(HolidayCalDaemonAccount *)self setHost:0];
  [(HolidayCalDaemonAccount *)self setPrincipalPath:0];
LABEL_48:
  if ([(HolidayCalDaemonAccount *)self holidayCalendarURLVersion]!= 1)
  {
    [(HolidayCalDaemonAccount *)self setHolidayCalendarURLVersion:1];
  }

  v75 = 0;
  v50 = [(HolidayCalDaemonAccount *)self saveAccountPropertiesWithError:&v75];
  v51 = v75;
  v52 = v51;
  if (!v50 || v51)
  {
    v53 = DALoggingwithCategory();
    v54 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v53, v54))
    {
      *buf = 138412290;
      v92 = v52;
      _os_log_impl(&dword_0, v53, v54, "Error when saving holiday calendar account properties. Error = %@", buf, 0xCu);
    }
  }

  v55 = [(HolidayCalDaemonAccount *)self subscriptionURL];

  if (v55)
  {
    v56 = [(HolidayCalDaemonAccount *)self taskManager];
    v57 = [v56 isShutdown];

    if ((v57 & 1) == 0)
    {
      v58 = dataaccess_get_global_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_C15C;
      block[3] = &unk_1C4E0;
      block[4] = self;
      dispatch_async(v58, block);
    }
  }

  else
  {
    v59 = DALoggingwithCategory();
    v60 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v59, v60))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v59, v60, "Couldn't find a holiday calendar URL. Cleaning up.", buf, 2u);
    }

    [(HolidayCalDaemonAccount *)self _removeHolidaySubscribedCalendar];
  }
}

- (void)_fetchUpdatedSubscriptionURL
{
  v3 = +[DABehaviorOptions holidayCalendarURL];
  v4 = [CalDAVCalendarSearchTask alloc];
  v5 = [(HolidayCalDaemonAccount *)self language];
  v26 = v5;
  v6 = [NSArray arrayWithObjects:&v26 count:1];
  v7 = [(HolidayCalDaemonAccount *)self region];
  v8 = [v4 initWithLanguages:v6 location:v7 calendarType:@"Holiday" url:v3];

  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v9, v10))
  {
    v11 = [(HolidayCalDaemonAccount *)self region];
    v12 = [(HolidayCalDaemonAccount *)self language];
    *buf = 138544130;
    v19 = v3;
    v20 = 2114;
    v21 = v11;
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_0, v9, v10, "Fetching an updated subscription URL from %{public}@. Current locale is %{public}@ and language is %{public}@. Request is %{public}@", buf, 0x2Au);
  }

  [v8 setAccountInfoProvider:self];
  [(HolidayCalDaemonAccount *)self setSearchTask:v8];
  objc_initWeak(buf, v8);
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_C450;
  v14[3] = &unk_1C680;
  objc_copyWeak(&v15, buf);
  objc_copyWeak(&v16, &location);
  [v8 setCompletionBlock:v14];
  v13 = [(HolidayCalDaemonAccount *)self taskManager];
  [v13 submitIndependentTask:v8];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (void)_refresh:(BOOL)a3
{
  v5 = [[DAActivity alloc] initWithAccount:self];
  v6 = +[DALocalDBGateKeeper sharedGateKeeper];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_C94C;
  v8[3] = &unk_1C6A8;
  v10 = a3;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 registerWaiter:self forDataclassLocks:4 completionHandler:v8];
}

- (id)_holidayCalendarInEventStore:(id)a3
{
  v4 = [a3 sourceWithExternalID:kSubCalCalendarStoreExternalId];
  v5 = [(HolidayCalDaemonAccount *)self calendarExternalId];
  v6 = [v4 calendarWithExternalIdentifier:v5];

  return v6;
}

- (id)_lastRefreshDateInCalendar:(id)a3
{
  lastRefreshDate = self->_lastRefreshDate;
  if (lastRefreshDate)
  {
    v4 = lastRefreshDate;
  }

  else
  {
    v6 = [a3 externalModificationTag];
    if ([v6 length])
    {
      [v6 doubleValue];
      v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v8 = self->_lastRefreshDate;
      self->_lastRefreshDate = v7;

      v9 = self->_lastRefreshDate;
    }

    else
    {
      v9 = +[NSDate distantPast];
    }

    v4 = v9;
  }

  return v4;
}

- (void)_setLastRefreshDate:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSDate *)v6 timeIntervalSinceReferenceDate];
  v9 = [NSString stringWithFormat:@"%lf", v8];
  lastRefreshDate = self->_lastRefreshDate;
  self->_lastRefreshDate = v6;

  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 138543362;
    v14 = v9;
    _os_log_impl(&dword_0, v11, v12, "Setting last holiday calendar refresh time to %{public}@", buf, 0xCu);
  }

  [v7 setExternalModificationTag:v9];
}

- (void)_setCurrentLanguageAndLocaleInCalendar:(id)a3
{
  v4 = a3;
  v5 = [v4 externalRepresentation];
  v6 = [CalSubscribedCalendarExternalRepresentation dictionaryWithExternalRepresentationData:v5];
  v7 = [(HolidayCalDaemonAccount *)self language];
  [CalSubscribedCalendarExternalRepresentation setLastHolidayLanguage:v7 inDictionary:v6];

  v8 = [(HolidayCalDaemonAccount *)self region];
  [CalSubscribedCalendarExternalRepresentation setLastHolidayRegion:v8 inDictionary:v6];

  v9 = [CalSubscribedCalendarExternalRepresentation externalRepresentationDataWithDictionary:v6];

  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, v11))
  {
    v12 = [(HolidayCalDaemonAccount *)self region];
    v13 = [(HolidayCalDaemonAccount *)self language];
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    _os_log_impl(&dword_0, v10, v11, "Saving current locale (%{public}@) and language (%{public}@)", &v14, 0x16u);
  }

  [v4 setExternalRepresentation:v9];
}

- (void)_saveHolidayCalMetadata
{
  v3 = objc_opt_new();
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [v3 transactionId];
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_0, v4, v5, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v7 = +[DALocalDBGateKeeper sharedGateKeeper];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_CFA4;
  v9[3] = &unk_1C630;
  v9[4] = self;
  v10 = v3;
  v8 = v3;
  [v7 registerWaiter:self forDataclassLocks:4 completionHandler:v9];
}

- (void)_refreshTimerFired:(id)a3
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v4, v5))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Refresh timer fired.", v6, 2u);
  }

  [(HolidayCalDaemonAccount *)self _refresh:0];
}

- (void)subCalRefreshTask:(id)a3 finishedWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(HolidayCalDaemonAccount *)self _tearDownRefreshTimer];
  +[DABehaviorOptions holidayCalendarRefreshInterval];
  v9 = [NSTimer timerWithTimeInterval:self target:"_refreshTimerFired:" selector:0 userInfo:0 repeats:v8 + 1.0];
  refreshTimer = self->_refreshTimer;
  self->_refreshTimer = v9;

  v11 = +[NSRunLoop mainRunLoop];
  [v11 addTimer:self->_refreshTimer forMode:NSRunLoopCommonModes];

  if (!v7)
  {
    [(HolidayCalDaemonAccount *)self _saveHolidayCalMetadata];
  }

  v12.receiver = self;
  v12.super_class = HolidayCalDaemonAccount;
  [(SubCalDaemonAccount *)&v12 subCalRefreshTask:v6 finishedWithError:v7];
}

- (void)_localeDidChange:(id)a3
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v4, v5))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "The current locale changed. Refreshing our holiday calendar", v6, 2u);
  }

  [(HolidayCalDaemonAccount *)self _refresh:1];
}

- (BOOL)monitorFoldersWithIDs:(id)a3
{
  v4 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_localeDidChange:" name:NSCurrentLocaleDidChangeNotification object:0];

  v7.receiver = self;
  v7.super_class = HolidayCalDaemonAccount;
  LOBYTE(self) = [(SubCalDaemonAccount *)&v7 monitorFoldersWithIDs:v4];

  return self;
}

- (void)stopMonitoringFolders
{
  [(HolidayCalDaemonAccount *)self _unregisterForNotifications];
  [(HolidayCalDaemonAccount *)self _tearDownRefreshTimer];
  v3.receiver = self;
  v3.super_class = HolidayCalDaemonAccount;
  [(SubCalDaemonAccount *)&v3 stopMonitoringFolders];
}

- (id)stateString
{
  v10.receiver = self;
  v10.super_class = HolidayCalDaemonAccount;
  v3 = [(HolidayCalDaemonAccount *)&v10 stateString];
  v4 = [(HolidayCalDaemonAccount *)self region];
  v5 = [(HolidayCalDaemonAccount *)self language];
  v6 = [(HolidayCalDaemonAccount *)self principalPath];
  v7 = [v6 da_removeSlashIfNeeded];

  v8 = [NSString stringWithFormat:@"Holiday account\ncurrent region = %@\ncurrent language = %@\nsubscribed path = %@\n%@\n", v4, v5, v7, v3];

  return v8;
}

@end