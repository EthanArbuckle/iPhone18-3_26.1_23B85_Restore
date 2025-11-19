@interface CAMBodyObjectResult
- (CAMBodyObjectResult)initWithBodyObject:(id)a3;
- (NSString)description;
- (NSString)metadataType;
- (unint64_t)syntheticFocusMode;
@end

@implementation CAMBodyObjectResult

- (CAMBodyObjectResult)initWithBodyObject:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CAMBodyObjectResult;
  v6 = [(CAMBodyObjectResult *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__metadataBodyObject, a3);
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v5 type];
    v10 = [v8 stringWithFormat:@"%@ %ld", v9, objc_msgSend(v5, "bodyID")];
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
  v6 = [(CAMBodyObjectResult *)self _metadataBodyObject];
  v7 = [v6 type];
  v8 = [(CAMBodyObjectResult *)self _metadataBodyObject];
  v9 = [v3 stringWithFormat:@"<%@: %p type: %@ identifier: %ld>", v5, self, v7, objc_msgSend(v8, "bodyID")];

  return v9;
}

- (NSString)metadataType
{
  v2 = [(CAMBodyObjectResult *)self _metadataBodyObject];
  v3 = [v2 type];

  return v3;
}

- (unint64_t)syntheticFocusMode
{
  v2 = [(CAMBodyObjectResult *)self underlyingMetadataObject];
  v3 = +[CAMCaptureConversions CAMMetadataObjectSyntheticFocusModeForAVCaptureMetadataObjectSyntheticFocusMode:](CAMCaptureConversions, "CAMMetadataObjectSyntheticFocusModeForAVCaptureMetadataObjectSyntheticFocusMode:", [v2 syntheticFocusMode]);

  return v3;
}

@end