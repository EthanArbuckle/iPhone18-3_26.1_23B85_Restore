@interface CPAnalyticsCompoundEventMatcher
+ (id)andEventMatcherWithSubEventMatchers:(id)matchers;
+ (id)notEventMatcherWithSubEventMatcher:(id)matcher;
+ (id)orEventMatcherWithSubEventMatchers:(id)matchers;
- (BOOL)doesMatch:(id)match;
- (CPAnalyticsCompoundEventMatcher)initWithType:(unint64_t)type subEventMatchers:(id)matchers;
@end

@implementation CPAnalyticsCompoundEventMatcher

- (BOOL)doesMatch:(id)match
{
  v27 = *MEMORY[0x277D85DE8];
  matchCopy = match;
  type = [(CPAnalyticsCompoundEventMatcher *)self type];
  switch(type)
  {
    case 3uLL:
      subEventMatchers = [(CPAnalyticsCompoundEventMatcher *)self subEventMatchers];
      firstObject = [subEventMatchers firstObject];
      LODWORD(v11) = [firstObject doesMatch:matchCopy] ^ 1;

      goto LABEL_25;
    case 2uLL:
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      subEventMatchers = [(CPAnalyticsCompoundEventMatcher *)self subEventMatchers];
      v11 = [subEventMatchers countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(subEventMatchers);
        }

        if ([*(*(&v17 + 1) + 8 * v13) doesMatch:matchCopy])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [subEventMatchers countByEnumeratingWithState:&v17 objects:v25 count:16];
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
      subEventMatchers = [(CPAnalyticsCompoundEventMatcher *)self subEventMatchers];
      v7 = [subEventMatchers countByEnumeratingWithState:&v21 objects:v26 count:16];
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
              objc_enumerationMutation(subEventMatchers);
            }

            if (![*(*(&v21 + 1) + 8 * i) doesMatch:matchCopy])
            {
              LOBYTE(v11) = 0;
              goto LABEL_25;
            }
          }

          v8 = [subEventMatchers countByEnumeratingWithState:&v21 objects:v26 count:16];
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

- (CPAnalyticsCompoundEventMatcher)initWithType:(unint64_t)type subEventMatchers:(id)matchers
{
  matchersCopy = matchers;
  v12.receiver = self;
  v12.super_class = CPAnalyticsCompoundEventMatcher;
  v7 = [(CPAnalyticsCompoundEventMatcher *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [matchersCopy copy];
    subEventMatchers = v8->_subEventMatchers;
    v8->_subEventMatchers = v9;
  }

  return v8;
}

+ (id)notEventMatcherWithSubEventMatcher:(id)matcher
{
  v10[1] = *MEMORY[0x277D85DE8];
  matcherCopy = matcher;
  v5 = [self alloc];
  v10[0] = matcherCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = [v5 initWithType:3 subEventMatchers:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)orEventMatcherWithSubEventMatchers:(id)matchers
{
  matchersCopy = matchers;
  v5 = [[self alloc] initWithType:2 subEventMatchers:matchersCopy];

  return v5;
}

+ (id)andEventMatcherWithSubEventMatchers:(id)matchers
{
  matchersCopy = matchers;
  v5 = [[self alloc] initWithType:1 subEventMatchers:matchersCopy];

  return v5;
}

@end