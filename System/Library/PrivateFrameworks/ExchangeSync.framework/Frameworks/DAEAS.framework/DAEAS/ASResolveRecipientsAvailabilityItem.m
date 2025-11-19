@interface ASResolveRecipientsAvailabilityItem
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
@end

@implementation ASResolveRecipientsAvailabilityItem

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_79 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_80;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_80 = v2;
    acceptsTopLevelLeaves___haveChecked_79 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_81 == 1)
  {
    v2 = parsingLeafNode___result_82;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_82 = v2;
    parsingLeafNode___haveChecked_81 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_83 == 1)
  {
    v2 = parsingWithSubItems___result_84;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_84 = v2;
    parsingWithSubItems___haveChecked_83 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_85 == 1)
  {
    v2 = frontingBasicTypes___result_86;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_86 = v2;
    frontingBasicTypes___haveChecked_85 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_87 == 1)
  {
    v2 = notifyOfUnknownTokens___result_88;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_88 = v2;
    notifyOfUnknownTokens___haveChecked_87 = 1;
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
    v7 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:10 token:7 objectClass:objc_opt_class() setterMethod:sel_setEASStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:2567];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:10 token:25 objectClass:objc_opt_class() setterMethod:sel_setMergedFreeBusy_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:2585];
    v5 = [v6 dictionaryWithObjectsAndKeys:{v7, v8, v9, v10, 0}];

    v11 = +[ASItem parseRuleCache];
    v12 = NSStringFromClass(a1);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = ASResolveRecipientsAvailabilityItem;
  v4 = [(ASResolveRecipientsAvailabilityItem *)&v9 description];
  v5 = [(ASResolveRecipientsAvailabilityItem *)self easStatus];
  v6 = [(ASResolveRecipientsAvailabilityItem *)self mergedFreeBusy];
  v7 = [v3 stringWithFormat:@"%@: easStatus %@ mergedFreeBusy %@", v4, v5, v6];

  return v7;
}

@end