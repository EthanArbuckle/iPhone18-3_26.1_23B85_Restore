@interface CAFTestComplexItem
- (CAFTestComplexItem)initWithDictionary:(id)dictionary;
- (CAFTestComplexItem)initWithKey:(id)key value:(unsigned int)value;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFTestComplexItem

- (CAFTestComplexItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CAFTestComplexItem;
  v5 = [(CAFTestComplexItem *)&v12 init];
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

    v5->_value = [v10 unsignedIntValue];
  }

  return v5;
}

- (CAFTestComplexItem)initWithKey:(id)key value:(unsigned int)value
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = CAFTestComplexItem;
  v8 = [(CAFTestComplexItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_key, key);
    v9->_value = value;
  }

  return v9;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"key";
  v3 = [(CAFTestComplexItem *)self key];
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v9[1] = @"value";
  v10[0] = null;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CAFTestComplexItem value](self, "value")}];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  if (!v3)
  {
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFTestComplexItem *)self key];
  v6 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %u }>", v4, self, @"key", v5, @"value", -[CAFTestComplexItem value](self, "value")];

  return v6;
}

@end