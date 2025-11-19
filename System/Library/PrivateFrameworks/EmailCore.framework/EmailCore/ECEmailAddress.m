@interface ECEmailAddress
+ (id)_cachedEmailAddressForString:(id)a3 generator:(id)a4;
+ (id)emailAddressWithString:(id)a3;
+ (id)emailAddressesFromStrings:(id)a3 invalidAddresses:(id *)a4;
- (BOOL)_createComponentsFrom:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (ECEmailAddress)initWithCoder:(id)a3;
- (ECEmailAddress)initWithString:(id)a3;
- (NSArray)groupList;
- (NSString)debugDescription;
- (NSString)domainStrippingTopLevelDomain;
- (NSString)ef_publicDescription;
- (NSString)highLevelDomain;
- (NSString)highLevelDomainStrippingTopLevelDomain;
- (NSString)stringValue;
- (id)_initWithComponents:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ECEmailAddress

- (NSString)stringValue
{
  v3 = objc_alloc_init(ECEmailAddressFormatter);
  [(ECEmailAddressFormatter *)v3 setShouldIncludeDisplayName:1];
  v4 = [(ECEmailAddressFormatter *)v3 stringFromEmailAddress:self];

  return v4;
}

- (NSArray)groupList
{
  v2 = self;
  objc_sync_enter(v2);
  groupList = v2->_groupList;
  if (!groupList)
  {
    v4 = [(ECEmailAddressComponents *)v2->_components groupList];
    v5 = [v4 ef_map:&__block_literal_global_6];
    v6 = v2->_groupList;
    v2->_groupList = v5;

    groupList = v2->_groupList;
  }

  v7 = groupList;
  objc_sync_exit(v2);

  return v7;
}

- (NSString)ef_publicDescription
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(ECEmailAddress *)self groupList];
  if (!v3)
  {
    v14 = [MEMORY[0x277D07148] currentDevice];
    v15 = [v14 isInternal];

    v16 = MEMORY[0x277D07198];
    if (v15)
    {
      v17 = [(ECEmailAddress *)self simpleAddress];
      v18 = [(ECEmailAddress *)self localPart];
      v19 = [(ECEmailAddress *)self domain];
      v6 = [v16 ec_partiallyRedactedStringForAddress:v17 localPart:v18 domain:v19];

LABEL_18:
      goto LABEL_19;
    }

    v17 = [(ECEmailAddress *)self simpleAddress];
    v21 = [v16 fullyRedactedStringForString:v17];
LABEL_17:
    v6 = v21;
    goto LABEL_18;
  }

  v4 = [MEMORY[0x277D07148] currentDevice];
  v5 = [v4 isInternal];

  if (!v5)
  {
    v20 = [v3 ef_compactMapSelector:sel_simpleAddress];
    v17 = [v20 componentsJoinedByString:&stru_284041D88];

    v21 = [MEMORY[0x277D07198] fullyRedactedStringForString:v17];
    goto LABEL_17;
  }

  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"["];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = *v25;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        if ((v10 & 1) == 0)
        {
          [v6 appendString:{@", ", v24}];
        }

        v13 = [v12 ef_publicDescription];
        [v6 appendString:v13];

        v10 = 0;
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v10 = 0;
    }

    while (v8);
  }

  [v6 appendString:@"]"];
LABEL_19:

  v22 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)highLevelDomain
{
  v2 = [(ECEmailAddress *)self domain];
  v3 = [v2 _lp_highLevelDomainFromHost];

  return v3;
}

+ (id)emailAddressesFromStrings:(id)a3 invalidAddresses:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v16;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [ECEmailAddress emailAddressWithString:v11];
        if (v12)
        {
          [v6 addObject:v12];
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if (a4)
  {
    v13 = v5;
    *a4 = v5;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)emailAddressWithString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithString:v4];

  return v5;
}

- (ECEmailAddress)initWithString:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__ECEmailAddress_initWithString___block_invoke;
  v10[3] = &unk_27874B800;
  v6 = self;
  v11 = v6;
  v7 = v4;
  v12 = v7;
  v8 = [v5 _cachedEmailAddressForString:v7 generator:v10];

  return v8;
}

id __33__ECEmailAddress_initWithString___block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = ECEmailAddress;
  v2 = objc_msgSendSuper2(&v5, sel_init);
  v3 = v2;
  if (v2 && ([v2 _createComponentsFrom:*(a1 + 40)] & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (BOOL)_createComponentsFrom:(id)a3
{
  v4 = a3;
  v5 = [[ECEmailAddressComponents alloc] initWithString:v4];
  v6 = [(ECEmailAddressComponents *)v5 _nts_isValidDomain];
  v7 = v6;
  if (self)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    objc_storeStrong(&self->_components, v5);
    self->_hash = -1;
  }

  return v7;
}

- (id)_initWithComponents:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ECEmailAddress;
  v5 = [(ECEmailAddress *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    components = v5->_components;
    v5->_components = v6;

    v5->_hash = -1;
  }

  return v5;
}

- (ECEmailAddress)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_stringValue"];
  v6 = [(ECEmailAddress *)self initWithString:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(ECEmailAddress *)self stringValue];
  [v5 encodeObject:v4 forKey:@"EFPropertyKey_stringValue"];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ECEmailAddress *)self stringValue];
  v6 = [(ECEmailAddress *)self components];
  v7 = [v6 debugDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p> %@ components=%@", v4, self, v5, v7];

  return v8;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (result == -1)
  {
    result = [(ECEmailAddressComponents *)self->_components hash];
    self->_hash = result;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    components = self->_components;
    v7 = [(ECEmailAddress *)v5 components];
    v8 = [(ECEmailAddressComponents *)components isEqual:v7];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (int64_t)compare:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"ECEmailAddress.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"[otherAddress isKindOfClass:ECEmailAddress.class]"}];
  }

  v6 = [(ECEmailAddress *)self simpleAddress];
  v7 = [v5 simpleAddress];
  v8 = [v6 compare:v7];

  return v8;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = ECEmailAddress;
  if ([(ECEmailAddress *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    components = self->_components;
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

id __27__ECEmailAddress_groupList__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 emailAddressValue];

  return v2;
}

- (id)valueForUndefinedKey:(id)a3
{
  v3 = [(ECEmailAddressComponents *)self->_components valueForKey:a3];

  return v3;
}

- (NSString)highLevelDomainStrippingTopLevelDomain
{
  v2 = [(ECEmailAddress *)self highLevelDomain];
  v3 = [v2 _lp_hostByStrippingTopLevelDomain];

  return v3;
}

- (NSString)domainStrippingTopLevelDomain
{
  v2 = [(ECEmailAddress *)self domain];
  v3 = [v2 _lp_hostByStrippingTopLevelDomain];

  return v3;
}

+ (id)_cachedEmailAddressForString:(id)a3 generator:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    if (sharedCache_onceToken != -1)
    {
      +[ECEmailAddress _cachedEmailAddressForString:generator:];
    }

    v7 = sharedCache_cache;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__ECEmailAddress__cachedEmailAddressForString_generator___block_invoke;
    v11[3] = &unk_27874B848;
    v12 = v6;
    v8 = [v7 objectForKey:v5 generator:v11];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
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

id __57__ECEmailAddress__cachedEmailAddressForString_generator___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v4 = v3;

  return v4;
}

@end