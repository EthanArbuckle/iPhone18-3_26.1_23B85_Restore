@interface MobileCalDAVCalendarAvailabilityRequest
+ (id)_availabilitySpansForFreeBusyComponent:(id)component usingCalendar:(id)calendar;
+ (id)_availabilitySpansForFreeBusyProperties:(id)properties usingCalendar:(id)calendar;
+ (id)_parseResponse:(id)response withAddresses:(id)addresses;
- (MobileCalDAVCalendarAvailabilityRequest)initWithStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses consumer:(id)consumer account:(id)account;
- (NSString)description;
- (void)_finishWithError:(id)error;
- (void)_reallyPerformRequest;
- (void)cancel;
- (void)dealloc;
- (void)performRequest;
@end

@implementation MobileCalDAVCalendarAvailabilityRequest

- (MobileCalDAVCalendarAvailabilityRequest)initWithStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses consumer:(id)consumer account:(id)account
{
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  addressesCopy = addresses;
  consumerCopy = consumer;
  accountCopy = account;
  v28.receiver = self;
  v28.super_class = MobileCalDAVCalendarAvailabilityRequest;
  v19 = [(MobileCalDAVCalendarAvailabilityRequest *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_startDate, date);
    objc_storeStrong(&v20->_endDate, endDate);
    objc_storeStrong(&v20->_ignoredEventID, d);
    objc_storeStrong(&v20->_addresses, addresses);
    objc_storeWeak(&v20->_consumer, consumerCopy);
    objc_storeStrong(&v20->_account, account);
    v21 = [NSString da_newGUID:endDateCopy];
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
    transactionId = [v3 transactionId];
    v7 = 138543362;
    v8 = transactionId;
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

+ (id)_parseResponse:(id)response withAddresses:(id)addresses
{
  responseCopy = response;
  v48 = [NSSet setWithArray:addresses];
  v47 = objc_alloc_init(NSMutableDictionary);
  v6 = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
  v38 = [NSTimeZone timeZoneWithName:@"UTC"];
  [v6 setTimeZone:?];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v39 = responseCopy;
  obj = [responseCopy successfulICS];
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
        calendar = [v12 calendar];
        calscale = [calendar calscale];

        if (calscale && ([calscale isEqualToString:@"GREGORIAN"] & 1) == 0)
        {
          v36 = DALoggingwithCategory();
          v50 = v36;
          if (os_log_type_enabled(v36, v10))
          {
            *buf = 138412546;
            v61 = calscale;
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
          calendar2 = [v12 calendar];
          components = [calendar2 components];

          v50 = components;
          v17 = [components countByEnumeratingWithState:&v51 objects:v59 count:16];
          if (v17)
          {
            v18 = v17;
            v44 = calscale;
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
                    attendee = [v26 attendee];
                    firstObject = [attendee firstObject];

                    value = [firstObject value];
                    absoluteString = [value absoluteString];
                    if (([v48 containsObject:absoluteString] & 1) == 0 && objc_msgSend(absoluteString, "hasMailto"))
                    {
                      stringRemovingMailto = [absoluteString stringRemovingMailto];
                      if ([v48 containsObject:stringRemovingMailto])
                      {
                        v46 = stringRemovingMailto;

                        absoluteString = v46;
                      }
                    }

                    if (absoluteString)
                    {
                      [v47 setObject:v28 forKey:absoluteString];
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
                    firstObject = DALoggingwithCategory();
                    if (os_log_type_enabled(firstObject, v20))
                    {
                      *buf = 138412290;
                      v61 = v26;
                      _os_log_impl(&dword_0, firstObject, v20, "No availability spans generated for component: [%@]", buf, 0xCu);
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
            calscale = v44;
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

+ (id)_availabilitySpansForFreeBusyComponent:(id)component usingCalendar:(id)calendar
{
  componentCopy = component;
  calendarCopy = calendar;
  dtstart = [componentCopy dtstart];
  components = [dtstart components];
  v9 = [calendarCopy dateFromComponents:components];
  dtend = [componentCopy dtend];
  components2 = [dtend components];
  v32 = [calendarCopy dateFromComponents:components2];
  v12 = DALoggingwithCategory();
  v13 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v12, v13))
  {
    *buf = 138412802;
    v36 = v9;
    v37 = 2112;
    v38 = v32;
    v39 = 2112;
    v40 = componentCopy;
    _os_log_impl(&dword_0, v12, v13, "Free/busy window start date: [%@] end date: [%@].  Component: [%@]", buf, 0x20u);
  }

  freebusy = [componentCopy freebusy];
  if ([freebusy count])
  {
    v15 = [objc_opt_class() _availabilitySpansForFreeBusyProperties:freebusy usingCalendar:calendarCopy];
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
    v17 = dtend;
    v18 = components;
    v19 = dtstart;
    v20 = DALoggingwithCategory();
    v21 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v20, v21))
    {
      *buf = 138412290;
      v36 = freebusy;
      _os_log_impl(&dword_0, v20, v21, "No spans found in properties: [%@]", buf, 0xCu);
    }

    dtstart = v19;
    components = v18;
    dtend = v17;
    v9 = v30;
  }

  else
  {
    v22 = DALoggingwithCategory();
    if (os_log_type_enabled(v22, v13))
    {
      *buf = 138412290;
      v36 = componentCopy;
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
  v31 = dtend;
  v23 = components;
  v24 = dtstart;
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
  dtstart = v24;
  components = v23;
  dtend = v31;
LABEL_17:

  return v16;
}

+ (id)_availabilitySpansForFreeBusyProperties:(id)properties usingCalendar:(id)calendar
{
  propertiesCopy = properties;
  calendarCopy = calendar;
  v37 = objc_alloc_init(NSMutableArray);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = propertiesCopy;
  v8 = calendarCopy;
  obj = v7;
  v9 = [v7 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v9)
  {
    v11 = v9;
    v45 = *v47;
    *&v10 = 138412290;
    v36 = v10;
    v38 = calendarCopy;
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
        fbtype = [v15 fbtype];
        value = [v15 value];
        start = [value start];
        v19 = [value end];
        duration = [value duration];
        if (start)
        {
          v21 = (v19 | duration) == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v39 = fbtype;
          components = [start components];
          v23 = v14;
          v24 = [v14 dateFromComponents:components];
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
            [duration timeInterval];
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
              v51 = value;
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

        components = DALoggingwithCategory();
        if (os_log_type_enabled(components, type))
        {
          *buf = 138413058;
          v51 = start;
          v52 = 2112;
          v53 = v19;
          v54 = 2112;
          v55 = duration;
          v56 = 2112;
          v57 = v15;
          _os_log_impl(&dword_0, components, type, "Period not valid.  Start: [%@]  End: [%@] Duration: [%@].  Property: [%@]", buf, 0x2Au);
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
  mobileCalDAVAccount = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
  mainPrincipal = [mobileCalDAVAccount mainPrincipal];

  if ([mainPrincipal supportsFreebusy])
  {
    preferredCalendarUserAddress = [mainPrincipal preferredCalendarUserAddress];
    absoluteString = [preferredCalendarUserAddress absoluteString];

    outboxURL = [mainPrincipal outboxURL];
    v8 = mobileCalDAVProdID();
    LOBYTE(v14) = 0;
    v9 = [[CalDAVFreeBusyLookupTask alloc] initWithOrganizer:absoluteString originator:absoluteString attendees:self->_addresses start:self->_startDate end:self->_endDate outboxURL:outboxURL maskedUID:self->_ignoredEventID extendedFreeBusy:v14 prodID:v8];
    [v9 setAccountInfoProvider:mainPrincipal];
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
      v19 = mainPrincipal;
      _os_log_impl(&dword_0, v12, v13, "The following principal indicates that free/busy is not supported, so no request will be sent: [%@]", buf, 0xCu);
    }

    absoluteString = [NSError errorWithDomain:DAErrorDomain code:81 userInfo:0];
    [(MobileCalDAVCalendarAvailabilityRequest *)self _finishWithError:absoluteString];
  }
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  if (!self->_finished)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      v8 = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = errorCopy;
      _os_log_impl(&dword_0, v5, v6, "[%@] finished with error %@", &v8, 0x16u);
    }

    self->_finished = 1;
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    [WeakRetained calendarAvailabilityRequestFinishedWithError:errorCopy];

    [(MobileCalDAVDADaemonAccount *)self->_account calendarAvailabilityRequestIsGoingAway:self];
  }
}

@end