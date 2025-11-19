@interface ICAssetGeneration
- (BOOL)isEqual:(id)a3;
- (ICAssetGeneration)init;
- (ICAssetGeneration)initWithNumber:(int64_t)a3 identifier:(id)a4;
- (ICAssetGeneration)initWithRawValue:(id)a3;
- (NSString)rawValue;
- (id)description;
- (id)nextGeneration;
- (unint64_t)hash;
@end

@implementation ICAssetGeneration

- (ICAssetGeneration)initWithNumber:(int64_t)a3 identifier:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (a3 >= 1 && [v7 length])
  {
    v13.receiver = self;
    v13.super_class = ICAssetGeneration;
    v9 = [(ICAssetGeneration *)&v13 init];
    v10 = v9;
    if (v9)
    {
      v9->_number = a3;
      objc_storeStrong(&v9->_identifier, a4);
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (ICAssetGeneration)init
{
  v8.receiver = self;
  v8.super_class = ICAssetGeneration;
  v2 = [(ICAssetGeneration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_number = 1;
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    identifier = v3->_identifier;
    v3->_identifier = v5;
  }

  return v3;
}

- (ICAssetGeneration)initWithRawValue:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"_"];
  if ([v4 count] == 2)
  {
    v5 = [v4 firstObject];
    v6 = [v5 integerValue];

    v7 = [v4 lastObject];
    self = [(ICAssetGeneration *)self initWithNumber:v6 identifier:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)nextGeneration
{
  v3 = [ICAssetGeneration alloc];
  v4 = [(ICAssetGeneration *)self number];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  v7 = [(ICAssetGeneration *)v3 initWithNumber:v4 + 1 identifier:v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ICAssetGeneration number](self, "number")}];
  v7 = [(ICAssetGeneration *)self identifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, number: %@, identifier: %@>", v5, self, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  v6 = [(ICAssetGeneration *)self rawValue];
  v7 = [v5 rawValue];
  v8 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;
  if (v8 == v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;
  v13 = v12;
  if (v10 | v12)
  {
    if (v10)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = [v10 isEqual:v12];
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [(ICAssetGeneration *)self rawValue];
    v5 = [v4 hash];
    self->_hash = ICHashWithHashKeys(v5, v6, v7, v8, v9, v10, v11, v12, 0);

    return self->_hash;
  }

  return result;
}

- (NSString)rawValue
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ICAssetGeneration number](self, "number")}];
  v5 = [(ICAssetGeneration *)self identifier];
  v6 = [v3 stringWithFormat:@"%@%@%@", v4, @"_", v5];

  return v6;
}

@end