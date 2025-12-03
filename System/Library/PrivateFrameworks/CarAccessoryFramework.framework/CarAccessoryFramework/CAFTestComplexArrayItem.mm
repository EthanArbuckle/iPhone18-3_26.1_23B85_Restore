@interface CAFTestComplexArrayItem
- (CAFTestComplexArrayItem)initWithDictionary:(id)dictionary;
- (CAFTestComplexArrayItem)initWithKey:(id)key value:(id)value;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFTestComplexArrayItem

- (CAFTestComplexArrayItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = CAFTestComplexArrayItem;
  v5 = [(CAFTestComplexArrayItem *)&v13 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"key"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    key = v5->_key;
    v5->_key = v7;

    objc_opt_class();
    v9 = [dictionaryCopy objectForKey:@"value"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    value = v5->_value;
    v5->_value = v10;
  }

  return v5;
}

- (CAFTestComplexArrayItem)initWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = CAFTestComplexArrayItem;
  v9 = [(CAFTestComplexArrayItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

- (NSDictionary)dictionaryRepresentation
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"key";
  v3 = [(CAFTestComplexArrayItem *)self key];
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = @"value";
  v11[0] = null;
  value = [(CAFTestComplexArrayItem *)self value];
  null2 = value;
  if (!value)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!value)
  {
  }

  if (!v3)
  {
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFTestComplexArrayItem *)self key];
  value = [(CAFTestComplexArrayItem *)self value];
  v7 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@ }>", v4, self, @"key", v5, @"value", value];

  return v7;
}

@end