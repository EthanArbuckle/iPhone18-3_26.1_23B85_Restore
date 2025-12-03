@interface PKIssuerMessagingFlag
+ (id)issuerMessagingFlagIdentifierFromRecordName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIssuerMessagingFlag:(id)flag;
- (PKIssuerMessagingFlag)initWithCloudStoreCoder:(id)coder;
- (PKIssuerMessagingFlag)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)recordTypesAndNamesForCodingType:(unint64_t)type;
- (unint64_t)hash;
- (void)applyPropertiesFromCloudStoreRecord:(id)record;
- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKIssuerMessagingFlag

- (PKIssuerMessagingFlag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKIssuerMessagingFlag;
  v5 = [(PKIssuerMessagingFlag *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v5->_contextType = [coderCopy decodeIntegerForKey:@"contextType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextIdentifier"];
    contextIdentifier = v5->_contextIdentifier;
    v5->_contextIdentifier = v10;

    v5->_contextFeature = [coderCopy decodeIntegerForKey:@"contextFeature"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeInteger:self->_contextType forKey:@"contextType"];
  [coderCopy encodeObject:self->_contextIdentifier forKey:@"contextIdentifier"];
  [coderCopy encodeInteger:self->_contextFeature forKey:@"contextFeature"];
}

- (void)applyPropertiesFromCloudStoreRecord:(id)record
{
  v4 = [record recordsWithRecordType:@"Message"];
  firstObject = [v4 firstObject];

  v5 = [firstObject pk_encryptedStringForKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [firstObject pk_encryptedStringForKey:@"name"];
  name = self->_name;
  self->_name = v7;

  v9 = [firstObject pk_encryptedStringForKey:@"contextType"];
  self->_contextType = PKIssuerMessagingFlagContextTypeFromString(v9);

  v10 = [firstObject pk_encryptedStringForKey:@"contextIdentifier"];
  contextIdentifier = self->_contextIdentifier;
  self->_contextIdentifier = v10;

  v12 = [firstObject pk_encryptedStringForKey:@"contextFeature"];
  self->_contextFeature = PKFeatureIdentifierFromString(v12);
}

- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [coderCopy recordsWithRecordType:@"Message"];
  firstObject = [v6 firstObject];

  encryptedValues = [firstObject encryptedValues];
  [encryptedValues setObject:self->_identifier forKey:@"identifier"];
  [encryptedValues setObject:self->_name forKey:@"name"];
  contextType = self->_contextType;
  v10 = @"unknown";
  if (contextType == 2)
  {
    v10 = @"application";
  }

  if (contextType == 1)
  {
    v11 = @"account";
  }

  else
  {
    v11 = v10;
  }

  [encryptedValues setObject:v11 forKey:@"contextType"];
  [encryptedValues setObject:self->_contextIdentifier forKey:@"contextIdentifier"];
  v12 = PKFeatureIdentifierToString(self->_contextFeature);
  [encryptedValues setObject:v12 forKey:@"contextFeature"];

  objc_autoreleasePoolPop(v5);
}

- (PKIssuerMessagingFlag)initWithCloudStoreCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKIssuerMessagingFlag;
  v5 = [(PKIssuerMessagingFlag *)&v21 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [coderCopy recordsWithRecordType:@"Message"];
  firstObject = [v6 firstObject];

  v8 = [firstObject pk_encryptedStringForKey:@"identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v8;

  if (!v5->_identifier)
  {
    v17 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      v18 = "Cannot create a PKIssuerMessagingFlag with no identifier from CloudKit.";
      goto LABEL_11;
    }

LABEL_12:

    v16 = 0;
    goto LABEL_13;
  }

  v10 = [firstObject pk_encryptedStringForKey:@"name"];
  name = v5->_name;
  v5->_name = v10;

  v12 = [firstObject pk_encryptedStringForKey:@"contextType"];
  v5->_contextType = PKIssuerMessagingFlagContextTypeFromString(v12);

  v13 = [firstObject pk_encryptedStringForKey:@"contextIdentifier"];
  contextIdentifier = v5->_contextIdentifier;
  v5->_contextIdentifier = v13;

  v15 = [firstObject pk_encryptedStringForKey:@"contextFeature"];
  v5->_contextFeature = PKFeatureIdentifierFromString(v15);

  if (!v5->_name || !v5->_contextType)
  {
    v17 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      v18 = "Cannot create a PKIssuerMessagingFlag with missing name or unknown context type.";
LABEL_11:
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, v18, v20, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_6:
  v16 = v5;
LABEL_13:

  return v16;
}

+ (id)issuerMessagingFlagIdentifierFromRecordName:(id)name
{
  nameCopy = name;
  recordNamePrefix = [self recordNamePrefix];
  v6 = [nameCopy hasPrefix:recordNamePrefix];

  if (v6)
  {
    recordNamePrefix2 = [self recordNamePrefix];
    v8 = [nameCopy substringFromIndex:{objc_msgSend(recordNamePrefix2, "length")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)recordTypesAndNamesForCodingType:(unint64_t)type
{
  v12[1] = *MEMORY[0x1E69E9840];
  recordNamePrefix = [objc_opt_class() recordNamePrefix];
  primaryIdentifier = [(PKIssuerMessagingFlag *)self primaryIdentifier];
  v6 = [recordNamePrefix stringByAppendingString:primaryIdentifier];
  v11 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKIssuerMessagingFlag *)self isEqualToIssuerMessagingFlag:v5];
  }

  return v6;
}

- (BOOL)isEqualToIssuerMessagingFlag:(id)flag
{
  flagCopy = flag;
  v5 = flagCopy[1];
  v6 = self->_identifier;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_20;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_21;
    }
  }

  v11 = flagCopy[2];
  v6 = self->_name;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {
  }

  else
  {
    if (!v6 || !v12)
    {
      goto LABEL_20;
    }

    v13 = [(NSString *)v6 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  v14 = flagCopy[4];
  v6 = self->_contextIdentifier;
  v15 = v14;
  v8 = v15;
  if (v6 != v15)
  {
    if (v6 && v15)
    {
      v16 = [(NSString *)v6 isEqualToString:v15];

      if (!v16)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_24:
  if (self->_contextType == flagCopy[3])
  {
    v17 = self->_contextFeature == flagCopy[5];
    goto LABEL_22;
  }

LABEL_21:
  v17 = 0;
LABEL_22:

  return v17;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_name];
  [array safelyAddObject:self->_contextIdentifier];
  v4 = PKCombinedHash(17, array);
  v5 = self->_contextType - v4 + 32 * v4;
  v6 = self->_contextFeature - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"name: '%@'; ", self->_name];
  contextType = self->_contextType;
  v5 = @"unknown";
  if (contextType == 2)
  {
    v5 = @"application";
  }

  if (contextType == 1)
  {
    v6 = @"account";
  }

  else
  {
    v6 = v5;
  }

  [v3 appendFormat:@"contextType: '%@'; ", v6];
  [v3 appendFormat:@"contextIdentifier: '%@'; ", self->_contextIdentifier];
  v7 = PKFeatureIdentifierToString(self->_contextFeature);
  [v3 appendFormat:@"contextFeature: '%@'; ", v7];

  [v3 appendFormat:@">"];
  v8 = [v3 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PKIssuerMessagingFlag allocWithZone:?]];
  v5 = [(NSString *)self->_identifier copy];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  v7 = [(NSString *)self->_name copy];
  name = v4->_name;
  v4->_name = v7;

  v4->_contextType = self->_contextType;
  v9 = [(NSString *)self->_contextIdentifier copy];
  contextIdentifier = v4->_contextIdentifier;
  v4->_contextIdentifier = v9;

  v4->_contextFeature = self->_contextFeature;
  return v4;
}

@end