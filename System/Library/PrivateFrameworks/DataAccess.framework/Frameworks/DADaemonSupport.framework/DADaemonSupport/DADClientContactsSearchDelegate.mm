@interface DADClientContactsSearchDelegate
- (DADClientContactsSearchDelegate)initWithAccountID:(id)d queryDictionary:(id)dictionary client:(id)client;
- (void)beginQuery;
- (void)dealloc;
- (void)disable;
- (void)finishWithError:(id)error;
- (void)searchQuery:(id)query returnedResults:(id)results;
@end

@implementation DADClientContactsSearchDelegate

- (DADClientContactsSearchDelegate)initWithAccountID:(id)d queryDictionary:(id)dictionary client:(id)client
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = DADClientContactsSearchDelegate;
  v9 = [(DADClientDelegate *)&v12 initWithAccountID:d client:client];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D03920]) initWithDictionaryRepresentation:dictionaryCopy consumer:v9];
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
  accountID = [(DADClientDelegate *)self accountID];
  v5 = [v3 accountWithAccountID:accountID];

  if (v5)
  {
    query = [(DADClientContactsSearchDelegate *)self query];
    [v5 performSearchQuery:query];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      accountID2 = [(DADClientDelegate *)self accountID];
      v12 = 138543362;
      v13 = accountID2;
      _os_log_impl(&dword_248524000, v7, v8, "Could not get an account with the ID %{public}@", &v12, 0xCu);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
    [(DADClientContactsSearchDelegate *)self finishWithError:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)searchQuery:(id)query returnedResults:(id)results
{
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:results];
  [(DADClientContactsSearchDelegate *)self setQueryResultData:v5];
}

- (void)disable
{
  if (![(DADisableableObject *)self isDisabled])
  {
    v4.receiver = self;
    v4.super_class = DADClientContactsSearchDelegate;
    [(DADClientDelegate *)&v4 disable];
    query = [(DADClientContactsSearchDelegate *)self query];
    [query setConsumer:0];
  }
}

- (void)finishWithError:(id)error
{
  v39 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = MEMORY[0x277D03988];
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v7))
    {
      code = [errorCopy code];
      query = [(DADClientContactsSearchDelegate *)self query];
      *buf = 134218240;
      v36 = code;
      v37 = 2048;
      v38 = query;
      _os_log_impl(&dword_248524000, v5, v7, "DADClientContactsSearchDelegate finished with status %ld. Finishing DASearchQuery %p", buf, 0x16u);
    }

    if ([(DADClientDelegate *)self consumerCancelled])
    {
      v10 = +[DADAgentManager sharedManager];
      accountID = [(DADClientDelegate *)self accountID];
      rawConnection = [v10 accountWithAccountID:accountID];

      if (rawConnection)
      {
        query2 = [(DADClientContactsSearchDelegate *)self query];
        [rawConnection cancelSearchQuery:query2];
      }

      else
      {
        query2 = DALoggingwithCategory();
        v19 = *(v6 + 3);
        if (os_log_type_enabled(query2, v19))
        {
          accountID2 = [(DADClientDelegate *)self accountID];
          *buf = 138543362;
          v36 = accountID2;
          _os_log_impl(&dword_248524000, query2, v19, "DADServerContactsSearchTask finished, but could not find an account with the ID %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      client = [(DADClientDelegate *)self client];
      rawConnection = [client rawConnection];

      if (rawConnection)
      {
        v15 = *MEMORY[0x277D03C88];
        v34[0] = *MEMORY[0x277D03DD0];
        v16 = *MEMORY[0x277D03E38];
        v31 = v15;
        v32 = v16;
        v17 = MEMORY[0x277CCABB0];
        if (errorCopy)
        {
          code2 = [errorCopy code];
        }

        else
        {
          code2 = 2;
        }

        v21 = [v17 numberWithInteger:{code2, v31, v32}];
        v34[1] = v21;
        v33 = *MEMORY[0x277D03DB8];
        delegateID = [(DADClientDelegate *)self delegateID];
        v34[2] = delegateID;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v31 count:3];
        v24 = [v23 mutableCopy];

        queryResultData = [(DADClientContactsSearchDelegate *)self queryResultData];

        if (queryResultData)
        {
          queryResultData2 = [(DADClientContactsSearchDelegate *)self queryResultData];
          [v24 setObject:queryResultData2 forKeyedSubscript:*MEMORY[0x277D03DC8]];
        }

        v27 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_connection_send_message(rawConnection, v27);
      }

      query2 = [(DADClientDelegate *)self client];
      [query2 noteBlockedClientCallChange:1];
    }

    client2 = [(DADClientDelegate *)self client];
    delegateID2 = [(DADClientDelegate *)self delegateID];
    [client2 delegateWithIDIsGoingAway:delegateID2];
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end