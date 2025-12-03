@interface ASSettingsTaskAccountEmailAddresses
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (id)emailAddresses;
- (void)addEmailAddress:(id)address;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)setPrimarySMTPAddress:(id)address;
@end

@implementation ASSettingsTaskAccountEmailAddresses

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_94 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_95;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_95 = v2;
    acceptsTopLevelLeaves___haveChecked_94 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_96 == 1)
  {
    v2 = parsingLeafNode___result_97;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_97 = v2;
    parsingLeafNode___haveChecked_96 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_98 == 1)
  {
    v2 = parsingWithSubItems___result_99;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_99 = v2;
    parsingWithSubItems___haveChecked_98 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_100 == 1)
  {
    v2 = frontingBasicTypes___result_101;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_101 = v2;
    frontingBasicTypes___haveChecked_100 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_102 == 1)
  {
    v2 = notifyOfUnknownTokens___result_103;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_103 = v2;
    notifyOfUnknownTokens___haveChecked_102 = 1;
  }

  return v2 & 1;
}

- (id)emailAddresses
{
  mEmailAddresses = [(ASSettingsTaskAccountEmailAddresses *)self mEmailAddresses];
  allObjects = [mEmailAddresses allObjects];

  return allObjects;
}

- (void)addEmailAddress:(id)address
{
  addressCopy = address;
  mEmailAddresses = [(ASSettingsTaskAccountEmailAddresses *)self mEmailAddresses];

  if (!mEmailAddresses)
  {
    v6 = objc_opt_new();
    [(ASSettingsTaskAccountEmailAddresses *)self setMEmailAddresses:v6];
  }

  mEmailAddresses2 = [(ASSettingsTaskAccountEmailAddresses *)self mEmailAddresses];
  [mEmailAddresses2 addObject:addressCopy];
}

- (void)setPrimarySMTPAddress:(id)address
{
  addressCopy = address;
  if (self->_primarySMTPAddress != addressCopy)
  {
    v6 = addressCopy;
    objc_storeStrong(&self->_primarySMTPAddress, address);
    addressCopy = v6;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  mEmailAddresses = [(ASSettingsTaskAccountEmailAddresses *)self mEmailAddresses];
  v7 = [v3 stringWithFormat:@"%@ %p: emailAddresses: %@ primary address %@", v5, self, mEmailAddresses, self->_primarySMTPAddress];

  return v7;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:18 token:31 objectClass:objc_opt_class() setterMethod:sel_addEmailAddress_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:4639];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:18 token:35 objectClass:objc_opt_class() setterMethod:sel_setPrimarySMTPAddress_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:4643];
    v5 = [v6 dictionaryWithObjectsAndKeys:{v7, v8, v9, v10, 0}];

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
  v13.super_class = ASSettingsTaskAccountEmailAddresses;
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