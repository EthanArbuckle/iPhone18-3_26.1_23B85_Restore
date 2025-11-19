@interface PKCloudStoreUploadItemConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfiguration:(id)a3;
- (PKCloudStoreUploadItemConfiguration)initWithCoder:(id)a3;
- (PKCloudStoreUploadItemConfiguration)initWithItem:(id)a3 recordSpecificKeys:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudStoreUploadItemConfiguration

- (PKCloudStoreUploadItemConfiguration)initWithItem:(id)a3 recordSpecificKeys:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKCloudStoreUploadItemConfiguration;
  v9 = [(PKCloudStoreUploadItemConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, a3);
    objc_storeStrong(&v10->_recordSpecificKeys, a4);
    v10->_itemType = [v7 itemType];
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCloudStoreUploadItemConfiguration *)self isEqualToConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_21;
  }

  item = self->_item;
  v6 = v4[3];
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
  v9 = v4[5];
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
  if (self->_codingType != v4[6] || self->_detectConflicts != *(v4 + 16) || self->_returnRecords != *(v4 + 17))
  {
    goto LABEL_21;
  }

  cloudStoreZones = self->_cloudStoreZones;
  v11 = v4[4];
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

- (PKCloudStoreUploadItemConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKCloudStoreUploadItemConfiguration;
  v5 = [(PKCloudStoreUploadItemConfiguration *)&v21 init];
  if (v5)
  {
    v5->_itemType = [v4 decodeIntegerForKey:@"itemType"];
    v5->_codingType = [v4 decodeIntegerForKey:@"codingType"];
    v5->_detectConflicts = [v4 decodeBoolForKey:@"detectConflicts"];
    v5->_returnRecords = [v4 decodeBoolForKey:@"returnRecords"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"recordSpecificKeys"];
    recordSpecificKeys = v5->_recordSpecificKeys;
    v5->_recordSpecificKeys = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"cloudStoreZones"];
    cloudStoreZones = v5->_cloudStoreZones;
    v5->_cloudStoreZones = v15;

    v17 = v5->_itemType - 1;
    if (v17 <= 0xB && ((0xB97u >> v17) & 1) != 0)
    {
      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:off_1E79D87D0[v17]];
      item = v5->_item;
      v5->_item = v18;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  itemType = self->_itemType;
  v5 = a3;
  [v5 encodeInteger:itemType forKey:@"itemType"];
  [v5 encodeObject:self->_cloudStoreZones forKey:@"cloudStoreZones"];
  [v5 encodeInteger:self->_codingType forKey:@"codingType"];
  [v5 encodeBool:self->_detectConflicts forKey:@"detectConflicts"];
  [v5 encodeBool:self->_returnRecords forKey:@"returnRecords"];
  [v5 encodeObject:self->_recordSpecificKeys forKey:@"recordSpecificKeys"];
  [v5 encodeObject:self->_item forKey:@"item"];
}

@end