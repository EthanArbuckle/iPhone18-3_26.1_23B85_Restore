@interface ASEnhancedMailboxSearchResult
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASEnhancedMailboxSearchResult)init;
- (id)description;
@end

@implementation ASEnhancedMailboxSearchResult

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_35 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_35;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_35 = v2;
    acceptsTopLevelLeaves___haveChecked_35 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_35 == 1)
  {
    v2 = parsingLeafNode___result_35;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_35 = v2;
    parsingLeafNode___haveChecked_35 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_35 == 1)
  {
    v2 = parsingWithSubItems___result_35;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_35 = v2;
    parsingWithSubItems___haveChecked_35 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_35 == 1)
  {
    v2 = frontingBasicTypes___result_35;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_35 = v2;
    frontingBasicTypes___haveChecked_35 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_35 == 1)
  {
    v2 = notifyOfUnknownTokens___result_35;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_35 = v2;
    notifyOfUnknownTokens___haveChecked_35 = 1;
  }

  return v2 & 1;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v6.receiver = self;
  v6.super_class = ASEnhancedMailboxSearchResult;
  v3 = [(ASEmailItem *)&v6 description];
  v4 = [v2 stringWithFormat:@"ASEnhancedMailboxSearchResult: %@", v3];

  return v4;
}

- (ASEnhancedMailboxSearchResult)init
{
  v5.receiver = self;
  v5.super_class = ASEnhancedMailboxSearchResult;
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
    v42 = MEMORY[0x277CBEAC0];
    v70 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:13 objectClass:objc_opt_class() setterMethod:sel_setServerID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v69 = [MEMORY[0x277CCABB0] numberWithInt:13];
    v68 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:16 objectClass:objc_opt_class() setterMethod:sel_setClassName_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v67 = [MEMORY[0x277CCABB0] numberWithInt:16];
    v66 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:18 objectClass:objc_opt_class() setterMethod:sel_setFolderId_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v57 = [MEMORY[0x277CCABB0] numberWithInt:18];
    v41 = [ASParseRule alloc];
    v40 = objc_opt_class();
    v39 = MEMORY[0x277CBEAC0];
    v65 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:20 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v64 = [MEMORY[0x277CCABB0] numberWithInt:532];
    v63 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:15 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v62 = [MEMORY[0x277CCABB0] numberWithInt:527];
    v61 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:17 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v60 = [MEMORY[0x277CCABB0] numberWithInt:529];
    v59 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:18 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v58 = [MEMORY[0x277CCABB0] numberWithInt:530];
    v56 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:21 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v55 = [MEMORY[0x277CCABB0] numberWithInt:533];
    v54 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:22 token:21 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v53 = [MEMORY[0x277CCABB0] numberWithInt:5653];
    v50 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:25 token:20 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v52 = [MEMORY[0x277CCABB0] numberWithInt:6420];
    v51 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:25 token:21 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v47 = [MEMORY[0x277CCABB0] numberWithInt:6421];
    v49 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:24 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v48 = [MEMORY[0x277CCABB0] numberWithInt:536];
    v45 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:34 objectClass:objc_opt_class() setterMethod:sel__setMeetingRequest_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v46 = [MEMORY[0x277CCABB0] numberWithInt:546];
    v6 = [ASParseRule alloc];
    v7 = objc_opt_class();
    aClass = a1;
    v8 = MEMORY[0x277CBEAC0];
    v37 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:2 token:5 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v36 = [MEMORY[0x277CCABB0] numberWithInt:517];
    v35 = [v8 dictionaryWithObjectsAndKeys:{v37, v36, 0}];
    v31 = [(ASParseRule *)v6 initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:6 objectClass:v7 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v35];
    v30 = [MEMORY[0x277CCABB0] numberWithInt:518];
    v9 = [ASParseRule alloc];
    v10 = objc_opt_class();
    v11 = MEMORY[0x277CBEAC0];
    v34 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:17 token:15 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:4367];
    v32 = [v11 dictionaryWithObjectsAndKeys:{v34, v33, 0}];
    v44 = [(ASParseRule *)v9 initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:14 objectClass:v10 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v32];
    v43 = [MEMORY[0x277CCABB0] numberWithInt:4366];
    v28 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:10 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:4362];
    v26 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:58 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:570];
    v12 = [ASParseRule alloc];
    v13 = objc_opt_class();
    v14 = MEMORY[0x277CBEAC0];
    v29 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:2 token:28 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:540];
    v16 = [v14 dictionaryWithObjectsAndKeys:{v29, v15, 0}];
    v17 = [(ASParseRule *)v12 initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:27 objectClass:v13 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v16];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:539];
    v19 = [v39 dictionaryWithObjectsAndKeys:{v65, v64, v63, v62, v61, v60, v59, v58, v56, v55, v54, v53, v50, v52, v51, v47, v49, v48, v45, v46, v31, v30, v44, v43, v28, v27, v26, v25, v17, v18, 0}];
    v20 = [(ASParseRule *)v41 initWithMinimumNumber:0 maximumNumber:1 codePage:25 token:19 objectClass:v40 setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v19];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:6419];
    v5 = [v42 dictionaryWithObjectsAndKeys:{v70, v69, v68, v67, v66, v57, v20, v21, 0}];

    v22 = +[ASItem parseRuleCache];
    v23 = NSStringFromClass(aClass);
    [v22 setObject:v5 forKey:v23];
  }

  return v5;
}

@end