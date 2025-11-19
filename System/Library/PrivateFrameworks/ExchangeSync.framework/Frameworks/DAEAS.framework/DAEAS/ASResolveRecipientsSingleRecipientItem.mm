@interface ASResolveRecipientsSingleRecipientItem
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
@end

@implementation ASResolveRecipientsSingleRecipientItem

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_105 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_106;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_106 = v2;
    acceptsTopLevelLeaves___haveChecked_105 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_107 == 1)
  {
    v2 = parsingLeafNode___result_108;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_108 = v2;
    parsingLeafNode___haveChecked_107 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_109 == 1)
  {
    v2 = parsingWithSubItems___result_110;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_110 = v2;
    parsingWithSubItems___haveChecked_109 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_111 == 1)
  {
    v2 = frontingBasicTypes___result_112;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_112 = v2;
    frontingBasicTypes___haveChecked_111 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_113 == 1)
  {
    v2 = notifyOfUnknownTokens___result_114;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_114 = v2;
    notifyOfUnknownTokens___haveChecked_113 = 1;
  }

  return v2 & 1;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v22 = a1;
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v20 = MEMORY[0x277CBEAC0];
    v21 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:10 token:11 objectClass:objc_opt_class() setterMethod:sel_setEmailAddress_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:2571];
    v18 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:10 token:12 objectClass:objc_opt_class() setterMethod:sel_setCertificates_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:2572];
    v16 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:10 token:22 objectClass:objc_opt_class() setterMethod:sel_setAvailability_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:2582];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:10 token:8 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:2568];
    v14 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:10 token:10 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:2570];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:10 token:26 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:2586];
    v5 = [v20 dictionaryWithObjectsAndKeys:{v21, v19, v18, v17, v16, v6, v7, v15, v14, v8, v9, v10, 0}];

    v11 = +[ASItem parseRuleCache];
    v12 = NSStringFromClass(v22);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v16.receiver = self;
  v16.super_class = ASResolveRecipientsSingleRecipientItem;
  v4 = [(ASResolveRecipientsSingleRecipientItem *)&v16 description];
  v5 = [(ASResolveRecipientsSingleRecipientItem *)self emailAddress];
  v6 = [v3 stringWithFormat:@"%@: emailAddress %@", v4, v5];

  v7 = [(ASResolveRecipientsSingleRecipientItem *)self certificates];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [(ASResolveRecipientsSingleRecipientItem *)self certificates];
    v10 = [v8 stringWithFormat:@" certificates %@", v9];
    [v6 appendString:v10];
  }

  v11 = [(ASResolveRecipientsSingleRecipientItem *)self availability];

  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [(ASResolveRecipientsSingleRecipientItem *)self availability];
    v14 = [v12 stringWithFormat:@" availability %@", v13];
    [v6 appendString:v14];
  }

  return v6;
}

@end