@interface ASSearchResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
@end

@implementation ASSearchResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_0 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_0;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_0 = v2;
    acceptsTopLevelLeaves___haveChecked_0 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_0 == 1)
  {
    v2 = parsingLeafNode___result_0;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_0 = v2;
    parsingLeafNode___haveChecked_0 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_0 == 1)
  {
    v2 = parsingWithSubItems___result_0;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_0 = v2;
    parsingWithSubItems___haveChecked_0 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_0 == 1)
  {
    v2 = frontingBasicTypes___result_0;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_0 = v2;
    frontingBasicTypes___haveChecked_0 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_0 == 1)
  {
    v2 = notifyOfUnknownTokens___result_0;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_0 = v2;
    notifyOfUnknownTokens___haveChecked_0 = 1;
  }

  return v2 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASSearchResponse;
  v4 = [(ASSearchResponse *)&v8 description];
  stores = [(ASSearchResponse *)self stores];
  v6 = [v3 stringWithFormat:@"%@: All stores: %@", v4, stores];

  return v6;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v19 = MEMORY[0x277CBEAC0];
    v6 = [ASParseRule alloc];
    v7 = objc_opt_class();
    v8 = MEMORY[0x277CBEAC0];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:15 token:7 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:3847];
    v11 = [v8 dictionaryWithObjectsAndKeys:{v9, v10, 0}];
    v12 = [(ASParseRule *)v6 initWithMinimumNumber:0 maximumNumber:1 codePage:15 token:13 objectClass:v7 setterMethod:sel_setStores_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v11];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:3853];
    v14 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:15 token:12 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:3852];
    v5 = [v19 dictionaryWithObjectsAndKeys:{v12, v13, v14, v15, 0}];

    v16 = +[ASItem parseRuleCache];
    v17 = NSStringFromClass(self);
    [v16 setObject:v5 forKey:v17];
  }

  return v5;
}

@end