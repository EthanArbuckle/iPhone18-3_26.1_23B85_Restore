@interface ASArray
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (ASArray)initWithSubclassRuleSet:(id)set;
- (id)commonValue;
- (id)description;
- (void)addItem:(id)item;
@end

@implementation ASArray

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_16 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_16;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_16 = v2;
    acceptsTopLevelLeaves___haveChecked_16 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_16 == 1)
  {
    v2 = parsingLeafNode___result_16;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_16 = v2;
    parsingLeafNode___haveChecked_16 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_16 == 1)
  {
    v2 = parsingWithSubItems___result_16;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_16 = v2;
    parsingWithSubItems___haveChecked_16 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_16 == 1)
  {
    v2 = frontingBasicTypes___result_16;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_16 = v2;
    frontingBasicTypes___haveChecked_16 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_16 == 1)
  {
    v2 = notifyOfUnknownTokens___result_16;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_16 = v2;
    notifyOfUnknownTokens___haveChecked_16 = 1;
  }

  return v2 & 1;
}

- (ASArray)initWithSubclassRuleSet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = ASArray;
  v6 = [(ASItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subclassRuleSet, set);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: Items: %@>", v5, self->_items];

  return v6;
}

- (void)addItem:(id)item
{
  itemCopy = item;
  v7 = itemCopy;
  if (!self->_items)
  {
    v5 = objc_opt_new();
    items = self->_items;
    self->_items = v5;

    itemCopy = v7;
  }

  if (itemCopy)
  {
    [(NSMutableArray *)self->_items addObject:v7];
  }

  MEMORY[0x2821F96F8]();
}

- (id)commonValue
{
  items = self->_items;
  if (!items)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    v5 = self->_items;
    self->_items = v4;

    items = self->_items;
  }

  return items;
}

@end