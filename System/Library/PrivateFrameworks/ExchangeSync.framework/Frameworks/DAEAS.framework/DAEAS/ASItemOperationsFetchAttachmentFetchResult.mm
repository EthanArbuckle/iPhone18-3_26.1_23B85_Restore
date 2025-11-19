@interface ASItemOperationsFetchAttachmentFetchResult
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
@end

@implementation ASItemOperationsFetchAttachmentFetchResult

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_40 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_40;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_40 = v2;
    acceptsTopLevelLeaves___haveChecked_40 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_40 == 1)
  {
    v2 = parsingLeafNode___result_40;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_40 = v2;
    parsingLeafNode___haveChecked_40 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_40 == 1)
  {
    v2 = parsingWithSubItems___result_40;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_40 = v2;
    parsingWithSubItems___haveChecked_40 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_40 == 1)
  {
    v2 = frontingBasicTypes___result_40;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_40 = v2;
    frontingBasicTypes___haveChecked_40 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_40 == 1)
  {
    v2 = notifyOfUnknownTokens___result_40;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_40 = v2;
    notifyOfUnknownTokens___haveChecked_40 = 1;
  }

  return v2 & 1;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:20 token:13 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:5133];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:17 objectClass:objc_opt_class() setterMethod:sel_setFileReference_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:4369];
    v11 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:20 token:11 objectClass:objc_opt_class() setterMethod:sel_setProperties_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:5131];
    v5 = [v6 dictionaryWithObjectsAndKeys:{v7, v8, v9, v10, v11, v12, 0}];

    v13 = +[ASItem parseRuleCache];
    v14 = NSStringFromClass(a1);
    [v13 setObject:v5 forKey:v14];
  }

  return v5;
}

@end