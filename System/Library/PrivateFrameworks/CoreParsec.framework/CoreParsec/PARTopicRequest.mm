@interface PARTopicRequest
- (NSArray)localTopics;
- (NSArray)queryTopicContexts;
- (PARTopicRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARTopicRequest

- (NSArray)queryTopicContexts
{
  queryTopicContexts = self->_queryTopicContexts;
  if (!queryTopicContexts)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(PARTopicRequest *)self topics];
    v6 = [v5 count];

    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PARTopicRequest *)self topics];
        v9 = [v8 objectAtIndexedSubscript:i];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [[PARQueryTopicContext alloc] initWithTopic:v9 index:i];
          [v4 addObject:v10];
        }
      }
    }

    v11 = [v4 copy];
    v12 = self->_queryTopicContexts;
    self->_queryTopicContexts = v11;

    queryTopicContexts = self->_queryTopicContexts;
  }

  return queryTopicContexts;
}

- (NSArray)localTopics
{
  v20 = *MEMORY[0x1E69E9840];
  localTopics = self->_localTopics;
  if (!localTopics)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(PARTopicRequest *)self topics];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v4 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
    v12 = self->_localTopics;
    self->_localTopics = v11;

    localTopics = self->_localTopics;
  }

  v13 = *MEMORY[0x1E69E9840];

  return localTopics;
}

- (PARTopicRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PARTopicRequest;
  v5 = [(PARRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"topicContexts"];
    queryTopicContexts = v5->_queryTopicContexts;
    v5->_queryTopicContexts = v9;

    [v4 decodeDoubleForKey:@"timeoutIntervalForRequest"];
    v5->_timeoutIntervalForRequest = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PARTopicRequest;
  v4 = a3;
  [(PARRequest *)&v6 encodeWithCoder:v4];
  v5 = [(PARTopicRequest *)self queryTopicContexts:v6.receiver];
  [v4 encodeObject:v5 forKey:@"topicContexts"];

  [(PARTopicRequest *)self timeoutIntervalForRequest];
  [v4 encodeDouble:@"timeoutIntervalForRequest" forKey:?];
}

@end