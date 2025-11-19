@interface ESDClientContactsSearchDelegate
- (ESDClientContactsSearchDelegate)initWithAccountID:(id)a3 queryDictionary:(id)a4 client:(id)a5;
- (void)beginQuery;
- (void)dealloc;
- (void)disable;
- (void)finishWithError:(id)a3;
- (void)searchQuery:(id)a3 returnedResults:(id)a4;
@end

@implementation ESDClientContactsSearchDelegate

- (ESDClientContactsSearchDelegate)initWithAccountID:(id)a3 queryDictionary:(id)a4 client:(id)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ESDClientContactsSearchDelegate;
  v9 = [(ESDClientDelegate *)&v12 initWithAccountID:a3 client:a5];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D03920]) initWithDictionaryRepresentation:v8 consumer:v9];
    [(ESDClientContactsSearchDelegate *)v9 setQuery:v10];

    [(ESDClientDelegate *)v9 setConsumerCancelled:0];
  }

  return v9;
}

- (void)dealloc
{
  [(ESDClientContactsSearchDelegate *)self disable];
  v3.receiver = self;
  v3.super_class = ESDClientContactsSearchDelegate;
  [(ESDClientDelegate *)&v3 dealloc];
}

- (void)beginQuery
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = +[ESDAgentManager sharedManager];
  v4 = [(ESDClientDelegate *)self accountID];
  v5 = [v3 accountWithAccountID:v4];

  if (v5)
  {
    v6 = [(ESDClientContactsSearchDelegate *)self query];
    [v5 performSearchQuery:v6];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = [(ESDClientDelegate *)self accountID];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_24A184000, v7, v8, "Could not get an account with the ID %@", &v12, 0xCu);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
    [(ESDClientContactsSearchDelegate *)self finishWithError:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)searchQuery:(id)a3 returnedResults:(id)a4
{
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a4];
  [(ESDClientContactsSearchDelegate *)self setQueryResultData:v5];
}

- (void)disable
{
  if (![(DADisableableObject *)self isDisabled])
  {
    v4.receiver = self;
    v4.super_class = ESDClientContactsSearchDelegate;
    [(ESDClientDelegate *)&v4 disable];
    v3 = [(ESDClientContactsSearchDelegate *)self query];
    [v3 setConsumer:0];
  }
}

- (void)finishWithError:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(ESDClientDelegate *)self finished])
  {
    [(ESDClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = MEMORY[0x277D03988];
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v7))
    {
      v8 = [v4 code];
      v9 = [(ESDClientContactsSearchDelegate *)self query];
      *buf = 134218240;
      v36 = v8;
      v37 = 2048;
      v38 = v9;
      _os_log_impl(&dword_24A184000, v5, v7, "DADClientContactsSearchDelegate finished with status %ld. Finishing DASearchQuery %p", buf, 0x16u);
    }

    if ([(ESDClientDelegate *)self consumerCancelled])
    {
      v10 = +[ESDAgentManager sharedManager];
      v11 = [(ESDClientDelegate *)self accountID];
      v12 = [v10 accountWithAccountID:v11];

      if (v12)
      {
        v13 = [(ESDClientContactsSearchDelegate *)self query];
        [v12 cancelSearchQuery:v13];
      }

      else
      {
        v13 = DALoggingwithCategory();
        v19 = *(v6 + 3);
        if (os_log_type_enabled(v13, v19))
        {
          v20 = [(ESDClientDelegate *)self accountID];
          *buf = 138412290;
          v36 = v20;
          _os_log_impl(&dword_24A184000, v13, v19, "DADServerContactsSearchTask finished, but could not find an account with the ID %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v14 = [(ESDClientDelegate *)self client];
      v12 = [v14 rawConnection];

      if (v12)
      {
        v15 = *MEMORY[0x277D03C88];
        v34[0] = *MEMORY[0x277D03DD0];
        v16 = *MEMORY[0x277D03E38];
        v31 = v15;
        v32 = v16;
        v17 = MEMORY[0x277CCABB0];
        if (v4)
        {
          v18 = [v4 code];
        }

        else
        {
          v18 = 2;
        }

        v21 = [v17 numberWithInteger:{v18, v31, v32}];
        v34[1] = v21;
        v33 = *MEMORY[0x277D03DB8];
        v22 = [(ESDClientDelegate *)self delegateID];
        v34[2] = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v31 count:3];
        v24 = [v23 mutableCopy];

        v25 = [(ESDClientContactsSearchDelegate *)self queryResultData];

        if (v25)
        {
          v26 = [(ESDClientContactsSearchDelegate *)self queryResultData];
          [v24 setObject:v26 forKeyedSubscript:*MEMORY[0x277D03DC8]];
        }

        v27 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_connection_send_message(v12, v27);
      }

      v13 = [(ESDClientDelegate *)self client];
      [v13 noteBlockedClientCallChange:1];
    }

    v28 = [(ESDClientDelegate *)self client];
    v29 = [(ESDClientDelegate *)self delegateID];
    [v28 delegateWithIDIsGoingAway:v29];
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end