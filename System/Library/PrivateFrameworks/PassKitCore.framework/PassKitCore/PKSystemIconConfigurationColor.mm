@interface PKSystemIconConfigurationColor
- (BOOL)isEqual:(id)equal;
- (PKSystemIconConfigurationColor)initWithCoder:(id)coder;
- (PKSystemIconConfigurationColor)initWithDictionary:(id)dictionary;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSystemIconConfigurationColor

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKSystemIconConfigurationColor;
  return [(PKSystemIconConfigurationColor *)&v3 init];
}

- (PKSystemIconConfigurationColor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PKSystemIconConfigurationColor;
  v5 = [(PKSystemIconConfigurationColor *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"type"];
    v5->_type = PKSystemIconConfigurationColorTypeFromString(v6);

    v7 = [dictionaryCopy PKStringForKey:@"colorValue"];
    v8 = v7;
    type = v5->_type;
    if (type == 1)
    {
      v5->_builtInColor = PKSystemIconConfigurationColorBuiltInFromString(v7);
    }

    else if (!type)
    {
      objc_storeStrong(&v5->_hexString, v7);
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  if (self->_type)
  {
    v5 = @"builtIn";
  }

  else
  {
    v5 = @"hex";
  }

  [v3 setObject:v5 forKeyedSubscript:@"type"];
  v6 = self->_builtInColor - 1;
  if (v6 > 2)
  {
    v7 = @"primary";
  }

  else
  {
    v7 = off_1E79E10D0[v6];
  }

  [v4 setObject:v7 forKeyedSubscript:@"builtInColor"];
  [v4 setObject:self->_hexString forKeyedSubscript:@"hexString"];
  v8 = [v4 copy];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        hexString = v6->_hexString;
        v8 = self->_hexString;
        v9 = hexString;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {

            goto LABEL_15;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_15;
          }
        }

        if (self->_type == v6->_type)
        {
          v12 = self->_builtInColor == v6->_builtInColor;
LABEL_16:

          goto LABEL_17;
        }

LABEL_15:
        v12 = 0;
        goto LABEL_16;
      }
    }

    v12 = 0;
  }

LABEL_17:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_hexString];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_builtInColor - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  if (self->_type)
  {
    v4 = @"builtIn";
  }

  else
  {
    v4 = @"hex";
  }

  [v3 appendFormat:@"type: '%@'; ", v4];
  v5 = self->_builtInColor - 1;
  if (v5 > 2)
  {
    v6 = @"primary";
  }

  else
  {
    v6 = off_1E79E10D0[v5];
  }

  [v3 appendFormat:@"builtInColor: '%@'; ", v6];
  [v3 appendFormat:@"hexString: '%@'; ", self->_hexString];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKSystemIconConfigurationColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKSystemIconConfigurationColor;
  v5 = [(PKSystemIconConfigurationColor *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hexString"];
    hexString = v5->_hexString;
    v5->_hexString = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_builtInColor = [coderCopy decodeIntegerForKey:@"builtInColor"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  hexString = self->_hexString;
  coderCopy = coder;
  [coderCopy encodeObject:hexString forKey:@"hexString"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_builtInColor forKey:@"builtInColor"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKSystemIconConfigurationColor allocWithZone:](PKSystemIconConfigurationColor init];
  v6 = [(NSString *)self->_hexString copyWithZone:zone];
  hexString = v5->_hexString;
  v5->_hexString = v6;

  v5->_type = self->_type;
  v5->_builtInColor = self->_builtInColor;
  return v5;
}

@end