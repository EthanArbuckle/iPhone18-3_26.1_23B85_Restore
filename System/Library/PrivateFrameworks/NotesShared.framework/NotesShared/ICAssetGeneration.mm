@interface ICAssetGeneration
- (BOOL)isEqual:(id)equal;
- (ICAssetGeneration)init;
- (ICAssetGeneration)initWithNumber:(int64_t)number identifier:(id)identifier;
- (ICAssetGeneration)initWithRawValue:(id)value;
- (NSString)rawValue;
- (id)description;
- (id)nextGeneration;
- (unint64_t)hash;
@end

@implementation ICAssetGeneration

- (ICAssetGeneration)initWithNumber:(int64_t)number identifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (number >= 1 && [identifierCopy length])
  {
    v13.receiver = self;
    v13.super_class = ICAssetGeneration;
    v9 = [(ICAssetGeneration *)&v13 init];
    v10 = v9;
    if (v9)
    {
      v9->_number = number;
      objc_storeStrong(&v9->_identifier, identifier);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v3->_identifier;
    v3->_identifier = uUIDString;
  }

  return v3;
}

- (ICAssetGeneration)initWithRawValue:(id)value
{
  v4 = [value componentsSeparatedByString:@"_"];
  if ([v4 count] == 2)
  {
    firstObject = [v4 firstObject];
    integerValue = [firstObject integerValue];

    lastObject = [v4 lastObject];
    self = [(ICAssetGeneration *)self initWithNumber:integerValue identifier:lastObject];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)nextGeneration
{
  v3 = [ICAssetGeneration alloc];
  number = [(ICAssetGeneration *)self number];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [(ICAssetGeneration *)v3 initWithNumber:number + 1 identifier:uUIDString];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ICAssetGeneration number](self, "number")}];
  identifier = [(ICAssetGeneration *)self identifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, number: %@, identifier: %@>", v5, self, v6, identifier];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  rawValue = [(ICAssetGeneration *)self rawValue];
  rawValue2 = [v5 rawValue];
  v8 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == rawValue)
  {
    v9 = 0;
  }

  else
  {
    v9 = rawValue;
  }

  v10 = v9;
  if (v8 == rawValue2)
  {
    v11 = 0;
  }

  else
  {
    v11 = rawValue2;
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
    rawValue = [(ICAssetGeneration *)self rawValue];
    v5 = [rawValue hash];
    self->_hash = ICHashWithHashKeys(v5, v6, v7, v8, v9, v10, v11, v12, 0);

    return self->_hash;
  }

  return result;
}

- (NSString)rawValue
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ICAssetGeneration number](self, "number")}];
  identifier = [(ICAssetGeneration *)self identifier];
  v6 = [v3 stringWithFormat:@"%@%@%@", v4, @"_", identifier];

  return v6;
}

@end