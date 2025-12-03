@interface ENDownloadManagerState
- (ENDownloadManagerState)init;
- (ENDownloadManagerState)initWithCoder:(id)coder;
- (NSArray)endpoints;
- (void)encodeWithCoder:(id)coder;
- (void)setEndpoints:(id)endpoints;
@end

@implementation ENDownloadManagerState

- (ENDownloadManagerState)init
{
  v6.receiver = self;
  v6.super_class = ENDownloadManagerState;
  v2 = [(ENDownloadManagerState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAC8]);
    statesByURL = v2->_statesByURL;
    v2->_statesByURL = v3;
  }

  return v2;
}

- (void)setEndpoints:(id)endpoints
{
  v23 = *MEMORY[0x277D85DE8];
  endpointsCopy = endpoints;
  v5 = objc_alloc_init(MEMORY[0x277CBEB30]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = endpointsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        serverBaseURL = [v11 serverBaseURL];
        v13 = [(NSDictionary *)self->_statesByURL objectForKeyedSubscript:serverBaseURL];
        if (v13)
        {
          v14 = v13;
          [(ENDownloadEndpointState *)v13 setEndpoint:v11];
        }

        else
        {
          v14 = [[ENDownloadEndpointState alloc] initWithEndpoint:v11];
        }

        [v5 setObject:v14 forKeyedSubscript:serverBaseURL];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [objc_alloc(MEMORY[0x277CBEAC8]) initWithDictionary:v5];
  statesByURL = self->_statesByURL;
  self->_statesByURL = v15;

  v17 = *MEMORY[0x277D85DE8];
}

- (NSArray)endpoints
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  endpointStates = [(ENDownloadManagerState *)self endpointStates];
  v5 = [endpointStates countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(endpointStates);
        }

        endpoint = [*(*(&v13 + 1) + 8 * i) endpoint];
        [v3 addObject:endpoint];
      }

      v6 = [endpointStates countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  endpointStates = [(ENDownloadManagerState *)self endpointStates];
  [coderCopy encodeInteger:1 forKey:@"vers"];
  [coderCopy encodeObject:endpointStates forKey:@"endpoints"];
}

- (ENDownloadManagerState)initWithCoder:(id)coder
{
  v32 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([coderCopy decodeIntegerForKey:@"vers"] == 1)
  {
    v5 = MEMORY[0x277CBEB90];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"endpoints"];
    if (v8)
    {
      v9 = [(ENDownloadManagerState *)self init];
      v10 = v9;
      if (v9)
      {
        v25 = v9;
        v26 = v7;
        v11 = objc_alloc_init(MEMORY[0x277CBEB30]);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v12 = v8;
        v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v28;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v27 + 1) + 8 * i);
              endpoint = [v17 endpoint];
              serverBaseURL = [endpoint serverBaseURL];
              [v11 setObject:v17 forKeyedSubscript:serverBaseURL];
            }

            v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v14);
        }

        v20 = [objc_alloc(MEMORY[0x277CBEAC8]) initWithDictionary:v11];
        v10 = v25;
        statesByURL = v25->_statesByURL;
        v25->_statesByURL = v20;

        v7 = v26;
      }

      self = v10;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end