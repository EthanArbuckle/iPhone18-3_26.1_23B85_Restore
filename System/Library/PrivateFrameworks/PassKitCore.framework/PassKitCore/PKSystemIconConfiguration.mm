@interface PKSystemIconConfiguration
- (BOOL)isEqual:(id)a3;
- (PKSystemIconConfiguration)initWithCoder:(id)a3;
- (PKSystemIconConfiguration)initWithDictionary:(id)a3;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSystemIconConfiguration

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKSystemIconConfiguration;
  return [(PKSystemIconConfiguration *)&v3 init];
}

- (PKSystemIconConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKSystemIconConfiguration;
  v5 = [(PKSystemIconConfiguration *)&v19 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v6;

    v8 = [v4 PKStringForKey:@"style"];
    v5->_style = PKSystemIconConfigurationColorStyleFromString(v8);

    v9 = [v4 PKDictionaryForKey:@"color1"];
    if ([v9 count])
    {
      v10 = [[PKSystemIconConfigurationColor alloc] initWithDictionary:v9];
      color1 = v5->_color1;
      v5->_color1 = v10;
    }

    v12 = [v4 PKDictionaryForKey:@"color2"];
    if ([v12 count])
    {
      v13 = [[PKSystemIconConfigurationColor alloc] initWithDictionary:v12];
      color2 = v5->_color2;
      v5->_color2 = v13;
    }

    v15 = [v4 PKDictionaryForKey:@"color3"];
    if ([v15 count])
    {
      v16 = [[PKSystemIconConfigurationColor alloc] initWithDictionary:v15];
      color3 = v5->_color3;
      v5->_color3 = v16;
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_imageName forKeyedSubscript:@"imageName"];
  style = self->_style;
  if (style > 3)
  {
    v5 = @"monochrome";
  }

  else
  {
    v5 = off_1E79E10B0[style];
  }

  [v3 setObject:v5 forKeyedSubscript:@"style"];
  v6 = [(PKSystemIconConfigurationColor *)self->_color1 dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"color1"];

  v7 = [(PKSystemIconConfigurationColor *)self->_color2 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"color2"];

  v8 = [(PKSystemIconConfigurationColor *)self->_color3 dictionaryRepresentation];
  [v3 setObject:v8 forKeyedSubscript:@"color3"];

  v9 = [v3 copy];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        imageName = v6->_imageName;
        v8 = self->_imageName;
        v9 = imageName;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {

            goto LABEL_28;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        color1 = self->_color1;
        v14 = v6->_color1;
        if (color1 && v14)
        {
          if (![(PKSystemIconConfigurationColor *)color1 isEqual:?])
          {
            goto LABEL_28;
          }
        }

        else if (color1 != v14)
        {
          goto LABEL_28;
        }

        color2 = self->_color2;
        v16 = v6->_color2;
        if (color2 && v16)
        {
          if (![(PKSystemIconConfigurationColor *)color2 isEqual:?])
          {
            goto LABEL_28;
          }
        }

        else if (color2 != v16)
        {
          goto LABEL_28;
        }

        color3 = self->_color3;
        v18 = v6->_color3;
        if (color3 && v18)
        {
          if ([(PKSystemIconConfigurationColor *)color3 isEqual:?])
          {
LABEL_26:
            v12 = self->_style == v6->_style;
LABEL_29:

            goto LABEL_30;
          }
        }

        else if (color3 == v18)
        {
          goto LABEL_26;
        }

LABEL_28:
        v12 = 0;
        goto LABEL_29;
      }
    }

    v12 = 0;
  }

LABEL_30:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_imageName];
  [v3 safelyAddObject:self->_color1];
  [v3 safelyAddObject:self->_color2];
  [v3 safelyAddObject:self->_color3];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_style - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"imageName: '%@'; ", self->_imageName];
  style = self->_style;
  if (style > 3)
  {
    v5 = @"monochrome";
  }

  else
  {
    v5 = off_1E79E10B0[style];
  }

  [v3 appendFormat:@"style: '%@'; ", v5];
  [v3 appendFormat:@"color1: '%@'; ", self->_color1];
  [v3 appendFormat:@"color2: '%@'; ", self->_color2];
  [v3 appendFormat:@"color3: '%@'; ", self->_color3];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKSystemIconConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKSystemIconConfiguration;
  v5 = [(PKSystemIconConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v6;

    v5->_style = [v4 decodeIntegerForKey:@"style"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color1"];
    color1 = v5->_color1;
    v5->_color1 = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color2"];
    color2 = v5->_color2;
    v5->_color2 = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color3"];
    color3 = v5->_color3;
    v5->_color3 = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  imageName = self->_imageName;
  v5 = a3;
  [v5 encodeObject:imageName forKey:@"imageName"];
  [v5 encodeInteger:self->_style forKey:@"style"];
  [v5 encodeObject:self->_color1 forKey:@"color1"];
  [v5 encodeObject:self->_color2 forKey:@"color2"];
  [v5 encodeObject:self->_color3 forKey:@"color3"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKSystemIconConfiguration allocWithZone:](PKSystemIconConfiguration init];
  v6 = [(NSString *)self->_imageName copyWithZone:a3];
  imageName = v5->_imageName;
  v5->_imageName = v6;

  v5->_style = self->_style;
  v8 = [(PKSystemIconConfigurationColor *)self->_color1 copyWithZone:a3];
  color1 = v5->_color1;
  v5->_color1 = v8;

  v10 = [(PKSystemIconConfigurationColor *)self->_color2 copyWithZone:a3];
  color2 = v5->_color2;
  v5->_color2 = v10;

  v12 = [(PKSystemIconConfigurationColor *)self->_color3 copyWithZone:a3];
  color3 = v5->_color3;
  v5->_color3 = v12;

  return v5;
}

@end