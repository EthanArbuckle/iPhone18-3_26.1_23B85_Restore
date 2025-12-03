@interface PKPassVerificationMethod
+ (id)methodFromLegacyChannel:(id)channel;
+ (id)verificationMethodFromDictionary:(id)dictionary;
- (PKPassVerificationMethod)initWithCoder:(id)coder;
- (id)_initWithType:(unint64_t)type channel:(id)channel;
- (id)_initWithType:(unint64_t)type dictionary:(id)dictionary;
- (id)_initWithType:(unint64_t)type identifier:(id)identifier requiresUserInteraction:(BOOL)interaction;
- (id)_legacyChannelRepresentation;
- (id)debugTypeDescription;
- (id)description;
- (id)redactedDescription;
- (void)_appendDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassVerificationMethod

- (id)_initWithType:(unint64_t)type identifier:(id)identifier requiresUserInteraction:(BOOL)interaction
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = PKPassVerificationMethod;
  v10 = [(PKPassVerificationMethod *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    objc_storeStrong(&v10->_identifier, identifier);
    v11->_requiresUserInteraction = interaction;
  }

  return v11;
}

- (id)_initWithType:(unint64_t)type dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PKPassVerificationMethod;
  v7 = [(PKPassVerificationMethod *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_requiresUserInteraction = [dictionaryCopy PKBoolForKey:@"requiresUserInteraction"];
  }

  return v8;
}

- (id)_initWithType:(unint64_t)type channel:(id)channel
{
  channelCopy = channel;
  v14.receiver = self;
  v14.super_class = PKPassVerificationMethod;
  v7 = [(PKPassVerificationMethod *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    identifier = [channelCopy identifier];
    identifier = v8->_identifier;
    v8->_identifier = identifier;

    v8->_requiresUserInteraction = [channelCopy requiresUserInteraction];
    organizationName = [channelCopy organizationName];
    organizationName = v8->_organizationName;
    v8->_organizationName = organizationName;
  }

  return v8;
}

+ (id)verificationMethodFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy PKStringForKey:@"type"];
  v5 = v4;
  if (!v4)
  {
    v8 = PKLogFacilityTypeGetObject(0x26uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Missing type key for Upgrade request", v11, 2u);
    }

    goto LABEL_9;
  }

  v6 = PKPassVerificationMethodTypeFromString(v4);
  if (v6 > 3)
  {
    if (v6 > 5)
    {
      if (v6 == 6)
      {
        v7 = PKPassVerificationCardTapMethod;
      }

      else
      {
        v7 = PKPassVerificationFieldsMethod;
      }
    }

    else if (v6 == 4)
    {
      v7 = PKPassVerificationAppClipMethod;
    }

    else
    {
      v7 = PKPassVerificationURLMethod;
    }

    goto LABEL_20;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = PKPassVerificationPhoneCallMethod;
    }

    else
    {
      v7 = PKPassVerificationIssuerAppMethod;
    }

    goto LABEL_20;
  }

  if (!v6)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_21;
  }

  v7 = PKPassVerificationOneTimePinMethod;
LABEL_20:
  v9 = [[v7 alloc] initWithDictionary:dictionaryCopy];
LABEL_21:

  return v9;
}

+ (id)methodFromLegacyChannel:(id)channel
{
  channelCopy = channel;
  v4 = channelCopy;
  if (channelCopy && (v5 = [channelCopy type] - 1, v5 <= 9) && ((0x39Fu >> v5) & 1) != 0)
  {
    v6 = [objc_alloc(*off_1E79D8868[v5]) _initWithChannel:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_legacyChannelRepresentation
{
  v3 = objc_alloc_init(PKVerificationChannel);
  [(PKVerificationChannel *)v3 setIdentifier:self->_identifier];
  [(PKVerificationChannel *)v3 setRequiresUserInteraction:self->_requiresUserInteraction];
  [(PKVerificationChannel *)v3 setOrganizationName:self->_organizationName];

  return v3;
}

- (id)debugTypeDescription
{
  v3 = PKPassVerificationMethodTypeToString(self->_type);
  v4 = v3;
  type = self->_type;
  if (type - 3 < 5)
  {
    v6 = v3;
LABEL_12:
    v15 = v6;
    goto LABEL_13;
  }

  if (type == 2)
  {
    v12 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v9 = [v12 alloc];
    direction = [(PKPassVerificationMethod *)selfCopy direction];

    if (direction <= 2)
    {
      v11 = off_1E79D88D0;
      goto LABEL_9;
    }

LABEL_10:
    v14 = @"unknown";
    goto LABEL_11;
  }

  if (type == 1)
  {
    v7 = MEMORY[0x1E696AEC0];
    selfCopy2 = self;
    v9 = [v7 alloc];
    direction = [(PKPassVerificationMethod *)selfCopy2 channel];

    if (direction <= 2)
    {
      v11 = off_1E79D88B8;
LABEL_9:
      v14 = v11[direction];
LABEL_11:
      v6 = [v9 initWithFormat:@"%@.%@", v4, v14];
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v15 = @"unknown";
LABEL_13:

  return v15;
}

- (PKPassVerificationMethod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKPassVerificationMethod;
  v5 = [(PKPassVerificationMethod *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKPassVerificationMethodTypeFromString(v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v5->_requiresUserInteraction = [coderCopy decodeBoolForKey:@"requiresUserInteraction"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];
    organizationName = v5->_organizationName;
    v5->_organizationName = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  v5 = PKPassVerificationMethodTypeToString(type);
  [coderCopy encodeObject:v5 forKey:@"type"];

  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeBool:self->_requiresUserInteraction forKey:@"requiresUserInteraction"];
  [coderCopy encodeObject:self->_organizationName forKey:@"organizationName"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ ", v5];

  [(PKPassVerificationMethod *)self _appendDescription:v6];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (void)_appendDescription:(id)description
{
  type = self->_type;
  descriptionCopy = description;
  v5 = PKPassVerificationMethodTypeToString(type);
  [descriptionCopy appendFormat:@"type: '%@'; ", v5];

  [descriptionCopy appendFormat:@"identifier: '%@'; ", self->_identifier];
  if (self->_requiresUserInteraction)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  [descriptionCopy appendFormat:@"requiresUserInteraction: '%@'; ", v6];
  [descriptionCopy appendFormat:@"organizationName: '%@'; ", self->_organizationName];
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ ", v5];

  v7 = PKPassVerificationMethodTypeToString(self->_type);
  [v6 appendFormat:@"type: '%@'; ", v7];

  [v6 appendFormat:@"identifier: '%@'; ", self->_identifier];
  if (self->_requiresUserInteraction)
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  [v6 appendFormat:@"requiresUserInteraction: '%@'; ", v8];
  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

@end