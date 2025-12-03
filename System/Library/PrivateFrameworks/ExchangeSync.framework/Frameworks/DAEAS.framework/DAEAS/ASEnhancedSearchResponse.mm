@interface ASEnhancedSearchResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (void)addStoreResponse:(id)response;
@end

@implementation ASEnhancedSearchResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_14 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_14;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_14 = v2;
    acceptsTopLevelLeaves___haveChecked_14 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_14 == 1)
  {
    v2 = parsingLeafNode___result_14;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_14 = v2;
    parsingLeafNode___haveChecked_14 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_14 == 1)
  {
    v2 = parsingWithSubItems___result_14;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_14 = v2;
    parsingWithSubItems___haveChecked_14 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_14 == 1)
  {
    v2 = frontingBasicTypes___result_14;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_14 = v2;
    frontingBasicTypes___haveChecked_14 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_14 == 1)
  {
    v2 = notifyOfUnknownTokens___result_14;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_14 = v2;
    notifyOfUnknownTokens___haveChecked_14 = 1;
  }

  return v2 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASEnhancedSearchResponse;
  v4 = [(ASEnhancedSearchResponse *)&v8 description];
  stores = [(ASEnhancedSearchResponse *)self stores];
  v6 = [v3 stringWithFormat:@"%@: All stores: %@", v4, stores];

  return v6;
}

- (void)addStoreResponse:(id)response
{
  v13 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v11 = 138412290;
    v12 = responseCopy;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Adding enhanced search response: %@", &v11, 0xCu);
  }

  mResults = [(ASEnhancedSearchResponse *)self mResults];

  if (!mResults)
  {
    v8 = objc_opt_new();
    [(ASEnhancedSearchResponse *)self setMResults:v8];
  }

  if (responseCopy)
  {
    mResults2 = [(ASEnhancedSearchResponse *)self mResults];
    [mResults2 addObject:responseCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:25 token:17 objectClass:objc_opt_class() setterMethod:sel_addStoreResponse_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:6417];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:25 token:10 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:6410];
    v5 = [v6 dictionaryWithObjectsAndKeys:{v7, v8, v9, v10, 0}];

    v11 = +[ASItem parseRuleCache];
    v12 = NSStringFromClass(self);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

@end