@interface CAMBodyObjectResult
- (CAMBodyObjectResult)initWithBodyObject:(id)object;
- (NSString)description;
- (NSString)metadataType;
- (unint64_t)syntheticFocusMode;
@end

@implementation CAMBodyObjectResult

- (CAMBodyObjectResult)initWithBodyObject:(id)object
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = CAMBodyObjectResult;
  v6 = [(CAMBodyObjectResult *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__metadataBodyObject, object);
    v8 = MEMORY[0x1E696AEC0];
    type = [objectCopy type];
    v10 = [v8 stringWithFormat:@"%@ %ld", type, objc_msgSend(objectCopy, "bodyID")];
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
  _metadataBodyObject = [(CAMBodyObjectResult *)self _metadataBodyObject];
  type = [_metadataBodyObject type];
  _metadataBodyObject2 = [(CAMBodyObjectResult *)self _metadataBodyObject];
  v9 = [v3 stringWithFormat:@"<%@: %p type: %@ identifier: %ld>", v5, self, type, objc_msgSend(_metadataBodyObject2, "bodyID")];

  return v9;
}

- (NSString)metadataType
{
  _metadataBodyObject = [(CAMBodyObjectResult *)self _metadataBodyObject];
  type = [_metadataBodyObject type];

  return type;
}

- (unint64_t)syntheticFocusMode
{
  underlyingMetadataObject = [(CAMBodyObjectResult *)self underlyingMetadataObject];
  v3 = +[CAMCaptureConversions CAMMetadataObjectSyntheticFocusModeForAVCaptureMetadataObjectSyntheticFocusMode:](CAMCaptureConversions, "CAMMetadataObjectSyntheticFocusModeForAVCaptureMetadataObjectSyntheticFocusMode:", [underlyingMetadataObject syntheticFocusMode]);

  return v3;
}

@end