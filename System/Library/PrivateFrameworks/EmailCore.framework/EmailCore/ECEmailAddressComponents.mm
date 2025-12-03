@interface ECEmailAddressComponents
+ (ECEmailAddressComponents)componentsWithEmailAddress:(id)address;
+ (ECEmailAddressComponents)componentsWithString:(id)string;
- (BOOL)_nts_getValidatedDomain:(id *)domain idnaDomain:(id *)idnaDomain avoidReparse:(BOOL)reparse;
- (BOOL)_nts_getValidatedLocalPart:(id *)part domain:(id *)domain idnaDomain:(id *)idnaDomain displayName:(id *)name;
- (BOOL)_nts_isValid;
- (BOOL)_nts_isValidDomain;
- (BOOL)isEqual:(id)equal;
- (ECEmailAddress)emailAddressValue;
- (ECEmailAddressComponents)init;
- (ECEmailAddressComponents)initWithEmailAddress:(id)address;
- (ECEmailAddressComponents)initWithString:(id)string;
- (NSArray)groupList;
- (NSString)debugDescription;
- (NSString)domain;
- (NSString)ef_publicDescription;
- (NSString)idnaAddress;
- (NSString)idnaDomain;
- (NSString)localPart;
- (NSString)simpleAddress;
- (NSString)stringValue;
- (id)_initWithString:(id)string displayName:(id)name localPart:(id)part domain:(id)domain groupList:(id)list;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)setDomain:(id)domain;
- (void)setGroupList:(id)list;
- (void)setIDNADomain:(id)domain;
- (void)setLocalPart:(id)part;
@end

@implementation ECEmailAddressComponents

- (NSString)simpleAddress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  simpleAddress = selfCopy->_simpleAddress;
  if (!simpleAddress)
  {
    if (selfCopy->_groupList)
    {
      simpleAddress = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v4 = [(ECEmailAddressComponents *)selfCopy _nts_getValidatedLocalPart:&v15 domain:&v14 idnaDomain:0 displayName:0];
      v5 = v15;
      v6 = v14;
      v7 = v6;
      if (v4)
      {
        v8 = MEMORY[0x277CCACA8];
        _lp_userVisibleHost = [v6 _lp_userVisibleHost];
        v10 = [v8 stringWithFormat:@"%@@%@", v5, _lp_userVisibleHost];
        v11 = selfCopy->_simpleAddress;
        selfCopy->_simpleAddress = v10;
      }

      simpleAddress = selfCopy->_simpleAddress;
    }
  }

  v12 = simpleAddress;
  objc_sync_exit(selfCopy);

  return v12;
}

- (NSArray)groupList
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objectEnumerator = [(NSArray *)selfCopy->_groupList objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  objc_sync_exit(selfCopy);

  return allObjects;
}

- (NSString)localPart
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_localPart;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)domain
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_idnaDomain && !selfCopy->_domain)
  {
    v3 = [ECIDNADecoder stringByDecodingDomainName:?];
    domain = selfCopy->_domain;
    selfCopy->_domain = v3;
  }

  v5 = selfCopy->_domain;
  objc_sync_exit(selfCopy);

  return v5;
}

- (ECEmailAddress)emailAddressValue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ECEmailAddressComponents *)selfCopy _nts_isValid])
  {
    v3 = [[ECEmailAddress alloc] _initWithComponents:selfCopy];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)_nts_isValid
{
  v3 = [(ECEmailAddressComponents *)self _nts_getValidatedLocalPart:0 domain:0 idnaDomain:0 displayName:0];
  if (self->_groupList)
  {
    ecemailaddress_trimmedAndQuotedDisplayName = [(NSString *)self->_displayName ecemailaddress_trimmedAndQuotedDisplayName];
    if ([ecemailaddress_trimmedAndQuotedDisplayName length])
    {
      v5 = [(NSArray *)self->_groupList ef_all:&__block_literal_global_181];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v3 ^ v5;
}

- (ECEmailAddressComponents)init
{
  v3.receiver = self;
  v3.super_class = ECEmailAddressComponents;
  return [(ECEmailAddressComponents *)&v3 init];
}

- (BOOL)_nts_isValidDomain
{
  v3 = [(ECEmailAddressComponents *)self _nts_getValidatedDomain:0 idnaDomain:0 avoidReparse:1];
  if (self->_groupList)
  {
    ecemailaddress_trimmedAndQuotedDisplayName = [(NSString *)self->_displayName ecemailaddress_trimmedAndQuotedDisplayName];
    if ([ecemailaddress_trimmedAndQuotedDisplayName length])
    {
      v5 = [(NSArray *)self->_groupList ef_all:&__block_literal_global_179];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v3 ^ v5;
}

- (NSString)stringValue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ECEmailAddressComponents *)selfCopy _nts_isValid])
  {
    v3 = objc_alloc_init(ECEmailAddressFormatter);
    [(ECEmailAddressFormatter *)v3 setShouldIncludeDisplayName:1];
    v4 = [[ECEmailAddress alloc] _initWithComponents:selfCopy];
    v5 = [(ECEmailAddressFormatter *)v3 stringFromEmailAddress:v4];
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

+ (ECEmailAddressComponents)componentsWithString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithString:stringCopy];

  return v5;
}

+ (ECEmailAddressComponents)componentsWithEmailAddress:(id)address
{
  addressCopy = address;
  v5 = [[self alloc] initWithEmailAddress:addressCopy];

  return v5;
}

- (id)_initWithString:(id)string displayName:(id)name localPart:(id)part domain:(id)domain groupList:(id)list
{
  nameCopy = name;
  partCopy = part;
  domainCopy = domain;
  listCopy = list;
  v22.receiver = self;
  v22.super_class = ECEmailAddressComponents;
  v16 = [(ECEmailAddressComponents *)&v22 init];
  p_isa = &v16->super.isa;
  if (v16)
  {
    objc_storeStrong(&v16->_displayName, name);
    objc_storeStrong(p_isa + 2, part);
    objc_storeStrong(p_isa + 5, list);
    if ([ECIDNAEncoder encodingRequiredForDomainName:domainCopy])
    {
      ecemailaddress_uniquedDomain = [domainCopy ecemailaddress_uniquedDomain];
      v19 = 3;
    }

    else
    {
      ecemailaddress_uniquedDomain = [domainCopy ecemailaddress_uniquedDomain];
      v19 = 4;
    }

    v20 = p_isa[v19];
    p_isa[v19] = ecemailaddress_uniquedDomain;
  }

  return p_isa;
}

- (ECEmailAddressComponents)initWithString:(id)string
{
  stringCopy = string;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v5 = [ECEmailAddressParser parseEmailAddressString:stringCopy displayName:&v15 localPart:&v14 domain:&v13 groupList:&v12];
  v6 = v15;
  v7 = v14;
  v8 = v13;
  v9 = v12;
  if (v5)
  {
    self = [(ECEmailAddressComponents *)self _initWithString:stringCopy displayName:v6 localPart:v7 domain:v8 groupList:v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ECEmailAddressComponents)initWithEmailAddress:(id)address
{
  addressCopy = address;
  components = [addressCopy components];
  v6 = [components copy];

  if (!v6)
  {
    v6 = [0 init];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 2, self->_localPart);
  objc_storeStrong(v4 + 3, self->_domain);
  objc_storeStrong(v4 + 4, self->_idnaDomain);
  objc_storeStrong(v4 + 1, self->_simpleAddress);
  objc_storeStrong(v4 + 6, self->_displayName);
  if (self->_groupList)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_groupList copyItems:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = v4[5];
  v4[5] = v5;

  return v4;
}

- (NSString)debugDescription
{
  domain = [(ECEmailAddressComponents *)self domain];
  idnaDomain = [(ECEmailAddressComponents *)self idnaDomain];
  v5 = MEMORY[0x277CCAB68];
  v6 = objc_opt_class();
  displayName = [(ECEmailAddressComponents *)self displayName];
  localPart = [(ECEmailAddressComponents *)self localPart];
  v9 = [v5 stringWithFormat:@"<%@: %p> displayName=%@ localPart=%@ domain=%@", v6, self, displayName, localPart, domain];

  if (([domain isEqualToString:idnaDomain] & 1) == 0)
  {
    [v9 appendFormat:@" idnaDomain=%@", idnaDomain];
  }

  groupList = [(ECEmailAddressComponents *)self groupList];
  v11 = groupList;
  if (groupList)
  {
    v12 = [groupList ef_map:&__block_literal_global_165];
    v13 = [v12 componentsJoinedByString:{@", "}];
    [v9 appendFormat:@" groupList={%@}", v13];
  }

  return v9;
}

id __44__ECEmailAddressComponents_debugDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 debugDescription];

  return v2;
}

- (NSString)ef_publicDescription
{
  currentDevice = [MEMORY[0x277D07148] currentDevice];
  isInternal = [currentDevice isInternal];
  v5 = MEMORY[0x277D07198];
  if (isInternal)
  {
    simpleAddress = [(ECEmailAddressComponents *)self simpleAddress];
    localPart = [(ECEmailAddressComponents *)self localPart];
    domain = [(ECEmailAddressComponents *)self domain];
    v9 = [v5 ec_partiallyRedactedStringForAddress:simpleAddress localPart:localPart domain:domain];
  }

  else
  {
    simpleAddress = [(ECEmailAddressComponents *)self simpleAddress];
    v9 = [v5 fullyRedactedStringForString:simpleAddress];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p> %@", objc_opt_class(), self, v9];

  return v10;
}

- (unint64_t)hash
{
  localPart = [(ECEmailAddressComponents *)self localPart];
  lowercaseString = [localPart lowercaseString];
  v5 = [lowercaseString hash];

  domain = [(ECEmailAddressComponents *)self domain];
  lowercaseString2 = [domain lowercaseString];
  v8 = [lowercaseString2 hash];

  groupList = [(ECEmailAddressComponents *)self groupList];
  v10 = 33 * (33 * v5 + v8);
  v11 = [groupList hash] + 193376997;

  return v10 + v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __36__ECEmailAddressComponents_isEqual___block_invoke_2;
        v20[3] = &unk_27874B8D8;
        v21 = &__block_literal_global_171;
        v6 = MEMORY[0x2318C92C0](v20);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __36__ECEmailAddressComponents_isEqual___block_invoke_4;
        v18[3] = &unk_27874B900;
        v19 = &__block_literal_global_171;
        v7 = MEMORY[0x2318C92C0](v18);
        v8 = v5;
        localPart = [(ECEmailAddressComponents *)self localPart];
        domain = [(ECEmailAddressComponents *)self domain];
        localPart2 = [(ECEmailAddressComponents *)v8 localPart];
        domain2 = [(ECEmailAddressComponents *)v8 domain];
        v13 = domain2;
        if (localPart || localPart2 || domain || domain2)
        {
          if ((v6)[2](v6, localPart, localPart2))
          {
            v15 = (v6)[2](v6, domain, v13);
            goto LABEL_15;
          }
        }

        else if ((v7)[2](v7, self->_groupList, v8->_groupList))
        {
          displayName = [(ECEmailAddressComponents *)self displayName];
          displayName2 = [(ECEmailAddressComponents *)v8 displayName];
          v15 = (v6)[2](v6, displayName, displayName2);

LABEL_15:
          goto LABEL_16;
        }

        v15 = 0;
        goto LABEL_15;
      }
    }

    v15 = 0;
  }

LABEL_16:

  return v15;
}

uint64_t __36__ECEmailAddressComponents_isEqual___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (a2 && a3)
  {
    v8 = (*(v6 + 2))(v6);
  }

  else
  {
    v8 = (a2 | a3) == 0;
  }

  return v8;
}

uint64_t __36__ECEmailAddressComponents_isEqual___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__ECEmailAddressComponents_isEqual___block_invoke_3;
  v13[3] = &unk_27874B8B0;
  v14 = v5;
  v15 = v6;
  v8 = *(v7 + 16);
  v9 = v6;
  v10 = v5;
  v11 = v8(v7, v10, v9, v13);

  return v11;
}

uint64_t __36__ECEmailAddressComponents_isEqual___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__ECEmailAddressComponents_isEqual___block_invoke_5;
  v13[3] = &unk_27874B8B0;
  v14 = v5;
  v15 = v6;
  v8 = *(v7 + 16);
  v9 = v6;
  v10 = v5;
  v11 = v8(v7, v10, v9, v13);

  return v11;
}

uint64_t __36__ECEmailAddressComponents_isEqual___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
  v3 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  v4 = [v2 isEqualToSet:v3];

  return v4;
}

- (void)setLocalPart:(id)part
{
  partCopy = part;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_localPart != partCopy)
  {
    v5 = [(NSString *)partCopy copy];
    localPart = selfCopy->_localPart;
    selfCopy->_localPart = v5;

    simpleAddress = selfCopy->_simpleAddress;
    selfCopy->_simpleAddress = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)setDomain:(id)domain
{
  domainCopy = domain;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ecemailaddress_uniquedDomain = [domainCopy ecemailaddress_uniquedDomain];

  if (selfCopy->_domain != ecemailaddress_uniquedDomain)
  {
    v6 = [ECIDNADecoder stringByDecodingDomainName:?];
    domain = selfCopy->_domain;
    selfCopy->_domain = v6;

    idnaDomain = selfCopy->_idnaDomain;
    selfCopy->_idnaDomain = 0;

    simpleAddress = selfCopy->_simpleAddress;
    selfCopy->_simpleAddress = 0;
  }

  objc_sync_exit(selfCopy);
}

- (NSString)idnaDomain
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_domain && !selfCopy->_idnaDomain)
  {
    v3 = [ECIDNAEncoder stringByEncodingDomainName:?];
    idnaDomain = selfCopy->_idnaDomain;
    selfCopy->_idnaDomain = v3;
  }

  v5 = selfCopy->_idnaDomain;
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)setIDNADomain:(id)domain
{
  domainCopy = domain;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = [domainCopy ecemailaddress_uniquedDomain];

  if (selfCopy->_idnaDomain != obj)
  {
    objc_storeStrong(&selfCopy->_idnaDomain, obj);
    domain = selfCopy->_domain;
    selfCopy->_domain = 0;

    simpleAddress = selfCopy->_simpleAddress;
    selfCopy->_simpleAddress = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)setGroupList:(id)list
{
  listCopy = list;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [listCopy copy];
  groupList = selfCopy->_groupList;
  selfCopy->_groupList = v5;

  simpleAddress = selfCopy->_simpleAddress;
  selfCopy->_simpleAddress = 0;

  objc_sync_exit(selfCopy);
}

- (BOOL)_nts_getValidatedDomain:(id *)domain idnaDomain:(id *)idnaDomain avoidReparse:(BOOL)reparse
{
  if (self->_idnaDomain && !self->_domain)
  {
    v9 = [ECIDNADecoder stringByDecodingDomainName:?];
    ecemailaddress_uniquedDomain = [v9 ecemailaddress_uniquedDomain];
    domain = self->_domain;
    self->_domain = ecemailaddress_uniquedDomain;
  }

  if (!self->_domain)
  {
    v12 = 0;
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v12 = [ECIDNAEncoder stringByEncodingDomainName:?];
  v13 = v12 != 0;
  if (v12 && !reparse)
  {
    v13 = [ECEmailAddressParser validateDomain:self->_domain];
  }

  if (!v13)
  {
    goto LABEL_15;
  }

  if (domain)
  {
    *domain = self->_domain;
  }

  if (idnaDomain)
  {
    v14 = v12;
    *idnaDomain = v12;
  }

  v15 = 1;
LABEL_16:

  return v15;
}

- (BOOL)_nts_getValidatedLocalPart:(id *)part domain:(id *)domain idnaDomain:(id *)idnaDomain displayName:(id *)name
{
  ecemailaddress_trimmedAndQuotedDisplayName = [(NSString *)self->_displayName ecemailaddress_trimmedAndQuotedDisplayName];
  if ([ecemailaddress_trimmedAndQuotedDisplayName length])
  {
    v12 = [ECEmailAddressParser validateDisplayName:ecemailaddress_trimmedAndQuotedDisplayName];
  }

  else
  {
    v12 = 1;
  }

  ecemailaddress_trimmedAndQuotedLocalPart = [(NSString *)self->_localPart ecemailaddress_trimmedAndQuotedLocalPart];
  if ([ecemailaddress_trimmedAndQuotedLocalPart length] && (v12 & +[ECEmailAddressParser validateLocalPart:](ECEmailAddressParser, "validateLocalPart:", ecemailaddress_trimmedAndQuotedLocalPart)) == 1 && -[ECEmailAddressComponents _nts_getValidatedDomain:idnaDomain:avoidReparse:](self, "_nts_getValidatedDomain:idnaDomain:avoidReparse:", domain, idnaDomain, 0))
  {
    if (part)
    {
      v14 = ecemailaddress_trimmedAndQuotedLocalPart;
      *part = ecemailaddress_trimmedAndQuotedLocalPart;
    }

    if (name)
    {
      v15 = ecemailaddress_trimmedAndQuotedDisplayName;
      *name = ecemailaddress_trimmedAndQuotedDisplayName;
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __46__ECEmailAddressComponents__nts_isValidDomain__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 groupList];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 _nts_isValidDomain];
  }

  return v4;
}

uint64_t __40__ECEmailAddressComponents__nts_isValid__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 groupList];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 _nts_isValid];
  }

  return v4;
}

- (NSString)idnaAddress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_groupList)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v5 = [(ECEmailAddressComponents *)selfCopy _nts_getValidatedLocalPart:&v9 domain:0 idnaDomain:&v8 displayName:0];
    v4 = v9;
    v3 = v8;
    if (v5)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@%@", v4, v3];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  objc_sync_exit(selfCopy);

  return v6;
}

@end