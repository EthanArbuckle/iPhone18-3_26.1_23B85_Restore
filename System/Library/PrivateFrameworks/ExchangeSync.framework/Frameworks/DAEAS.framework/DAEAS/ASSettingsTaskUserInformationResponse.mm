@interface ASSettingsTaskUserInformationResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
@end

@implementation ASSettingsTaskUserInformationResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_67_0 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_68_0;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_68_0 = v2;
    acceptsTopLevelLeaves___haveChecked_67_0 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_69_0 == 1)
  {
    v2 = parsingLeafNode___result_70_0;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_70_0 = v2;
    parsingLeafNode___haveChecked_69_0 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_71_0 == 1)
  {
    v2 = parsingWithSubItems___result_72_0;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_72_0 = v2;
    parsingWithSubItems___haveChecked_71_0 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_73_0 == 1)
  {
    v2 = frontingBasicTypes___result_74_0;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_74_0 = v2;
    frontingBasicTypes___haveChecked_73_0 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_75_0 == 1)
  {
    v2 = notifyOfUnknownTokens___result_76_0;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_76_0 = v2;
    notifyOfUnknownTokens___haveChecked_75_0 = 1;
  }

  return v2 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ASSettingsTaskUserInformationResponse *)self status];
  v7 = [(ASSettingsTaskUserInformationResponse *)self getResponse];
  v8 = [v3 stringWithFormat:@"%@ %p: Status: %@, Get response: %@", v5, self, v6, v7];

  return v8;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:18 token:6 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:4614];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:18 token:7 objectClass:objc_opt_class() setterMethod:sel_setGetResponse_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:4615];
    v5 = [v6 dictionaryWithObjectsAndKeys:{v7, v8, v9, v10, 0}];

    v11 = +[ASItem parseRuleCache];
    v12 = NSStringFromClass(a1);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = ASSettingsTaskUserInformationResponse;
  [(ASItem *)&v13 parseASParseContext:a3 root:a4 parent:a5 callbackDict:a6 streamCallbackDict:a7 account:a8];
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
        v15 = self;
        _os_log_impl(&dword_24A0AC000, v10, v11, "%@ Parsed its context.", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end