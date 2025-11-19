@interface MGRemoteQueryClientHandlerQuery
+ (id)handlerWithQuery:(id)a3 forGroupsQueryAgent:(id)a4;
- (BOOL)validateResponse:(id)a3;
- (NSString)description;
- (id)_initWithQuery:(id)a3 groupsQueryAgent:(id)a4;
- (id)handleCompleteResponse:(id)a3 jsonPayload:(id)a4;
- (void)prepareURL:(id)a3;
@end

@implementation MGRemoteQueryClientHandlerQuery

+ (id)handlerWithQuery:(id)a3 forGroupsQueryAgent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithQuery:v7 groupsQueryAgent:v6];

  return v8;
}

- (id)_initWithQuery:(id)a3 groupsQueryAgent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MGRemoteQueryClientHandlerQuery;
  v9 = [(MGRemoteQueryClientHandlerQuery *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_query, a3);
    v10->_seenInitialResponse = 0;
    v11 = [[MGGroupsMediator alloc] initWithGroupsQueryAgent:v8];
    groupsMediator = v10->_groupsMediator;
    v10->_groupsMediator = v11;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MGRemoteQueryClientHandlerQuery *)self query];
  v7 = [v6 identifier];
  v8 = [(MGRemoteQueryClientHandlerQuery *)self groupsMediator];
  v9 = [v3 stringWithFormat:@"<%@: %p, _query = %@, _mediator = %p>", v5, self, v7, v8];

  return v9;
}

- (void)prepareURL:(id)a3
{
  v11 = a3;
  [v11 setPath:0x2869A5B28];
  v4 = [v11 queryItems];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  }

  v6 = MEMORY[0x277CCAD18];
  v7 = [(MGRemoteQueryClientHandlerQuery *)self query];
  v8 = [v7 predicate];
  v9 = [v8 predicateFormat];
  v10 = [v6 queryItemWithName:0x2869A5B68 value:v9];
  [v5 addObject:v10];

  [v11 setQueryItems:v5];
}

- (BOOL)validateResponse:(id)a3
{
  v4 = a3;
  v5 = [(MGRemoteQueryClientHandlerQuery *)self seenInitialResponse];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277CD9278]];
  v7 = [v4 valueForHTTPHeaderField:v6];

  if (v5)
  {
    v8 = [@"application/json; charset=utf8" isEqual:v7];
  }

  else
  {
    v8 = [v7 hasPrefix:@"multipart/x-mixed-replace;"];
    [(MGRemoteQueryClientHandlerQuery *)self setSeenInitialResponse:1];
  }

  return v8;
}

- (id)handleCompleteResponse:(id)a3 jsonPayload:(id)a4
{
  v52[1] = *MEMORY[0x277D85DE8];
  v5 = [MGRemoteQueryReply rq_instanceFromCoded:a4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 error];
    if (v7)
    {
      v8 = MGLogForCategory(6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v44 = self;
        v45 = 2112;
        v46 = 0;
        _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p client handler received error in query reply %@", buf, 0x16u);
      }

      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277CCA5B8];
      v51 = *MEMORY[0x277CCA7E8];
      v52[0] = v7;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v12 = [v9 errorWithDomain:v10 code:104 userInfo:v11];

      v13 = v12;
    }

    else
    {
      v15 = [v6 groups];
      v16 = [(MGRemoteQueryClientHandlerQuery *)self groupsMediator];
      v17 = MGLogForCategory(6);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218754;
        v44 = self;
        v45 = 2048;
        v46 = [v15 count];
        v47 = 2048;
        v48 = v16;
        v49 = 2112;
        v50 = v15;
        _os_log_impl(&dword_25863A000, v17, OS_LOG_TYPE_DEFAULT, "%p client handler receiving %lu groups into %p: %@", buf, 0x2Au);
      }

      v18 = [v16 currentGroups];
      v19 = [v16 startActivityWithName:@"Remote Query"];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v20 = [v18 allValues];
      v21 = [v20 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v38;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v38 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [v16 removeGroup:*(*(&v37 + 1) + 8 * i)];
          }

          v22 = [v20 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v22);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v25 = v15;
      v26 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v34;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v34 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v33 + 1) + 8 * j);
            [v30 rq_setSourcedRemotely:{1, v33}];
            [v16 addGroup:v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v27);
      }

      [v16 endActivity:v19];
      v13 = 0;
    }
  }

  else
  {
    v14 = MGLogForCategory(6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v44 = self;
      _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p client handler received malformed query payload content", buf, 0xCu);
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:94 userInfo:0];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v13;
}

@end