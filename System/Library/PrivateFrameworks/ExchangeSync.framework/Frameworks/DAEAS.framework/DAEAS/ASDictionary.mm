@interface ASDictionary
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (ASDictionary)initWithSubclassRuleSet:(id)a3;
- (id)commonValue;
- (id)description;
- (void)_setItems:(id)a3;
- (void)clearPlaceHolder;
@end

@implementation ASDictionary

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_25 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_25;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_25 = v2;
    acceptsTopLevelLeaves___haveChecked_25 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_25 == 1)
  {
    v2 = parsingLeafNode___result_25;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_25 = v2;
    parsingLeafNode___haveChecked_25 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_25 == 1)
  {
    v2 = parsingWithSubItems___result_25;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_25 = v2;
    parsingWithSubItems___haveChecked_25 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_25 == 1)
  {
    v2 = frontingBasicTypes___result_25;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_25 = v2;
    frontingBasicTypes___haveChecked_25 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_25 == 1)
  {
    v2 = notifyOfUnknownTokens___result_25;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_25 = v2;
    notifyOfUnknownTokens___haveChecked_25 = 1;
  }

  return v2 & 1;
}

- (ASDictionary)initWithSubclassRuleSet:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ASDictionary;
  v6 = [(ASItem *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    placeHolder = v6->_placeHolder;
    v6->_placeHolder = v7;

    objc_storeStrong(&v6->_subclassRuleSet, a3);
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: Items: %@>", v5, self->_items];

  return v6;
}

- (void)_setItems:(id)a3
{
  v5 = a3;
  if (self->_items != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_items, a3);
    v5 = v6;
  }
}

- (void)clearPlaceHolder
{
  placeHolder = self->_placeHolder;
  self->_placeHolder = 0;
  MEMORY[0x2821F96F8]();
}

- (id)commonValue
{
  items = self->_items;
  if (!items)
  {
    v4 = objc_opt_new();
    v5 = self->_items;
    self->_items = v4;

    items = self->_items;
  }

  return items;
}

@end