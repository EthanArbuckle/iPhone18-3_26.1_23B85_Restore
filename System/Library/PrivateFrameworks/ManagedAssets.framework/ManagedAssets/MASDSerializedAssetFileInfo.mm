@interface MASDSerializedAssetFileInfo
- (MASDSerializedAssetFileInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MASDSerializedAssetFileInfo

- (void)encodeWithCoder:(id)coder
{
  assetDataLen = self->_assetDataLen;
  coderCopy = coder;
  [coderCopy encodeInteger:assetDataLen forKey:@"_assetDataLen"];
  [coderCopy encodeObject:self->_assetDataPath forKey:@"_assetDataPath"];
  [coderCopy encodeObject:self->_sandboxToken forKey:@"_sandboxToken"];
  [coderCopy encodeObject:self->_assetFileHandle forKey:@"_assetFileHandle"];
  [coderCopy encodeObject:self->_assetData forKey:@"_assetData"];
  [coderCopy encodeObject:self->_assetHandle forKey:@"_assetHandle"];
  [coderCopy encodeObject:self->_assetMetaData forKey:@"_assetMetaData"];
}

- (MASDSerializedAssetFileInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MASDSerializedAssetFileInfo;
  v5 = [(MASDSerializedAssetFileInfo *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_assetDataPath"];
    assetDataPath = v5->_assetDataPath;
    v5->_assetDataPath = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sandboxToken"];
    sandboxToken = v5->_sandboxToken;
    v5->_sandboxToken = v8;

    v5->_assetDataLen = [coderCopy decodeIntegerForKey:@"_assetDataLen"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_assetFileHandle"];
    assetFileHandle = v5->_assetFileHandle;
    v5->_assetFileHandle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_assetData"];
    assetData = v5->_assetData;
    v5->_assetData = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_assetHandle"];
    assetHandle = v5->_assetHandle;
    v5->_assetHandle = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_assetMetaData"];
    assetMetaData = v5->_assetMetaData;
    v5->_assetMetaData = v16;
  }

  return v5;
}

@end