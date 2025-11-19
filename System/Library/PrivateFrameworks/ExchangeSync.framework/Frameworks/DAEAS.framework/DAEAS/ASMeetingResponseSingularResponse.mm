@interface ASMeetingResponseSingularResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
@end

@implementation ASMeetingResponseSingularResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_4 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_4;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_4 = v2;
    acceptsTopLevelLeaves___haveChecked_4 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_4 == 1)
  {
    v2 = parsingLeafNode___result_4;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_4 = v2;
    parsingLeafNode___haveChecked_4 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_4 == 1)
  {
    v2 = parsingWithSubItems___result_4;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_4 = v2;
    parsingWithSubItems___haveChecked_4 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_4 == 1)
  {
    v2 = frontingBasicTypes___result_4;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_4 = v2;
    frontingBasicTypes___haveChecked_4 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_4 == 1)
  {
    v2 = notifyOfUnknownTokens___result_4;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_4 = v2;
    notifyOfUnknownTokens___haveChecked_4 = 1;
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
    v17 = MEMORY[0x277CBEAC0];
    v6 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:8 token:8 objectClass:objc_opt_class() setterMethod:sel_setRequestId_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:2056];
    v8 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:8 token:11 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:2059];
    v10 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:8 token:5 objectClass:objc_opt_class() setterMethod:sel_setEventId_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:2053];
    v12 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:8 token:14 objectClass:objc_opt_class() setterMethod:sel_setInstanceId_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:2062];
    v5 = [v17 dictionaryWithObjectsAndKeys:{v6, v7, v8, v9, v10, v11, v12, v13, 0}];

    v14 = +[ASItem parseRuleCache];
    v15 = NSStringFromClass(a1);
    [v14 setObject:v5 forKey:v15];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASMeetingResponseSingularResponse;
  v4 = [(ASMeetingResponseSingularResponse *)&v8 description];
  status = self->_status;
  v6 = [v3 stringWithFormat:@"%@: RequestId %@ status %@ eventId %@", v4, self->_requestId, status, self->_eventId];

  return v6;
}

@end