@interface MSParsecSearchSessionQueryComponent
+ (OS_os_log)log;
+ (id)_structuredQueryForComponents:(id)a3 hasCurrentMailboxScope:(BOOL)a4 languages:(id)a5;
+ (id)freeTextQueryComponentWithString:(id)a3;
+ (id)userTypedQueryComponentWithString:(id)a3 removingFreeTextTokenString:(id)a4;
+ (id)userTypedQueryComponentWithString:(id)a3 removingFreeTextTokens:(id)a4;
- (MSParsecSearchSessionQueryComponent)initWithCategory:(id)a3 scope:(id)a4 queryString:(id)a5 cannedSuggestion:(BOOL)a6;
- (id)_structuredQueryComponentWithLanguages:(id)a3;
@end

@implementation MSParsecSearchSessionQueryComponent

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MSParsecSearchSessionQueryComponent_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __42__MSParsecSearchSessionQueryComponent_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_0;
  log_log_0 = v1;
}

+ (id)freeTextQueryComponentWithString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCategory:@"free_text" scope:0 queryString:v4 cannedSuggestion:0];

  return v5;
}

+ (id)userTypedQueryComponentWithString:(id)a3 removingFreeTextTokens:(id)a4
{
  v5 = a3;
  v6 = [a4 componentsJoinedByString:@" "];
  v7 = [MSParsecSearchSessionQueryComponent userTypedQueryComponentWithString:v5 removingFreeTextTokenString:v6];

  return v7;
}

+ (id)userTypedQueryComponentWithString:(id)a3 removingFreeTextTokenString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if ([v7 length])
  {
    v10 = [v8 stringByReplacingOccurrencesOfString:v7 withString:&stru_28692F9D8 options:8 range:{0, objc_msgSend(v7, "length")}];

    v9 = v10;
  }

  if ([v9 length])
  {
    v11 = [[a1 alloc] initWithCategory:@"user_typed" scope:0 queryString:v9 cannedSuggestion:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_structuredQueryForComponents:(id)a3 hasCurrentMailboxScope:(BOOL)a4 languages:(id)a5
{
  v6 = a4;
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v7)
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __102__MSParsecSearchSessionQueryComponent__structuredQueryForComponents_hasCurrentMailboxScope_languages___block_invoke;
    v21 = &unk_27985B948;
    v22 = v8;
    v10 = [v7 ef_compactMap:&v18];
    [v9 addObjectsFromArray:{v10, v18, v19, v20, v21}];
    v11 = @"all";
    if (v6)
    {
      v11 = @"curr";
    }

    v12 = v11;
    v23 = @"mf";
    v24[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [v9 addObject:v13];
  }

  v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v9 options:0 error:0];
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id __102__MSParsecSearchSessionQueryComponent__structuredQueryForComponents_hasCurrentMailboxScope_languages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = +[MSParsecSearchSessionQueryComponent log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __102__MSParsecSearchSessionQueryComponent__structuredQueryForComponents_hasCurrentMailboxScope_languages___block_invoke_cold_1(v6);
    }

    v7 = 0;
  }

  else
  {
    v7 = [v3 _structuredQueryComponentWithLanguages:*(a1 + 32)];
  }

  return v7;
}

- (MSParsecSearchSessionQueryComponent)initWithCategory:(id)a3 scope:(id)a4 queryString:(id)a5 cannedSuggestion:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = MSParsecSearchSessionQueryComponent;
  v14 = [(MSParsecSearchSessionQueryComponent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_category, a3);
    objc_storeStrong(&v15->_scope, a4);
    objc_storeStrong(&v15->_queryString, a5);
    v15->_cannedSuggestion = a6;
  }

  return v15;
}

- (id)_structuredQueryComponentWithLanguages:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([(MSParsecSearchSessionQueryComponent *)self cannedSuggestion])
  {
    v5 = [(MSParsecSearchSessionQueryComponent *)self category];
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v5];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = [(MSParsecSearchSessionQueryComponent *)self category];
    if (v7)
    {
      v8 = [(MSParsecSearchSessionQueryComponent *)self scope];

      if (v8)
      {
        v9 = [(MSParsecSearchSessionQueryComponent *)self scope];
        [v6 setObject:v9 forKeyedSubscript:@"s"];
      }
    }

    v10 = [(MSParsecSearchSessionQueryComponent *)self queryString];
    v11 = [MEMORY[0x277CBEAF8] ef_localesFromLanguages:v24];
    v12 = [v11 firstObject];
    v13 = [v10 ef_wordComponentsForLocale:v12];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v13;
    v16 = 0;
    v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v16 += [*(*(&v25 + 1) + 8 * i) length];
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    v20 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
    [v6 setObject:v20 forKeyedSubscript:@"nc"];

    [v6 setObject:v14 forKeyedSubscript:@"nw"];
    v21 = [(MSParsecSearchSessionQueryComponent *)self category];
    [v4 setObject:v6 forKeyedSubscript:v21];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

@end