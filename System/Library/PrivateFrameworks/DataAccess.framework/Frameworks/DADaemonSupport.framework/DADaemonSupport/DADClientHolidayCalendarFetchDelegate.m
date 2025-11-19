@interface DADClientHolidayCalendarFetchDelegate
- (id)_getThrottleDateIfApplicable;
- (id)syncingAccount;
- (void)_addAuthenticationHeaders;
- (void)_handleCalendarSearchResults:(id)a3;
- (void)_sendCompletionWithError:(id)a3 retryThrottleTime:(double)a4;
- (void)_sendResults:(id)a3;
- (void)_setThrottledRetryDateUsingTimeInterval:(double)a3;
- (void)fetchHolidayCalendars;
@end

@implementation DADClientHolidayCalendarFetchDelegate

- (void)fetchHolidayCalendars
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(DADClientHolidayCalendarFetchDelegate *)self _getThrottleDateIfApplicable];
  if (v3)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v4, v5))
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_impl(&dword_248524000, v4, v5, "HolidayCalendarFetch: Server requested we not fetch. Denying retries until %@", buf, 0xCu);
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF6F80] code:2 userInfo:0];
    [v3 timeIntervalSinceReferenceDate];
    v8 = v7;
    v9 = [MEMORY[0x277CBEAA8] date];
    [v9 timeIntervalSinceReferenceDate];
    v11 = v10;

    [(DADClientHolidayCalendarFetchDelegate *)self _sendCompletionWithError:v6 retryThrottleTime:v8 - v11];
  }

  else
  {
    v12 = [(DADClientHolidayCalendarFetchDelegate *)self syncingAccount];

    if (v12)
    {
      v6 = [MEMORY[0x277D03910] holidayCalendarURL];
      v13 = [objc_alloc(MEMORY[0x277CF6FB8]) initWithLanguages:0 location:0 calendarType:@"Holiday" url:v6];
      searchTask = self->_searchTask;
      self->_searchTask = v13;

      [(DADClientHolidayCalendarFetchDelegate *)self _addAuthenticationHeaders];
      [(CalDAVCalendarSearchTask *)self->_searchTask setLimit:0];
      v15 = [(DADClientHolidayCalendarFetchDelegate *)self syncingAccount];
      [(CalDAVCalendarSearchTask *)self->_searchTask setAccountInfoProvider:v15];

      objc_initWeak(buf, self->_searchTask);
      objc_initWeak(&location, self);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __62__DADClientHolidayCalendarFetchDelegate_fetchHolidayCalendars__block_invoke;
      v21[3] = &unk_278F1D3C0;
      objc_copyWeak(&v22, buf);
      objc_copyWeak(&v23, &location);
      [(CalDAVCalendarSearchTask *)self->_searchTask setCompletionBlock:v21];
      v16 = [(DADClientHolidayCalendarFetchDelegate *)self syncingAccount];
      v17 = [v16 taskManager];
      [v17 submitIndependentTask:self->_searchTask];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    else
    {
      v18 = DALoggingwithCategory();
      v19 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v18, v19))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v18, v19, "HolidayCalendarFetch: no valid calendar account found.", buf, 2u);
      }

      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
      [(DADClientHolidayCalendarFetchDelegate *)self _sendCompletionWithError:v6 retryThrottleTime:0.0];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __62__DADClientHolidayCalendarFetchDelegate_fetchHolidayCalendars__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v4 = [WeakRetained error];

    if (v4)
    {
      v5 = DALoggingwithCategory();
      v6 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = [WeakRetained error];
        v15 = 138412290;
        v16 = v7;
        _os_log_impl(&dword_248524000, v5, v6, "HolidayCalendarFetch: Error fetching list of holiday calendars: %@", &v15, 0xCu);
      }

      v8 = 0.0;
      if ([WeakRetained responseStatusCode] >= 500 && objc_msgSend(WeakRetained, "responseStatusCode") <= 599)
      {
        v9 = [WeakRetained responseHeaders];
        v10 = [v9 objectForKey:*MEMORY[0x277CFDB58]];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 doubleValue];
          v8 = v11;
          [v3 _setThrottledRetryDateUsingTimeInterval:?];
        }
      }

      v12 = [WeakRetained error];
      [v3 _sendCompletionWithError:v12 retryThrottleTime:v8];
    }

    else
    {
      v12 = [WeakRetained urlsToResults];
      [v3 _handleCalendarSearchResults:v12];
    }

    v13 = v3[6];
    v3[6] = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleCalendarSearchResults:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v33 = v4;
  v7 = [v4 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v29 = self;
    v30 = v5;
    v10 = 0;
    obj = v7;
    v32 = *v39;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        v13 = [v33 objectForKey:v12];
        v14 = [v13 region];
        v15 = [v14 payloadAsString];

        v16 = [v13 language];
        v17 = [v16 payloadAsString];

        v18 = [v13 calendarDescription];
        v19 = [v18 payloadAsString];

        v20 = objc_alloc_init(MEMORY[0x277D03948]);
        v21 = [v12 absoluteString];
        [v20 setURLString:v21];

        [v20 setRegion:v15];
        [v20 setLanguage:v17];
        [v20 setCalendarDescription:v19];
        [v6 addObject:v20];
        if (v10 >= 49)
        {
          [v30 addObject:v6];
          v22 = [MEMORY[0x277CBEB18] array];

          v10 = 0;
          v6 = v22;
        }

        else
        {
          ++v10;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v9);

    if (v10 < 1)
    {
      self = v29;
      v5 = v30;
    }

    else
    {
      v5 = v30;
      [v30 addObject:v6];
      self = v29;
    }
  }

  else
  {
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = v5;
  v24 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v35;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(DADClientHolidayCalendarFetchDelegate *)self _sendResults:*(*(&v34 + 1) + 8 * j)];
      }

      v25 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v25);
  }

  [(DADClientHolidayCalendarFetchDelegate *)self _sendCompletionWithError:0 retryThrottleTime:0.0];
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_sendResults:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a3 forKey:*MEMORY[0x277D03B68]];
    v15 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v15];
    v6 = v15;
    v7 = [(DADClientDelegate *)self client];
    v8 = [v7 rawConnection];

    if (v8)
    {
      v9 = *MEMORY[0x277D03C88];
      v17[0] = *MEMORY[0x277D03B78];
      v10 = *MEMORY[0x277D03B58];
      v16[0] = v9;
      v16[1] = v10;
      v11 = [(DADClientDelegate *)self delegateID];
      v16[2] = *MEMORY[0x277D03B60];
      v17[1] = v11;
      v17[2] = v5;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

      v13 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(v8, v13);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_sendCompletionWithError:(id)a3 retryThrottleTime:(double)a4
{
  v13 = a3;
  if (![(DADisableableObject *)self isDisabled]&& ![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v6 = [(DADClientDelegate *)self client];
    v7 = [v6 rawConnection];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEB38] dictionary];
      [v8 setObject:*MEMORY[0x277D03B50] forKey:*MEMORY[0x277D03C88]];
      v9 = [(DADClientDelegate *)self delegateID];
      [v8 setObject:v9 forKey:*MEMORY[0x277D03B58]];

      if (v13)
      {
        v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];
        if (v10)
        {
          [v8 setObject:v10 forKey:*MEMORY[0x277D03B40]];
        }

        v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
        [v8 setObject:v11 forKey:*MEMORY[0x277D03B70]];
      }

      v12 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(v7, v12);
    }
  }
}

- (id)syncingAccount
{
  v2 = self;
  v46 = *MEMORY[0x277D85DE8];
  v3 = 56;
  syncingAccount = self->_syncingAccount;
  if (!syncingAccount)
  {
    v5 = sharedDAAccountStore();
    v6 = [v5 aa_primaryAppleAccount];

    v7 = [v6 calSyncingAccountUsingChildAccounts:0];
    v8 = +[DADAgentManager sharedManager];
    v9 = [v7 identifier];
    v10 = [v8 accountWithAccountID:v9];

    if (!v10)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v11 = +[DADAgentManager sharedManager];
      v12 = [v11 activeAgents];

      obj = v12;
      v13 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v13)
      {
        v14 = v13;
        v34 = v7;
        v35 = v6;
        v36 = 56;
        v37 = v2;
        v39 = *v42;
        v15 = *MEMORY[0x277CB8BA0];
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v42 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v41 + 1) + 8 * i);
            v18 = [v17 account];
            v19 = [v18 backingAccountInfo];
            v20 = [v19 accountType];
            v21 = [v20 identifier];

            v22 = [v17 account];
            v23 = [v22 backingAccountInfo];
            v24 = [v23 parentAccount];
            v25 = [v24 accountType];
            v26 = [v25 identifier];

            if (([v21 isEqualToString:v15] & 1) != 0 || objc_msgSend(v26, "isEqualToString:", v15))
            {
              v27 = [v17 account];
              v28 = [v27 enabledForDADataclass:4];

              if (v28)
              {
                v10 = [v17 account];

                goto LABEL_15;
              }
            }
          }

          v14 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

        v10 = 0;
LABEL_15:
        v3 = v36;
        v2 = v37;
        v7 = v34;
        v6 = v35;
      }

      else
      {
        v10 = 0;
      }
    }

    v29 = *(&v2->super.super.super.isa + v3);
    *(&v2->super.super.super.isa + v3) = v10;

    if (!*(&v2->super.super.super.isa + v3))
    {
      v30 = DALoggingwithCategory();
      v31 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v30, v31))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v30, v31, "HolidayCalendarFetch: Unable to find iCloud account with Calendars enabled.", buf, 2u);
      }
    }

    syncingAccount = *(&v2->super.super.super.isa + v3);
  }

  v32 = *MEMORY[0x277D85DE8];

  return syncingAccount;
}

- (id)_getThrottleDateIfApplicable
{
  v2 = *MEMORY[0x277CBF028];
  v3 = CFPreferencesCopyAppValue(@"HolidayCalendarFetchThrottleDate", *MEMORY[0x277CBF028]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = MEMORY[0x277CBEAA8];
    v7 = [v5 secondsInDay];
    v8 = [v6 dateWithTimeIntervalSinceNow:v7 + v7];
    if ([v4 compare:v8] == 1 || (objc_msgSend(MEMORY[0x277CBEAA8], "date"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v4, "compare:", v9), v9, v10 == -1))
    {
      CFPreferencesSetAppValue(@"HolidayCalendarFetchThrottleDate", 0, v2);
      v11 = 0;
    }

    else
    {
      v11 = v4;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_setThrottledRetryDateUsingTimeInterval:(double)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [v4 secondsInDay];
  v6 = v5 + v5;
  if (v6 > a3)
  {
    v6 = a3;
  }

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v6];
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v8, v9))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_248524000, v8, v9, "HolidayCalendarFetch: Preventing retries until after: %@", &v11, 0xCu);
  }

  CFPreferencesSetAppValue(@"HolidayCalendarFetchThrottleDate", v7, *MEMORY[0x277CBF028]);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_addAuthenticationHeaders
{
  v12 = objc_alloc_init(MEMORY[0x277CCAB70]);
  v3 = MEMORY[0x277CBEAC0];
  v4 = [v12 allHTTPHeaderFields];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(DADClientHolidayCalendarFetchDelegate *)self syncingAccount];
  v7 = [v6 backingAccountInfo];

  if ([v12 aa_addAuthTokenOrBasicAuthHeaderWithAccount:v7 preferUsingPassword:0])
  {
    v8 = MEMORY[0x277CBEB38];
    v9 = [v12 allHTTPHeaderFields];
    v10 = [v8 dictionaryWithDictionary:v9];

    v11 = [v5 allKeys];
    [v10 removeObjectsForKeys:v11];

    [(CalDAVCalendarSearchTask *)self->_searchTask setAdditionalAuthenticationHeaders:v10];
  }
}

@end