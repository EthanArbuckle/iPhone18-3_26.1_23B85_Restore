@interface ASSettingsTaskAccountInformation
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
@end

@implementation ASSettingsTaskAccountInformation

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_130 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_131;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_131 = v2;
    acceptsTopLevelLeaves___haveChecked_130 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_132 == 1)
  {
    v2 = parsingLeafNode___result_133;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_133 = v2;
    parsingLeafNode___haveChecked_132 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_134 == 1)
  {
    v2 = parsingWithSubItems___result_135;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_135 = v2;
    parsingWithSubItems___haveChecked_134 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_136 == 1)
  {
    v2 = frontingBasicTypes___result_137;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_137 = v2;
    frontingBasicTypes___haveChecked_136 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_138 == 1)
  {
    v2 = notifyOfUnknownTokens___result_139;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_139 = v2;
    notifyOfUnknownTokens___haveChecked_138 = 1;
  }

  return v2 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  emailAddressList = [(ASSettingsTaskAccountInformation *)self emailAddressList];
  accountId = [(ASSettingsTaskAccountInformation *)self accountId];
  v8 = [v3 stringWithFormat:@"%@ %p: emailAddressList: %@ accountId %@", v5, self, emailAddressList, accountId];

  return v8;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v19 = MEMORY[0x277CBEAC0];
    v18 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:30 objectClass:objc_opt_class() setterMethod:sel_setEmailAddressList_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:4638];
    v16 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:38 objectClass:objc_opt_class() setterMethod:sel_setAccountId_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:4646];
    v14 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:39 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:4647];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:40 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:4648];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:41 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:4649];
    v5 = [v19 dictionaryWithObjectsAndKeys:{v18, v17, v16, v15, v14, v6, v7, v8, v9, v10, 0}];

    v11 = +[ASItem parseRuleCache];
    v12 = NSStringFromClass(self);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = ASSettingsTaskAccountInformation;
  [(ASItem *)&v13 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:account];
  parsingState = self->super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super._parsingState = parsingState;
    }

    else
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_24A0AC000, v10, v11, "%@ Parsed its context.", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end