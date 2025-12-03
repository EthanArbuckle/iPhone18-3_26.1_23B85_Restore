@interface ASSearchStore
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (id)asParseRules;
- (id)description;
- (void)addResult:(id)result;
@end

@implementation ASSearchStore

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_1 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_1;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_1 = v2;
    acceptsTopLevelLeaves___haveChecked_1 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_1 == 1)
  {
    v2 = parsingLeafNode___result_1;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_1 = v2;
    parsingLeafNode___haveChecked_1 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_1 == 1)
  {
    v2 = parsingWithSubItems___result_1;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_1 = v2;
    parsingWithSubItems___haveChecked_1 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_1 == 1)
  {
    v2 = frontingBasicTypes___result_1;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_1 = v2;
    frontingBasicTypes___haveChecked_1 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_1 == 1)
  {
    v2 = notifyOfUnknownTokens___result_1;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_1 = v2;
    notifyOfUnknownTokens___haveChecked_1 = 1;
  }

  return v2 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  status = [(ASSearchStore *)self status];
  mResults = [(ASSearchStore *)self mResults];
  v6 = [v3 stringWithFormat:@"Store status %@ results: %@", status, mResults];

  return v6;
}

- (void)addResult:(id)result
{
  v13 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v11 = 138412290;
    v12 = resultCopy;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Adding search result: %@", &v11, 0xCu);
  }

  mResults = [(ASSearchStore *)self mResults];

  if (!mResults)
  {
    v8 = objc_opt_new();
    [(ASSearchStore *)self setMResults:v8];
  }

  if (resultCopy)
  {
    mResults2 = [(ASSearchStore *)self mResults];
    [mResults2 addObject:resultCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)asParseRules
{
  v3 = off_278FC6E08;
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->super._root);
  expectedResultType = [WeakRetained expectedResultType];

  if (expectedResultType)
  {
    v7 = objc_loadWeakRetained(&self->super._root);
    expectedResultType2 = [v7 expectedResultType];

    if (expectedResultType2 != 1)
    {
      goto LABEL_5;
    }

    v3 = off_278FC6E90;
  }

  v9 = *v3;
  v4 = objc_opt_class();
LABEL_5:
  v10 = MEMORY[0x277CBEAC0];
  v11 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:15 token:14 objectClass:v4 setterMethod:sel_addResult_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:3854];
  v13 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:15 token:11 objectClass:objc_opt_class() setterMethod:sel_setRange_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:3851];
  v15 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:15 token:12 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:3852];
  v17 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:15 token:16 objectClass:objc_opt_class() setterMethod:sel_setTotal_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
  v18 = [MEMORY[0x277CCABB0] numberWithInt:3856];
  v19 = [v10 dictionaryWithObjectsAndKeys:{v11, v12, v13, v14, v15, v16, v17, v18, 0}];

  return v19;
}

@end