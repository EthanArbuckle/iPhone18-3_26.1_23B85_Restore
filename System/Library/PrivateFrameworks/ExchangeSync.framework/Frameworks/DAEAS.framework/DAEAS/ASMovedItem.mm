@interface ASMovedItem
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (void)setDstMsgId:(id)id;
- (void)setSrcMsgId:(id)id;
- (void)setStatus:(id)status;
@end

@implementation ASMovedItem

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_32 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_32;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_32 = v2;
    acceptsTopLevelLeaves___haveChecked_32 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_32 == 1)
  {
    v2 = parsingLeafNode___result_32;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_32 = v2;
    parsingLeafNode___haveChecked_32 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_32 == 1)
  {
    v2 = parsingWithSubItems___result_32;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_32 = v2;
    parsingWithSubItems___haveChecked_32 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_32 == 1)
  {
    v2 = frontingBasicTypes___result_32;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_32 = v2;
    frontingBasicTypes___haveChecked_32 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_32 == 1)
  {
    v2 = notifyOfUnknownTokens___result_32;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_32 = v2;
    notifyOfUnknownTokens___haveChecked_32 = 1;
  }

  return v2 & 1;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:5 token:12 objectClass:objc_opt_class() setterMethod:sel_setDstMsgId_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:1292];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:5 token:7 objectClass:objc_opt_class() setterMethod:sel_setSrcMsgId_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:1287];
    v11 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:5 token:11 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:1291];
    v5 = [v6 dictionaryWithObjectsAndKeys:{v7, v8, v9, v10, v11, v12, 0}];

    v13 = +[ASItem parseRuleCache];
    v14 = NSStringFromClass(self);
    [v13 setObject:v5 forKey:v14];
  }

  return v5;
}

- (void)setSrcMsgId:(id)id
{
  idCopy = id;
  if (self->_srcMsgId != idCopy)
  {
    v6 = idCopy;
    objc_storeStrong(&self->_srcMsgId, id);
    idCopy = v6;
  }
}

- (void)setStatus:(id)status
{
  statusCopy = status;
  if (self->_status != statusCopy)
  {
    v6 = statusCopy;
    objc_storeStrong(&self->_status, status);
    statusCopy = v6;
  }
}

- (void)setDstMsgId:(id)id
{
  idCopy = id;
  if (self->_dstMsgId != idCopy)
  {
    v6 = idCopy;
    objc_storeStrong(&self->_dstMsgId, id);
    idCopy = v6;
  }
}

@end