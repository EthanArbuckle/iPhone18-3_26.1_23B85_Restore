@interface CPLCloudKitResourceKeys
- (CPLCloudKitResourceKeys)initWithPrefix:(id)prefix resourceType:(unint64_t)type;
- (id)_allKeys;
- (id)_allKeysWithoutExpungedState;
- (id)description;
@end

@implementation CPLCloudKitResourceKeys

- (CPLCloudKitResourceKeys)initWithPrefix:(id)prefix resourceType:(unint64_t)type
{
  prefixCopy = prefix;
  if (prefixCopy)
  {
    v35.receiver = self;
    v35.super_class = CPLCloudKitResourceKeys;
    v7 = [(CPLCloudKitResourceKeys *)&v35 init];
    v8 = v7;
    if (v7)
    {
      v7->_resourceType = type;
      v9 = [prefixCopy copy];
      prefix = v8->_prefix;
      v8->_prefix = v9;

      v11 = [prefixCopy stringByAppendingString:@"FileSize"];
      fileSizeKey = v8->_fileSizeKey;
      v8->_fileSizeKey = v11;

      v13 = [prefixCopy stringByAppendingString:@"FileType"];
      fileUTIKey = v8->_fileUTIKey;
      v8->_fileUTIKey = v13;

      v15 = [prefixCopy stringByAppendingString:@"Width"];
      widthKey = v8->_widthKey;
      v8->_widthKey = v15;

      v17 = [prefixCopy stringByAppendingString:@"Height"];
      heightKey = v8->_heightKey;
      v8->_heightKey = v17;

      v19 = [prefixCopy stringByAppendingString:@"Fingerprint"];
      fingerprintKey = v8->_fingerprintKey;
      v8->_fingerprintKey = v19;

      v21 = [prefixCopy stringByAppendingString:@"HashEnc"];
      stableHashKey = v8->_stableHashKey;
      v8->_stableHashKey = v21;

      v23 = [prefixCopy stringByAppendingString:@"InfoEnc"];
      encryptedInfoKey = v8->_encryptedInfoKey;
      v8->_encryptedInfoKey = v23;

      v25 = [prefixCopy stringByAppendingString:@"ExpungedState"];
      expungedStateKey = v8->_expungedStateKey;
      v8->_expungedStateKey = v25;

      v27 = [prefixCopy stringByAppendingString:@"ExpungedDate"];
      expungedDateKey = v8->_expungedDateKey;
      v8->_expungedDateKey = v27;

      v29 = [prefixCopy stringByAppendingString:@"Res"];
      resourceKey = v8->_resourceKey;
      v8->_resourceKey = v29;

      v31 = [prefixCopy stringByAppendingString:@"Dynamic"];
      dynamicKey = v8->_dynamicKey;
      v8->_dynamicKey = v31;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [CPLResource shortDescriptionForResourceType:self->_resourceType];
  v5 = [v3 initWithFormat:@"<%@/%@>", v4, self->_prefix];

  return v5;
}

- (id)_allKeysWithoutExpungedState
{
  v5 = *&self->_fileSizeKey;
  widthKey = self->_widthKey;
  v7 = *&self->_heightKey;
  resourceKey = self->_resourceKey;
  encryptedInfoKey = self->_encryptedInfoKey;
  v9 = resourceKey;
  v3 = [NSArray arrayWithObjects:&v5 count:7];

  return v3;
}

- (id)_allKeys
{
  _allKeysWithoutExpungedState = [(CPLCloudKitResourceKeys *)self _allKeysWithoutExpungedState];
  expungedDateKey = self->_expungedDateKey;
  v8[0] = self->_expungedStateKey;
  v8[1] = expungedDateKey;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [_allKeysWithoutExpungedState arrayByAddingObjectsFromArray:v5];

  return v6;
}

@end