@interface HKOAuth2ScopeSet
+ (id)scopeSetWithScopeString:(id)a3;
+ (id)scopeSetWithScopes:(id)a3;
+ (id)scopesFromScopeString:(id)a3;
+ (unint64_t)_nonWildcardReadCompare:(id)a3 to:(id)a4;
+ (unint64_t)_nonWildcardWriteCompare:(id)a3 to:(id)a4;
+ (unint64_t)_readCompare:(id)a3 to:(id)a4;
+ (unint64_t)_writeCompare:(id)a3 to:(id)a4;
+ (unint64_t)compare:(id)a3 to:(id)a4;
- (BOOL)hasClinicalSharingScopes;
- (BOOL)isMissingScopesFrom:(id)a3;
- (HKOAuth2ScopeSet)init;
- (HKOAuth2ScopeSet)initWithOriginalScopes:(id)a3 readableResourceTypes:(id)a4 writableResourceTypes:(id)a5 canReadAllResourceTypes:(BOOL)a6 canWriteAllResourceTypes:(BOOL)a7 hasAtLeastOneResourceTypeScope:(BOOL)a8;
- (id)description;
@end

@implementation HKOAuth2ScopeSet

- (HKOAuth2ScopeSet)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKOAuth2ScopeSet)initWithOriginalScopes:(id)a3 readableResourceTypes:(id)a4 writableResourceTypes:(id)a5 canReadAllResourceTypes:(BOOL)a6 canWriteAllResourceTypes:(BOOL)a7 hasAtLeastOneResourceTypeScope:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v25.receiver = self;
  v25.super_class = HKOAuth2ScopeSet;
  v17 = [(HKOAuth2ScopeSet *)&v25 init];
  if (v17)
  {
    v18 = [v14 copy];
    originalScopes = v17->_originalScopes;
    v17->_originalScopes = v18;

    v20 = [v15 copy];
    readableResourceTypes = v17->_readableResourceTypes;
    v17->_readableResourceTypes = v20;

    v22 = [v16 copy];
    writableResourceTypes = v17->_writableResourceTypes;
    v17->_writableResourceTypes = v22;

    v17->_canReadAllResourceTypes = a6;
    v17->_canWriteAllResourceTypes = a7;
    v17->_hasAtLeastOneResourceTypeScope = a8;
  }

  return v17;
}

+ (id)scopeSetWithScopes:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v5)
  {
    v33 = 0;
    v29 = 0;
    goto LABEL_43;
  }

  v6 = v5;
  v33 = 0;
  v29 = 0;
  v7 = *v35;
  v32 = v4;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v35 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v34 + 1) + 8 * i);
      v10 = [v9 componentsSeparatedByString:{@"/", v28}];
      if ([v10 count] >= 2)
      {
        v11 = [v10 objectAtIndexedSubscript:0];
        if (([v11 isEqualToString:@"patient"] & 1) == 0 && !objc_msgSend(v11, "isEqualToString:", @"user"))
        {
          goto LABEL_38;
        }

        v12 = [v10 objectAtIndexedSubscript:1];
        v13 = [v12 componentsSeparatedByString:@"."];

        if ([v13 count] <= 1)
        {
          _HKInitializeLogging();
          v14 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v39 = a1;
            v40 = 2114;
            v41 = v9;
            _os_log_impl(&dword_2519FE000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid scope detected: %{public}@", buf, 0x16u);
          }

LABEL_37:

LABEL_38:
          goto LABEL_39;
        }

        v15 = [v13 objectAtIndexedSubscript:0];
        v16 = [v13 objectAtIndexedSubscript:1];
        v17 = [v15 isEqualToString:@"*"];
        if ([v16 isEqualToString:@"*"])
        {
          if (v17)
          {
            v18 = 1;
            v19 = 1;
            goto LABEL_18;
          }

          [v31 addObject:v15];
LABEL_34:
          v20 = v28;
LABEL_35:
          [v20 addObject:v15];
          v18 = 1;
          v19 = HIDWORD(v33);
          goto LABEL_36;
        }

        if ([v16 isEqualToString:@"read"])
        {
          v20 = v31;
          if ((v17 & 1) == 0)
          {
            goto LABEL_35;
          }

          v18 = 1;
          v19 = HIDWORD(v33);
LABEL_18:
          v29 = 1;
LABEL_36:
          v33 = __PAIR64__(v19, v18);

          v4 = v32;
          goto LABEL_37;
        }

        if (![v16 isEqualToString:@"write"])
        {
          if ([v16 containsString:@"r"])
          {
            if (v17)
            {
              v21 = [v16 containsString:@"c"];
              v29 = 1;
              LODWORD(v33) = 1;
              v18 = 1;
              v19 = 1;
              if (v21)
              {
                goto LABEL_36;
              }

              goto LABEL_32;
            }

LABEL_27:
            [v31 addObject:v15];
            v23 = 1;
          }

          else
          {
            v22 = [v16 containsString:@"s"];
            if (!(v17 & 1 | ((v22 & 1) == 0)))
            {
              goto LABEL_27;
            }

            v23 = v22 | v33;
            v29 |= v22;
          }

          if (([v16 containsString:@"c"] & 1) == 0)
          {
            LODWORD(v33) = v23;
LABEL_32:
            v24 = [v16 containsString:@"w"];
            if (!(v17 & 1 | ((v24 & 1) == 0)))
            {
              goto LABEL_34;
            }

            v18 = v24 | v33;
            v19 = v24 | HIDWORD(v33);
            goto LABEL_36;
          }
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_34;
        }

        v18 = 1;
        v19 = 1;
        goto LABEL_36;
      }

LABEL_39:
    }

    v6 = [v4 countByEnumeratingWithState:&v34 objects:v42 count:16];
  }

  while (v6);
LABEL_43:

  v25 = [[a1 alloc] initWithOriginalScopes:v4 readableResourceTypes:v31 writableResourceTypes:v28 canReadAllResourceTypes:v29 & 1 canWriteAllResourceTypes:BYTE4(v33) & 1 hasAtLeastOneResourceTypeScope:v33 & 1];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)scopeSetWithScopeString:(id)a3
{
  v4 = [a1 scopesFromScopeString:a3];
  v5 = [a1 scopeSetWithScopes:v4];

  return v5;
}

- (BOOL)hasClinicalSharingScopes
{
  v3 = [(HKOAuth2ScopeSet *)self canReadResourceType:@"DocumentReference"];
  if (v3)
  {

    LOBYTE(v3) = [(HKOAuth2ScopeSet *)self canWriteResourceType:@"DocumentReference"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NSSet *)self->_originalScopes allObjects];
  v6 = [v5 componentsJoinedByString:@" "];
  v7 = [v3 stringWithFormat:@"<%@ %p scopes: %@>", v4, self, v6];;

  return v7;
}

- (BOOL)isMissingScopesFrom:(id)a3
{
  v4 = [HKOAuth2ScopeSet scopeSetWithScopes:a3];
  v5 = [(HKOAuth2ScopeSet *)self compareTo:v4];

  return v5 > 1;
}

+ (unint64_t)compare:(id)a3 to:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _readCompare:v7 to:v6];
  v9 = [a1 _writeCompare:v7 to:v6];

  switch(v8)
  {
    case 3:
      return 3;
    case 2:
      if (v9 < 4)
      {
        v10 = &unk_251A4F418;
        return v10[v9];
      }

      return 3;
    case 1:
      if (v9 < 4)
      {
        v10 = &unk_251A4F3F8;
        return v10[v9];
      }

      return 3;
  }

  return v9;
}

+ (unint64_t)_readCompare:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 canReadAllResourceTypes];
  v9 = [v7 canReadAllResourceTypes];
  v10 = v9 ^ 1;
  if (((v8 ^ 1) & 1) != 0 || v10)
  {
    if ((v8 ^ 1 | v9))
    {
      if ((v8 | v10))
      {
        v11 = [a1 _nonWildcardReadCompare:v6 to:v7];
      }

      else
      {
        v11 = 2;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (unint64_t)_writeCompare:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 canWriteAllResourceTypes];
  v9 = [v7 canWriteAllResourceTypes];
  v10 = v9 ^ 1;
  if (((v8 ^ 1) & 1) != 0 || v10)
  {
    if ((v8 ^ 1 | v9))
    {
      if ((v8 | v10))
      {
        v11 = [a1 _nonWildcardWriteCompare:v6 to:v7];
      }

      else
      {
        v11 = 2;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (unint64_t)_nonWildcardReadCompare:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 readableResourceTypes];
  v8 = [v6 readableResourceTypes];
  v9 = [v7 hk_minus:v8];
  v10 = [v9 count];

  v11 = [v6 readableResourceTypes];

  v12 = [v5 readableResourceTypes];

  v13 = [v11 hk_minus:v12];
  v14 = [v13 count];

  if (!(v10 | v14))
  {
    return 0;
  }

  if (!v10 && v14)
  {
    return 1;
  }

  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10 == 0;
  }

  if (v16)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

+ (unint64_t)_nonWildcardWriteCompare:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 writableResourceTypes];
  v8 = [v6 writableResourceTypes];
  v9 = [v7 hk_minus:v8];
  v10 = [v9 count];

  v11 = [v6 writableResourceTypes];

  v12 = [v5 writableResourceTypes];

  v13 = [v11 hk_minus:v12];
  v14 = [v13 count];

  if (!(v10 | v14))
  {
    return 0;
  }

  if (!v10 && v14)
  {
    return 1;
  }

  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10 == 0;
  }

  if (v16)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

+ (id)scopesFromScopeString:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v7 = [v6 hk_filter:&__block_literal_global_12];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];

  return v8;
}

@end