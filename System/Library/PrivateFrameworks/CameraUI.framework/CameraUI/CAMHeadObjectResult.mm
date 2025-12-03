@interface CAMHeadObjectResult
- (CAMHeadObjectResult)initWithHeadObject:(id)object;
- (NSString)description;
- (NSString)metadataType;
- (unint64_t)syntheticFocusMode;
@end

@implementation CAMHeadObjectResult

- (CAMHeadObjectResult)initWithHeadObject:(id)object
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = CAMHeadObjectResult;
  v6 = [(CAMHeadObjectResult *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__metadataHeadObject, object);
    v8 = MEMORY[0x1E696AEC0];
    type = [objectCopy type];
    v10 = [v8 stringWithFormat:@"%@", type];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = v10;

    v12 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  _metadataHeadObject = [(CAMHeadObjectResult *)self _metadataHeadObject];
  type = [_metadataHeadObject type];
  v8 = [v3 stringWithFormat:@"<%@: %p type: %@>", v5, self, type];

  return v8;
}

- (NSString)metadataType
{
  _metadataHeadObject = [(CAMHeadObjectResult *)self _metadataHeadObject];
  type = [_metadataHeadObject type];

  return type;
}

- (unint64_t)syntheticFocusMode
{
  underlyingMetadataObject = [(CAMHeadObjectResult *)self underlyingMetadataObject];
  v3 = +[CAMCaptureConversions CAMMetadataObjectSyntheticFocusModeForAVCaptureMetadataObjectSyntheticFocusMode:](CAMCaptureConversions, "CAMMetadataObjectSyntheticFocusModeForAVCaptureMetadataObjectSyntheticFocusMode:", [underlyingMetadataObject syntheticFocusMode]);

  return v3;
}

@end