@interface ASResolveRecipientsResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (void)addResponse:(id)a3;
@end

@implementation ASResolveRecipientsResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_182 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_183;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_183 = v2;
    acceptsTopLevelLeaves___haveChecked_182 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_184 == 1)
  {
    v2 = parsingLeafNode___result_185;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_185 = v2;
    parsingLeafNode___haveChecked_184 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_186 == 1)
  {
    v2 = parsingWithSubItems___result_187;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_187 = v2;
    parsingWithSubItems___haveChecked_186 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_188 == 1)
  {
    v2 = frontingBasicTypes___result_189;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_189 = v2;
    frontingBasicTypes___haveChecked_188 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_190 == 1)
  {
    v2 = notifyOfUnknownTokens___result_191;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_191 = v2;
    notifyOfUnknownTokens___haveChecked_190 = 1;
  }

  return v2 & 1;
}

- (void)addResponse:(id)a3
{
  v4 = a3;
  v5 = [(ASResolveRecipientsResponse *)self mResponses];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(ASResolveRecipientsResponse *)self setMResponses:v6];
  }

  v7 = [(ASResolveRecipientsResponse *)self mResponses];
  [v7 addObject:v4];
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:10 token:7 objectClass:objc_opt_class() setterMethod:sel_setEASStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:2567];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:10 token:6 objectClass:objc_opt_class() setterMethod:sel_addResponse_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:2566];
    v5 = [v6 dictionaryWithObjectsAndKeys:{v7, v8, v9, v10, 0}];

    v11 = +[ASItem parseRuleCache];
    v12 = NSStringFromClass(a1);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = ASResolveRecipientsResponse;
  v4 = [(ASResolveRecipientsResponse *)&v9 description];
  v5 = [(ASResolveRecipientsResponse *)self easStatus];
  v6 = [(ASResolveRecipientsResponse *)self responses];
  v7 = [v3 stringWithFormat:@"%@: easStatus %@ responses %@", v4, v5, v6];

  return v7;
}

@end