@interface DADClientContactsSearchDelegate
- (DADClientContactsSearchDelegate)initWithAccountID:(id)a3 queryDictionary:(id)a4 client:(id)a5;
- (void)beginQuery;
- (void)dealloc;
- (void)disable;
- (void)finishWithError:(id)a3;
- (void)searchQuery:(id)a3 returnedResults:(id)a4;
@end

@implementation DADClientContactsSearchDelegate

- (DADClientContactsSearchDelegate)initWithAccountID:(id)a3 queryDictionary:(id)a4 client:(id)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DADClientContactsSearchDelegate;
  v9 = [(DADClientDelegate *)&v12 initWithAccountID:a3 client:a5];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D03920]) initWithDictionaryRepresentation:v8 consumer:v9];
    [(DADClientContactsSearchDelegate *)v9 setQuery:v10];

    [(DADClientDelegate *)v9 setConsumerCancelled:0];
  }

  return v9;
}

- (void)dealloc
{
  [(DADClientContactsSearchDelegate *)self disable];
  v3.receiver = self;
  v3.super_class = DADClientContactsSearchDelegate;
  [(DADClientDelegate *)&v3 dealloc];
}

- (void)beginQuery
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = +[DADAgentManager sharedManager];
  v4 = [(DADClientDelegate *)self accountID];
  v5 = [v3 accountWithAccountID:v4];

  if (v5)
  {
    v6 = [(DADClientContactsSearchDelegate *)self query];
    [v5 performSearchQuery:v6];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = [(DADClientDelegate *)self accountID];
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_248524000, v7, v8, "Could not get an account with the ID %{public}@", &v12, 0xCu);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
    [(DADClientContactsSearchDelegate *)self finishWithError:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)searchQuery:(id)a3 returnedResults:(id)a4
{
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a4];
  [(DADClientContactsSearchDelegate *)self setQueryResultData:v5];
}

- (void)disable
{
  if (![(DADisableableObject *)self isDisabled])
  {
    v4.receiver = self;
    v4.super_class = DADClientContactsSearchDelegate;
    [(DADClientDelegate *)&v4 disable];
    v3 = [(DADClientContactsSearchDelegate *)self query];
    [v3 setConsumer:0];
  }
}

- (void)finishWithError:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = MEMORY[0x277D03988];
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v7))
    {
      v8 = [v4 code];
      v9 = [(DADClientContactsSearchDelegate *)self query];
      *buf = 134218240;
      v36 = v8;
      v37 = 2048;
      v38 = v9;
      _os_log_impl(&dword_248524000, v5, v7, "DADClientContactsSearchDelegate finished with status %ld. Finishing DASearchQuery %p", buf, 0x16u);
    }

    if ([(DADClientDelegate *)self consumerCancelled])
    {
      v10 = +[DADAgentManager sharedManager];
      v11 = [(DADClientDelegate *)self accountID];
      v12 = [v10 accountWithAccountID:v11];

      if (v12)
      {
        v13 = [(DADClientContactsSearchDelegate *)self query];
        [v12 cancelSearchQuery:v13];
      }

      else
      {
        v13 = DALoggingwithCategory();
        v19 = *(v6 + 3);
        if (os_log_type_enabled(v13, v19))
        {
          v20 = [(DADClientDelegate *)self accountID];
          *buf = 138543362;
          v36 = v20;
          _os_log_impl(&dword_248524000, v13, v19, "DADServerContactsSearchTask finished, but could not find an account with the ID %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v14 = [(DADClientDelegate *)self client];
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
        v22 = [(DADClientDelegate *)self delegateID];
        v34[2] = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v31 count:3];
        v24 = [v23 mutableCopy];

        v25 = [(DADClientContactsSearchDelegate *)self queryResultData];

        if (v25)
        {
          v26 = [(DADClientContactsSearchDelegate *)self queryResultData];
          [v24 setObject:v26 forKeyedSubscript:*MEMORY[0x277D03DC8]];
        }

        v27 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_connection_send_message(v12, v27);
      }

      v13 = [(DADClientDelegate *)self client];
      [v13 noteBlockedClientCallChange:1];
    }

    v28 = [(DADClientDelegate *)self client];
    v29 = [(DADClientDelegate *)self delegateID];
    [v28 delegateWithIDIsGoingAway:v29];
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end