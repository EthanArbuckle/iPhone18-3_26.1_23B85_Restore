@interface CPAnalyticsErrorPropertyProvider
+ (id)_indepthErrorFromError:(id)error;
- (id)getDynamicProperty:(id)property forEventName:(id)name payloadForSystemPropertyExtraction:(id)extraction;
- (void)registerSystemProperties:(id)properties;
@end

@implementation CPAnalyticsErrorPropertyProvider

+ (id)_indepthErrorFromError:(id)error
{
  userInfo = [error userInfo];
  v4 = *MEMORY[0x277CCA7E8];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v7 = v5;
    v8 = 0;
    do
    {
      v9 = v7;
      domain = [v7 domain];
      -[__CFString appendFormat:](v6, "appendFormat:", @"%@:%ld|", domain, [v9 code]);

      userInfo2 = [v9 userInfo];
      v7 = [userInfo2 objectForKeyedSubscript:v4];

      if (v8 > 1)
      {
        break;
      }

      ++v8;
    }

    while (v7);
    [(__CFString *)v6 deleteCharactersInRange:[(__CFString *)v6 length]- 1, 1];
  }

  else
  {
    v6 = @"None";
  }

  return v6;
}

- (id)getDynamicProperty:(id)property forEventName:(id)name payloadForSystemPropertyExtraction:(id)extraction
{
  propertyCopy = property;
  v7 = [extraction objectForKeyedSubscript:@"cpa_error"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([propertyCopy isEqualToString:@"cpa_error_domain"])
    {
      domain = [v7 domain];
LABEL_12:
      v9 = domain;
      goto LABEL_14;
    }

    if ([propertyCopy isEqualToString:@"cpa_error_code"])
    {
      domain = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
      goto LABEL_12;
    }

    if ([propertyCopy isEqualToString:@"cpa_error_codeAsString"])
    {
      domain = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v7, "code")];
      goto LABEL_12;
    }

    if ([propertyCopy isEqualToString:@"cpa_error_description"])
    {
      domain = [v7 description];
      goto LABEL_12;
    }

    if ([propertyCopy isEqualToString:@"cpa_error_indepthErrors"])
    {
      domain = [objc_opt_class() _indepthErrorFromError:v7];
      goto LABEL_12;
    }
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (void)registerSystemProperties:(id)properties
{
  propertiesCopy = properties;
  [propertiesCopy addDynamicProperty:@"cpa_error_domain" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_error_code" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_error_codeAsString" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_error_description" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_error_indepthErrors" withProvider:self];
}

@end