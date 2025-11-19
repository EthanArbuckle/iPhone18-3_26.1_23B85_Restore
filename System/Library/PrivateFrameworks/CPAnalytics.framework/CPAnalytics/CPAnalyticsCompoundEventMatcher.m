@interface CPAnalyticsCompoundEventMatcher
+ (id)andEventMatcherWithSubEventMatchers:(id)a3;
+ (id)notEventMatcherWithSubEventMatcher:(id)a3;
+ (id)orEventMatcherWithSubEventMatchers:(id)a3;
- (BOOL)doesMatch:(id)a3;
- (CPAnalyticsCompoundEventMatcher)initWithType:(unint64_t)a3 subEventMatchers:(id)a4;
@end

@implementation CPAnalyticsCompoundEventMatcher

- (BOOL)doesMatch:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CPAnalyticsCompoundEventMatcher *)self type];
  switch(v5)
  {
    case 3uLL:
      v6 = [(CPAnalyticsCompoundEventMatcher *)self subEventMatchers];
      v14 = [v6 firstObject];
      LODWORD(v11) = [v14 doesMatch:v4] ^ 1;

      goto LABEL_25;
    case 2uLL:
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = [(CPAnalyticsCompoundEventMatcher *)self subEventMatchers];
      v11 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = *v18;
LABEL_15:
      v13 = 0;
      while (1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v17 + 1) + 8 * v13) doesMatch:v4])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            goto LABEL_15;
          }

          goto LABEL_25;
        }
      }

LABEL_12:
      LOBYTE(v11) = 1;
LABEL_25:

      goto LABEL_26;
    case 1uLL:
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = [(CPAnalyticsCompoundEventMatcher *)self subEventMatchers];
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v22;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v6);
            }

            if (![*(*(&v21 + 1) + 8 * i) doesMatch:v4])
            {
              LOBYTE(v11) = 0;
              goto LABEL_25;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_12;
  }

  LOBYTE(v11) = 0;
LABEL_26:

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (CPAnalyticsCompoundEventMatcher)initWithType:(unint64_t)a3 subEventMatchers:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CPAnalyticsCompoundEventMatcher;
  v7 = [(CPAnalyticsCompoundEventMatcher *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [v6 copy];
    subEventMatchers = v8->_subEventMatchers;
    v8->_subEventMatchers = v9;
  }

  return v8;
}

+ (id)notEventMatcherWithSubEventMatcher:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 alloc];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = [v5 initWithType:3 subEventMatchers:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)orEventMatcherWithSubEventMatchers:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:2 subEventMatchers:v4];

  return v5;
}

+ (id)andEventMatcherWithSubEventMatchers:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:1 subEventMatchers:v4];

  return v5;
}

@end