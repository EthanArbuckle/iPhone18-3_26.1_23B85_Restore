@interface CRKClassNameSubstitutionRequestToOperationClassMapper
- (CRKClassNameSubstitutionRequestToOperationClassMapper)init;
- (CRKClassNameSubstitutionRequestToOperationClassMapper)initWithAllowedRequestPrefixes:(id)a3 operationPrefix:(id)a4;
- (Class)operationClassForRequest:(id)a3;
- (id)prefixForString:(id)a3;
- (id)stringByApplyingOperationPrefixToString:(id)a3;
- (id)stringByApplyingOperationSuffixToString:(id)a3;
@end

@implementation CRKClassNameSubstitutionRequestToOperationClassMapper

- (CRKClassNameSubstitutionRequestToOperationClassMapper)init
{
  v3 = objc_opt_new();
  v4 = [(CRKClassNameSubstitutionRequestToOperationClassMapper *)self initWithAllowedRequestPrefixes:v3 operationPrefix:&stru_285643BE8];

  return v4;
}

- (CRKClassNameSubstitutionRequestToOperationClassMapper)initWithAllowedRequestPrefixes:(id)a3 operationPrefix:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CRKClassNameSubstitutionRequestToOperationClassMapper;
  v8 = [(CRKClassNameSubstitutionRequestToOperationClassMapper *)&v16 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"length" ascending:0];
    v17[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v11 = [v6 sortedArrayUsingDescriptors:v10];
    mAllowedPrefixes = v8->mAllowedPrefixes;
    v8->mAllowedPrefixes = v11;

    v13 = [v7 copy];
    mOperationPrefix = v8->mOperationPrefix;
    v8->mOperationPrefix = v13;
  }

  return v8;
}

- (Class)operationClassForRequest:(id)a3
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (v5)
  {
    v6 = [(CRKClassNameSubstitutionRequestToOperationClassMapper *)self stringByApplyingOperationSuffixToString:v5];
    if (v6)
    {
      v7 = [(CRKClassNameSubstitutionRequestToOperationClassMapper *)self stringByApplyingOperationPrefixToString:v6];
      v8 = v7;
      if (v7)
      {
        v7 = NSClassFromString(v7);
      }

      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)stringByApplyingOperationSuffixToString:(id)a3
{
  v3 = a3;
  if ([v3 hasSuffix:@"Request"])
  {
    v4 = [v3 rangeOfString:@"Request" options:4];
    v6 = [v3 stringByReplacingCharactersInRange:v4 withString:{v5, @"Operation"}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)stringByApplyingOperationPrefixToString:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassNameSubstitutionRequestToOperationClassMapper *)self prefixForString:v4];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CCACA8];
    mOperationPrefix = self->mOperationPrefix;
    v9 = [v4 substringFromIndex:{objc_msgSend(v5, "length")}];
    v10 = [v7 stringWithFormat:@"%@%@", mOperationPrefix, v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)prefixForString:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->mAllowedPrefixes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v4 hasPrefix:{v9, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end