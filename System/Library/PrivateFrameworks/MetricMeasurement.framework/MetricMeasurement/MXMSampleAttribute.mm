@interface MXMSampleAttribute
+ (id)attributeWithName:(id)name;
+ (id)attributeWithName:(id)name numericValue:(id)value;
+ (id)attributeWithName:(id)name stringValue:(id)value;
+ (id)attributeWithName:(id)name valueType:(int64_t)type;
+ (id)attributeWithName:(id)name valueType:(int64_t)type value:(id)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAttribute:(id)attribute;
- (MXMSampleAttribute)initWithAttributeName:(id)name valueType:(int64_t)type value:(id)value;
- (MXMSampleAttribute)initWithCoder:(id)coder;
- (NSNumber)numericValue;
- (NSString)stringValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

+ (id)attributeWithName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initWithAttributeName:nameCopy];

  return v5;
}

+ (id)attributeWithName:(id)name stringValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v8 = [[self alloc] initWithAttributeName:nameCopy stringValue:valueCopy];

  return v8;
}

+ (id)attributeWithName:(id)name numericValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v8 = [[self alloc] initWithAttributeName:nameCopy numericValue:valueCopy];

  return v8;
}

+ (id)attributeWithName:(id)name valueType:(int64_t)type
{
  nameCopy = name;
  v7 = [[self alloc] initWithAttributeName:nameCopy valueType:type value:0];

  return v7;
}

+ (id)attributeWithName:(id)name valueType:(int64_t)type value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v10 = [[self alloc] initWithAttributeName:nameCopy valueType:type value:valueCopy];

  return v10;
}

- (MXMSampleAttribute)initWithAttributeName:(id)name valueType:(int64_t)type value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = MXMSampleAttribute;
  v11 = [(MXMSampleAttribute *)&v17 init];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = [nameCopy copy];
  name = v11->_name;
  v11->_name = v12;

  v11->_valueType = type;
  if (nameCopy)
  {
    if (!valueCopy)
    {
LABEL_12:
      v14 = v11;
      goto LABEL_13;
    }
  }

  else
  {
    [MXMSampleAttribute initWithAttributeName:a2 valueType:v11 value:?];
    if (!valueCopy)
    {
      goto LABEL_12;
    }
  }

  v14 = 0;
  switch(type)
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
      v14 = [valueCopy copy];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  name = [(MXMSampleAttribute *)self name];
  valueType = [(MXMSampleAttribute *)self valueType];
  value = [(MXMSampleAttribute *)self value];
  v8 = [v4 initWithAttributeName:name valueType:valueType value:value];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeInteger:self->_valueType forKey:@"valueType"];
  value = self->_value;
  if (value)
  {
    [coderCopy encodeObject:value forKey:@"value"];
  }
}

- (MXMSampleAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeIntegerForKey:@"valueType"];
  if (![coderCopy containsValueForKey:@"value"])
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

  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"value"];
LABEL_9:
  v11 = [(MXMSampleAttribute *)self initWithAttributeName:v5 valueType:v6 value:v10];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MXMSampleAttribute *)self isEqualToAttribute:equalCopy];

  return v5;
}

- (BOOL)isEqualToAttribute:(id)attribute
{
  attributeCopy = attribute;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(MXMSampleAttribute *)a2 isEqualToAttribute:?];
  }

  valueType = [(MXMSampleAttribute *)self valueType];
  if (valueType == [attributeCopy valueType] && (-[MXMSampleAttribute name](self, "name"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(attributeCopy, "name"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    valueType2 = [(MXMSampleAttribute *)self valueType];
    switch(valueType2)
    {
      case 0:
        value = [(MXMSampleAttribute *)self value];
        if (!value)
        {
          value2 = [attributeCopy value];
          LOBYTE(v8) = value2 == 0;
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        value = [(MXMSampleAttribute *)self numericValue];
        if (value)
        {
          value2 = [(MXMSampleAttribute *)self numericValue];
          numericValue = [attributeCopy numericValue];
          v14 = [value2 isEqualToNumber:numericValue];
          goto LABEL_14;
        }

LABEL_16:
        LOBYTE(v8) = 0;
LABEL_19:

        break;
      case 1:
        value = [(MXMSampleAttribute *)self stringValue];
        if (value)
        {
          value2 = [(MXMSampleAttribute *)self stringValue];
          numericValue = [attributeCopy stringValue];
          v14 = [value2 isEqualToString:numericValue];
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
  name = [(MXMSampleAttribute *)self name];
  value = [(MXMSampleAttribute *)self value];
  v8 = [v3 stringWithFormat:@"<%@: %p name='%@' value='%@'>", v5, self, name, value];

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