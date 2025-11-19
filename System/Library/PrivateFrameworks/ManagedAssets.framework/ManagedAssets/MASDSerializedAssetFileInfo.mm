@interface MASDSerializedAssetFileInfo
- (MASDSerializedAssetFileInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MASDSerializedAssetFileInfo

- (void)encodeWithCoder:(id)a3
{
  assetDataLen = self->_assetDataLen;
  v5 = a3;
  [v5 encodeInteger:assetDataLen forKey:@"_assetDataLen"];
  [v5 encodeObject:self->_assetDataPath forKey:@"_assetDataPath"];
  [v5 encodeObject:self->_sandboxToken forKey:@"_sandboxToken"];
  [v5 encodeObject:self->_assetFileHandle forKey:@"_assetFileHandle"];
  [v5 encodeObject:self->_assetData forKey:@"_assetData"];
  [v5 encodeObject:self->_assetHandle forKey:@"_assetHandle"];
  [v5 encodeObject:self->_assetMetaData forKey:@"_assetMetaData"];
}

- (MASDSerializedAssetFileInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MASDSerializedAssetFileInfo;
  v5 = [(MASDSerializedAssetFileInfo *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_assetDataPath"];
    assetDataPath = v5->_assetDataPath;
    v5->_assetDataPath = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sandboxToken"];
    sandboxToken = v5->_sandboxToken;
    v5->_sandboxToken = v8;

    v5->_assetDataLen = [v4 decodeIntegerForKey:@"_assetDataLen"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_assetFileHandle"];
    assetFileHandle = v5->_assetFileHandle;
    v5->_assetFileHandle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_assetData"];
    assetData = v5->_assetData;
    v5->_assetData = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_assetHandle"];
    assetHandle = v5->_assetHandle;
    v5->_assetHandle = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_assetMetaData"];
    assetMetaData = v5->_assetMetaData;
    v5->_assetMetaData = v16;
  }

  return v5;
}

@end