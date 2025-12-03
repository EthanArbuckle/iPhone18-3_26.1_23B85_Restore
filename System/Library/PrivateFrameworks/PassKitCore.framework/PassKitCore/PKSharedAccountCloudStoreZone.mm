@interface PKSharedAccountCloudStoreZone
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSharedAccountCloudStoreZone:(id)zone;
- (PKSharedAccountCloudStoreZone)initWithCoder:(id)coder;
- (PKSharedAccountCloudStoreZone)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (unint64_t)zoneType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSharedAccountCloudStoreZone

- (PKSharedAccountCloudStoreZone)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = PKSharedAccountCloudStoreZone;
  v5 = [(PKSharedAccountCloudStoreZone *)&v37 init];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = [dictionaryCopy PKStringForKey:@"zoneName"];
  zoneName = v5->_zoneName;
  v5->_zoneName = v6;

  v8 = [dictionaryCopy PKStringForKey:@"accountIdentifier"];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v8;

  v10 = [dictionaryCopy PKStringForKey:@"featureIdentifier"];
  v11 = v10;
  v13 = 1;
  if (v10 != @"ccs")
  {
    if (!v10 || (v12 = [(__CFString *)v10 isEqualToString:@"ccs"], v11, !v12))
    {
      v13 = 0;
    }
  }

  v5->_accountType = v13;
  v14 = [dictionaryCopy PKStringForKey:@"access"];
  v15 = v14;
  if (v14 == @"private")
  {
    goto LABEL_10;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

  v16 = [(__CFString *)v14 isEqualToString:@"private"];

  if (v16)
  {
LABEL_10:
    v17 = 1;
    goto LABEL_18;
  }

  v18 = v15;
  if (v18 == @"shared" || (v19 = v18, v20 = [(__CFString *)v18 isEqualToString:@"shared"], v19, (v20 & 1) != 0))
  {
    v17 = 2;
    goto LABEL_18;
  }

  v21 = v19;
  if (v21 == @"public" || (v22 = v21, v23 = [(__CFString *)v21 isEqualToString:@"public"], v22, v23))
  {
    v17 = 3;
  }

  else
  {
LABEL_17:
    v17 = 0;
  }

LABEL_18:

  v5->_access = v17;
  v24 = [dictionaryCopy PKStringForKey:@"mode"];
  v25 = v24;
  if (v24 != @"readwrite")
  {
    if (v24)
    {
      v26 = [(__CFString *)v24 isEqualToString:@"readwrite"];

      if (v26)
      {
        goto LABEL_21;
      }

      v28 = v25;
      if (v28 == @"readonly" || (v29 = v28, v30 = [(__CFString *)v28 isEqualToString:@"readonly"], v29, v30))
      {
        v27 = 2;
        goto LABEL_26;
      }
    }

    v27 = 0;
    goto LABEL_26;
  }

LABEL_21:
  v27 = 1;
LABEL_26:

  v5->_mode = v27;
  v31 = [dictionaryCopy PKStringForKey:@"originatorAltDSID"];
  originatorAltDSID = v5->_originatorAltDSID;
  v5->_originatorAltDSID = v31;

  v33 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"sharedUsersAltDSIDs"];
  if ([v33 count])
  {
    v34 = [MEMORY[0x1E695DFD8] setWithArray:v33];
    sharedUsersAltDSIDs = v5->_sharedUsersAltDSIDs;
    v5->_sharedUsersAltDSIDs = v34;
  }

LABEL_29:
  return v5;
}

- (unint64_t)zoneType
{
  v3 = 0;
  [PKCloudStoreZone zoneValueForZoneName:self->_zoneName outZoneType:&v3 outAccountIdentifier:0 altDSID:0];
  return v3;
}

- (PKSharedAccountCloudStoreZone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = PKSharedAccountCloudStoreZone;
  v5 = [(PKSharedAccountCloudStoreZone *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
    zoneName = v5->_zoneName;
    v5->_zoneName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v8;

    v5->_accountType = [coderCopy decodeIntegerForKey:@"accountType"];
    v5->_access = [coderCopy decodeIntegerForKey:@"access"];
    v5->_mode = [coderCopy decodeIntegerForKey:@"mode"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatorAltDSID"];
    originatorAltDSID = v5->_originatorAltDSID;
    v5->_originatorAltDSID = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"sharedUsersAltDSIDs"];
    sharedUsersAltDSIDs = v5->_sharedUsersAltDSIDs;
    v5->_sharedUsersAltDSIDs = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  zoneName = self->_zoneName;
  coderCopy = coder;
  [coderCopy encodeObject:zoneName forKey:@"zoneName"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeInteger:self->_accountType forKey:@"accountType"];
  [coderCopy encodeInteger:self->_access forKey:@"access"];
  [coderCopy encodeInteger:self->_mode forKey:@"mode"];
  [coderCopy encodeObject:self->_originatorAltDSID forKey:@"originatorAltDSID"];
  [coderCopy encodeObject:self->_sharedUsersAltDSIDs forKey:@"sharedUsersAltDSIDs"];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKSharedAccountCloudStoreZone *)self isEqualToSharedAccountCloudStoreZone:v5];
  }

  return v6;
}

- (BOOL)isEqualToSharedAccountCloudStoreZone:(id)zone
{
  zoneCopy = zone;
  v5 = zoneCopy[1];
  v6 = self->_zoneName;
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
      goto LABEL_23;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_24;
    }
  }

  v11 = zoneCopy[2];
  v6 = self->_accountIdentifier;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {
  }

  else
  {
    if (!v6 || !v12)
    {
      goto LABEL_23;
    }

    v13 = [(NSString *)v6 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_24;
    }
  }

  if (self->_accountType != zoneCopy[3] || self->_access != zoneCopy[4] || self->_mode != zoneCopy[5])
  {
    goto LABEL_24;
  }

  v14 = zoneCopy[6];
  v6 = self->_originatorAltDSID;
  v15 = v14;
  v8 = v15;
  if (v6 != v15)
  {
    if (v6 && v15)
    {
      v16 = [(NSString *)v6 isEqualToString:v15];

      if (v16)
      {
        goto LABEL_27;
      }

LABEL_24:
      v17 = 0;
      goto LABEL_25;
    }

LABEL_23:

    goto LABEL_24;
  }

LABEL_27:
  sharedUsersAltDSIDs = self->_sharedUsersAltDSIDs;
  v20 = zoneCopy[7];
  if (sharedUsersAltDSIDs && v20)
  {
    v17 = [(NSSet *)sharedUsersAltDSIDs isEqual:?];
  }

  else
  {
    v17 = sharedUsersAltDSIDs == v20;
  }

LABEL_25:

  return v17;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_zoneName];
  [v3 safelyAddObject:self->_accountIdentifier];
  [v3 safelyAddObject:self->_originatorAltDSID];
  [v3 safelyAddObject:self->_sharedUsersAltDSIDs];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_accountType - v4 + 32 * v4;
  v6 = self->_access - v5 + 32 * v5;
  v7 = self->_mode - v6 + 32 * v6;

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKSharedAccountCloudStoreZone allocWithZone:](PKSharedAccountCloudStoreZone init];
  v6 = [(NSString *)self->_zoneName copyWithZone:zone];
  zoneName = v5->_zoneName;
  v5->_zoneName = v6;

  v8 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v8;

  v10 = [(NSString *)self->_originatorAltDSID copyWithZone:zone];
  originatorAltDSID = v5->_originatorAltDSID;
  v5->_originatorAltDSID = v10;

  v12 = [(NSSet *)self->_sharedUsersAltDSIDs copyWithZone:zone];
  sharedUsersAltDSIDs = v5->_sharedUsersAltDSIDs;
  v5->_sharedUsersAltDSIDs = v12;

  v5->_accountType = self->_accountType;
  v5->_access = self->_access;
  v5->_mode = self->_mode;
  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"zoneName: %@; ", self->_zoneName];
  [v5 appendFormat:@"accountIdentifier: %@; ", self->_accountIdentifier];
  if (self->_accountType == 1)
  {
    v6 = @"ccs";
  }

  else
  {
    v6 = @"unknown";
  }

  [v5 appendFormat:@"accountType: %@ ", v6];
  access = self->_access;
  if (access > 3)
  {
    v8 = @"private";
  }

  else
  {
    v8 = off_1E79E2880[access];
  }

  [v5 appendFormat:@"access: %@ ", v8];
  mode = self->_mode;
  v10 = @"readwrite";
  if (mode == 2)
  {
    v10 = @"readonly";
  }

  if (mode)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"unknown";
  }

  [v5 appendFormat:@"mode: %@ ", v11];
  [v5 appendFormat:@"originatorAltDSID: %@; ", self->_originatorAltDSID];
  [v5 appendFormat:@"sharedUsersAltDSIDs: %@; ", self->_sharedUsersAltDSIDs];
  [v5 appendString:@">"];
  v12 = [v5 copy];

  return v12;
}

@end