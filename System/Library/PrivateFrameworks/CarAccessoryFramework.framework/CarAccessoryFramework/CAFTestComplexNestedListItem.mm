@interface CAFTestComplexNestedListItem
- (CAFTestComplexNestedListItem)initWithDictionary:(id)dictionary;
- (CAFTestComplexNestedListItem)initWithNestedKey:(id)key nestedValue:(id)value;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFTestComplexNestedListItem

- (CAFTestComplexNestedListItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = CAFTestComplexNestedListItem;
  v5 = [(CAFTestComplexNestedListItem *)&v13 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"nestedKey"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    nestedKey = v5->_nestedKey;
    v5->_nestedKey = v7;

    objc_opt_class();
    v9 = [dictionaryCopy objectForKey:@"nestedValue"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    nestedValue = v5->_nestedValue;
    v5->_nestedValue = v10;
  }

  return v5;
}

- (CAFTestComplexNestedListItem)initWithNestedKey:(id)key nestedValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = CAFTestComplexNestedListItem;
  v9 = [(CAFTestComplexNestedListItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nestedKey, key);
    objc_storeStrong(&v10->_nestedValue, value);
  }

  return v10;
}

- (NSDictionary)dictionaryRepresentation
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"nestedKey";
  nestedKey = [(CAFTestComplexNestedListItem *)self nestedKey];
  null = nestedKey;
  if (!nestedKey)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = @"nestedValue";
  v12[0] = null;
  nestedValue = [(CAFTestComplexNestedListItem *)self nestedValue];
  arrayRepresentation = [nestedValue arrayRepresentation];
  null2 = arrayRepresentation;
  if (!arrayRepresentation)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v12[1] = null2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!arrayRepresentation)
  {
  }

  if (!nestedKey)
  {
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  nestedKey = [(CAFTestComplexNestedListItem *)self nestedKey];
  nestedValue = [(CAFTestComplexNestedListItem *)self nestedValue];
  v7 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@ }>", v4, self, @"nestedKey", nestedKey, @"nestedValue", nestedValue];

  return v7;
}

@end