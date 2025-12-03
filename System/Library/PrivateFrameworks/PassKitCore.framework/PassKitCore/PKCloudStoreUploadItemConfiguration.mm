@interface PKCloudStoreUploadItemConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (PKCloudStoreUploadItemConfiguration)initWithCoder:(id)coder;
- (PKCloudStoreUploadItemConfiguration)initWithItem:(id)item recordSpecificKeys:(id)keys;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudStoreUploadItemConfiguration

- (PKCloudStoreUploadItemConfiguration)initWithItem:(id)item recordSpecificKeys:(id)keys
{
  itemCopy = item;
  keysCopy = keys;
  v12.receiver = self;
  v12.super_class = PKCloudStoreUploadItemConfiguration;
  v9 = [(PKCloudStoreUploadItemConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, item);
    objc_storeStrong(&v10->_recordSpecificKeys, keys);
    v10->_itemType = [itemCopy itemType];
  }

  return v10;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCloudStoreUploadItemConfiguration *)self isEqualToConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    goto LABEL_21;
  }

  item = self->_item;
  v6 = configurationCopy[3];
  if (item)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (item != v6)
    {
      goto LABEL_21;
    }
  }

  else if (([(PKCloudStoreCoding *)item isEqual:?]& 1) == 0)
  {
    goto LABEL_21;
  }

  recordSpecificKeys = self->_recordSpecificKeys;
  v9 = configurationCopy[5];
  if (!recordSpecificKeys || !v9)
  {
    if (recordSpecificKeys == v9)
    {
      goto LABEL_15;
    }

LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  if (([(NSDictionary *)recordSpecificKeys isEqual:?]& 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (self->_codingType != configurationCopy[6] || self->_detectConflicts != *(configurationCopy + 16) || self->_returnRecords != *(configurationCopy + 17))
  {
    goto LABEL_21;
  }

  cloudStoreZones = self->_cloudStoreZones;
  v11 = configurationCopy[4];
  if (cloudStoreZones && v11)
  {
    v12 = [(NSSet *)cloudStoreZones isEqual:?];
  }

  else
  {
    v12 = cloudStoreZones == v11;
  }

LABEL_22:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_item];
  [v3 safelyAddObject:self->_recordSpecificKeys];
  [v3 safelyAddObject:self->_cloudStoreZones];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_codingType - v4 + 32 * v4;
  v6 = self->_detectConflicts - v5 + 32 * v5;
  v7 = self->_returnRecords - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"item: '%@'; ", self->_item];
  [v3 appendFormat:@"accessLevel: '%@'; ", self->_item];
  [v3 appendFormat:@"recordSpecificKeys: '%@'; ", self->_recordSpecificKeys];
  [v3 appendFormat:@"cloudStoreZones: '%@'; ", self->_cloudStoreZones];
  if (self->_detectConflicts)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"detectConflicts: '%@'; ", v4];
  if (self->_returnRecords)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"returnRecords: '%@'; ", v5];
  v6 = PKCloudStoreCodingTypeToString(self->_codingType);
  [v3 appendFormat:@"codingType: '%@'; ", v6];

  [v3 appendFormat:@">"];

  return v3;
}

- (PKCloudStoreUploadItemConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKCloudStoreUploadItemConfiguration;
  v5 = [(PKCloudStoreUploadItemConfiguration *)&v21 init];
  if (v5)
  {
    v5->_itemType = [coderCopy decodeIntegerForKey:@"itemType"];
    v5->_codingType = [coderCopy decodeIntegerForKey:@"codingType"];
    v5->_detectConflicts = [coderCopy decodeBoolForKey:@"detectConflicts"];
    v5->_returnRecords = [coderCopy decodeBoolForKey:@"returnRecords"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"recordSpecificKeys"];
    recordSpecificKeys = v5->_recordSpecificKeys;
    v5->_recordSpecificKeys = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"cloudStoreZones"];
    cloudStoreZones = v5->_cloudStoreZones;
    v5->_cloudStoreZones = v15;

    v17 = v5->_itemType - 1;
    if (v17 <= 0xB && ((0xB97u >> v17) & 1) != 0)
    {
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:off_1E79D87D0[v17]];
      item = v5->_item;
      v5->_item = v18;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  itemType = self->_itemType;
  coderCopy = coder;
  [coderCopy encodeInteger:itemType forKey:@"itemType"];
  [coderCopy encodeObject:self->_cloudStoreZones forKey:@"cloudStoreZones"];
  [coderCopy encodeInteger:self->_codingType forKey:@"codingType"];
  [coderCopy encodeBool:self->_detectConflicts forKey:@"detectConflicts"];
  [coderCopy encodeBool:self->_returnRecords forKey:@"returnRecords"];
  [coderCopy encodeObject:self->_recordSpecificKeys forKey:@"recordSpecificKeys"];
  [coderCopy encodeObject:self->_item forKey:@"item"];
}

@end