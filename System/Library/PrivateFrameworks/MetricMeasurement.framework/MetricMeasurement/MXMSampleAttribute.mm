@interface MXMSampleAttribute
+ (id)attributeWithName:(id)a3;
+ (id)attributeWithName:(id)a3 numericValue:(id)a4;
+ (id)attributeWithName:(id)a3 stringValue:(id)a4;
+ (id)attributeWithName:(id)a3 valueType:(int64_t)a4;
+ (id)attributeWithName:(id)a3 valueType:(int64_t)a4 value:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAttribute:(id)a3;
- (MXMSampleAttribute)initWithAttributeName:(id)a3 valueType:(int64_t)a4 value:(id)a5;
- (MXMSampleAttribute)initWithCoder:(id)a3;
- (NSNumber)numericValue;
- (NSString)stringValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXMSampleAttribute

- (NSString)stringValue
{
  if (self->_valueType == 1)
  {
    v4 = [self->_value copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)numericValue
{
  if (self->_valueType == 2)
  {
    v4 = [self->_value copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)attributeWithName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAttributeName:v4];

  return v5;
}

+ (id)attributeWithName:(id)a3 stringValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAttributeName:v7 stringValue:v6];

  return v8;
}

+ (id)attributeWithName:(id)a3 numericValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAttributeName:v7 numericValue:v6];

  return v8;
}

+ (id)attributeWithName:(id)a3 valueType:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithAttributeName:v6 valueType:a4 value:0];

  return v7;
}

+ (id)attributeWithName:(id)a3 valueType:(int64_t)a4 value:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithAttributeName:v9 valueType:a4 value:v8];

  return v10;
}

- (MXMSampleAttribute)initWithAttributeName:(id)a3 valueType:(int64_t)a4 value:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = MXMSampleAttribute;
  v11 = [(MXMSampleAttribute *)&v17 init];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = [v9 copy];
  name = v11->_name;
  v11->_name = v12;

  v11->_valueType = a4;
  if (v9)
  {
    if (!v10)
    {
LABEL_12:
      v14 = v11;
      goto LABEL_13;
    }
  }

  else
  {
    [MXMSampleAttribute initWithAttributeName:a2 valueType:v11 value:?];
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  v14 = 0;
  switch(a4)
  {
    case 0:
LABEL_11:
      value = v11->_value;
      v11->_value = v14;

      goto LABEL_12;
    case 2:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXMSampleAttribute initWithAttributeName:a2 valueType:v11 value:&v18];
        goto LABEL_17;
      }

LABEL_10:
      v14 = [v10 copy];
      goto LABEL_11;
    case 1:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXMSampleAttribute initWithAttributeName:a2 valueType:v11 value:&v18];
LABEL_17:

        goto LABEL_10;
      }

      goto LABEL_10;
  }

LABEL_13:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(MXMSampleAttribute *)self name];
  v6 = [(MXMSampleAttribute *)self valueType];
  v7 = [(MXMSampleAttribute *)self value];
  v8 = [v4 initWithAttributeName:v5 valueType:v6 value:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeInteger:self->_valueType forKey:@"valueType"];
  value = self->_value;
  if (value)
  {
    [v5 encodeObject:value forKey:@"value"];
  }
}

- (MXMSampleAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeIntegerForKey:@"valueType"];
  if (![v4 containsValueForKey:@"value"])
  {
    goto LABEL_8;
  }

  if (v6 == 1)
  {
    v7 = 0x277CCACA8;
  }

  else
  {
    if (v6 != 2)
    {
LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }

    v7 = 0x277CCABB0;
  }

  v8 = *v7;
  v9 = objc_opt_class();
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = [v4 decodeObjectOfClass:v9 forKey:@"value"];
LABEL_9:
  v11 = [(MXMSampleAttribute *)self initWithAttributeName:v5 valueType:v6 value:v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MXMSampleAttribute *)self isEqualToAttribute:v4];

  return v5;
}

- (BOOL)isEqualToAttribute:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(MXMSampleAttribute *)a2 isEqualToAttribute:?];
  }

  v6 = [(MXMSampleAttribute *)self valueType];
  if (v6 == [v5 valueType] && (-[MXMSampleAttribute name](self, "name"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "name"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    v10 = [(MXMSampleAttribute *)self valueType];
    switch(v10)
    {
      case 0:
        v11 = [(MXMSampleAttribute *)self value];
        if (!v11)
        {
          v12 = [v5 value];
          LOBYTE(v8) = v12 == 0;
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v11 = [(MXMSampleAttribute *)self numericValue];
        if (v11)
        {
          v12 = [(MXMSampleAttribute *)self numericValue];
          v13 = [v5 numericValue];
          v14 = [v12 isEqualToNumber:v13];
          goto LABEL_14;
        }

LABEL_16:
        LOBYTE(v8) = 0;
LABEL_19:

        break;
      case 1:
        v11 = [(MXMSampleAttribute *)self stringValue];
        if (v11)
        {
          v12 = [(MXMSampleAttribute *)self stringValue];
          v13 = [v5 stringValue];
          v14 = [v12 isEqualToString:v13];
LABEL_14:
          LOBYTE(v8) = v14;

LABEL_18:
          goto LABEL_19;
        }

        goto LABEL_16;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MXMSampleAttribute *)self name];
  v7 = [(MXMSampleAttribute *)self value];
  v8 = [v3 stringWithFormat:@"<%@: %p name='%@' value='%@'>", v5, self, v6, v7];

  return v8;
}

- (void)initWithAttributeName:(uint64_t)a1 valueType:(uint64_t)a2 value:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMSampleAttribute.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"name"}];
}

- (uint64_t)initWithAttributeName:(uint64_t)a1 valueType:(uint64_t)a2 value:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"MXMSampleAttribute.m" lineNumber:85 description:@"Value is not of type Number."];
}

- (uint64_t)initWithAttributeName:(uint64_t)a1 valueType:(uint64_t)a2 value:(void *)a3 .cold.3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"MXMSampleAttribute.m" lineNumber:81 description:@"Value is not of type String."];
}

- (void)isEqualToAttribute:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMSampleAttribute.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"[attribute isKindOfClass:MXMSampleAttribute.class]"}];
}

@end