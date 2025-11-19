@interface CPSUserDefaultsWriteInfo
- (CPSUserDefaultsWriteInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSUserDefaultsWriteInfo

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_suiteName withName:@"suiteName"];
  v5 = [v3 appendObject:self->_key withName:@"key"];
  v6 = [v3 appendObject:self->_value withName:@"value"];
  v7 = [v3 build];

  return v7;
}

- (CPSUserDefaultsWriteInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CPSUserDefaultsWriteInfo;
  v5 = [(CPSUserDefaultsWriteInfo *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suiteName"];
    suiteName = v5->_suiteName;
    v5->_suiteName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v10 setWithObjects:{v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"value"];
    value = v5->_value;
    v5->_value = v18;

    v20 = v5->_value;
    v21 = [MEMORY[0x277CBEB68] null];

    if (v20 == v21)
    {
      v22 = v5->_value;
      v5->_value = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(CPSUserDefaultsWriteInfo *)self suiteName];
  [v7 encodeObject:v4 forKey:@"suiteName"];

  v5 = [(CPSUserDefaultsWriteInfo *)self key];
  [v7 encodeObject:v5 forKey:@"key"];

  v6 = [(CPSUserDefaultsWriteInfo *)self value];
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  [v7 encodeObject:v6 forKey:@"value"];
}

@end