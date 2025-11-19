@interface CDMMentionResolverResponseCommand
- (CDMMentionResolverResponseCommand)initWithMentions:(id)a3;
- (CDMMentionResolverResponseCommand)initWithResponse:(id)a3;
@end

@implementation CDMMentionResolverResponseCommand

- (CDMMentionResolverResponseCommand)initWithMentions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CDMMentionResolverResponseCommand;
  v5 = [(CDMBaseCommand *)&v19 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69D1300]);
    if (v4)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [v6 addMentions:{*(*(&v15 + 1) + 8 * v11++), v15}];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v9);
      }
    }

    response = v5->_response;
    v5->_response = v6;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (CDMMentionResolverResponseCommand)initWithResponse:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CDMMentionResolverResponseCommand;
  v5 = [(CDMBaseCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    response = v5->_response;
    v5->_response = v6;
  }

  return v5;
}

@end