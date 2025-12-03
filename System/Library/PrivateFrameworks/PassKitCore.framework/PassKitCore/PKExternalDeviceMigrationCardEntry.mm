@interface PKExternalDeviceMigrationCardEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToExternalDeviceMigrationCardEntry:(id)entry;
- (PKExternalDeviceMigrationCardEntry)initWithCoder:(id)coder;
- (PKExternalDeviceMigrationCardEntry)initWithLocalizedOrganization:(id)organization localizedDescription:(id)description accountNumberSuffix:(id)suffix type:(unint64_t)type paymentDetails:(id)details credentialInSecureElement:(BOOL)element sanitizedPKPassArchive:(id)archive;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKExternalDeviceMigrationCardEntry

- (PKExternalDeviceMigrationCardEntry)initWithLocalizedOrganization:(id)organization localizedDescription:(id)description accountNumberSuffix:(id)suffix type:(unint64_t)type paymentDetails:(id)details credentialInSecureElement:(BOOL)element sanitizedPKPassArchive:(id)archive
{
  organizationCopy = organization;
  descriptionCopy = description;
  suffixCopy = suffix;
  detailsCopy = details;
  archiveCopy = archive;
  v24.receiver = self;
  v24.super_class = PKExternalDeviceMigrationCardEntry;
  v18 = [(PKExternalDeviceMigrationCardEntry *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_localizedOrganization, organization);
    objc_storeStrong(&v19->_localizedDescription, description);
    objc_storeStrong(&v19->_accountNumberSuffix, suffix);
    v19->_type = type;
    objc_storeStrong(&v19->_paymentDetails, details);
    v19->_credentialInSecureElement = element;
    objc_storeStrong(&v19->_sanitizedPKPassArchive, archive);
  }

  return v19;
}

- (PKExternalDeviceMigrationCardEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = PKExternalDeviceMigrationCardEntry;
  v5 = [(PKExternalDeviceMigrationCardEntry *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedOrganization"];
    localizedOrganization = v5->_localizedOrganization;
    v5->_localizedOrganization = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountNumberSuffix"];
    accountNumberSuffix = v5->_accountNumberSuffix;
    v5->_accountNumberSuffix = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKExternalDeviceMigrationCardEntryTypeFromString(v12);

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentDetails"];
    paymentDetails = v5->_paymentDetails;
    v5->_paymentDetails = v13;

    v5->_credentialInSecureElement = [coderCopy decodeBoolForKey:@"credentialInSecureElement"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedPKPassArchive"];
    sanitizedPKPassArchive = v5->_sanitizedPKPassArchive;
    v5->_sanitizedPKPassArchive = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  localizedOrganization = self->_localizedOrganization;
  coderCopy = coder;
  [coderCopy encodeObject:localizedOrganization forKey:@"localizedOrganization"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [coderCopy encodeObject:self->_accountNumberSuffix forKey:@"accountNumberSuffix"];
  v5 = PKExternalDeviceMigrationCardEntryTypeToString(self->_type);
  [coderCopy encodeObject:v5 forKey:@"type"];

  [coderCopy encodeObject:self->_paymentDetails forKey:@"paymentDetails"];
  [coderCopy encodeBool:self->_credentialInSecureElement forKey:@"credentialInSecureElement"];
  [coderCopy encodeObject:self->_sanitizedPKPassArchive forKey:@"sanitizedPKPassArchive"];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKExternalDeviceMigrationCardEntry *)self isEqualToExternalDeviceMigrationCardEntry:v5];
  }

  return v6;
}

- (BOOL)isEqualToExternalDeviceMigrationCardEntry:(id)entry
{
  entryCopy = entry;
  localizedOrganization = self->_localizedOrganization;
  v6 = entryCopy[2];
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
  v9 = entryCopy[3];
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
  v11 = entryCopy[4];
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
  v13 = entryCopy[6];
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
  v15 = entryCopy[7];
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
  if (self->_type != entryCopy[5])
  {
    goto LABEL_31;
  }

  v16 = self->_credentialInSecureElement == *(entryCopy + 8);
LABEL_32:

  return v16;
}

@end