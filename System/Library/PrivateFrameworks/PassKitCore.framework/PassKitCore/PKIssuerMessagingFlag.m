@interface PKIssuerMessagingFlag
+ (id)issuerMessagingFlagIdentifierFromRecordName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIssuerMessagingFlag:(id)a3;
- (PKIssuerMessagingFlag)initWithCloudStoreCoder:(id)a3;
- (PKIssuerMessagingFlag)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)recordTypesAndNamesForCodingType:(unint64_t)a3;
- (unint64_t)hash;
- (void)applyPropertiesFromCloudStoreRecord:(id)a3;
- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKIssuerMessagingFlag

- (PKIssuerMessagingFlag)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKIssuerMessagingFlag;
  v5 = [(PKIssuerMessagingFlag *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v5->_contextType = [v4 decodeIntegerForKey:@"contextType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextIdentifier"];
    contextIdentifier = v5->_contextIdentifier;
    v5->_contextIdentifier = v10;

    v5->_contextFeature = [v4 decodeIntegerForKey:@"contextFeature"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeInteger:self->_contextType forKey:@"contextType"];
  [v5 encodeObject:self->_contextIdentifier forKey:@"contextIdentifier"];
  [v5 encodeInteger:self->_contextFeature forKey:@"contextFeature"];
}

- (void)applyPropertiesFromCloudStoreRecord:(id)a3
{
  v4 = [a3 recordsWithRecordType:@"Message"];
  v13 = [v4 firstObject];

  v5 = [v13 pk_encryptedStringForKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [v13 pk_encryptedStringForKey:@"name"];
  name = self->_name;
  self->_name = v7;

  v9 = [v13 pk_encryptedStringForKey:@"contextType"];
  self->_contextType = PKIssuerMessagingFlagContextTypeFromString(v9);

  v10 = [v13 pk_encryptedStringForKey:@"contextIdentifier"];
  contextIdentifier = self->_contextIdentifier;
  self->_contextIdentifier = v10;

  v12 = [v13 pk_encryptedStringForKey:@"contextFeature"];
  self->_contextFeature = PKFeatureIdentifierFromString(v12);
}

- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4
{
  v13 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v13 recordsWithRecordType:@"Message"];
  v7 = [v6 firstObject];

  v8 = [v7 encryptedValues];
  [v8 setObject:self->_identifier forKey:@"identifier"];
  [v8 setObject:self->_name forKey:@"name"];
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

  [v8 setObject:v11 forKey:@"contextType"];
  [v8 setObject:self->_contextIdentifier forKey:@"contextIdentifier"];
  v12 = PKFeatureIdentifierToString(self->_contextFeature);
  [v8 setObject:v12 forKey:@"contextFeature"];

  objc_autoreleasePoolPop(v5);
}

- (PKIssuerMessagingFlag)initWithCloudStoreCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKIssuerMessagingFlag;
  v5 = [(PKIssuerMessagingFlag *)&v21 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 recordsWithRecordType:@"Message"];
  v7 = [v6 firstObject];

  v8 = [v7 pk_encryptedStringForKey:@"identifier"];
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

  v10 = [v7 pk_encryptedStringForKey:@"name"];
  name = v5->_name;
  v5->_name = v10;

  v12 = [v7 pk_encryptedStringForKey:@"contextType"];
  v5->_contextType = PKIssuerMessagingFlagContextTypeFromString(v12);

  v13 = [v7 pk_encryptedStringForKey:@"contextIdentifier"];
  contextIdentifier = v5->_contextIdentifier;
  v5->_contextIdentifier = v13;

  v15 = [v7 pk_encryptedStringForKey:@"contextFeature"];
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

+ (id)issuerMessagingFlagIdentifierFromRecordName:(id)a3
{
  v4 = a3;
  v5 = [a1 recordNamePrefix];
  v6 = [v4 hasPrefix:v5];

  if (v6)
  {
    v7 = [a1 recordNamePrefix];
    v8 = [v4 substringFromIndex:{objc_msgSend(v7, "length")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)recordTypesAndNamesForCodingType:(unint64_t)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() recordNamePrefix];
  v5 = [(PKIssuerMessagingFlag *)self primaryIdentifier];
  v6 = [v4 stringByAppendingString:v5];
  v11 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKIssuerMessagingFlag *)self isEqualToIssuerMessagingFlag:v5];
  }

  return v6;
}

- (BOOL)isEqualToIssuerMessagingFlag:(id)a3
{
  v4 = a3;
  v5 = v4[1];
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

  v11 = v4[2];
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

  v14 = v4[4];
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
  if (self->_contextType == v4[3])
  {
    v17 = self->_contextFeature == v4[5];
    goto LABEL_22;
  }

LABEL_21:
  v17 = 0;
LABEL_22:

  return v17;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_contextIdentifier];
  v4 = PKCombinedHash(17, v3);
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

- (id)copyWithZone:(_NSZone *)a3
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