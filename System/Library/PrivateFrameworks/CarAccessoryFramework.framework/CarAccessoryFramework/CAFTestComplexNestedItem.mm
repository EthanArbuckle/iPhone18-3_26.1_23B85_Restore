@interface CAFTestComplexNestedItem
- (CAFTestComplexNestedItem)initWithDictionary:(id)a3;
- (CAFTestComplexNestedItem)initWithNestedKey:(id)a3 nestedValue:(id)a4;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFTestComplexNestedItem

- (CAFTestComplexNestedItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CAFTestComplexNestedItem;
  v5 = [(CAFTestComplexNestedItem *)&v13 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"nestedKey"];
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
    v9 = [v4 objectForKey:@"nestedValue"];
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

- (CAFTestComplexNestedItem)initWithNestedKey:(id)a3 nestedValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CAFTestComplexNestedItem;
  v9 = [(CAFTestComplexNestedItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nestedKey, a3);
    objc_storeStrong(&v10->_nestedValue, a4);
  }

  return v10;
}

- (NSDictionary)dictionaryRepresentation
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"nestedKey";
  v3 = [(CAFTestComplexNestedItem *)self nestedKey];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = @"nestedValue";
  v12[0] = v4;
  v5 = [(CAFTestComplexNestedItem *)self nestedValue];
  v6 = [v5 dictionaryRepresentation];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!v6)
  {
  }

  if (!v3)
  {
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFTestComplexNestedItem *)self nestedKey];
  v6 = [(CAFTestComplexNestedItem *)self nestedValue];
  v7 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@ }>", v4, self, @"nestedKey", v5, @"nestedValue", v6];

  return v7;
}

@end