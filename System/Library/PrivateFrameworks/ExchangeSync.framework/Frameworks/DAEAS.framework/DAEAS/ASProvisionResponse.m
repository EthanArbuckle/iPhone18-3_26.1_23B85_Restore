@interface ASProvisionResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (ASProvisionResponse)initWithPolicyType:(id)a3;
- (id)asParseRules;
- (id)description;
- (void)_setPolicies:(id)a3;
- (void)_setStatus:(id)a3;
- (void)setPolicyType:(id)a3;
@end

@implementation ASProvisionResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_36 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_36;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_36 = v2;
    acceptsTopLevelLeaves___haveChecked_36 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_36 == 1)
  {
    v2 = parsingLeafNode___result_36;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_36 = v2;
    parsingLeafNode___haveChecked_36 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_36 == 1)
  {
    v2 = parsingWithSubItems___result_36;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_36 = v2;
    parsingWithSubItems___haveChecked_36 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_36 == 1)
  {
    v2 = frontingBasicTypes___result_36;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_36 = v2;
    frontingBasicTypes___haveChecked_36 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_36 == 1)
  {
    v2 = notifyOfUnknownTokens___result_36;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_36 = v2;
    notifyOfUnknownTokens___haveChecked_36 = 1;
  }

  return v2 & 1;
}

- (ASProvisionResponse)initWithPolicyType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASProvisionResponse;
  v6 = [(ASItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_policyType, a3);
  }

  return v7;
}

- (void)setPolicyType:(id)a3
{
  if (self->_policyType != a3)
  {
    v4 = [a3 copy];
    policyType = self->_policyType;
    self->_policyType = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_setPolicies:(id)a3
{
  v5 = a3;
  if (self->_policies != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_policies, a3);
    v5 = v6;
  }
}

- (void)_setStatus:(id)a3
{
  v5 = a3;
  if (self->_status != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_status, a3);
    v5 = v6;
  }
}

- (id)asParseRules
{
  policyType = self->_policyType;
  if (policyType == @"MS-EAS-Provisioning-WBXML")
  {
    v4 = off_278FC7088;
  }

  else
  {
    if (policyType != @"MS-WAP-Provisioning-XML")
    {
      v3 = 0;
      goto LABEL_7;
    }

    v4 = off_278FC7080;
  }

  v5 = MEMORY[0x277CBEAC0];
  v6 = [ASParseRule alloc];
  v7 = *v4;
  v8 = [(ASParseRule *)v6 initWithMinimumNumber:0 maximumNumber:1209 codePage:14 token:7 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:3591];
  v3 = [v5 dictionaryWithObjectsAndKeys:{v8, v9, 0}];

LABEL_7:
  v20 = v3;
  v22 = MEMORY[0x277CBEAC0];
  v21 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:14 token:6 objectClass:objc_opt_class() setterMethod:sel__setPolicies_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v3];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:3590];
  v11 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:14 token:11 objectClass:objc_opt_class() setterMethod:sel__setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:3595];
  v13 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:14 token:12 objectClass:objc_opt_class() setterMethod:sel__setRemoteWipe_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:3596];
  v15 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:14 token:59 objectClass:objc_opt_class() setterMethod:sel__setAccountOnlyRemoteWipe_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:3643];
  v17 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:22 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v18 = [MEMORY[0x277CCABB0] numberWithInt:4630];
  v23 = [v22 dictionaryWithObjectsAndKeys:{v21, v10, v11, v12, v13, v14, v15, v16, v17, v18, 0}];

  return v23;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: Policies: %@>", v5, self->_policies];

  return v6;
}

@end