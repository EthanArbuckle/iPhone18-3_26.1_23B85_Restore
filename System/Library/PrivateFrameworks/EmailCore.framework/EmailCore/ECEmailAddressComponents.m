@interface ECEmailAddressComponents
+ (ECEmailAddressComponents)componentsWithEmailAddress:(id)a3;
+ (ECEmailAddressComponents)componentsWithString:(id)a3;
- (BOOL)_nts_getValidatedDomain:(id *)a3 idnaDomain:(id *)a4 avoidReparse:(BOOL)a5;
- (BOOL)_nts_getValidatedLocalPart:(id *)a3 domain:(id *)a4 idnaDomain:(id *)a5 displayName:(id *)a6;
- (BOOL)_nts_isValid;
- (BOOL)_nts_isValidDomain;
- (BOOL)isEqual:(id)a3;
- (ECEmailAddress)emailAddressValue;
- (ECEmailAddressComponents)init;
- (ECEmailAddressComponents)initWithEmailAddress:(id)a3;
- (ECEmailAddressComponents)initWithString:(id)a3;
- (NSArray)groupList;
- (NSString)debugDescription;
- (NSString)domain;
- (NSString)ef_publicDescription;
- (NSString)idnaAddress;
- (NSString)idnaDomain;
- (NSString)localPart;
- (NSString)simpleAddress;
- (NSString)stringValue;
- (id)_initWithString:(id)a3 displayName:(id)a4 localPart:(id)a5 domain:(id)a6 groupList:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)setDomain:(id)a3;
- (void)setGroupList:(id)a3;
- (void)setIDNADomain:(id)a3;
- (void)setLocalPart:(id)a3;
@end

@implementation ECEmailAddressComponents

- (NSString)simpleAddress
{
  v2 = self;
  objc_sync_enter(v2);
  simpleAddress = v2->_simpleAddress;
  if (!simpleAddress)
  {
    if (v2->_groupList)
    {
      simpleAddress = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v4 = [(ECEmailAddressComponents *)v2 _nts_getValidatedLocalPart:&v15 domain:&v14 idnaDomain:0 displayName:0];
      v5 = v15;
      v6 = v14;
      v7 = v6;
      if (v4)
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = [v6 _lp_userVisibleHost];
        v10 = [v8 stringWithFormat:@"%@@%@", v5, v9];
        v11 = v2->_simpleAddress;
        v2->_simpleAddress = v10;
      }

      simpleAddress = v2->_simpleAddress;
    }
  }

  v12 = simpleAddress;
  objc_sync_exit(v2);

  return v12;
}

- (NSArray)groupList
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_groupList objectEnumerator];
  v4 = [v3 allObjects];

  objc_sync_exit(v2);

  return v4;
}

- (NSString)localPart
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_localPart;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)domain
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_idnaDomain && !v2->_domain)
  {
    v3 = [ECIDNADecoder stringByDecodingDomainName:?];
    domain = v2->_domain;
    v2->_domain = v3;
  }

  v5 = v2->_domain;
  objc_sync_exit(v2);

  return v5;
}

- (ECEmailAddress)emailAddressValue
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(ECEmailAddressComponents *)v2 _nts_isValid])
  {
    v3 = [[ECEmailAddress alloc] _initWithComponents:v2];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)_nts_isValid
{
  v3 = [(ECEmailAddressComponents *)self _nts_getValidatedLocalPart:0 domain:0 idnaDomain:0 displayName:0];
  if (self->_groupList)
  {
    v4 = [(NSString *)self->_displayName ecemailaddress_trimmedAndQuotedDisplayName];
    if ([v4 length])
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
    v4 = [(NSString *)self->_displayName ecemailaddress_trimmedAndQuotedDisplayName];
    if ([v4 length])
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
  v2 = self;
  objc_sync_enter(v2);
  if ([(ECEmailAddressComponents *)v2 _nts_isValid])
  {
    v3 = objc_alloc_init(ECEmailAddressFormatter);
    [(ECEmailAddressFormatter *)v3 setShouldIncludeDisplayName:1];
    v4 = [[ECEmailAddress alloc] _initWithComponents:v2];
    v5 = [(ECEmailAddressFormatter *)v3 stringFromEmailAddress:v4];
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v2);

  return v5;
}

+ (ECEmailAddressComponents)componentsWithString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithString:v4];

  return v5;
}

+ (ECEmailAddressComponents)componentsWithEmailAddress:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithEmailAddress:v4];

  return v5;
}

- (id)_initWithString:(id)a3 displayName:(id)a4 localPart:(id)a5 domain:(id)a6 groupList:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = ECEmailAddressComponents;
  v16 = [(ECEmailAddressComponents *)&v22 init];
  p_isa = &v16->super.isa;
  if (v16)
  {
    objc_storeStrong(&v16->_displayName, a4);
    objc_storeStrong(p_isa + 2, a5);
    objc_storeStrong(p_isa + 5, a7);
    if ([ECIDNAEncoder encodingRequiredForDomainName:v14])
    {
      v18 = [v14 ecemailaddress_uniquedDomain];
      v19 = 3;
    }

    else
    {
      v18 = [v14 ecemailaddress_uniquedDomain];
      v19 = 4;
    }

    v20 = p_isa[v19];
    p_isa[v19] = v18;
  }

  return p_isa;
}

- (ECEmailAddressComponents)initWithString:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v5 = [ECEmailAddressParser parseEmailAddressString:v4 displayName:&v15 localPart:&v14 domain:&v13 groupList:&v12];
  v6 = v15;
  v7 = v14;
  v8 = v13;
  v9 = v12;
  if (v5)
  {
    self = [(ECEmailAddressComponents *)self _initWithString:v4 displayName:v6 localPart:v7 domain:v8 groupList:v9];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (ECEmailAddressComponents)initWithEmailAddress:(id)a3
{
  v4 = a3;
  v5 = [v4 components];
  v6 = [v5 copy];

  if (!v6)
  {
    v6 = [0 init];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v3 = [(ECEmailAddressComponents *)self domain];
  v4 = [(ECEmailAddressComponents *)self idnaDomain];
  v5 = MEMORY[0x277CCAB68];
  v6 = objc_opt_class();
  v7 = [(ECEmailAddressComponents *)self displayName];
  v8 = [(ECEmailAddressComponents *)self localPart];
  v9 = [v5 stringWithFormat:@"<%@: %p> displayName=%@ localPart=%@ domain=%@", v6, self, v7, v8, v3];

  if (([v3 isEqualToString:v4] & 1) == 0)
  {
    [v9 appendFormat:@" idnaDomain=%@", v4];
  }

  v10 = [(ECEmailAddressComponents *)self groupList];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 ef_map:&__block_literal_global_165];
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
  v3 = [MEMORY[0x277D07148] currentDevice];
  v4 = [v3 isInternal];
  v5 = MEMORY[0x277D07198];
  if (v4)
  {
    v6 = [(ECEmailAddressComponents *)self simpleAddress];
    v7 = [(ECEmailAddressComponents *)self localPart];
    v8 = [(ECEmailAddressComponents *)self domain];
    v9 = [v5 ec_partiallyRedactedStringForAddress:v6 localPart:v7 domain:v8];
  }

  else
  {
    v6 = [(ECEmailAddressComponents *)self simpleAddress];
    v9 = [v5 fullyRedactedStringForString:v6];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p> %@", objc_opt_class(), self, v9];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(ECEmailAddressComponents *)self localPart];
  v4 = [v3 lowercaseString];
  v5 = [v4 hash];

  v6 = [(ECEmailAddressComponents *)self domain];
  v7 = [v6 lowercaseString];
  v8 = [v7 hash];

  v9 = [(ECEmailAddressComponents *)self groupList];
  v10 = 33 * (33 * v5 + v8);
  v11 = [v9 hash] + 193376997;

  return v10 + v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    if (v4)
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
        v9 = [(ECEmailAddressComponents *)self localPart];
        v10 = [(ECEmailAddressComponents *)self domain];
        v11 = [(ECEmailAddressComponents *)v8 localPart];
        v12 = [(ECEmailAddressComponents *)v8 domain];
        v13 = v12;
        if (v9 || v11 || v10 || v12)
        {
          if ((v6)[2](v6, v9, v11))
          {
            v15 = (v6)[2](v6, v10, v13);
            goto LABEL_15;
          }
        }

        else if ((v7)[2](v7, self->_groupList, v8->_groupList))
        {
          v17 = [(ECEmailAddressComponents *)self displayName];
          v14 = [(ECEmailAddressComponents *)v8 displayName];
          v15 = (v6)[2](v6, v17, v14);

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

- (void)setLocalPart:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_localPart != v8)
  {
    v5 = [(NSString *)v8 copy];
    localPart = v4->_localPart;
    v4->_localPart = v5;

    simpleAddress = v4->_simpleAddress;
    v4->_simpleAddress = 0;
  }

  objc_sync_exit(v4);
}

- (void)setDomain:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v10 = [v4 ecemailaddress_uniquedDomain];

  if (v5->_domain != v10)
  {
    v6 = [ECIDNADecoder stringByDecodingDomainName:?];
    domain = v5->_domain;
    v5->_domain = v6;

    idnaDomain = v5->_idnaDomain;
    v5->_idnaDomain = 0;

    simpleAddress = v5->_simpleAddress;
    v5->_simpleAddress = 0;
  }

  objc_sync_exit(v5);
}

- (NSString)idnaDomain
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_domain && !v2->_idnaDomain)
  {
    v3 = [ECIDNAEncoder stringByEncodingDomainName:?];
    idnaDomain = v2->_idnaDomain;
    v2->_idnaDomain = v3;
  }

  v5 = v2->_idnaDomain;
  objc_sync_exit(v2);

  return v5;
}

- (void)setIDNADomain:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  obj = [v4 ecemailaddress_uniquedDomain];

  if (v5->_idnaDomain != obj)
  {
    objc_storeStrong(&v5->_idnaDomain, obj);
    domain = v5->_domain;
    v5->_domain = 0;

    simpleAddress = v5->_simpleAddress;
    v5->_simpleAddress = 0;
  }

  objc_sync_exit(v5);
}

- (void)setGroupList:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v8 copy];
  groupList = v4->_groupList;
  v4->_groupList = v5;

  simpleAddress = v4->_simpleAddress;
  v4->_simpleAddress = 0;

  objc_sync_exit(v4);
}

- (BOOL)_nts_getValidatedDomain:(id *)a3 idnaDomain:(id *)a4 avoidReparse:(BOOL)a5
{
  if (self->_idnaDomain && !self->_domain)
  {
    v9 = [ECIDNADecoder stringByDecodingDomainName:?];
    v10 = [v9 ecemailaddress_uniquedDomain];
    domain = self->_domain;
    self->_domain = v10;
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
  if (v12 && !a5)
  {
    v13 = [ECEmailAddressParser validateDomain:self->_domain];
  }

  if (!v13)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    *a3 = self->_domain;
  }

  if (a4)
  {
    v14 = v12;
    *a4 = v12;
  }

  v15 = 1;
LABEL_16:

  return v15;
}

- (BOOL)_nts_getValidatedLocalPart:(id *)a3 domain:(id *)a4 idnaDomain:(id *)a5 displayName:(id *)a6
{
  v11 = [(NSString *)self->_displayName ecemailaddress_trimmedAndQuotedDisplayName];
  if ([v11 length])
  {
    v12 = [ECEmailAddressParser validateDisplayName:v11];
  }

  else
  {
    v12 = 1;
  }

  v13 = [(NSString *)self->_localPart ecemailaddress_trimmedAndQuotedLocalPart];
  if ([v13 length] && (v12 & +[ECEmailAddressParser validateLocalPart:](ECEmailAddressParser, "validateLocalPart:", v13)) == 1 && -[ECEmailAddressComponents _nts_getValidatedDomain:idnaDomain:avoidReparse:](self, "_nts_getValidatedDomain:idnaDomain:avoidReparse:", a4, a5, 0))
  {
    if (a3)
    {
      v14 = v13;
      *a3 = v13;
    }

    if (a6)
    {
      v15 = v11;
      *a6 = v11;
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
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_groupList)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v5 = [(ECEmailAddressComponents *)v2 _nts_getValidatedLocalPart:&v9 domain:0 idnaDomain:&v8 displayName:0];
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

  objc_sync_exit(v2);

  return v6;
}

@end