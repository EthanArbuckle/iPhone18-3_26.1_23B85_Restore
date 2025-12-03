@interface ASPolicy
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (void)_setKey:(id)key;
- (void)_setStatus:(id)status;
- (void)_setType:(id)type;
@end

@implementation ASPolicy

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_34 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_34;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_34 = v2;
    acceptsTopLevelLeaves___haveChecked_34 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_34 == 1)
  {
    v2 = parsingLeafNode___result_34;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_34 = v2;
    parsingLeafNode___haveChecked_34 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_34 == 1)
  {
    v2 = parsingWithSubItems___result_34;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_34 = v2;
    parsingWithSubItems___haveChecked_34 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_34 == 1)
  {
    v2 = frontingBasicTypes___result_34;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_34 = v2;
    frontingBasicTypes___haveChecked_34 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_34 == 1)
  {
    v2 = notifyOfUnknownTokens___result_34;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_34 = v2;
    notifyOfUnknownTokens___haveChecked_34 = 1;
  }

  return v2 & 1;
}

- (void)_setType:(id)type
{
  if (self->_type != type)
  {
    v4 = [type copy];
    type = self->_type;
    self->_type = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_setKey:(id)key
{
  if (self->_key != key)
  {
    v4 = [key copy];
    key = self->_key;
    self->_key = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_setStatus:(id)status
{
  if (self->_status != status)
  {
    v4 = [status copy];
    status = self->_status;
    self->_status = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  type = self->_type;
  key = self->_key;
  status = self->_status;
  perDomainDictsForPolicy = [(ASPolicy *)self perDomainDictsForPolicy];
  v9 = [v3 stringWithFormat:@"<%@: %p> { Type: %@, Key: %@, Status: %@, Processed: %@ }", v4, self, type, key, status, perDomainDictsForPolicy];

  return v9;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:14 token:8 objectClass:objc_opt_class() setterMethod:sel__setType_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:3592];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:14 token:9 objectClass:objc_opt_class() setterMethod:sel__setKey_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:3593];
    v11 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:14 token:11 objectClass:objc_opt_class() setterMethod:sel__setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:3595];
    v5 = [v6 dictionaryWithObjectsAndKeys:{v7, v8, v9, v10, v11, v12, 0}];

    v13 = +[ASItem parseRuleCache];
    v14 = NSStringFromClass(self);
    [v13 setObject:v5 forKey:v14];
  }

  return v5;
}

@end