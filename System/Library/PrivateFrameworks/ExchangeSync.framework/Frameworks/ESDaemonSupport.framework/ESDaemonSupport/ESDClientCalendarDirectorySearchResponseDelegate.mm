@interface ESDClientCalendarDirectorySearchResponseDelegate
- (ESDClientCalendarDirectorySearchResponseDelegate)initWithAccountID:(id)d client:(id)client terms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit;
- (id)_convertSearchQueryResults:(id)results;
- (void)calendarDirectorySearchReturnedResults:(id)results;
- (void)dealloc;
- (void)finishWithError:(id)error;
- (void)performRequest;
- (void)searchQuery:(id)query returnedResults:(id)results;
@end

@implementation ESDClientCalendarDirectorySearchResponseDelegate

- (ESDClientCalendarDirectorySearchResponseDelegate)initWithAccountID:(id)d client:(id)client terms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit
{
  termsCopy = terms;
  typesCopy = types;
  v18.receiver = self;
  v18.super_class = ESDClientCalendarDirectorySearchResponseDelegate;
  v15 = [(ESDClientDelegate *)&v18 initWithAccountID:d client:client];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_terms, terms);
    objc_storeStrong(&v16->_recordTypes, types);
    v16->_resultLimit = limit;
  }

  return v16;
}

- (void)dealloc
{
  [(ESDClientDelegate *)self disable];
  v3.receiver = self;
  v3.super_class = ESDClientCalendarDirectorySearchResponseDelegate;
  [(ESDClientDelegate *)&v3 dealloc];
}

- (void)finishWithError:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(DADisableableObject *)self isDisabled]&& ![(ESDClientDelegate *)self finished])
  {
    [(ESDClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = MEMORY[0x277D03988];
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v7))
    {
      *v27 = 138412546;
      *&v27[4] = objc_opt_class();
      *&v27[12] = 2112;
      *&v27[14] = errorCopy;
      v8 = *&v27[4];
      _os_log_impl(&dword_24A184000, v5, v7, "[%@] finished with error %@", v27, 0x16u);
    }

    if (self->_searchID)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:*MEMORY[0x277D038E0]])
      {
        code = [errorCopy code];

        if (code == -1)
        {
          v11 = +[ESDAgentManager sharedManager];
          accountID = [(ESDClientDelegate *)self accountID];
          rawConnection = [v11 accountWithAccountID:accountID];

          if (rawConnection)
          {
            [rawConnection cancelCalendarDirectorySearchWithID:self->_searchID];
LABEL_16:

            client = [(ESDClientDelegate *)self client];
            delegateID = [(ESDClientDelegate *)self delegateID];
            [client delegateWithIDIsGoingAway:delegateID];

            goto LABEL_17;
          }

          v15 = DALoggingwithCategory();
          v23 = *(v6 + 3);
          if (os_log_type_enabled(v15, v23))
          {
            v24 = objc_opt_class();
            v25 = v24;
            accountID2 = [(ESDClientDelegate *)self accountID];
            *v27 = 138412546;
            *&v27[4] = v24;
            *&v27[12] = 2112;
            *&v27[14] = accountID2;
            _os_log_impl(&dword_24A184000, v15, v23, "[%@] finished, but could not find an account with the ID %@", v27, 0x16u);
          }

LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    v14 = [(ESDClientDelegate *)self client:*v27];
    rawConnection = [v14 rawConnection];

    if (!rawConnection)
    {
      goto LABEL_16;
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v15 setObject:*MEMORY[0x277D03A78] forKey:*MEMORY[0x277D03C88]];
    delegateID2 = [(ESDClientDelegate *)self delegateID];
    [v15 setObject:delegateID2 forKey:*MEMORY[0x277D03A80]];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_exceededResultLimit];
    [v15 setObject:v17 forKey:*MEMORY[0x277D03A70]];

    if (errorCopy)
    {
      v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy];
      [v15 setObject:v18 forKey:*MEMORY[0x277D03B40]];
    }

    v19 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_connection_send_message(rawConnection, v19);

    goto LABEL_15;
  }

LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)performRequest
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    v3 = +[ESDAgentManager sharedManager];
    accountID = [(ESDClientDelegate *)self accountID];
    v5 = [v3 accountWithAccountID:accountID];

    if (v5)
    {
      v6 = [v5 performCalendarDirectorySearchForTerms:self->_terms recordTypes:self->_recordTypes resultLimit:self->_resultLimit consumer:self];
      searchID = self->_searchID;
      self->_searchID = v6;
    }

    else
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v8, v9))
      {
        accountID2 = [(ESDClientDelegate *)self accountID];
        v13 = 138412290;
        v14 = accountID2;
        _os_log_impl(&dword_24A184000, v8, v9, "Could not get an account with the ID [%@]", &v13, 0xCu);
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
      [(ESDClientCalendarDirectorySearchResponseDelegate *)self finishWithError:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)calendarDirectorySearchReturnedResults:(id)results
{
  resultsCopy = results;
  if (resultsCopy && !-[DADisableableObject isDisabled](self, "isDisabled") && [resultsCopy count])
  {
    client = [(ESDClientDelegate *)self client];
    rawConnection = [client rawConnection];

    if (rawConnection)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:resultsCopy];
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v7 setObject:*MEMORY[0x277D03AA0] forKey:*MEMORY[0x277D03C88]];
      delegateID = [(ESDClientDelegate *)self delegateID];
      if (delegateID)
      {
        [v7 setObject:delegateID forKey:*MEMORY[0x277D03A80]];
      }

      if (v6)
      {
        [v7 setObject:v6 forKey:*MEMORY[0x277D03A98]];
      }

      v9 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(rawConnection, v9);
    }
  }
}

- (id)_convertSearchQueryResults:(id)results
{
  v39 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = resultsCopy;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    v9 = 0x277D03000uLL;
    do
    {
      v10 = 0;
      v33 = v7;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v12 = objc_alloc_init(*(v9 + 2360));
        displayName = [v11 displayName];

        if (displayName)
        {
          displayName2 = [v11 displayName];
LABEL_8:
          firstName2 = displayName2;
          [v12 setDisplayName:displayName2];
LABEL_9:

          goto LABEL_10;
        }

        firstName = [v11 firstName];
        if (firstName)
        {
          v18 = firstName;
          lastName = [v11 lastName];

          if (lastName)
          {
            v20 = MEMORY[0x277CCACA8];
            firstName2 = [v11 firstName];
            [v11 lastName];
            v21 = v8;
            v22 = v4;
            v23 = v9;
            v25 = v24 = v5;
            v26 = [v20 stringWithFormat:@"%@ %@", firstName2, v25];
            [v12 setDisplayName:v26];

            v5 = v24;
            v9 = v23;
            v4 = v22;
            v8 = v21;
            v7 = v33;
            goto LABEL_9;
          }
        }

        firstName3 = [v11 firstName];

        if (firstName3)
        {
          displayName2 = [v11 firstName];
          goto LABEL_8;
        }

        lastName2 = [v11 lastName];

        if (lastName2)
        {
          displayName2 = [v11 lastName];
          goto LABEL_8;
        }

LABEL_10:
        emailAddress = [v11 emailAddress];
        [v12 setPreferredAddress:emailAddress];

        [v4 addObject:v12];
        ++v10;
      }

      while (v7 != v10);
      v29 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
      v7 = v29;
    }

    while (v29);
  }

  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([v4 count])
  {
    [v30 setObject:v4 forKey:*MEMORY[0x277D038D8]];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)searchQuery:(id)query returnedResults:(id)results
{
  v5 = [(ESDClientCalendarDirectorySearchResponseDelegate *)self _convertSearchQueryResults:results];
  [(ESDClientCalendarDirectorySearchResponseDelegate *)self calendarDirectorySearchReturnedResults:v5];
}

@end