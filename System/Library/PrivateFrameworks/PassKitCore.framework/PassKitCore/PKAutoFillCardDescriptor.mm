@interface PKAutoFillCardDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAutofillCardDescriptor:(id)a3;
- (CGImage)artwork;
- (CGImage)cardArt;
- (PKAutoFillCardDescriptor)initWithCoder:(id)a3;
- (PKAutoFillCardDescriptor)initWithIdentifier:(id)a3;
- (id)_initWithType:(unint64_t)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAutoFillCardDescriptor

- (id)_initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKAutoFillCardDescriptor;
  result = [(PKAutoFillCardDescriptor *)&v5 init];
  if (result)
  {
    *(result + 3) = a3;
  }

  return result;
}

- (PKAutoFillCardDescriptor)initWithIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(PKAutoFillCardDescriptor *)self _initWithType:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, a3);
  }

  return v7;
}

- (CGImage)cardArt
{
  v2 = PKImageForAutoFillCredentialType(self->_credentialType, 1);
  v3 = [v2 imageRef];

  return v3;
}

- (CGImage)artwork
{
  v2 = PKImageForAutoFillCredentialType(self->_credentialType, 0);
  v3 = [v2 imageRef];

  return v3;
}

- (PKAutoFillCardDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PKAutoFillCardDescriptor;
  v5 = [(PKAutoFillCardDescriptor *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKAutoFillCardDescriptorTypeFromString(v6);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardNickname"];
    cardNickname = v5->_cardNickname;
    v5->_cardNickname = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayableLastFour"];
    displayableLastFour = v5->_displayableLastFour;
    v5->_displayableLastFour = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialType"];
    v5->_credentialType = [v13 integerValue];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUsage"];
    lastUsage = v5->_lastUsage;
    v5->_lastUsage = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortDescription"];
    displayableShortDescription = v5->_displayableShortDescription;
    v5->_displayableShortDescription = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountIdentifier"];
    primaryAccountIdentifier = v5->_primaryAccountIdentifier;
    v5->_primaryAccountIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardIsInWallet"];
    v5->_cardIsInWallet = [v22 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self->_type - 1;
  if (v4 > 2)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79CA5D0[v4];
  }

  v6 = a3;
  [v6 encodeObject:v5 forKey:@"type"];
  [v6 encodeObject:self->_identifier forKey:@"identifier"];
  [v6 encodeObject:self->_cardNickname forKey:@"cardNickname"];
  [v6 encodeObject:self->_displayableLastFour forKey:@"displayableLastFour"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_credentialType];
  [v6 encodeObject:v7 forKey:@"credentialType"];

  [v6 encodeObject:self->_lastUsage forKey:@"lastUsage"];
  [v6 encodeObject:self->_displayableShortDescription forKey:@"shortDescription"];
  [v6 encodeObject:self->_primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];
  [v6 encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_cardIsInWallet];
  [v6 encodeObject:v8 forKey:@"cardIsInWallet"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  v7 = self->_type - 1;
  if (v7 > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E79CA5D0[v7];
  }

  [v6 appendFormat:@"type: '%@'; ", v8];
  [v6 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v6 appendFormat:@"cardNickname: '%@'; ", self->_cardNickname];
  [v6 appendFormat:@"displayableLastFour: '%@'; ", self->_displayableLastFour];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_credentialType];
  [v6 appendFormat:@"credentialType: '%@'; ", v9];

  [v6 appendFormat:@"lastUsage: '%@'; ", self->_lastUsage];
  [v6 appendFormat:@"shortDescription: '%@'; ", self->_displayableShortDescription];
  [v6 appendFormat:@"primaryAccountIdentifier: '%@'; ", self->_primaryAccountIdentifier];
  [v6 appendFormat:@"passUniqueIdentifier: '%@'; ", self->_passUniqueIdentifier];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_cardIsInWallet];
  [v6 appendFormat:@"cardIsInWallet: '%@'; ", v10];

  [v6 appendFormat:@">"];
  v11 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_identifier)
  {
    [v3 addObject:?];
  }

  if (self->_cardNickname)
  {
    [v4 addObject:?];
  }

  if (self->_displayableLastFour)
  {
    [v4 addObject:?];
  }

  if (self->_lastUsage)
  {
    [v4 addObject:?];
  }

  if (self->_displayableShortDescription)
  {
    [v4 addObject:?];
  }

  if (self->_primaryAccountIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_passUniqueIdentifier)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_type - v5 + 32 * v5;
  v7 = self->_credentialType - v6 + 32 * v6;
  v8 = self->_cardIsInWallet - v7 + 32 * v7;

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAutoFillCardDescriptor *)self isEqualToAutofillCardDescriptor:v5];
  }

  return v6;
}

- (BOOL)isEqualToAutofillCardDescriptor:(id)a3
{
  v4 = a3;
  if (self->_type != v4[3])
  {
    goto LABEL_38;
  }

  identifier = self->_identifier;
  v6 = v4[2];
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
      goto LABEL_38;
    }
  }

  else
  {
    v8 = [(NSString *)identifier isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  cardNickname = self->_cardNickname;
  v10 = v4[4];
  if (cardNickname && v10)
  {
    if (([(NSString *)cardNickname isEqual:?]& 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (cardNickname != v10)
  {
    goto LABEL_38;
  }

  displayableLastFour = self->_displayableLastFour;
  v12 = v4[5];
  if (displayableLastFour && v12)
  {
    if (([(NSString *)displayableLastFour isEqual:?]& 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (displayableLastFour != v12)
  {
    goto LABEL_38;
  }

  if (self->_credentialType != v4[6])
  {
    goto LABEL_38;
  }

  lastUsage = self->_lastUsage;
  v14 = v4[7];
  if (lastUsage && v14)
  {
    if (([(NSDate *)lastUsage isEqual:?]& 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (lastUsage != v14)
  {
    goto LABEL_38;
  }

  v15 = v4[10];
  v16 = self->_primaryAccountIdentifier;
  v17 = v15;
  v18 = v17;
  if (v16 == v17)
  {
  }

  else
  {
    if (!v16 || !v17)
    {
LABEL_37:

      goto LABEL_38;
    }

    v19 = [(NSString *)v16 isEqualToString:v17];

    if (!v19)
    {
      goto LABEL_38;
    }
  }

  v20 = v4[11];
  v16 = self->_passUniqueIdentifier;
  v21 = v20;
  v18 = v21;
  if (v16 == v21)
  {

LABEL_41:
    v23 = self->_cardIsInWallet == *(v4 + 9);
    goto LABEL_39;
  }

  if (!v16 || !v21)
  {
    goto LABEL_37;
  }

  v22 = [(NSString *)v16 isEqualToString:v21];

  if (v22)
  {
    goto LABEL_41;
  }

LABEL_38:
  v23 = 0;
LABEL_39:

  return v23;
}

@end