@interface MobileCalDAVCalendarAvailabilityRequest
+ (id)_availabilitySpansForFreeBusyComponent:(id)a3 usingCalendar:(id)a4;
+ (id)_availabilitySpansForFreeBusyProperties:(id)a3 usingCalendar:(id)a4;
+ (id)_parseResponse:(id)a3 withAddresses:(id)a4;
- (MobileCalDAVCalendarAvailabilityRequest)initWithStartDate:(id)a3 endDate:(id)a4 ignoredEventID:(id)a5 addresses:(id)a6 consumer:(id)a7 account:(id)a8;
- (NSString)description;
- (void)_finishWithError:(id)a3;
- (void)_reallyPerformRequest;
- (void)cancel;
- (void)dealloc;
- (void)performRequest;
@end

@implementation MobileCalDAVCalendarAvailabilityRequest

- (MobileCalDAVCalendarAvailabilityRequest)initWithStartDate:(id)a3 endDate:(id)a4 ignoredEventID:(id)a5 addresses:(id)a6 consumer:(id)a7 account:(id)a8
{
  v27 = a3;
  v26 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v28.receiver = self;
  v28.super_class = MobileCalDAVCalendarAvailabilityRequest;
  v19 = [(MobileCalDAVCalendarAvailabilityRequest *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_startDate, a3);
    objc_storeStrong(&v20->_endDate, a4);
    objc_storeStrong(&v20->_ignoredEventID, a5);
    objc_storeStrong(&v20->_addresses, a6);
    objc_storeWeak(&v20->_consumer, v17);
    objc_storeStrong(&v20->_account, a8);
    v21 = [NSString da_newGUID:v26];
    freeBusyLookupID = v20->_freeBusyLookupID;
    v20->_freeBusyLookupID = v21;

    v23 = [[DACoreDAVTaskManager alloc] initWithAccount:v20->_account];
    taskManager = v20->_taskManager;
    v20->_taskManager = v23;
  }

  return v20;
}

- (void)dealloc
{
  if (!self->_finished)
  {
    sub_15FE0(a2, self);
  }

  [(DACoreDAVTaskManager *)self->_taskManager shutdown];
  v3.receiver = self;
  v3.super_class = MobileCalDAVCalendarAvailabilityRequest;
  [(MobileCalDAVCalendarAvailabilityRequest *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v9 = *&self->_startDate;
  ignoredEventID = self->_ignoredEventID;
  addresses = self->_addresses;
  WeakRetained = objc_loadWeakRetained(&self->_consumer);
  v7 = [v3 initWithFormat:@"startDate: [%@] endDate: [%@], ignoredEventID: [%@], addresses: [%@], consumer: [%p], account: [%p]", v9, ignoredEventID, addresses, WeakRetained, self->_account];

  return v7;
}

- (void)performRequest
{
  v3 = objc_opt_new();
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [v3 transactionId];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_0, v4, v5, "DATransaction starting, ID: %{public}@", &v7, 0xCu);
  }

  if (self->_finished)
  {
    [(MobileCalDAVCalendarAvailabilityRequest *)self _finishWithError:0];
  }

  else
  {
    [(MobileCalDAVCalendarAvailabilityRequest *)self _reallyPerformRequest];
  }
}

- (void)cancel
{
  [(DACoreDAVTaskManager *)self->_taskManager cancelAllTasks];
  v3 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  [(MobileCalDAVCalendarAvailabilityRequest *)self _finishWithError:v3];
}

+ (id)_parseResponse:(id)a3 withAddresses:(id)a4
{
  v5 = a3;
  v48 = [NSSet setWithArray:a4];
  v47 = objc_alloc_init(NSMutableDictionary);
  v6 = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
  v38 = [NSTimeZone timeZoneWithName:@"UTC"];
  [v6 setTimeZone:?];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v39 = v5;
  obj = [v5 successfulICS];
  v7 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v56;
    v10 = _CPLog_to_os_log_type[7];
    type = _CPLog_to_os_log_type[4];
    v41 = *v56;
    v40 = v10;
    do
    {
      v11 = 0;
      v42 = v8;
      do
      {
        if (*v56 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v55 + 1) + 8 * v11);
        v13 = [v12 calendar];
        v14 = [v13 calscale];

        if (v14 && ([v14 isEqualToString:@"GREGORIAN"] & 1) == 0)
        {
          v36 = DALoggingwithCategory();
          v50 = v36;
          if (os_log_type_enabled(v36, v10))
          {
            *buf = 138412546;
            v61 = v14;
            v62 = 2112;
            v63 = v12;
            _os_log_impl(&dword_0, v36, v10, "Calendar scale unsupported: [%@].  Will not use iCalendar document in free/busy response: [%@]", buf, 0x16u);
          }
        }

        else
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v15 = [v12 calendar];
          v16 = [v15 components];

          v50 = v16;
          v17 = [v16 countByEnumeratingWithState:&v51 objects:v59 count:16];
          if (v17)
          {
            v18 = v17;
            v44 = v14;
            v45 = v11;
            v19 = *v52;
            v20 = type;
            v21 = &CalIsReminderBridgeEnabled_ptr;
            v22 = v50;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v52 != v19)
                {
                  objc_enumerationMutation(v22);
                }

                v24 = *(*(&v51 + 1) + 8 * i);
                v25 = v21[119];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v26 = v24;
                  v27 = [objc_opt_class() _availabilitySpansForFreeBusyComponent:v26 usingCalendar:v6];
                  v28 = v27;
                  if (v27 && [v27 count])
                  {
                    v29 = v6;
                    v30 = [v26 attendee];
                    v31 = [v30 firstObject];

                    v32 = [v31 value];
                    v33 = [v32 absoluteString];
                    if (([v48 containsObject:v33] & 1) == 0 && objc_msgSend(v33, "hasMailto"))
                    {
                      v34 = [v33 stringRemovingMailto];
                      if ([v48 containsObject:v34])
                      {
                        v46 = v34;

                        v33 = v46;
                      }
                    }

                    if (v33)
                    {
                      [v47 setObject:v28 forKey:v33];
                    }

                    else
                    {
                      v35 = DALoggingwithCategory();
                      if (os_log_type_enabled(v35, type))
                      {
                        *buf = 138412290;
                        v61 = v26;
                        _os_log_impl(&dword_0, v35, type, "No attendee found on free/busy component [%@].  Will not save free/busy spans.", buf, 0xCu);
                      }
                    }

                    v6 = v29;
                    v20 = type;
                    v21 = &CalIsReminderBridgeEnabled_ptr;
                  }

                  else
                  {
                    v31 = DALoggingwithCategory();
                    if (os_log_type_enabled(v31, v20))
                    {
                      *buf = 138412290;
                      v61 = v26;
                      _os_log_impl(&dword_0, v31, v20, "No availability spans generated for component: [%@]", buf, 0xCu);
                    }
                  }

                  v22 = v50;
                }
              }

              v18 = [v22 countByEnumeratingWithState:&v51 objects:v59 count:16];
            }

            while (v18);
            v9 = v41;
            v8 = v42;
            v10 = v40;
            v14 = v44;
            v11 = v45;
          }
        }

        v11 = v11 + 1;
      }

      while (v11 != v8);
      v8 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v8);
  }

  return v47;
}

+ (id)_availabilitySpansForFreeBusyComponent:(id)a3 usingCalendar:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 dtstart];
  v8 = [v7 components];
  v9 = [v6 dateFromComponents:v8];
  v10 = [v5 dtend];
  v11 = [v10 components];
  v32 = [v6 dateFromComponents:v11];
  v12 = DALoggingwithCategory();
  v13 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v12, v13))
  {
    *buf = 138412802;
    v36 = v9;
    v37 = 2112;
    v38 = v32;
    v39 = 2112;
    v40 = v5;
    _os_log_impl(&dword_0, v12, v13, "Free/busy window start date: [%@] end date: [%@].  Component: [%@]", buf, 0x20u);
  }

  v14 = [v5 freebusy];
  if ([v14 count])
  {
    v15 = [objc_opt_class() _availabilitySpansForFreeBusyProperties:v14 usingCalendar:v6];
    v16 = v15;
    if (v15 && [v15 count])
    {
LABEL_13:
      if ([v16 count])
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v30 = v9;
    v17 = v10;
    v18 = v8;
    v19 = v7;
    v20 = DALoggingwithCategory();
    v21 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v20, v21))
    {
      *buf = 138412290;
      v36 = v14;
      _os_log_impl(&dword_0, v20, v21, "No spans found in properties: [%@]", buf, 0xCu);
    }

    v7 = v19;
    v8 = v18;
    v10 = v17;
    v9 = v30;
  }

  else
  {
    v22 = DALoggingwithCategory();
    if (os_log_type_enabled(v22, v13))
    {
      *buf = 138412290;
      v36 = v5;
      _os_log_impl(&dword_0, v22, v13, "No free/busy properties found.  Counting entire period as free.  Component: [%@]", buf, 0xCu);
    }

    v20 = [[DAECalendarAvailabilitySpan alloc] initWithStartDate:v9 endDate:v32 type:2];
    v34 = v20;
    v16 = [NSArray arrayWithObjects:&v34 count:1];
  }

  if (v16)
  {
    goto LABEL_13;
  }

LABEL_14:
  v31 = v10;
  v23 = v8;
  v24 = v7;
  v25 = DALoggingwithCategory();
  v26 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v25, v26))
  {
    *buf = 138412546;
    v36 = v9;
    v37 = 2112;
    v38 = v32;
    _os_log_impl(&dword_0, v25, v26, "No spans generated.  The entire window from [%@] to [%@] will be counted as 'unknown.'", buf, 0x16u);
  }

  v27 = [[DAECalendarAvailabilitySpan alloc] initWithStartDate:v9 endDate:v32 type:0];
  v33 = v27;
  v28 = [NSArray arrayWithObjects:&v33 count:1];

  v16 = v28;
  v7 = v24;
  v8 = v23;
  v10 = v31;
LABEL_17:

  return v16;
}

+ (id)_availabilitySpansForFreeBusyProperties:(id)a3 usingCalendar:(id)a4
{
  v5 = a3;
  v6 = a4;
  v37 = objc_alloc_init(NSMutableArray);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = v5;
  v8 = v6;
  obj = v7;
  v9 = [v7 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v9)
  {
    v11 = v9;
    v45 = *v47;
    *&v10 = 138412290;
    v36 = v10;
    v38 = v6;
    type = _CPLog_to_os_log_type[4];
    do
    {
      v12 = 0;
      v40 = v11;
      do
      {
        v13 = v11;
        v14 = v8;
        if (*v47 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v46 + 1) + 8 * v12);
        v16 = [v15 fbtype];
        v17 = [v15 value];
        v18 = [v17 start];
        v19 = [v17 end];
        v20 = [v17 duration];
        if (v18)
        {
          v21 = (v19 | v20) == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v39 = v16;
          v22 = [v18 components];
          v23 = v14;
          v24 = [v14 dateFromComponents:v22];
          if (v19)
          {
            [v19 components];
            v25 = v42 = v24;
            v26 = [v23 dateFromComponents:v25];

            v11 = v40;
            v27 = v42;
          }

          else
          {
            [v20 timeInterval];
            [v24 dateByAddingTimeInterval:?];
            v27 = v24;
            v26 = v11 = v13;
          }

          if (v27)
          {
            v28 = v26 == 0;
          }

          else
          {
            v28 = 1;
          }

          v43 = v26;
          if (v28)
          {
            v29 = DALoggingwithCategory();
            if (os_log_type_enabled(v29, type))
            {
              *buf = 138412546;
              v51 = v17;
              v52 = 2112;
              v53 = v15;
              v30 = v29;
              v31 = type;
              v32 = "Could not generate start and end date for period: [%@].  Property: [%@]";
              v33 = 22;
              goto LABEL_27;
            }

LABEL_28:
            v11 = v40;
          }

          else
          {
            if ([v27 compare:v26] == &dword_0 + 1)
            {
              v29 = DALoggingwithCategory();
              if (os_log_type_enabled(v29, type))
              {
                *buf = v36;
                v51 = v15;
                v30 = v29;
                v31 = type;
                v32 = "The generated start date is after the generated end date.  Property: [%@]";
                v33 = 12;
LABEL_27:
                _os_log_impl(&dword_0, v30, v31, v32, buf, v33);
              }

              goto LABEL_28;
            }

            if (v39 > 4)
            {
              v34 = 0;
            }

            else
            {
              v34 = qword_1C148[v39];
            }

            v29 = [[DAECalendarAvailabilitySpan alloc] initWithStartDate:v27 endDate:v26 type:v34];
            [v37 addObject:v29];
          }

          v8 = v38;
          goto LABEL_34;
        }

        v22 = DALoggingwithCategory();
        if (os_log_type_enabled(v22, type))
        {
          *buf = 138413058;
          v51 = v18;
          v52 = 2112;
          v53 = v19;
          v54 = 2112;
          v55 = v20;
          v56 = 2112;
          v57 = v15;
          _os_log_impl(&dword_0, v22, type, "Period not valid.  Start: [%@]  End: [%@] Duration: [%@].  Property: [%@]", buf, 0x2Au);
        }

        v8 = v14;
        v11 = v13;
LABEL_34:

        v12 = v12 + 1;
      }

      while (v11 != v12);
      v11 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v11);
  }

  return v37;
}

- (void)_reallyPerformRequest
{
  v3 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
  v4 = [v3 mainPrincipal];

  if ([v4 supportsFreebusy])
  {
    v5 = [v4 preferredCalendarUserAddress];
    v6 = [v5 absoluteString];

    v7 = [v4 outboxURL];
    v8 = mobileCalDAVProdID();
    LOBYTE(v14) = 0;
    v9 = [[CalDAVFreeBusyLookupTask alloc] initWithOrganizer:v6 originator:v6 attendees:self->_addresses start:self->_startDate end:self->_endDate outboxURL:v7 maskedUID:self->_ignoredEventID extendedFreeBusy:v14 prodID:v8];
    [v9 setAccountInfoProvider:v4];
    objc_initWeak(&location, v9);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_9504;
    v15[3] = &unk_288D8;
    objc_copyWeak(&v16, &location);
    v15[4] = self;
    [v9 setCompletionBlock:v15];
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_0, v10, v11, "Starting calendar availability (free/busy) task: [%@]", buf, 0xCu);
    }

    [(DACoreDAVTaskManager *)self->_taskManager submitIndependentCoreDAVTask:v9];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_0, v12, v13, "The following principal indicates that free/busy is not supported, so no request will be sent: [%@]", buf, 0xCu);
    }

    v6 = [NSError errorWithDomain:DAErrorDomain code:81 userInfo:0];
    [(MobileCalDAVCalendarAvailabilityRequest *)self _finishWithError:v6];
  }
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  if (!self->_finished)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      v8 = 138412546;
      v9 = self;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_0, v5, v6, "[%@] finished with error %@", &v8, 0x16u);
    }

    self->_finished = 1;
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    [WeakRetained calendarAvailabilityRequestFinishedWithError:v4];

    [(MobileCalDAVDADaemonAccount *)self->_account calendarAvailabilityRequestIsGoingAway:self];
  }
}

@end