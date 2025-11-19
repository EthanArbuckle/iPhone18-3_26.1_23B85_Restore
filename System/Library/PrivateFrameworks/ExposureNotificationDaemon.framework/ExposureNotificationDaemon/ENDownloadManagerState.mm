@interface ENDownloadManagerState
- (ENDownloadManagerState)init;
- (ENDownloadManagerState)initWithCoder:(id)a3;
- (NSArray)endpoints;
- (void)encodeWithCoder:(id)a3;
- (void)setEndpoints:(id)a3;
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

- (void)setEndpoints:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB30]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
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
        v12 = [v11 serverBaseURL];
        v13 = [(NSDictionary *)self->_statesByURL objectForKeyedSubscript:v12];
        if (v13)
        {
          v14 = v13;
          [(ENDownloadEndpointState *)v13 setEndpoint:v11];
        }

        else
        {
          v14 = [[ENDownloadEndpointState alloc] initWithEndpoint:v11];
        }

        [v5 setObject:v14 forKeyedSubscript:v12];
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
  v4 = [(ENDownloadManagerState *)self endpointStates];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) endpoint];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ENDownloadManagerState *)self endpointStates];
  [v4 encodeInteger:1 forKey:@"vers"];
  [v4 encodeObject:v5 forKey:@"endpoints"];
}

- (ENDownloadManagerState)initWithCoder:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 decodeIntegerForKey:@"vers"] == 1)
  {
    v5 = MEMORY[0x277CBEB90];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"endpoints"];
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
              v18 = [v17 endpoint];
              v19 = [v18 serverBaseURL];
              [v11 setObject:v17 forKeyedSubscript:v19];
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
      v22 = self;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

@end