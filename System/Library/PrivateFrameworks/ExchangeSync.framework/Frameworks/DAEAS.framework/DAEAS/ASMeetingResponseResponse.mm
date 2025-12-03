@interface ASMeetingResponseResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASMeetingResponseResponse)init;
- (id)description;
- (void)_addSingularResponse:(id)response;
@end

@implementation ASMeetingResponseResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_67 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_68;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_68 = v2;
    acceptsTopLevelLeaves___haveChecked_67 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_69 == 1)
  {
    v2 = parsingLeafNode___result_70;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_70 = v2;
    parsingLeafNode___haveChecked_69 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_71 == 1)
  {
    v2 = parsingWithSubItems___result_72;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_72 = v2;
    parsingWithSubItems___haveChecked_71 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_73 == 1)
  {
    v2 = frontingBasicTypes___result_74;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_74 = v2;
    frontingBasicTypes___haveChecked_73 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_75 == 1)
  {
    v2 = notifyOfUnknownTokens___result_76;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_76 = v2;
    notifyOfUnknownTokens___haveChecked_75 = 1;
  }

  return v2 & 1;
}

- (ASMeetingResponseResponse)init
{
  v5.receiver = self;
  v5.super_class = ASMeetingResponseResponse;
  v2 = [(ASItem *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(ASMeetingResponseResponse *)v2 setMSingularResponses:v3];
  }

  return v2;
}

- (void)_addSingularResponse:(id)response
{
  responseCopy = response;
  mSingularResponses = [(ASMeetingResponseResponse *)self mSingularResponses];
  [mSingularResponses addObject:responseCopy];
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:8 token:10 objectClass:objc_opt_class() setterMethod:sel__addSingularResponse_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:2058];
    v5 = [v6 dictionaryWithObjectsAndKeys:{v7, v8, 0}];

    v9 = +[ASItem parseRuleCache];
    v10 = NSStringFromClass(self);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASMeetingResponseResponse;
  v4 = [(ASMeetingResponseResponse *)&v8 description];
  mSingularResponses = [(ASMeetingResponseResponse *)self mSingularResponses];
  v6 = [v3 stringWithFormat:@"%@: Responses %@", v4, mSingularResponses];

  return v6;
}

@end