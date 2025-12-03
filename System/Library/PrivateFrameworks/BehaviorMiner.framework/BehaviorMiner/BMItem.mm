@interface BMItem
+ (id)itemWithType:(id)type UUIDValue:(id)value;
+ (id)itemWithType:(id)type numberValue:(id)value;
+ (id)itemWithType:(id)type stringValue:(id)value;
- (BMItem)initWithCoder:(id)coder;
- (BMItem)initWithType:(id)type normalizedValue:(id)value;
- (BMItem)initWithType:(id)type value:(id)value absoluteSupport:(unint64_t)support;
- (BOOL)isEqual:(id)equal;
- (NSString)uniformIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)value;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMItem

+ (id)itemWithType:(id)type stringValue:(id)value
{
  valueCopy = value;
  typeCopy = type;
  v7 = [[BMItem alloc] initWithType:typeCopy value:valueCopy];

  return v7;
}

+ (id)itemWithType:(id)type numberValue:(id)value
{
  valueCopy = value;
  typeCopy = type;
  v7 = [[BMItem alloc] initWithType:typeCopy value:valueCopy];

  return v7;
}

+ (id)itemWithType:(id)type UUIDValue:(id)value
{
  valueCopy = value;
  typeCopy = type;
  v7 = [[BMItem alloc] initWithType:typeCopy value:valueCopy];

  return v7;
}

- (BMItem)initWithType:(id)type value:(id)value absoluteSupport:(unint64_t)support
{
  typeCopy = type;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = BMItem;
  v11 = [(BMItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_type, type);
    v12->_absoluteSupport = support;
    v13 = BMItemNormalizedValueFromValue(valueCopy);
    normalizedValue = v12->_normalizedValue;
    v12->_normalizedValue = v13;
  }

  return v12;
}

- (BMItem)initWithType:(id)type normalizedValue:(id)value
{
  valueCopy = value;
  typeCopy = type;
  v8 = BMItemValueFromNormalizedValue(valueCopy, [typeCopy valueClass]);

  v9 = [(BMItem *)self initWithType:typeCopy value:v8];
  return v9;
}

- (id)value
{
  normalizedValue = [(BMItem *)self normalizedValue];
  type = [(BMItem *)self type];
  v5 = BMItemValueFromNormalizedValue(normalizedValue, [type valueClass]);

  return v5;
}

- (NSString)uniformIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  type = [(BMItem *)self type];
  identifier = [type identifier];
  normalizedValue = [(BMItem *)self normalizedValue];
  v7 = [v3 stringWithFormat:@"%@:%@", identifier, normalizedValue];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(BMItem *)self type];
      type2 = [(BMItem *)v5 type];
      if ([type isEqual:type2])
      {
        normalizedValue = [(BMItem *)self normalizedValue];
        normalizedValue2 = [(BMItem *)v5 normalizedValue];
        v10 = [normalizedValue isEqualToString:normalizedValue2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  type = [(BMItem *)self type];
  v4 = [type hash];
  normalizedValue = [(BMItem *)self normalizedValue];
  v6 = [normalizedValue hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  type = [(BMItem *)self type];
  identifier = [type identifier];
  value = [(BMItem *)self value];
  v7 = [v3 stringWithFormat:@"{%@: %@}", identifier, value];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  type = [(BMItem *)self type];
  value = [(BMItem *)self value];
  v7 = [v4 initWithType:type value:value];

  return v7;
}

- (BMItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  if ([objc_msgSend(v5 "valueClass")])
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    v7 = [objc_opt_class() itemWithType:v5 stringValue:v6];
  }

  else if ([objc_msgSend(v5 "valueClass")])
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    v7 = [objc_opt_class() itemWithType:v5 numberValue:v6];
  }

  else
  {
    if (![objc_msgSend(v5 "valueClass")])
    {
      v8 = 0;
      goto LABEL_8;
    }

    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    v7 = [objc_opt_class() itemWithType:v5 UUIDValue:v6];
  }

  v8 = v7;

LABEL_8:
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeObject:type forKey:@"type"];
  value = [(BMItem *)self value];
  [coderCopy encodeObject:value forKey:@"value"];
}

@end