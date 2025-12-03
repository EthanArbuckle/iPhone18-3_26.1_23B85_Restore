@interface HSAuthorizedDSIDsUpdatesRequest
- (HSAuthorizedDSIDsUpdatesRequest)init;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation HSAuthorizedDSIDsUpdatesRequest

- (id)canonicalResponseForResponse:(id)response
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HSResponse *)HSAuthorizedDSIDsUpdatesResponse responseWithResponse:response];
  responseData = [v3 responseData];
  v5 = [HSResponseDataParser parseResponseData:responseData];

  if ([v5 count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) objectForKey:{@"com.apple.itunes.drm-user-id", v14}];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v3 setAuthorizedDSIDs:v6];
  }

  return v3;
}

- (HSAuthorizedDSIDsUpdatesRequest)init
{
  v5.receiver = self;
  v5.super_class = HSAuthorizedDSIDsUpdatesRequest;
  v2 = [(HSRequest *)&v5 initWithAction:@"authorized-dsids-updates"];
  v3 = v2;
  if (v2)
  {
    [(HSRequest *)v2 setValue:@"1" forArgument:@"revision-number"];
  }

  return v3;
}

@end