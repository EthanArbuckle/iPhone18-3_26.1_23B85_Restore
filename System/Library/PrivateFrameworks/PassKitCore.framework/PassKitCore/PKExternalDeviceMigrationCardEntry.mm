@interface PKExternalDeviceMigrationCardEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToExternalDeviceMigrationCardEntry:(id)a3;
- (PKExternalDeviceMigrationCardEntry)initWithCoder:(id)a3;
- (PKExternalDeviceMigrationCardEntry)initWithLocalizedOrganization:(id)a3 localizedDescription:(id)a4 accountNumberSuffix:(id)a5 type:(unint64_t)a6 paymentDetails:(id)a7 credentialInSecureElement:(BOOL)a8 sanitizedPKPassArchive:(id)a9;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKExternalDeviceMigrationCardEntry

- (PKExternalDeviceMigrationCardEntry)initWithLocalizedOrganization:(id)a3 localizedDescription:(id)a4 accountNumberSuffix:(id)a5 type:(unint64_t)a6 paymentDetails:(id)a7 credentialInSecureElement:(BOOL)a8 sanitizedPKPassArchive:(id)a9
{
  v23 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = PKExternalDeviceMigrationCardEntry;
  v18 = [(PKExternalDeviceMigrationCardEntry *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_localizedOrganization, a3);
    objc_storeStrong(&v19->_localizedDescription, a4);
    objc_storeStrong(&v19->_accountNumberSuffix, a5);
    v19->_type = a6;
    objc_storeStrong(&v19->_paymentDetails, a7);
    v19->_credentialInSecureElement = a8;
    objc_storeStrong(&v19->_sanitizedPKPassArchive, a9);
  }

  return v19;
}

- (PKExternalDeviceMigrationCardEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKExternalDeviceMigrationCardEntry;
  v5 = [(PKExternalDeviceMigrationCardEntry *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedOrganization"];
    localizedOrganization = v5->_localizedOrganization;
    v5->_localizedOrganization = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountNumberSuffix"];
    accountNumberSuffix = v5->_accountNumberSuffix;
    v5->_accountNumberSuffix = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKExternalDeviceMigrationCardEntryTypeFromString(v12);

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentDetails"];
    paymentDetails = v5->_paymentDetails;
    v5->_paymentDetails = v13;

    v5->_credentialInSecureElement = [v4 decodeBoolForKey:@"credentialInSecureElement"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedPKPassArchive"];
    sanitizedPKPassArchive = v5->_sanitizedPKPassArchive;
    v5->_sanitizedPKPassArchive = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  localizedOrganization = self->_localizedOrganization;
  v6 = a3;
  [v6 encodeObject:localizedOrganization forKey:@"localizedOrganization"];
  [v6 encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [v6 encodeObject:self->_accountNumberSuffix forKey:@"accountNumberSuffix"];
  v5 = PKExternalDeviceMigrationCardEntryTypeToString(self->_type);
  [v6 encodeObject:v5 forKey:@"type"];

  [v6 encodeObject:self->_paymentDetails forKey:@"paymentDetails"];
  [v6 encodeBool:self->_credentialInSecureElement forKey:@"credentialInSecureElement"];
  [v6 encodeObject:self->_sanitizedPKPassArchive forKey:@"sanitizedPKPassArchive"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"localizedOrganization: '%@'; ", self->_localizedOrganization];
  [v6 appendFormat:@"localizedDescription: '%@'; ", self->_localizedDescription];
  [v6 appendFormat:@"accountNumberSuffix: '%@'; ", self->_accountNumberSuffix];
  v7 = PKExternalDeviceMigrationCardEntryTypeToString(self->_type);
  [v6 appendFormat:@"type: '%@'; ", v7];

  [v6 appendFormat:@"paymentDetails: '%@'; ", self->_paymentDetails];
  if (self->_credentialInSecureElement)
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  [v6 appendFormat:@"credentialInSecureElement: '%@'; ", v8];
  if (self->_sanitizedPKPassArchive)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  [v6 appendFormat:@"sanitizedPKPassArchive: '%@'; ", v9];
  [v6 appendFormat:@">"];
  v10 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v10;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  v7 = PKExternalDeviceMigrationCardEntryTypeToString(self->_type);
  [v6 appendFormat:@"type: '%@'; ", v7];

  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKExternalDeviceMigrationCardEntry *)self isEqualToExternalDeviceMigrationCardEntry:v5];
  }

  return v6;
}

- (BOOL)isEqualToExternalDeviceMigrationCardEntry:(id)a3
{
  v4 = a3;
  localizedOrganization = self->_localizedOrganization;
  v6 = v4[2];
  if (localizedOrganization)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (localizedOrganization != v6)
    {
      goto LABEL_31;
    }
  }

  else if (([(NSString *)localizedOrganization isEqual:?]& 1) == 0)
  {
    goto LABEL_31;
  }

  localizedDescription = self->_localizedDescription;
  v9 = v4[3];
  if (localizedDescription && v9)
  {
    if (([(NSString *)localizedDescription isEqual:?]& 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (localizedDescription != v9)
  {
    goto LABEL_31;
  }

  accountNumberSuffix = self->_accountNumberSuffix;
  v11 = v4[4];
  if (accountNumberSuffix && v11)
  {
    if (([(NSString *)accountNumberSuffix isEqual:?]& 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (accountNumberSuffix != v11)
  {
    goto LABEL_31;
  }

  paymentDetails = self->_paymentDetails;
  v13 = v4[6];
  if (paymentDetails && v13)
  {
    if (![(PKExternalDeviceMigrationPaymentDetails *)paymentDetails isEqual:?])
    {
      goto LABEL_31;
    }
  }

  else if (paymentDetails != v13)
  {
    goto LABEL_31;
  }

  sanitizedPKPassArchive = self->_sanitizedPKPassArchive;
  v15 = v4[7];
  if (!sanitizedPKPassArchive || !v15)
  {
    if (sanitizedPKPassArchive == v15)
    {
      goto LABEL_29;
    }

LABEL_31:
    v16 = 0;
    goto LABEL_32;
  }

  if (([(NSData *)sanitizedPKPassArchive isEqual:?]& 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (self->_type != v4[5])
  {
    goto LABEL_31;
  }

  v16 = self->_credentialInSecureElement == *(v4 + 8);
LABEL_32:

  return v16;
}

@end