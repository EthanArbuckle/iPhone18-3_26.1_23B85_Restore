@interface BMItem
+ (id)itemWithType:(id)a3 UUIDValue:(id)a4;
+ (id)itemWithType:(id)a3 numberValue:(id)a4;
+ (id)itemWithType:(id)a3 stringValue:(id)a4;
- (BMItem)initWithCoder:(id)a3;
- (BMItem)initWithType:(id)a3 normalizedValue:(id)a4;
- (BMItem)initWithType:(id)a3 value:(id)a4 absoluteSupport:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)uniformIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)value;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMItem

+ (id)itemWithType:(id)a3 stringValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BMItem alloc] initWithType:v6 value:v5];

  return v7;
}

+ (id)itemWithType:(id)a3 numberValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BMItem alloc] initWithType:v6 value:v5];

  return v7;
}

+ (id)itemWithType:(id)a3 UUIDValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BMItem alloc] initWithType:v6 value:v5];

  return v7;
}

- (BMItem)initWithType:(id)a3 value:(id)a4 absoluteSupport:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = BMItem;
  v11 = [(BMItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_type, a3);
    v12->_absoluteSupport = a5;
    v13 = BMItemNormalizedValueFromValue(v10);
    normalizedValue = v12->_normalizedValue;
    v12->_normalizedValue = v13;
  }

  return v12;
}

- (BMItem)initWithType:(id)a3 normalizedValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BMItemValueFromNormalizedValue(v6, [v7 valueClass]);

  v9 = [(BMItem *)self initWithType:v7 value:v8];
  return v9;
}

- (id)value
{
  v3 = [(BMItem *)self normalizedValue];
  v4 = [(BMItem *)self type];
  v5 = BMItemValueFromNormalizedValue(v3, [v4 valueClass]);

  return v5;
}

- (NSString)uniformIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BMItem *)self type];
  v5 = [v4 identifier];
  v6 = [(BMItem *)self normalizedValue];
  v7 = [v3 stringWithFormat:@"%@:%@", v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(BMItem *)self type];
      v7 = [(BMItem *)v5 type];
      if ([v6 isEqual:v7])
      {
        v8 = [(BMItem *)self normalizedValue];
        v9 = [(BMItem *)v5 normalizedValue];
        v10 = [v8 isEqualToString:v9];
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
  v3 = [(BMItem *)self type];
  v4 = [v3 hash];
  v5 = [(BMItem *)self normalizedValue];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BMItem *)self type];
  v5 = [v4 identifier];
  v6 = [(BMItem *)self value];
  v7 = [v3 stringWithFormat:@"{%@: %@}", v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(BMItem *)self type];
  v6 = [(BMItem *)self value];
  v7 = [v4 initWithType:v5 value:v6];

  return v7;
}

- (BMItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  if ([objc_msgSend(v5 "valueClass")])
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    v7 = [objc_opt_class() itemWithType:v5 stringValue:v6];
  }

  else if ([objc_msgSend(v5 "valueClass")])
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    v7 = [objc_opt_class() itemWithType:v5 numberValue:v6];
  }

  else
  {
    if (![objc_msgSend(v5 "valueClass")])
    {
      v8 = 0;
      goto LABEL_8;
    }

    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    v7 = [objc_opt_class() itemWithType:v5 UUIDValue:v6];
  }

  v8 = v7;

LABEL_8:
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeObject:type forKey:@"type"];
  v6 = [(BMItem *)self value];
  [v5 encodeObject:v6 forKey:@"value"];
}

@end