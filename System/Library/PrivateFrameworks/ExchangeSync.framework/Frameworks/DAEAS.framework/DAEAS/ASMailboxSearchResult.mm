@interface ASMailboxSearchResult
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASMailboxSearchResult)init;
- (id)description;
- (void)addClass:(id)a3;
@end

@implementation ASMailboxSearchResult

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_10 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_10;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_10 = v2;
    acceptsTopLevelLeaves___haveChecked_10 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_10 == 1)
  {
    v2 = parsingLeafNode___result_10;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_10 = v2;
    parsingLeafNode___haveChecked_10 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_10 == 1)
  {
    v2 = parsingWithSubItems___result_10;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_10 = v2;
    parsingWithSubItems___haveChecked_10 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_10 == 1)
  {
    v2 = frontingBasicTypes___result_10;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_10 = v2;
    frontingBasicTypes___haveChecked_10 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_10 == 1)
  {
    v2 = notifyOfUnknownTokens___result_10;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_10 = v2;
    notifyOfUnknownTokens___haveChecked_10 = 1;
  }

  return v2 & 1;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v6.receiver = self;
  v6.super_class = ASMailboxSearchResult;
  v3 = [(ASEmailItem *)&v6 description];
  v4 = [v2 stringWithFormat:@"ASMailboxSearchResult: %@", v3];

  return v4;
}

- (ASMailboxSearchResult)init
{
  v5.receiver = self;
  v5.super_class = ASMailboxSearchResult;
  v2 = [(ASChangedCollectionLeaf *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ASChangedCollectionLeaf *)v2 setValidateOpeningTokens:0];
  }

  return v3;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v44 = MEMORY[0x277CBEAC0];
    v52 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:15 token:24 objectClass:objc_opt_class() setterMethod:sel_setLongID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v51 = [MEMORY[0x277CCABB0] numberWithInt:3864];
    v50 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:4 codePage:0 token:16 objectClass:objc_opt_class() setterMethod:sel_addClass_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v42 = [MEMORY[0x277CCABB0] numberWithInt:16];
    v41 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:18 objectClass:objc_opt_class() setterMethod:sel_setFolderId_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v40 = [MEMORY[0x277CCABB0] numberWithInt:18];
    v36 = [ASParseRule alloc];
    v35 = objc_opt_class();
    v34 = MEMORY[0x277CBEAC0];
    v49 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:34 objectClass:objc_opt_class() setterMethod:sel__setMeetingRequest_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v48 = [MEMORY[0x277CCABB0] numberWithInt:546];
    v6 = [ASParseRule alloc];
    v7 = objc_opt_class();
    v43 = a1;
    v8 = MEMORY[0x277CBEAC0];
    v39 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:2 token:5 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v38 = [MEMORY[0x277CCABB0] numberWithInt:517];
    v37 = [v8 dictionaryWithObjectsAndKeys:{v39, v38, 0}];
    v47 = [(ASParseRule *)v6 initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:6 objectClass:v7 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v37];
    v46 = [MEMORY[0x277CCABB0] numberWithInt:518];
    v9 = [ASParseRule alloc];
    v10 = objc_opt_class();
    v11 = MEMORY[0x277CBEAC0];
    v33 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:17 token:15 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v32 = [MEMORY[0x277CCABB0] numberWithInt:4367];
    v31 = [v11 dictionaryWithObjectsAndKeys:{v33, v32, 0}];
    v45 = [(ASParseRule *)v9 initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:14 objectClass:v10 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v31];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:4366];
    v27 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:10 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:4362];
    v25 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:58 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:570];
    v12 = [ASParseRule alloc];
    v13 = objc_opt_class();
    v14 = MEMORY[0x277CBEAC0];
    v30 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:2 token:28 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v29 = [MEMORY[0x277CCABB0] numberWithInt:540];
    v15 = [v14 dictionaryWithObjectsAndKeys:{v30, v29, 0}];
    v16 = [(ASParseRule *)v12 initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:27 objectClass:v13 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v15];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:539];
    v18 = [v34 dictionaryWithObjectsAndKeys:{v49, v48, v47, v46, v45, v28, v27, v26, v25, v24, v16, v17, 0}];
    v19 = [(ASParseRule *)v36 initWithMinimumNumber:0 maximumNumber:1 codePage:15 token:15 objectClass:v35 setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v18];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:3855];
    v5 = [v44 dictionaryWithObjectsAndKeys:{v52, v51, v50, v42, v41, v40, v19, v20, 0}];

    v21 = +[ASItem parseRuleCache];
    v22 = NSStringFromClass(v43);
    [v21 setObject:v5 forKey:v22];
  }

  return v5;
}

- (void)addClass:(id)a3
{
  v4 = a3;
  v5 = [(ASMailboxSearchResult *)self mClasses];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(ASMailboxSearchResult *)self setMClasses:v6];
  }

  v7 = [(ASMailboxSearchResult *)self mClasses];
  [v7 addObject:v4];
}

@end