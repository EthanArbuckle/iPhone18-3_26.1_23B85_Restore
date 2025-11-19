@interface ASEnhancedSearchStoreResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (void)addResult:(id)a3;
@end

@implementation ASEnhancedSearchStoreResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_20 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_20;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_20 = v2;
    acceptsTopLevelLeaves___haveChecked_20 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_20 == 1)
  {
    v2 = parsingLeafNode___result_20;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_20 = v2;
    parsingLeafNode___haveChecked_20 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_20 == 1)
  {
    v2 = parsingWithSubItems___result_20;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_20 = v2;
    parsingWithSubItems___haveChecked_20 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_20 == 1)
  {
    v2 = frontingBasicTypes___result_20;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_20 = v2;
    frontingBasicTypes___haveChecked_20 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_20 == 1)
  {
    v2 = notifyOfUnknownTokens___result_20;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_20 = v2;
    notifyOfUnknownTokens___haveChecked_20 = 1;
  }

  return v2 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ASEnhancedSearchStoreResponse *)self store];
  v5 = [(ASEnhancedSearchStoreResponse *)self status];
  v6 = [(ASEnhancedSearchStoreResponse *)self mResults];
  v7 = [v3 stringWithFormat:@"Store %@ status %@ results: %@", v4, v5, v6];

  return v7;
}

- (void)addResult:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Adding search result: %@", &v11, 0xCu);
  }

  v7 = [(ASEnhancedSearchStoreResponse *)self mResults];

  if (!v7)
  {
    v8 = objc_opt_new();
    [(ASEnhancedSearchStoreResponse *)self setMResults:v8];
  }

  if (v4)
  {
    v9 = [(ASEnhancedSearchStoreResponse *)self mResults];
    [v9 addObject:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)asParseRules
{
  v13 = MEMORY[0x277CBEAC0];
  v12 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:25 token:18 objectClass:objc_opt_class() setterMethod:sel_addResult_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:6418];
  v3 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:20 token:7 objectClass:objc_opt_class() setterMethod:sel_setStore_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:5127];
  v5 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:25 token:10 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:6410];
  v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:25 token:13 objectClass:objc_opt_class() setterMethod:sel_setRange_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:6413];
  v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:25 token:22 objectClass:objc_opt_class() setterMethod:sel_setTotal_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:6422];
  v14 = [v13 dictionaryWithObjectsAndKeys:{v12, v2, v3, v4, v5, v6, v7, v8, v9, v10, 0}];

  return v14;
}

@end