@interface PKPassShareActivationOption
+ (id)vehicleEnteredPin;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPassShareActivationOption:(id)a3;
- (BOOL)requiresActivationCode;
- (NSString)localizationKeyPostfix;
- (NSString)localizationKeyPostfixForInitiation;
- (NSString)localizedName;
- (PKPassShareActivationOption)initWithCarKeyIdentifier:(id)a3;
- (PKPassShareActivationOption)initWithCoder:(id)a3;
- (PKPassShareActivationOption)initWithDefaultIdentifierForType:(unint64_t)a3;
- (PKPassShareActivationOption)initWithIdentifier:(id)a3 type:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)redactedDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassShareActivationOption

- (PKPassShareActivationOption)initWithDefaultIdentifierForType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E79CC238[a3 - 1];
  }

  return [(PKPassShareActivationOption *)self initWithIdentifier:v4 type:a3];
}

- (PKPassShareActivationOption)initWithCarKeyIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == @"onlineSharingPinActivation")
  {
    goto LABEL_4;
  }

  if (!v4)
  {
LABEL_19:

    v8 = 0;
    goto LABEL_20;
  }

  v6 = [(__CFString *)v4 isEqualToString:@"onlineSharingPinActivation"];

  if ((v6 & 1) == 0)
  {
    v9 = v5;
    if (v9 == @"sharingPasswordActivation" || (v10 = v9, v11 = [(__CFString *)v9 isEqualToString:@"sharingPasswordActivation"], v10, (v11 & 1) != 0))
    {
      v7 = 2;
      goto LABEL_5;
    }

    v12 = v10;
    if (v12 == @"devicePinActivation" || (v13 = v12, v14 = [(__CFString *)v12 isEqualToString:@"devicePinActivation"], v13, (v14 & 1) != 0))
    {
      v7 = 1;
      goto LABEL_5;
    }

    v15 = v13;
    if (v15 == @"ownerKeyActivation" || (v16 = v15, v17 = [(__CFString *)v15 isEqualToString:@"ownerKeyActivation"], v16, (v17 & 1) != 0) || (v18 = v16, v18 == @"friendKeyActivation") || (v19 = v18, v20 = [(__CFString *)v18 isEqualToString:@"friendKeyActivation"], v19, (v20 & 1) != 0) || (v21 = v19, v21 == @"keyFobActivation") || (v22 = v21, v23 = [(__CFString *)v21 isEqualToString:@"keyFobActivation"], v22, (v23 & 1) != 0))
    {
      v7 = 3;
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_4:
  v7 = 4;
LABEL_5:
  v8 = [(PKPassShareActivationOption *)self initWithIdentifier:v5 type:v7];
LABEL_20:

  return v8;
}

- (PKPassShareActivationOption)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKPassShareActivationOption;
  v8 = [(PKPassShareActivationOption *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_type = a4;
    if (a4 <= 4 && ((1 << a4) & 0x16) != 0)
    {
      v9->_valueLength = 6;
    }
  }

  return v9;
}

+ (id)vehicleEnteredPin
{
  v2 = [[PKPassShareActivationOption alloc] initWithIdentifier:@"sharingPasswordActivation" type:2];

  return v2;
}

- (BOOL)requiresActivationCode
{
  type = self->_type;
  value = self->_value;
  v6 = type == 1 || type == 4;
  v7 = [(NSString *)value length];
  valueLength = self->_valueLength;
  if (valueLength)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  v10 = v9 && v6;
  return v7 != valueLength && v10;
}

- (NSString)localizedName
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PKPassShareActivationOption *)self localizationKeyPostfix];
  v4 = [v2 stringWithFormat:@"SHARE_ACTIVATION_NAME_%@", v3];

  v5 = PKLocalizedShareableCredentialString(v4, 0);

  return v5;
}

- (NSString)localizationKeyPostfix
{
  type = self->_type;
  result = @"PINCODE";
  if (type <= 2)
  {
    if (type == 1)
    {
      return result;
    }

    if (type == 2)
    {
      v5 = self->_identifier;
      if (v5 != @"sharingPasswordActivation" && v5 != 0)
      {
        v7 = v5;
        [(__CFString *)v5 isEqualToString:@"sharingPasswordActivation"];
      }

      return @"VEP";
    }

    return @"UNKNOWN";
  }

  if (type != 3)
  {
    if (type == 4)
    {
      return result;
    }

    return @"UNKNOWN";
  }

  v8 = self->_identifier;
  if (v8 == @"ownerKeyActivation")
  {
    return @"OWNERKEY";
  }

  v9 = v8;
  if (v8)
  {
    v10 = [(__CFString *)v8 isEqualToString:@"ownerKeyActivation"];

    if (v10)
    {
      return @"OWNERKEY";
    }
  }

  v11 = self->_identifier;
  if (v11 == @"friendKeyActivation")
  {
    return @"FRIENDKEY";
  }

  v12 = v11;
  if (v11)
  {
    v13 = [(__CFString *)v11 isEqualToString:@"friendKeyActivation"];

    if (v13)
    {
      return @"FRIENDKEY";
    }
  }

  v14 = self->_identifier;
  result = @"KEYFOB";
  if (v14 != @"keyFobActivation" && v14)
  {
    [(__CFString *)v14 isEqualToString:@"keyFobActivation"];

    return @"KEYFOB";
  }

  return result;
}

- (NSString)localizationKeyPostfixForInitiation
{
  type = self->_type;
  if (type - 1 < 2 || type == 4)
  {
    return @"CODE";
  }

  if (type != 3)
  {
    return @"UNKNOWN";
  }

  v6 = self->_identifier;
  if (v6 == @"ownerKeyActivation")
  {
    return @"OWNERKEY";
  }

  v7 = v6;
  if (v6)
  {
    v8 = [(__CFString *)v6 isEqualToString:@"ownerKeyActivation"];

    if (v8)
    {
      return @"OWNERKEY";
    }
  }

  v9 = self->_identifier;
  if (v9 == @"friendKeyActivation")
  {
    return @"FRIENDKEY";
  }

  v10 = v9;
  if (v9)
  {
    v11 = [(__CFString *)v9 isEqualToString:@"friendKeyActivation"];

    if (v11)
    {
      return @"FRIENDKEY";
    }
  }

  v12 = self->_identifier;
  result = @"KEYFOB";
  if (v12 != @"keyFobActivation")
  {
    if (v12)
    {
      [(__CFString *)v12 isEqualToString:@"keyFobActivation"];

      return @"KEYFOB";
    }
  }

  return result;
}

- (PKPassShareActivationOption)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPassShareActivationOption;
  v5 = [(PKPassShareActivationOption *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKPassShareActivationOptionTypeFromString(v8);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v9;

    v5->_valueLength = [v4 decodeIntegerForKey:@"valueLength"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v7 = a3;
  [v7 encodeObject:identifier forKey:@"identifier"];
  v5 = self->_type - 1;
  if (v5 > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79CC238[v5];
  }

  [v7 encodeObject:v6 forKey:@"type"];
  [v7 encodeObject:self->_value forKey:@"value"];
  [v7 encodeInteger:self->_valueLength forKey:@"valueLength"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"<Option "];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v4 = self->_type - 1;
  if (v4 > 3)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79CC238[v4];
  }

  [v3 appendFormat:@"type: '%@'; ", v5];
  if (self->_value)
  {
    [v3 appendFormat:@"value: '%@'; ", self->_value];
  }

  if (self->_valueLength)
  {
    [v3 appendFormat:@"valueLength: '%ld'; ", self->_valueLength];
  }

  [v3 appendFormat:@">"];
  v6 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v6;
}

- (id)redactedDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"<Option "];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v4 = self->_type - 1;
  if (v4 > 3)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79CC238[v4];
  }

  [v3 appendFormat:@"type: '%@'; ", v5];
  if (self->_valueLength)
  {
    [v3 appendFormat:@"valueLength: '%ld'; ", self->_valueLength];
  }

  [v3 appendFormat:@">"];
  v6 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_identifier)
  {
    [v3 addObject:?];
  }

  if (self->_value)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_type - v5 + 32 * v5;
  v7 = self->_valueLength - v6 + 32 * v6;

  return v7;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassShareActivationOption *)self isEqualToPassShareActivationOption:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassShareActivationOption:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_16;
  }

  identifier = self->_identifier;
  v6 = v4[1];
  if (identifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (identifier != v6)
    {
      goto LABEL_16;
    }
  }

  else if (([(NSString *)identifier isEqual:?]& 1) == 0)
  {
    goto LABEL_16;
  }

  if (self->_type != v4[2])
  {
    goto LABEL_16;
  }

  value = self->_value;
  v9 = v4[3];
  if (!value || !v9)
  {
    if (value == v9)
    {
      goto LABEL_14;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  if (([(NSString *)value isEqual:?]& 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  v10 = self->_valueLength == v4[4];
LABEL_17:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PKPassShareActivationOption);
  v5 = [(NSString *)self->_identifier copy];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  v4->_type = self->_type;
  v7 = [(NSString *)self->_value copy];
  value = v4->_value;
  v4->_value = v7;

  return v4;
}

@end