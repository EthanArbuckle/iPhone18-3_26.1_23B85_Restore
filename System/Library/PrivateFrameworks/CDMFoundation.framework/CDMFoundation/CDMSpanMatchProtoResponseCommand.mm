@interface CDMSpanMatchProtoResponseCommand
- (CDMSpanMatchProtoResponseCommand)initWithResponse:(id)a3;
@end

@implementation CDMSpanMatchProtoResponseCommand

- (CDMSpanMatchProtoResponseCommand)initWithResponse:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v27.receiver = self;
  v27.super_class = CDMSpanMatchProtoResponseCommand;
  v6 = [(CDMBaseCommand *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spanMatchResponse, a3);
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "matchingSpansCount")}];
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "matchingSpansCount")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [v5 matchingSpans];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if ([CDMSpanMatchUtils isSpanOnlyForExternalParsers:v15])
          {
            v16 = v9;
          }

          else
          {
            v16 = v8;
          }

          [(NSArray *)v16 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v12);
    }

    matchingSpansForNL = v7->_matchingSpansForNL;
    v7->_matchingSpansForNL = v8;
    v18 = v8;

    objc_storeStrong(&v7->_matchingSpansForExternalParsers, v9);
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v22 = [(NSArray *)v9 count];
      *buf = 136315394;
      v29 = "[CDMSpanMatchProtoResponseCommand initWithResponse:]";
      v30 = 2048;
      v31 = v22;
      _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Filtered %lu spans to only expose to external parsers", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

@end