@interface NSMutableURLRequest(NDO)
- (id)bodyDescription;
- (id)headerDescription;
- (void)addAllHeadersFrom:()NDO;
@end

@implementation NSMutableURLRequest(NDO)

- (void)addAllHeadersFrom:()NDO
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 count])
  {
    v5 = _NDOLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NSMutableURLRequest(NDO) addAllHeadersFrom:v5];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    *&v8 = 136446466;
    v17 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [a1 valueForHTTPHeaderField:{v12, v17, v18}];

        if (v13)
        {
          v14 = _NDOLogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v23 = "[NSMutableURLRequest(NDO) addAllHeadersFrom:]";
            v24 = 2112;
            v25 = v12;
            _os_log_impl(&dword_25BD52000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Overriding previously set value for key %@", buf, 0x16u);
          }
        }

        v15 = [v6 objectForKeyedSubscript:v12];
        [a1 setValue:v15 forHTTPHeaderField:v12];
      }

      v9 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)headerDescription
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 allHTTPHeaderFields];
  v3 = [v1 stringWithFormat:@"%@", v2];

  return v3;
}

- (id)bodyDescription
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [a1 HTTPBody];
  v4 = [v2 initWithData:v3 encoding:4];

  return v4;
}

- (void)addAllHeadersFrom:()NDO .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "[NSMutableURLRequest(NDO) addAllHeadersFrom:]";
  _os_log_error_impl(&dword_25BD52000, log, OS_LOG_TYPE_ERROR, "%{public}s: No headers to add to request", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end