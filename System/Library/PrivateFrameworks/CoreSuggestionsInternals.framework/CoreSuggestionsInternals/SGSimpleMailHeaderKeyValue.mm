@interface SGSimpleMailHeaderKeyValue
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSimpleMailHeaderKeyValue:(id)a3;
- (SGSimpleMailHeaderKeyValue)initWithCoder:(id)a3;
- (SGSimpleMailHeaderKeyValue)initWithKey:(id)a3 value:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGSimpleMailHeaderKeyValue

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGSimpleMailHeaderKeyValue: %@: %@>", self->_key, self->_value];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  key = self->_key;
  v5 = a3;
  [v5 encodeObject:key forKey:@"key"];
  [v5 encodeObject:self->_value forKey:@"value"];
}

- (SGSimpleMailHeaderKeyValue)initWithCoder:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = SGSimpleMailHeaderKeyValue;
  v6 = [(SGSimpleMailHeaderKeyValue *)&v16 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [v5 decodeObjectOfClasses:v7 forKey:@"key"];

    if (v8)
    {
      v9 = v8;
      key = v6->_key;
      v6->_key = v9;
    }

    else
    {
      key = [MEMORY[0x277CCA890] currentHandler];
      [key handleFailureInMethod:a2 object:v6 file:@"SGSimpleMailMessage.m" lineNumber:112 description:{@"nonnull property %s *%s was null when decoded", "NSString", "key"}];
    }

    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v12 = [v5 decodeObjectOfClasses:v11 forKey:@"value"];

    if (v12)
    {
      v13 = v12;
      value = v6->_value;
      v6->_value = v13;
    }

    else
    {
      value = [MEMORY[0x277CCA890] currentHandler];
      [value handleFailureInMethod:a2 object:v6 file:@"SGSimpleMailMessage.m" lineNumber:113 description:{@"nonnull property %s *%s was null when decoded", "NSString", "value"}];
    }
  }

  return v6;
}

- (BOOL)isEqualToSimpleMailHeaderKeyValue:(id)a3
{
  v4 = a3;
  v5 = self->_key;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_value;
  v10 = v9;
  if (v9 == v4[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSString *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSimpleMailHeaderKeyValue *)self isEqualToSimpleMailHeaderKeyValue:v5];
  }

  return v6;
}

- (SGSimpleMailHeaderKeyValue)initWithKey:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SGSimpleMailHeaderKeyValue;
  v9 = [(SGSimpleMailHeaderKeyValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

@end