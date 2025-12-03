@interface PKCloudStoreZoneShareLock
+ (id)recordNameForZoneName:(id)name;
+ (id)zoneNameFromRecordName:(id)name;
+ (void)_deleteDeviceDataFromCloudStoreRecord:(id)record;
+ (void)deleteFromCloudStoreRecord:(id)record codingType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCloudStoreZoneShareLock:(id)lock;
- (PKCloudStoreZoneShareLock)initWithCloudStoreCoder:(id)coder;
- (PKCloudStoreZoneShareLock)initWithCoder:(id)coder;
- (PKCloudStoreZoneShareLock)initWithZoneName:(id)name creationDate:(id)date originDeviceIdentifier:(id)identifier originDeviceName:(id)deviceName;
- (id)description;
- (id)recordTypesAndNamesForCodingType:(unint64_t)type;
- (unint64_t)hash;
- (void)_encodeDeviceDataForCloudStoreCoder:(id)coder;
- (void)applyPropertiesFromCloudStoreRecord:(id)record;
- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudStoreZoneShareLock

- (PKCloudStoreZoneShareLock)initWithZoneName:(id)name creationDate:(id)date originDeviceIdentifier:(id)identifier originDeviceName:(id)deviceName
{
  nameCopy = name;
  dateCopy = date;
  identifierCopy = identifier;
  deviceNameCopy = deviceName;
  v18.receiver = self;
  v18.super_class = PKCloudStoreZoneShareLock;
  v15 = [(PKCloudStoreZoneShareLock *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_zoneName, name);
    objc_storeStrong(&v16->_creationDate, date);
    objc_storeStrong(&v16->_originDeviceIdentifier, identifier);
    objc_storeStrong(&v16->_originDeviceName, deviceName);
  }

  return v16;
}

- (PKCloudStoreZoneShareLock)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKCloudStoreZoneShareLock;
  v5 = [(PKCloudStoreZoneShareLock *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
    zoneName = v5->_zoneName;
    v5->_zoneName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockCreationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originDeviceIdentifier"];
    originDeviceIdentifier = v5->_originDeviceIdentifier;
    v5->_originDeviceIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originDeviceName"];
    originDeviceName = v5->_originDeviceName;
    v5->_originDeviceName = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  zoneName = self->_zoneName;
  coderCopy = coder;
  [coderCopy encodeObject:zoneName forKey:@"zoneName"];
  [coderCopy encodeObject:self->_creationDate forKey:@"lockCreationDate"];
  [coderCopy encodeObject:self->_originDeviceIdentifier forKey:@"originDeviceIdentifier"];
  [coderCopy encodeObject:self->_originDeviceName forKey:@"originDeviceName"];
}

- (PKCloudStoreZoneShareLock)initWithCloudStoreCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKCloudStoreZoneShareLock;
  v5 = [(PKCloudStoreZoneShareLock *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKCloudStoreZoneShareLock *)v5 applyPropertiesFromCloudStoreRecord:coderCopy];
  }

  return v6;
}

- (void)applyPropertiesFromCloudStoreRecord:(id)record
{
  v4 = [record recordsWithRecordType:@"ShareCreationLock"];
  firstObject = [v4 firstObject];

  if (firstObject)
  {
    v5 = [firstObject pk_encryptedStringForKey:@"zoneName"];
    zoneName = self->_zoneName;
    self->_zoneName = v5;

    v7 = [firstObject pk_encryptedDateForKey:@"lockCreationDate"];
    creationDate = self->_creationDate;
    self->_creationDate = v7;

    v9 = [firstObject pk_encryptedStringForKey:@"originDeviceIdentifier"];
    originDeviceIdentifier = self->_originDeviceIdentifier;
    self->_originDeviceIdentifier = v9;

    v11 = [firstObject pk_encryptedStringForKey:@"originDeviceName"];
    originDeviceName = self->_originDeviceName;
    self->_originDeviceName = v11;
  }
}

- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type
{
  if ((type & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [(PKCloudStoreZoneShareLock *)self _encodeDeviceDataForCloudStoreCoder:coder];
  }
}

- (void)_encodeDeviceDataForCloudStoreCoder:(id)coder
{
  v4 = [coder recordsWithRecordType:@"ShareCreationLock"];
  firstObject = [v4 firstObject];

  encryptedValues = [firstObject encryptedValues];
  [encryptedValues setObject:self->_zoneName forKey:@"zoneName"];
  [encryptedValues setObject:self->_creationDate forKey:@"lockCreationDate"];
  [encryptedValues setObject:self->_originDeviceIdentifier forKey:@"originDeviceIdentifier"];
  [encryptedValues setObject:self->_originDeviceName forKey:@"originDeviceName"];
}

+ (void)deleteFromCloudStoreRecord:(id)record codingType:(unint64_t)type
{
  if ((type & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [self _deleteDeviceDataFromCloudStoreRecord:record];
  }
}

+ (void)_deleteDeviceDataFromCloudStoreRecord:(id)record
{
  v3 = [record recordsWithRecordType:@"ShareCreationLock"];
  firstObject = [v3 firstObject];

  encryptedValues = [firstObject encryptedValues];
  [encryptedValues setObject:0 forKey:@"zoneName"];
  [encryptedValues setObject:0 forKey:@"lockCreationDate"];
  [encryptedValues setObject:0 forKey:@"originDeviceIdentifier"];
  [encryptedValues setObject:0 forKey:@"originDeviceName"];
}

- (id)recordTypesAndNamesForCodingType:(unint64_t)type
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_zoneName length])
  {
    v8 = @"ShareCreationLock";
    v4 = [objc_opt_class() recordNameForZoneName:{self->_zoneName, @"ShareCreationLock"}];
    v9 = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)recordNameForZoneName:(id)name
{
  v4 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  recordNamePrefix = [self recordNamePrefix];
  nameCopy = [v4 stringWithFormat:@"%@%@", recordNamePrefix, nameCopy];

  return nameCopy;
}

+ (id)zoneNameFromRecordName:(id)name
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCloudStoreZoneShareLock *)self isEqualToCloudStoreZoneShareLock:v5];
  }

  return v6;
}

- (BOOL)isEqualToCloudStoreZoneShareLock:(id)lock
{
  lockCopy = lock;
  v5 = lockCopy[1];
  v6 = self->_zoneName;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_11;
  }

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
    LOBYTE(v10) = 0;
    goto LABEL_8;
  }

  v10 = [(NSString *)v6 isEqualToString:v7];

  if (v10)
  {
LABEL_11:
    creationDate = self->_creationDate;
    v12 = lockCopy[2];
    if (creationDate && v12)
    {
      if (([(NSDate *)creationDate isEqual:?]& 1) != 0)
      {
LABEL_14:
        v13 = lockCopy[3];
        v6 = self->_originDeviceIdentifier;
        v14 = v13;
        v8 = v14;
        if (v6 == v14)
        {

LABEL_23:
          originDeviceName = self->_originDeviceName;
          v17 = lockCopy[4];
          v6 = originDeviceName;
          v18 = v17;
          v8 = v18;
          if (v6 == v18)
          {
            LOBYTE(v10) = 1;
          }

          else
          {
            LOBYTE(v10) = 0;
            if (v6 && v18)
            {
              LOBYTE(v10) = [(NSString *)v6 isEqualToString:v18];
            }
          }

          goto LABEL_8;
        }

        LOBYTE(v10) = 0;
        if (v6 && v14)
        {
          v10 = [(NSString *)v6 isEqualToString:v14];

          if (!v10)
          {
            goto LABEL_21;
          }

          goto LABEL_23;
        }

LABEL_8:

        goto LABEL_21;
      }
    }

    else if (creationDate == v12)
    {
      goto LABEL_14;
    }

    LOBYTE(v10) = 0;
  }

LABEL_21:

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_zoneName];
  [v3 safelyAddObject:self->_creationDate];
  [v3 safelyAddObject:self->_originDeviceIdentifier];
  [v3 safelyAddObject:self->_originDeviceName];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"zoneName: '%@'; ", self->_zoneName];
  [v3 appendFormat:@"creationDate: '%@'; ", self->_creationDate];
  [v3 appendFormat:@"originDeviceIdentifier: '%@'; ", self->_originDeviceIdentifier];
  [v3 appendFormat:@"originDeviceName: '%@'; ", self->_originDeviceName];
  [v3 appendFormat:@">"];

  return v3;
}

@end