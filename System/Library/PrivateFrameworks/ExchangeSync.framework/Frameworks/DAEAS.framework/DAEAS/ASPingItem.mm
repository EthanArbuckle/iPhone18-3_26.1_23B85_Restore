@interface ASPingItem
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
@end

@implementation ASPingItem

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_33 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_33;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_33 = v2;
    acceptsTopLevelLeaves___haveChecked_33 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_33 == 1)
  {
    v2 = parsingLeafNode___result_33;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_33 = v2;
    parsingLeafNode___haveChecked_33 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_33 == 1)
  {
    v2 = parsingWithSubItems___result_33;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_33 = v2;
    parsingWithSubItems___haveChecked_33 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_33 == 1)
  {
    v2 = frontingBasicTypes___result_33;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_33 = v2;
    frontingBasicTypes___haveChecked_33 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_33 == 1)
  {
    v2 = notifyOfUnknownTokens___result_33;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_33 = v2;
    notifyOfUnknownTokens___haveChecked_33 = 1;
  }

  return v2 & 1;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v22 = MEMORY[0x277CBEAC0];
    v21 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:13 token:8 objectClass:objc_opt_class() setterMethod:sel_setHeartBeatInterval_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:3336];
    v19 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:13 token:13 objectClass:objc_opt_class() setterMethod:sel_setMaxFolders_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:3341];
    v6 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:13 token:7 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:3335];
    v8 = [ASParseRule alloc];
    v9 = objc_opt_class();
    v10 = MEMORY[0x277CBEAC0];
    v18 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:13 token:10 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:3338];
    v12 = [v10 dictionaryWithObjectsAndKeys:{v18, v11, 0}];
    v13 = [(ASParseRule *)v8 initWithMinimumNumber:0 maximumNumber:1 codePage:13 token:9 objectClass:v9 setterMethod:sel_setFolders_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v12];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:3337];
    v5 = [v22 dictionaryWithObjectsAndKeys:{v21, v20, v19, v23, v6, v7, v13, v14, 0}];

    v15 = +[ASItem parseRuleCache];
    v16 = NSStringFromClass(self);
    [v15 setObject:v5 forKey:v16];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  heartBeatInterval = [(ASPingItem *)self heartBeatInterval];
  maxFolders = [(ASPingItem *)self maxFolders];
  status = [(ASPingItem *)self status];
  folders = [(ASPingItem *)self folders];
  v10 = [v3 stringWithFormat:@"<%@: HBI: %@ MaxFolders: %@ Status: %@ Folders: %@>", v5, heartBeatInterval, maxFolders, status, folders];

  return v10;
}

@end