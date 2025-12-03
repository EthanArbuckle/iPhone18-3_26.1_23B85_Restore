@interface ECEmailAddress
+ (id)_cachedEmailAddressForString:(id)string generator:(id)generator;
+ (id)emailAddressWithString:(id)string;
+ (id)emailAddressesFromStrings:(id)strings invalidAddresses:(id *)addresses;
- (BOOL)_createComponentsFrom:(id)from;
- (BOOL)isEqual:(id)equal;
- (BOOL)respondsToSelector:(SEL)selector;
- (ECEmailAddress)initWithCoder:(id)coder;
- (ECEmailAddress)initWithString:(id)string;
- (NSArray)groupList;
- (NSString)debugDescription;
- (NSString)domainStrippingTopLevelDomain;
- (NSString)ef_publicDescription;
- (NSString)highLevelDomain;
- (NSString)highLevelDomainStrippingTopLevelDomain;
- (NSString)stringValue;
- (id)_initWithComponents:(id)components;
- (id)valueForUndefinedKey:(id)key;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  groupList = selfCopy->_groupList;
  if (!groupList)
  {
    groupList = [(ECEmailAddressComponents *)selfCopy->_components groupList];
    v5 = [groupList ef_map:&__block_literal_global_6];
    v6 = selfCopy->_groupList;
    selfCopy->_groupList = v5;

    groupList = selfCopy->_groupList;
  }

  v7 = groupList;
  objc_sync_exit(selfCopy);

  return v7;
}

- (NSString)ef_publicDescription
{
  v29 = *MEMORY[0x277D85DE8];
  groupList = [(ECEmailAddress *)self groupList];
  if (!groupList)
  {
    currentDevice = [MEMORY[0x277D07148] currentDevice];
    isInternal = [currentDevice isInternal];

    v16 = MEMORY[0x277D07198];
    if (isInternal)
    {
      simpleAddress = [(ECEmailAddress *)self simpleAddress];
      localPart = [(ECEmailAddress *)self localPart];
      domain = [(ECEmailAddress *)self domain];
      v6 = [v16 ec_partiallyRedactedStringForAddress:simpleAddress localPart:localPart domain:domain];

LABEL_18:
      goto LABEL_19;
    }

    simpleAddress = [(ECEmailAddress *)self simpleAddress];
    v21 = [v16 fullyRedactedStringForString:simpleAddress];
LABEL_17:
    v6 = v21;
    goto LABEL_18;
  }

  currentDevice2 = [MEMORY[0x277D07148] currentDevice];
  isInternal2 = [currentDevice2 isInternal];

  if (!isInternal2)
  {
    v20 = [groupList ef_compactMapSelector:sel_simpleAddress];
    simpleAddress = [v20 componentsJoinedByString:&stru_284041D88];

    v21 = [MEMORY[0x277D07198] fullyRedactedStringForString:simpleAddress];
    goto LABEL_17;
  }

  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"["];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = groupList;
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

        ef_publicDescription = [v12 ef_publicDescription];
        [v6 appendString:ef_publicDescription];

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
  domain = [(ECEmailAddress *)self domain];
  _lp_highLevelDomainFromHost = [domain _lp_highLevelDomainFromHost];

  return _lp_highLevelDomainFromHost;
}

+ (id)emailAddressesFromStrings:(id)strings invalidAddresses:(id *)addresses
{
  v22 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = stringsCopy;
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

  if (addresses)
  {
    v13 = v5;
    *addresses = v5;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)emailAddressWithString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithString:stringCopy];

  return v5;
}

- (ECEmailAddress)initWithString:(id)string
{
  stringCopy = string;
  v5 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__ECEmailAddress_initWithString___block_invoke;
  v10[3] = &unk_27874B800;
  selfCopy = self;
  v11 = selfCopy;
  v7 = stringCopy;
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

- (BOOL)_createComponentsFrom:(id)from
{
  fromCopy = from;
  v5 = [[ECEmailAddressComponents alloc] initWithString:fromCopy];
  _nts_isValidDomain = [(ECEmailAddressComponents *)v5 _nts_isValidDomain];
  v7 = _nts_isValidDomain;
  if (self)
  {
    v8 = _nts_isValidDomain;
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

- (id)_initWithComponents:(id)components
{
  componentsCopy = components;
  v9.receiver = self;
  v9.super_class = ECEmailAddress;
  v5 = [(ECEmailAddress *)&v9 init];
  if (v5)
  {
    v6 = [componentsCopy copy];
    components = v5->_components;
    v5->_components = v6;

    v5->_hash = -1;
  }

  return v5;
}

- (ECEmailAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_stringValue"];
  v6 = [(ECEmailAddress *)self initWithString:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stringValue = [(ECEmailAddress *)self stringValue];
  [coderCopy encodeObject:stringValue forKey:@"EFPropertyKey_stringValue"];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  stringValue = [(ECEmailAddress *)self stringValue];
  components = [(ECEmailAddress *)self components];
  v7 = [components debugDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p> %@ components=%@", v4, self, stringValue, v7];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    components = self->_components;
    components = [(ECEmailAddress *)v5 components];
    v8 = [(ECEmailAddressComponents *)components isEqual:components];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECEmailAddress.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"[otherAddress isKindOfClass:ECEmailAddress.class]"}];
  }

  simpleAddress = [(ECEmailAddress *)self simpleAddress];
  simpleAddress2 = [compareCopy simpleAddress];
  v8 = [simpleAddress compare:simpleAddress2];

  return v8;
}

- (BOOL)respondsToSelector:(SEL)selector
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

- (id)valueForUndefinedKey:(id)key
{
  v3 = [(ECEmailAddressComponents *)self->_components valueForKey:key];

  return v3;
}

- (NSString)highLevelDomainStrippingTopLevelDomain
{
  highLevelDomain = [(ECEmailAddress *)self highLevelDomain];
  _lp_hostByStrippingTopLevelDomain = [highLevelDomain _lp_hostByStrippingTopLevelDomain];

  return _lp_hostByStrippingTopLevelDomain;
}

- (NSString)domainStrippingTopLevelDomain
{
  domain = [(ECEmailAddress *)self domain];
  _lp_hostByStrippingTopLevelDomain = [domain _lp_hostByStrippingTopLevelDomain];

  return _lp_hostByStrippingTopLevelDomain;
}

+ (id)_cachedEmailAddressForString:(id)string generator:(id)generator
{
  stringCopy = string;
  generatorCopy = generator;
  if (stringCopy)
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
    v12 = generatorCopy;
    v8 = [v7 objectForKey:stringCopy generator:v11];

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