@interface CDMContextualSpanMatcherResponseCommand
- (CDMContextualSpanMatcherResponseCommand)initWithContextualSpanMatcherResponse:(id)a3;
- (CDMContextualSpanMatcherResponseCommand)initWithMentions:(id)a3;
@end

@implementation CDMContextualSpanMatcherResponseCommand

- (CDMContextualSpanMatcherResponseCommand)initWithMentions:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CDMContextualSpanMatcherResponseCommand;
  v5 = [(CDMBaseCommand *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69D1290]);
    objc_storeStrong(&v5->_contextualSpanMatcherResponse, v6);
    if (v4)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [v6 addContextualSpans:{*(*(&v14 + 1) + 8 * v11++), v14}];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v9);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (CDMContextualSpanMatcherResponseCommand)initWithContextualSpanMatcherResponse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMContextualSpanMatcherResponseCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextualSpanMatcherResponse, a3);
  }

  return v7;
}

@end