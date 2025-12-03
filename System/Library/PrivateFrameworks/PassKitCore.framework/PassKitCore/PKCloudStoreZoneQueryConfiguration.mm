@interface PKCloudStoreZoneQueryConfiguration
- (BOOL)isEqual:(id)equal;
- (PKCloudStoreZoneQueryConfiguration)initWithCoder:(id)coder;
- (PKCloudStoreZoneQueryConfiguration)initWithItemType:(unint64_t)type recordName:(id)name;
- (PKCloudStoreZoneQueryConfiguration)initWithTransactionSourceIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier accountType:(int64_t)type accountEventIdentifier:(id)eventIdentifier altDSID:(id)d zoneName:(id)name;
- (PKCloudStoreZoneQueryConfiguration)initWithTransactionSourceIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier accountType:(int64_t)type serviceIdentifier:(id)serviceIdentifier altDSID:(id)d zoneName:(id)name;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudStoreZoneQueryConfiguration

- (PKCloudStoreZoneQueryConfiguration)initWithItemType:(unint64_t)type recordName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = PKCloudStoreZoneQueryConfiguration;
  v8 = [(PKCloudStoreZoneQueryConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_itemType = type;
    objc_storeStrong(&v8->_recordName, name);
  }

  return v9;
}

- (PKCloudStoreZoneQueryConfiguration)initWithTransactionSourceIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier accountType:(int64_t)type serviceIdentifier:(id)serviceIdentifier altDSID:(id)d zoneName:(id)name
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  dCopy = d;
  nameCopy = name;
  v18 = [(PKCloudStoreZoneQueryConfiguration *)self initWithItemType:1 recordName:serviceIdentifier];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_transactionSourceIdentifier, identifier);
    objc_storeStrong(&v19->_accountIdentifier, accountIdentifier);
    v19->_accountType = type;
    objc_storeStrong(&v19->_altDSID, d);
    objc_storeStrong(&v19->_zoneName, name);
  }

  return v19;
}

- (PKCloudStoreZoneQueryConfiguration)initWithTransactionSourceIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier accountType:(int64_t)type accountEventIdentifier:(id)eventIdentifier altDSID:(id)d zoneName:(id)name
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  eventIdentifierCopy = eventIdentifier;
  dCopy = d;
  nameCopy = name;
  v16 = eventIdentifierCopy;
  v17 = +[PKAccountEvent recordNamePrefix];
  v18 = [v16 hasPrefix:v17];

  v19 = v16;
  if ((v18 & 1) == 0)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = +[PKAccountEvent recordNamePrefix];
    v19 = [v20 stringWithFormat:@"%@%@", v21, v16];
  }

  v22 = [(PKCloudStoreZoneQueryConfiguration *)self initWithItemType:5 recordName:v19];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_transactionSourceIdentifier, identifier);
    objc_storeStrong(&v23->_accountIdentifier, accountIdentifier);
    v23->_accountType = type;
    objc_storeStrong(&v23->_altDSID, d);
    objc_storeStrong(&v23->_zoneName, name);
  }

  return v23;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_recordName];
  [v3 safelyAddObject:self->_transactionSourceIdentifier];
  [v3 safelyAddObject:self->_accountIdentifier];
  [v3 safelyAddObject:self->_altDSID];
  [v3 safelyAddObject:self->_zoneName];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_accountType - v4 + 32 * v4;
  v6 = self->_itemType - v5 + 32 * v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
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
        recordName = v6->_recordName;
        v8 = self->_recordName;
        v9 = recordName;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_35;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_36;
          }
        }

        transactionSourceIdentifier = v6->_transactionSourceIdentifier;
        v8 = self->_transactionSourceIdentifier;
        v14 = transactionSourceIdentifier;
        v10 = v14;
        if (v8 == v14)
        {
        }

        else
        {
          if (!v8 || !v14)
          {
            goto LABEL_35;
          }

          v15 = [(NSString *)v8 isEqualToString:v14];

          if (!v15)
          {
            goto LABEL_36;
          }
        }

        accountIdentifier = v6->_accountIdentifier;
        v8 = self->_accountIdentifier;
        v17 = accountIdentifier;
        v10 = v17;
        if (v8 == v17)
        {
        }

        else
        {
          if (!v8 || !v17)
          {
            goto LABEL_35;
          }

          v18 = [(NSString *)v8 isEqualToString:v17];

          if (!v18)
          {
            goto LABEL_36;
          }
        }

        altDSID = v6->_altDSID;
        v8 = self->_altDSID;
        v20 = altDSID;
        v10 = v20;
        if (v8 == v20)
        {
        }

        else
        {
          if (!v8 || !v20)
          {
            goto LABEL_35;
          }

          v21 = [(NSString *)v8 isEqualToString:v20];

          if (!v21)
          {
            goto LABEL_36;
          }
        }

        zoneName = v6->_zoneName;
        v8 = self->_zoneName;
        v23 = zoneName;
        v10 = v23;
        if (v8 == v23)
        {

LABEL_40:
          if (self->_accountType == v6->_accountType)
          {
            v12 = self->_itemType == v6->_itemType;
            goto LABEL_37;
          }

LABEL_36:
          v12 = 0;
LABEL_37:

          goto LABEL_38;
        }

        if (v8 && v23)
        {
          v24 = [(NSString *)v8 isEqualToString:v23];

          if (!v24)
          {
            goto LABEL_36;
          }

          goto LABEL_40;
        }

LABEL_35:

        goto LABEL_36;
      }
    }

    v12 = 0;
  }

LABEL_38:

  return v12;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  v4 = PKCloudStoreItemTypeToString(self->_itemType);
  [v3 appendFormat:@"itemType: '%@'; ", v4];

  [v3 appendFormat:@"recordName: '%@'; ", self->_recordName];
  if (self->_transactionSourceIdentifier)
  {
    [v3 appendFormat:@"_transactionSourceIdentifier: '%@'; ", self->_transactionSourceIdentifier];
  }

  if (self->_zoneName)
  {
    [v3 appendFormat:@"_zoneName: '%@'; ", self->_zoneName];
  }

  if (self->_accountIdentifier)
  {
    [v3 appendFormat:@"_accountIdentifier: '%@'; ", self->_accountIdentifier];
  }

  if (self->_altDSID)
  {
    [v3 appendFormat:@"_accountIdentifier: '%@'; ", self->_altDSID];
  }

  accountType = self->_accountType;
  if (accountType)
  {
    v6 = PKPaymentTransactionAccountTypeToString(accountType);
    [v3 appendFormat:@"_accountType: '%@'; ", v6];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (PKCloudStoreZoneQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKCloudStoreZoneQueryConfiguration;
  v5 = [(PKCloudStoreZoneQueryConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordName"];
    recordName = v5->_recordName;
    v5->_recordName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionSourceIdentifier"];
    transactionSourceIdentifier = v5->_transactionSourceIdentifier;
    v5->_transactionSourceIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
    zoneName = v5->_zoneName;
    v5->_zoneName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v14;

    v5->_itemType = [coderCopy decodeIntegerForKey:@"itemType"];
    v5->_accountType = [coderCopy decodeIntegerForKey:@"accountType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accountType = self->_accountType;
  coderCopy = coder;
  [coderCopy encodeInteger:accountType forKey:@"accountType"];
  [coderCopy encodeInteger:self->_itemType forKey:@"itemType"];
  [coderCopy encodeObject:self->_recordName forKey:@"recordName"];
  [coderCopy encodeObject:self->_zoneName forKey:@"zoneName"];
  [coderCopy encodeObject:self->_transactionSourceIdentifier forKey:@"transactionSourceIdentifier"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_altDSID forKey:@"altDSID"];
}

@end