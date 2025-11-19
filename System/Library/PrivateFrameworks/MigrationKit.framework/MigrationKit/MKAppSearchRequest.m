@interface MKAppSearchRequest
- (void)search:(id)a3 androidIDs:(id)a4 completion:(id)a5;
@end

@implementation MKAppSearchRequest

- (void)search:(id)a3 androidIDs:(id)a4 completion:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count] || objc_msgSend(v8, "count"))
  {
    v10 = objc_alloc_init(MKDevice);
    v11 = [(MKDevice *)v10 type];
    v12 = [MEMORY[0x277CEE570] createBagForSubProfile];
    v13 = [objc_alloc(MEMORY[0x277CEE570]) initWithType:0 clientIdentifier:@"com.apple.welcomemat" clientVersion:@"1" bag:v12];
    if ([v7 count])
    {
      [v13 setBundleIdentifiers:v7];
    }

    if ([v8 count])
    {
      v21 = @"androidAppId";
      v14 = [v8 componentsJoinedByString:{@", "}];
      v22[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      [v13 setFilters:v15];
    }

    v16 = [v13 perform];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __51__MKAppSearchRequest_search_androidIDs_completion___block_invoke;
    v18[3] = &unk_2798DCDB8;
    v19 = v9;
    v20 = v11;
    [v16 addFinishBlock:v18];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MKAppSearchRequestError" code:1 userInfo:0];
    if (v9)
    {
      (*(v9 + 2))(v9, 0, v10);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __51__MKAppSearchRequest_search_androidIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v6);
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = [v5 responseDataItems];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[MKApp alloc] initWithJSONData:*(*(&v18 + 1) + 8 * i)];
          v15 = v14;
          if (v14 && [(MKApp *)v14 isSupported:*(a1 + 40)])
          {
            [v8 addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      (*(v16 + 16))(v16, v8, 0);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end