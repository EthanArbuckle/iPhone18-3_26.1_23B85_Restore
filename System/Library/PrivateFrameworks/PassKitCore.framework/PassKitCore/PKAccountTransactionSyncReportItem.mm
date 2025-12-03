@interface PKAccountTransactionSyncReportItem
- (BOOL)isEqual:(id)equal;
- (PKAccountTransactionSyncReportItem)initWithCoder:(id)coder;
- (PKAccountTransactionSyncReportItem)initWithTransactionServiceIdentifier:(id)identifier recordName:(id)name recordType:(id)type zoneName:(id)zoneName altDSID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountTransactionSyncReportItem

- (PKAccountTransactionSyncReportItem)initWithTransactionServiceIdentifier:(id)identifier recordName:(id)name recordType:(id)type zoneName:(id)zoneName altDSID:(id)d
{
  identifierCopy = identifier;
  nameCopy = name;
  typeCopy = type;
  zoneNameCopy = zoneName;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = PKAccountTransactionSyncReportItem;
  v17 = [(PKAccountTransactionSyncReportItem *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_transactionServiceIdentifier, identifier);
    objc_storeStrong(&v18->_recordName, name);
    objc_storeStrong(&v18->_recordType, type);
    objc_storeStrong(&v18->_zoneName, zoneName);
    objc_storeStrong(&v18->_altDSID, d);
  }

  return v18;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 safelySetObject:self->_transactionServiceIdentifier forKey:@"transactionIdentifier"];
  [v3 safelySetObject:self->_recordName forKey:@"recordIdentifier"];
  [v3 safelySetObject:self->_recordType forKey:@"recordType"];
  [v3 safelySetObject:self->_zoneName forKey:@"zoneName"];
  [v3 safelySetObject:self->_altDSID forKey:@"altDSID"];
  v4 = [v3 copy];

  return v4;
}

- (PKAccountTransactionSyncReportItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKAccountTransactionSyncReportItem;
  v5 = [(PKAccountTransactionSyncReportItem *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionServiceIdentifier = v5->_transactionServiceIdentifier;
    v5->_transactionServiceIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordIdentifier"];
    recordName = v5->_recordName;
    v5->_recordName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordType"];
    recordType = v5->_recordType;
    v5->_recordType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
    zoneName = v5->_zoneName;
    v5->_zoneName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  transactionServiceIdentifier = self->_transactionServiceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:transactionServiceIdentifier forKey:@"transactionIdentifier"];
  [coderCopy encodeObject:self->_recordName forKey:@"recordIdentifier"];
  [coderCopy encodeObject:self->_recordType forKey:@"recordType"];
  [coderCopy encodeObject:self->_zoneName forKey:@"zoneName"];
  [coderCopy encodeObject:self->_altDSID forKey:@"altDSID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy[1];
    v6 = self->_transactionServiceIdentifier;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      LOBYTE(v9) = 0;
      if (!v6 || !v7)
      {
        goto LABEL_32;
      }

      v9 = [(NSString *)v6 isEqualToString:v7];

      if (!v9)
      {
        goto LABEL_33;
      }
    }

    v10 = equalCopy[2];
    v6 = self->_recordName;
    v11 = v10;
    v8 = v11;
    if (v6 == v11)
    {
    }

    else
    {
      LOBYTE(v9) = 0;
      if (!v6 || !v11)
      {
        goto LABEL_32;
      }

      v9 = [(NSString *)v6 isEqualToString:v11];

      if (!v9)
      {
        goto LABEL_33;
      }
    }

    v12 = equalCopy[3];
    v6 = self->_recordType;
    v13 = v12;
    v8 = v13;
    if (v6 == v13)
    {
    }

    else
    {
      LOBYTE(v9) = 0;
      if (!v6 || !v13)
      {
        goto LABEL_32;
      }

      v9 = [(NSString *)v6 isEqualToString:v13];

      if (!v9)
      {
        goto LABEL_33;
      }
    }

    v14 = equalCopy[4];
    v6 = self->_zoneName;
    v15 = v14;
    v8 = v15;
    if (v6 == v15)
    {

LABEL_27:
      altDSID = self->_altDSID;
      v17 = equalCopy[5];
      v6 = altDSID;
      v18 = v17;
      v8 = v18;
      if (v6 == v18)
      {
        LOBYTE(v9) = 1;
      }

      else
      {
        LOBYTE(v9) = 0;
        if (v6 && v18)
        {
          LOBYTE(v9) = [(NSString *)v6 isEqualToString:v18];
        }
      }

      goto LABEL_32;
    }

    LOBYTE(v9) = 0;
    if (v6 && v15)
    {
      v9 = [(NSString *)v6 isEqualToString:v15];

      if (!v9)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }

LABEL_32:

    goto LABEL_33;
  }

  LOBYTE(v9) = 0;
LABEL_33:

  return v9;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_transactionServiceIdentifier];
  [array safelyAddObject:self->_recordName];
  [array safelyAddObject:self->_recordType];
  [array safelyAddObject:self->_zoneName];
  [array safelyAddObject:self->_altDSID];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"transactionServiceIdentifier: '%@'; ", self->_transactionServiceIdentifier];
  [v3 appendFormat:@"recordName: '%@'; ", self->_recordName];
  [v3 appendFormat:@"recordType: '%@'; ", self->_recordType];
  [v3 appendFormat:@"zoneName: '%@'; ", self->_zoneName];
  [v3 appendFormat:@"altDSID: '%@'; ", self->_altDSID];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_transactionServiceIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_recordName copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_recordType copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_zoneName copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_altDSID copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

@end