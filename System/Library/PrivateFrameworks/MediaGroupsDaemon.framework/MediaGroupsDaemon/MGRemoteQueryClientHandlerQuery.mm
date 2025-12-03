@interface MGRemoteQueryClientHandlerQuery
+ (id)handlerWithQuery:(id)query forGroupsQueryAgent:(id)agent;
- (BOOL)validateResponse:(id)response;
- (NSString)description;
- (id)_initWithQuery:(id)query groupsQueryAgent:(id)agent;
- (id)handleCompleteResponse:(id)response jsonPayload:(id)payload;
- (void)prepareURL:(id)l;
@end

@implementation MGRemoteQueryClientHandlerQuery

+ (id)handlerWithQuery:(id)query forGroupsQueryAgent:(id)agent
{
  agentCopy = agent;
  queryCopy = query;
  v8 = [[self alloc] _initWithQuery:queryCopy groupsQueryAgent:agentCopy];

  return v8;
}

- (id)_initWithQuery:(id)query groupsQueryAgent:(id)agent
{
  queryCopy = query;
  agentCopy = agent;
  v14.receiver = self;
  v14.super_class = MGRemoteQueryClientHandlerQuery;
  v9 = [(MGRemoteQueryClientHandlerQuery *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_query, query);
    v10->_seenInitialResponse = 0;
    v11 = [[MGGroupsMediator alloc] initWithGroupsQueryAgent:agentCopy];
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
  query = [(MGRemoteQueryClientHandlerQuery *)self query];
  identifier = [query identifier];
  groupsMediator = [(MGRemoteQueryClientHandlerQuery *)self groupsMediator];
  v9 = [v3 stringWithFormat:@"<%@: %p, _query = %@, _mediator = %p>", v5, self, identifier, groupsMediator];

  return v9;
}

- (void)prepareURL:(id)l
{
  lCopy = l;
  [lCopy setPath:0x2869A5B28];
  queryItems = [lCopy queryItems];
  v5 = [queryItems mutableCopy];

  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  }

  v6 = MEMORY[0x277CCAD18];
  query = [(MGRemoteQueryClientHandlerQuery *)self query];
  predicate = [query predicate];
  predicateFormat = [predicate predicateFormat];
  v10 = [v6 queryItemWithName:0x2869A5B68 value:predicateFormat];
  [v5 addObject:v10];

  [lCopy setQueryItems:v5];
}

- (BOOL)validateResponse:(id)response
{
  responseCopy = response;
  seenInitialResponse = [(MGRemoteQueryClientHandlerQuery *)self seenInitialResponse];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277CD9278]];
  v7 = [responseCopy valueForHTTPHeaderField:v6];

  if (seenInitialResponse)
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

- (id)handleCompleteResponse:(id)response jsonPayload:(id)payload
{
  v52[1] = *MEMORY[0x277D85DE8];
  v5 = [MGRemoteQueryReply rq_instanceFromCoded:payload];
  v6 = v5;
  if (v5)
  {
    error = [v5 error];
    if (error)
    {
      v8 = MGLogForCategory(6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        selfCopy3 = self;
        v45 = 2112;
        v46 = 0;
        _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p client handler received error in query reply %@", buf, 0x16u);
      }

      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277CCA5B8];
      v51 = *MEMORY[0x277CCA7E8];
      v52[0] = error;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v12 = [v9 errorWithDomain:v10 code:104 userInfo:v11];

      v13 = v12;
    }

    else
    {
      groups = [v6 groups];
      groupsMediator = [(MGRemoteQueryClientHandlerQuery *)self groupsMediator];
      v17 = MGLogForCategory(6);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218754;
        selfCopy3 = self;
        v45 = 2048;
        v46 = [groups count];
        v47 = 2048;
        v48 = groupsMediator;
        v49 = 2112;
        v50 = groups;
        _os_log_impl(&dword_25863A000, v17, OS_LOG_TYPE_DEFAULT, "%p client handler receiving %lu groups into %p: %@", buf, 0x2Au);
      }

      currentGroups = [groupsMediator currentGroups];
      v19 = [groupsMediator startActivityWithName:@"Remote Query"];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      allValues = [currentGroups allValues];
      v21 = [allValues countByEnumeratingWithState:&v37 objects:v42 count:16];
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
              objc_enumerationMutation(allValues);
            }

            [groupsMediator removeGroup:*(*(&v37 + 1) + 8 * i)];
          }

          v22 = [allValues countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v22);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v25 = groups;
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
            [groupsMediator addGroup:v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v27);
      }

      [groupsMediator endActivity:v19];
      v13 = 0;
    }
  }

  else
  {
    v14 = MGLogForCategory(6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p client handler received malformed query payload content", buf, 0xCu);
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:94 userInfo:0];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v13;
}

@end