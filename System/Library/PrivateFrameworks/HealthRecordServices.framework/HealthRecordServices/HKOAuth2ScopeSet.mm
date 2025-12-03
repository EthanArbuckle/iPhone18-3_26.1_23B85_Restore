@interface HKOAuth2ScopeSet
+ (id)scopeSetWithScopeString:(id)string;
+ (id)scopeSetWithScopes:(id)scopes;
+ (id)scopesFromScopeString:(id)string;
+ (unint64_t)_nonWildcardReadCompare:(id)compare to:(id)to;
+ (unint64_t)_nonWildcardWriteCompare:(id)compare to:(id)to;
+ (unint64_t)_readCompare:(id)compare to:(id)to;
+ (unint64_t)_writeCompare:(id)compare to:(id)to;
+ (unint64_t)compare:(id)compare to:(id)to;
- (BOOL)hasClinicalSharingScopes;
- (BOOL)isMissingScopesFrom:(id)from;
- (HKOAuth2ScopeSet)init;
- (HKOAuth2ScopeSet)initWithOriginalScopes:(id)scopes readableResourceTypes:(id)types writableResourceTypes:(id)resourceTypes canReadAllResourceTypes:(BOOL)allResourceTypes canWriteAllResourceTypes:(BOOL)writeAllResourceTypes hasAtLeastOneResourceTypeScope:(BOOL)scope;
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

- (HKOAuth2ScopeSet)initWithOriginalScopes:(id)scopes readableResourceTypes:(id)types writableResourceTypes:(id)resourceTypes canReadAllResourceTypes:(BOOL)allResourceTypes canWriteAllResourceTypes:(BOOL)writeAllResourceTypes hasAtLeastOneResourceTypeScope:(BOOL)scope
{
  scopesCopy = scopes;
  typesCopy = types;
  resourceTypesCopy = resourceTypes;
  v25.receiver = self;
  v25.super_class = HKOAuth2ScopeSet;
  v17 = [(HKOAuth2ScopeSet *)&v25 init];
  if (v17)
  {
    v18 = [scopesCopy copy];
    originalScopes = v17->_originalScopes;
    v17->_originalScopes = v18;

    v20 = [typesCopy copy];
    readableResourceTypes = v17->_readableResourceTypes;
    v17->_readableResourceTypes = v20;

    v22 = [resourceTypesCopy copy];
    writableResourceTypes = v17->_writableResourceTypes;
    v17->_writableResourceTypes = v22;

    v17->_canReadAllResourceTypes = allResourceTypes;
    v17->_canWriteAllResourceTypes = writeAllResourceTypes;
    v17->_hasAtLeastOneResourceTypeScope = scope;
  }

  return v17;
}

+ (id)scopeSetWithScopes:(id)scopes
{
  v43 = *MEMORY[0x277D85DE8];
  scopesCopy = scopes;
  v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = scopesCopy;
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
            selfCopy = self;
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

  v25 = [[self alloc] initWithOriginalScopes:v4 readableResourceTypes:v31 writableResourceTypes:v28 canReadAllResourceTypes:v29 & 1 canWriteAllResourceTypes:BYTE4(v33) & 1 hasAtLeastOneResourceTypeScope:v33 & 1];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)scopeSetWithScopeString:(id)string
{
  v4 = [self scopesFromScopeString:string];
  v5 = [self scopeSetWithScopes:v4];

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
  allObjects = [(NSSet *)self->_originalScopes allObjects];
  v6 = [allObjects componentsJoinedByString:@" "];
  v7 = [v3 stringWithFormat:@"<%@ %p scopes: %@>", v4, self, v6];;

  return v7;
}

- (BOOL)isMissingScopesFrom:(id)from
{
  v4 = [HKOAuth2ScopeSet scopeSetWithScopes:from];
  v5 = [(HKOAuth2ScopeSet *)self compareTo:v4];

  return v5 > 1;
}

+ (unint64_t)compare:(id)compare to:(id)to
{
  toCopy = to;
  compareCopy = compare;
  v8 = [self _readCompare:compareCopy to:toCopy];
  v9 = [self _writeCompare:compareCopy to:toCopy];

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

+ (unint64_t)_readCompare:(id)compare to:(id)to
{
  compareCopy = compare;
  toCopy = to;
  canReadAllResourceTypes = [compareCopy canReadAllResourceTypes];
  canReadAllResourceTypes2 = [toCopy canReadAllResourceTypes];
  v10 = canReadAllResourceTypes2 ^ 1;
  if (((canReadAllResourceTypes ^ 1) & 1) != 0 || v10)
  {
    if ((canReadAllResourceTypes ^ 1 | canReadAllResourceTypes2))
    {
      if ((canReadAllResourceTypes | v10))
      {
        v11 = [self _nonWildcardReadCompare:compareCopy to:toCopy];
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

+ (unint64_t)_writeCompare:(id)compare to:(id)to
{
  compareCopy = compare;
  toCopy = to;
  canWriteAllResourceTypes = [compareCopy canWriteAllResourceTypes];
  canWriteAllResourceTypes2 = [toCopy canWriteAllResourceTypes];
  v10 = canWriteAllResourceTypes2 ^ 1;
  if (((canWriteAllResourceTypes ^ 1) & 1) != 0 || v10)
  {
    if ((canWriteAllResourceTypes ^ 1 | canWriteAllResourceTypes2))
    {
      if ((canWriteAllResourceTypes | v10))
      {
        v11 = [self _nonWildcardWriteCompare:compareCopy to:toCopy];
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

+ (unint64_t)_nonWildcardReadCompare:(id)compare to:(id)to
{
  toCopy = to;
  compareCopy = compare;
  readableResourceTypes = [toCopy readableResourceTypes];
  readableResourceTypes2 = [compareCopy readableResourceTypes];
  v9 = [readableResourceTypes hk_minus:readableResourceTypes2];
  v10 = [v9 count];

  readableResourceTypes3 = [compareCopy readableResourceTypes];

  readableResourceTypes4 = [toCopy readableResourceTypes];

  v13 = [readableResourceTypes3 hk_minus:readableResourceTypes4];
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

+ (unint64_t)_nonWildcardWriteCompare:(id)compare to:(id)to
{
  toCopy = to;
  compareCopy = compare;
  writableResourceTypes = [toCopy writableResourceTypes];
  writableResourceTypes2 = [compareCopy writableResourceTypes];
  v9 = [writableResourceTypes hk_minus:writableResourceTypes2];
  v10 = [v9 count];

  writableResourceTypes3 = [compareCopy writableResourceTypes];

  writableResourceTypes4 = [toCopy writableResourceTypes];

  v13 = [writableResourceTypes3 hk_minus:writableResourceTypes4];
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

+ (id)scopesFromScopeString:(id)string
{
  v3 = MEMORY[0x277CCA900];
  stringCopy = string;
  whitespaceAndNewlineCharacterSet = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [stringCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  v7 = [v6 hk_filter:&__block_literal_global_12];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];

  return v8;
}

@end