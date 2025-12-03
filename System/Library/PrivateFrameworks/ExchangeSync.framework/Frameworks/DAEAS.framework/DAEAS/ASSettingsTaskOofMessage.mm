@interface ASSettingsTaskOofMessage
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (void)appliesToExternalKnown:(id)known;
- (void)appliesToExternalUnknown:(id)unknown;
- (void)appliesToInternal:(id)internal;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
@end

@implementation ASSettingsTaskOofMessage

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_285 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_286;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_286 = v2;
    acceptsTopLevelLeaves___haveChecked_285 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_287 == 1)
  {
    v2 = parsingLeafNode___result_288;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_288 = v2;
    parsingLeafNode___haveChecked_287 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_289 == 1)
  {
    v2 = parsingWithSubItems___result_290;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_290 = v2;
    parsingWithSubItems___haveChecked_289 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_291 == 1)
  {
    v2 = frontingBasicTypes___result_292;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_292 = v2;
    frontingBasicTypes___haveChecked_291 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_293 == 1)
  {
    v2 = notifyOfUnknownTokens___result_294;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_294 = v2;
    notifyOfUnknownTokens___haveChecked_293 = 1;
  }

  return v2 & 1;
}

- (void)appliesToInternal:(id)internal
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [(ASSettingsTaskOofMessage *)self setAudience:v4];
}

- (void)appliesToExternalKnown:(id)known
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [(ASSettingsTaskOofMessage *)self setAudience:v4];
}

- (void)appliesToExternalUnknown:(id)unknown
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:2];
  [(ASSettingsTaskOofMessage *)self setAudience:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  audience = [(ASSettingsTaskOofMessage *)self audience];
  enabled = [(ASSettingsTaskOofMessage *)self enabled];
  replyMessage = [(ASSettingsTaskOofMessage *)self replyMessage];
  bodyType = [(ASSettingsTaskOofMessage *)self bodyType];
  v10 = [v3 stringWithFormat:@"%@ %p: appliesTo: %@ enabled: %@ replyMessage %@ bodyType %@", v5, self, audience, enabled, replyMessage, bodyType];

  return v10;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  selfCopy = self;
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v20 = MEMORY[0x277CBEAC0];
    v21 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:14 objectClass:objc_opt_class() setterMethod:sel_appliesToInternal_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:4622];
    v18 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:15 objectClass:objc_opt_class() setterMethod:sel_appliesToExternalKnown_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:4623];
    v6 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:16 objectClass:objc_opt_class() setterMethod:sel_appliesToExternalUnknown_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:4624];
    v8 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:17 objectClass:objc_opt_class() setterMethod:sel_setEnabled_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:4625];
    v15 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:18 objectClass:objc_opt_class() setterMethod:sel_setReplyMessage_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:4626];
    v10 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:19 objectClass:objc_opt_class() setterMethod:sel_setBodyType_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:4627];
    v5 = [v20 dictionaryWithObjectsAndKeys:{v21, v19, v18, v17, v6, v7, v8, v16, v15, v9, v10, v11, 0}];

    v12 = +[ASItem parseRuleCache];
    v13 = NSStringFromClass(selfCopy);
    [v12 setObject:v5 forKey:v13];
  }

  return v5;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = ASSettingsTaskOofMessage;
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