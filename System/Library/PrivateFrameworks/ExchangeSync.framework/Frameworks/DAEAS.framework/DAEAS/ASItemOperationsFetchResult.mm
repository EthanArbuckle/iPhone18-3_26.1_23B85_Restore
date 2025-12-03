@interface ASItemOperationsFetchResult
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASItemOperationsFetchResult)init;
@end

@implementation ASItemOperationsFetchResult

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_13 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_13;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_13 = v2;
    acceptsTopLevelLeaves___haveChecked_13 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_13 == 1)
  {
    v2 = parsingLeafNode___result_13;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_13 = v2;
    parsingLeafNode___haveChecked_13 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_13 == 1)
  {
    v2 = parsingWithSubItems___result_13;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_13 = v2;
    parsingWithSubItems___haveChecked_13 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_13 == 1)
  {
    v2 = frontingBasicTypes___result_13;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_13 = v2;
    frontingBasicTypes___haveChecked_13 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_13 == 1)
  {
    v2 = notifyOfUnknownTokens___result_13;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_13 = v2;
    notifyOfUnknownTokens___haveChecked_13 = 1;
  }

  return v2 & 1;
}

- (ASItemOperationsFetchResult)init
{
  v5.receiver = self;
  v5.super_class = ASItemOperationsFetchResult;
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
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v60.receiver = self;
    v60.super_class = &OBJC_METACLASS___ASItemOperationsFetchResult;
    v6 = objc_msgSendSuper2(&v60, sel_asParseRules);
    v46 = [v6 mutableCopy];

    v44 = objc_alloc(MEMORY[0x277CBEAC0]);
    v58 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:20 token:13 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v57 = [MEMORY[0x277CCABB0] numberWithInt:5133];
    v59 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:15 token:24 objectClass:objc_opt_class() setterMethod:sel_setLongID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v56 = [MEMORY[0x277CCABB0] numberWithInt:3864];
    v55 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:18 objectClass:objc_opt_class() setterMethod:sel_setFolderId_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v54 = [MEMORY[0x277CCABB0] numberWithInt:18];
    v53 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:13 objectClass:objc_opt_class() setterMethod:sel_setServerID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v42 = [MEMORY[0x277CCABB0] numberWithInt:13];
    v41 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:16 objectClass:objc_opt_class() setterMethod:sel_setClassString_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v40 = [MEMORY[0x277CCABB0] numberWithInt:16];
    v36 = [ASParseRule alloc];
    v35 = objc_opt_class();
    v34 = MEMORY[0x277CBEAC0];
    v52 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:34 objectClass:objc_opt_class() setterMethod:sel__setMeetingRequest_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v51 = [MEMORY[0x277CCABB0] numberWithInt:546];
    v7 = [ASParseRule alloc];
    v8 = objc_opt_class();
    v9 = MEMORY[0x277CBEAC0];
    selfCopy = self;
    v39 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:2 token:5 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v38 = [MEMORY[0x277CCABB0] numberWithInt:517];
    v37 = [v9 dictionaryWithObjectsAndKeys:{v39, v38, 0}];
    v50 = [(ASParseRule *)v7 initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:6 objectClass:v8 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v37];
    v49 = [MEMORY[0x277CCABB0] numberWithInt:518];
    v10 = [ASParseRule alloc];
    v11 = objc_opt_class();
    v12 = MEMORY[0x277CBEAC0];
    v33 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:17 token:15 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v32 = [MEMORY[0x277CCABB0] numberWithInt:4367];
    v31 = [v12 dictionaryWithObjectsAndKeys:{v33, v32, 0}];
    v48 = [(ASParseRule *)v10 initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:14 objectClass:v11 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v31];
    v47 = [MEMORY[0x277CCABB0] numberWithInt:4366];
    v29 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:10 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:4362];
    v27 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:58 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:570];
    v13 = [ASParseRule alloc];
    v14 = objc_opt_class();
    v15 = MEMORY[0x277CBEAC0];
    v30 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:2 token:28 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:540];
    v17 = [v15 dictionaryWithObjectsAndKeys:{v30, v16, 0}];
    v18 = [(ASParseRule *)v13 initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:27 objectClass:v14 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v17];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:539];
    v20 = [v34 dictionaryWithObjectsAndKeys:{v52, v51, v50, v49, v48, v47, v29, v28, v27, v26, v18, v19, 0}];
    v21 = [(ASParseRule *)v36 initWithMinimumNumber:0 maximumNumber:1 codePage:20 token:11 objectClass:v35 setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v20];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:5131];
    v45 = [v44 initWithObjectsAndKeys:{v58, v57, v59, v56, v55, v54, v53, v42, v41, v40, v21, v22, 0}];

    v5 = v46;
    [v46 addEntriesFromDictionary:v45];
    v23 = +[ASItem parseRuleCache];
    v24 = NSStringFromClass(selfCopy);
    [v23 setObject:v46 forKey:v24];
  }

  return v5;
}

@end