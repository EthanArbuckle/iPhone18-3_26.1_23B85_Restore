@interface HolidayCalDaemonAccount
- (BOOL)_hasCorrectLocaleInCalendar:(id)calendar;
- (BOOL)monitorFoldersWithIDs:(id)ds;
- (NSString)language;
- (NSString)region;
- (id)_holidayCalendarInEventStore:(id)store;
- (id)_lastRefreshDateInCalendar:(id)calendar;
- (id)stateString;
- (int)holidayCalendarURLVersion;
- (void)_fetchUpdatedSubscriptionURL;
- (void)_handleCalendarSearchResults:(id)results;
- (void)_localeDidChange:(id)change;
- (void)_reallyRemoveHolidaySubscribedCalendar;
- (void)_refresh:(BOOL)_refresh;
- (void)_refreshTimerFired:(id)fired;
- (void)_removeHolidaySubscribedCalendar;
- (void)_saveHolidayCalMetadata;
- (void)_setCurrentLanguageAndLocaleInCalendar:(id)calendar;
- (void)_setLastRefreshDate:(id)date inCalendar:(id)calendar;
- (void)_tearDownRefreshTimer;
- (void)_unregisterForNotifications;
- (void)dealloc;
- (void)stopMonitoringFolders;
- (void)subCalRefreshTask:(id)task finishedWithError:(id)error;
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

- (BOOL)_hasCorrectLocaleInCalendar:(id)calendar
{
  externalRepresentation = [calendar externalRepresentation];
  v5 = [CalSubscribedCalendarExternalRepresentation dictionaryWithExternalRepresentationData:externalRepresentation];
  v6 = [CalSubscribedCalendarExternalRepresentation lastHolidayLanguageFromDictionary:v5];
  v7 = [CalSubscribedCalendarExternalRepresentation lastHolidayRegionFromDictionary:v5];
  language = [(HolidayCalDaemonAccount *)self language];
  region = [(HolidayCalDaemonAccount *)self region];
  if ([language isEqual:v6] && (objc_msgSend(region, "isEqual:", v7) & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v11, v12))
    {
      accountID = [(HolidayCalDaemonAccount *)self accountID];
      subscriptionURL = [(HolidayCalDaemonAccount *)self subscriptionURL];
      v18 = 138543618;
      v19 = accountID;
      v20 = 2114;
      v21 = subscriptionURL;
      _os_log_impl(&dword_0, v11, v12, "Could not retrieve Language or Region for the Holiday Calendar AccountID %{public}@ with Subscription-URL %{public}@", &v18, 0x16u);
    }

    if (([language isEqual:v6] & 1) == 0)
    {
      v15 = DALoggingwithCategory();
      if (os_log_type_enabled(v15, v12))
      {
        v18 = 138412546;
        v19 = language;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_0, v15, v12, "Language mismatch. currentLanguage = %@ | existingLanguage = %@", &v18, 0x16u);
      }
    }

    if (([region isEqual:v7] & 1) == 0)
    {
      v16 = DALoggingwithCategory();
      if (os_log_type_enabled(v16, v12))
      {
        v18 = 138412546;
        v19 = region;
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
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)_reallyRemoveHolidaySubscribedCalendar
{
  changeTrackingID = [(SubCalDaemonAccount *)self changeTrackingID];
  v4 = [SubCalLocalDBHelper eventStoreWithClientId:changeTrackingID];

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
    transactionId = [v3 transactionId];
    *buf = 138543362;
    v12 = transactionId;
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

- (void)_handleCalendarSearchResults:(id)results
{
  resultsCopy = results;
  if (resultsCopy)
  {
    v4 = DALoggingwithCategory();
    v5 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v4, v5))
    {
      region = [(HolidayCalDaemonAccount *)self region];
      language = [(HolidayCalDaemonAccount *)self language];
      *buf = 138543874;
      v92 = resultsCopy;
      v93 = 2114;
      v94 = region;
      v95 = 2114;
      v96 = language;
      _os_log_impl(&dword_0, v4, v5, "Found the following holiday calendars: %{public}@.\nSearching for a calendar that matches %{public}@/%{public}@", buf, 0x20u);
    }

    type = v5;

    allKeys = [resultsCopy allKeys];
    v9 = [allKeys mutableCopy];

    v66 = +[NSMutableArray array];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v84 objects:v90 count:16];
    selfCopy = self;
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
          v15 = [resultsCopy objectForKey:v14];
          region2 = [v15 region];
          payloadAsString = [region2 payloadAsString];

          region3 = [(HolidayCalDaemonAccount *)self region];
          v19 = [payloadAsString isEqualToString:region3];

          if ((v19 & 1) == 0)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, type))
            {
              absoluteString = [v14 absoluteString];
              region4 = [(HolidayCalDaemonAccount *)self region];
              *buf = 138543618;
              v92 = absoluteString;
              v93 = 2114;
              v94 = region4;
              _os_log_impl(&dword_0, v20, type, "Removing %{public}@, since our locale is %{public}@", buf, 0x16u);

              self = selfCopy;
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

            lowercaseString = [*(*(&v80 + 1) + 8 * j) lowercaseString];
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v26 = obj;
            v27 = [v26 countByEnumeratingWithState:&v76 objects:v88 count:16];
            if (v27)
            {
              v28 = v27;
              v69 = lowercaseString;
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
                  v32 = [resultsCopy objectForKey:v31];
                  language2 = [v32 language];
                  payloadAsString2 = [language2 payloadAsString];
                  lowercaseString2 = [payloadAsString2 lowercaseString];

                  rank = [v32 rank];
                  payloadAsString3 = [rank payloadAsString];
                  intValue = [payloadAsString3 intValue];

                  if (intValue > v23 && (([v69 isEqualToString:lowercaseString2] & 1) != 0 || objc_msgSend(v69, "hasPrefix:", lowercaseString2) && objc_msgSend(v69, "rangeOfString:", @"-") != 0x7FFFFFFFFFFFFFFFLL))
                  {
                    v39 = v31;

                    calendarDescription = [v32 calendarDescription];
                    payloadAsString4 = [calendarDescription payloadAsString];

                    v23 = intValue;
                    v71 = payloadAsString4;
                    v72 = v39;
                  }
                }

                v28 = [v70 countByEnumeratingWithState:&v76 objects:v88 count:16];
              }

              while (v28);

              if (v72)
              {

                v42 = DALoggingwithCategory();
                self = selfCopy;
                if (os_log_type_enabled(v42, type))
                {
                  *buf = 138543362;
                  v92 = v72;
                  _os_log_impl(&dword_0, v42, type, "Matching subscription URL found at %{public}@", buf, 0xCu);
                }

                scheme = [v72 scheme];
                lowercaseString3 = [scheme lowercaseString];
                -[HolidayCalDaemonAccount setUseSSL:](selfCopy, "setUseSSL:", [lowercaseString3 isEqualToString:@"https"]);

                host = [v72 host];
                [(HolidayCalDaemonAccount *)selfCopy setHost:host];

                port = [v72 port];
                -[HolidayCalDaemonAccount setPort:](selfCopy, "setPort:", [port intValue]);

                relativePath = [v72 relativePath];
                [(HolidayCalDaemonAccount *)selfCopy setPrincipalPath:relativePath];

                [(HolidayCalDaemonAccount *)selfCopy setAccountDescription:v71];
                goto LABEL_48;
              }

              j = v64;
              self = selfCopy;
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

  subscriptionURL = [(HolidayCalDaemonAccount *)self subscriptionURL];

  if (subscriptionURL)
  {
    taskManager = [(HolidayCalDaemonAccount *)self taskManager];
    isShutdown = [taskManager isShutdown];

    if ((isShutdown & 1) == 0)
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
  language = [(HolidayCalDaemonAccount *)self language];
  v26 = language;
  v6 = [NSArray arrayWithObjects:&v26 count:1];
  region = [(HolidayCalDaemonAccount *)self region];
  v8 = [v4 initWithLanguages:v6 location:region calendarType:@"Holiday" url:v3];

  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v9, v10))
  {
    region2 = [(HolidayCalDaemonAccount *)self region];
    language2 = [(HolidayCalDaemonAccount *)self language];
    *buf = 138544130;
    v19 = v3;
    v20 = 2114;
    v21 = region2;
    v22 = 2114;
    v23 = language2;
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
  taskManager = [(HolidayCalDaemonAccount *)self taskManager];
  [taskManager submitIndependentTask:v8];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (void)_refresh:(BOOL)_refresh
{
  v5 = [[DAActivity alloc] initWithAccount:self];
  v6 = +[DALocalDBGateKeeper sharedGateKeeper];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_C94C;
  v8[3] = &unk_1C6A8;
  _refreshCopy = _refresh;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 registerWaiter:self forDataclassLocks:4 completionHandler:v8];
}

- (id)_holidayCalendarInEventStore:(id)store
{
  v4 = [store sourceWithExternalID:kSubCalCalendarStoreExternalId];
  calendarExternalId = [(HolidayCalDaemonAccount *)self calendarExternalId];
  v6 = [v4 calendarWithExternalIdentifier:calendarExternalId];

  return v6;
}

- (id)_lastRefreshDateInCalendar:(id)calendar
{
  lastRefreshDate = self->_lastRefreshDate;
  if (lastRefreshDate)
  {
    v4 = lastRefreshDate;
  }

  else
  {
    externalModificationTag = [calendar externalModificationTag];
    if ([externalModificationTag length])
    {
      [externalModificationTag doubleValue];
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

- (void)_setLastRefreshDate:(id)date inCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  [(NSDate *)dateCopy timeIntervalSinceReferenceDate];
  v9 = [NSString stringWithFormat:@"%lf", v8];
  lastRefreshDate = self->_lastRefreshDate;
  self->_lastRefreshDate = dateCopy;

  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 138543362;
    v14 = v9;
    _os_log_impl(&dword_0, v11, v12, "Setting last holiday calendar refresh time to %{public}@", buf, 0xCu);
  }

  [calendarCopy setExternalModificationTag:v9];
}

- (void)_setCurrentLanguageAndLocaleInCalendar:(id)calendar
{
  calendarCopy = calendar;
  externalRepresentation = [calendarCopy externalRepresentation];
  v6 = [CalSubscribedCalendarExternalRepresentation dictionaryWithExternalRepresentationData:externalRepresentation];
  language = [(HolidayCalDaemonAccount *)self language];
  [CalSubscribedCalendarExternalRepresentation setLastHolidayLanguage:language inDictionary:v6];

  region = [(HolidayCalDaemonAccount *)self region];
  [CalSubscribedCalendarExternalRepresentation setLastHolidayRegion:region inDictionary:v6];

  v9 = [CalSubscribedCalendarExternalRepresentation externalRepresentationDataWithDictionary:v6];

  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, v11))
  {
    region2 = [(HolidayCalDaemonAccount *)self region];
    language2 = [(HolidayCalDaemonAccount *)self language];
    v14 = 138543618;
    v15 = region2;
    v16 = 2114;
    v17 = language2;
    _os_log_impl(&dword_0, v10, v11, "Saving current locale (%{public}@) and language (%{public}@)", &v14, 0x16u);
  }

  [calendarCopy setExternalRepresentation:v9];
}

- (void)_saveHolidayCalMetadata
{
  v3 = objc_opt_new();
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, v5))
  {
    transactionId = [v3 transactionId];
    *buf = 138543362;
    v12 = transactionId;
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

- (void)_refreshTimerFired:(id)fired
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

- (void)subCalRefreshTask:(id)task finishedWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  [(HolidayCalDaemonAccount *)self _tearDownRefreshTimer];
  +[DABehaviorOptions holidayCalendarRefreshInterval];
  v9 = [NSTimer timerWithTimeInterval:self target:"_refreshTimerFired:" selector:0 userInfo:0 repeats:v8 + 1.0];
  refreshTimer = self->_refreshTimer;
  self->_refreshTimer = v9;

  v11 = +[NSRunLoop mainRunLoop];
  [v11 addTimer:self->_refreshTimer forMode:NSRunLoopCommonModes];

  if (!errorCopy)
  {
    [(HolidayCalDaemonAccount *)self _saveHolidayCalMetadata];
  }

  v12.receiver = self;
  v12.super_class = HolidayCalDaemonAccount;
  [(SubCalDaemonAccount *)&v12 subCalRefreshTask:taskCopy finishedWithError:errorCopy];
}

- (void)_localeDidChange:(id)change
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

- (BOOL)monitorFoldersWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_localeDidChange:" name:NSCurrentLocaleDidChangeNotification object:0];

  v7.receiver = self;
  v7.super_class = HolidayCalDaemonAccount;
  LOBYTE(self) = [(SubCalDaemonAccount *)&v7 monitorFoldersWithIDs:dsCopy];

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
  stateString = [(HolidayCalDaemonAccount *)&v10 stateString];
  region = [(HolidayCalDaemonAccount *)self region];
  language = [(HolidayCalDaemonAccount *)self language];
  principalPath = [(HolidayCalDaemonAccount *)self principalPath];
  da_removeSlashIfNeeded = [principalPath da_removeSlashIfNeeded];

  v8 = [NSString stringWithFormat:@"Holiday account\ncurrent region = %@\ncurrent language = %@\nsubscribed path = %@\n%@\n", region, language, da_removeSlashIfNeeded, stateString];

  return v8;
}

@end