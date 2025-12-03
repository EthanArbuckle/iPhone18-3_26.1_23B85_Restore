@interface CAMMachineReadableCodeResult
- (BOOL)isOfSignificantSize;
- (CAMMachineReadableCodeResult)initWithMachineReadableCodeObject:(id)object;
- (NSString)metadataType;
- (NSString)symbolString;
- (int64_t)mrcType;
@end

@implementation CAMMachineReadableCodeResult

- (CAMMachineReadableCodeResult)initWithMachineReadableCodeObject:(id)object
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = CAMMachineReadableCodeResult;
  v6 = [(CAMMachineReadableCodeResult *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingMachineReadableCodeObject, object);
    v8 = MEMORY[0x1E696AEC0];
    type = [objectCopy type];
    symbolString = [(CAMMachineReadableCodeResult *)v7 symbolString];
    v11 = [v8 stringWithFormat:@"%@ %@", type, symbolString];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = v11;

    v13 = v7;
  }

  return v7;
}

- (BOOL)isOfSignificantSize
{
  underlyingMachineReadableCodeObject = [(CAMMachineReadableCodeResult *)self underlyingMachineReadableCodeObject];
  v3 = +[CAMCaptureCapabilities capabilities];
  [underlyingMachineReadableCodeObject bounds];
  v5 = v4;
  [v3 minimumMachineReadableCodeNormalizedHeight];
  v7 = v5 >= v6;

  return v7;
}

- (int64_t)mrcType
{
  underlyingMachineReadableCodeObject = [(CAMMachineReadableCodeResult *)self underlyingMachineReadableCodeObject];
  descriptor = [underlyingMachineReadableCodeObject descriptor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    basicDescriptor = [underlyingMachineReadableCodeObject basicDescriptor];
    v6 = basicDescriptor;
    if (basicDescriptor)
    {
      v7 = [basicDescriptor objectForKeyedSubscript:@"BarcodeType"];
      if ([v7 isEqualToString:*MEMORY[0x1E6986FB8]])
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  return v4;
}

- (NSString)symbolString
{
  underlyingMachineReadableCodeObject = [(CAMMachineReadableCodeResult *)self underlyingMachineReadableCodeObject];
  mrcType = [(CAMMachineReadableCodeResult *)self mrcType];
  if (mrcType == 1)
  {
    basicDescriptor = [underlyingMachineReadableCodeObject basicDescriptor];
    descriptor = [basicDescriptor objectForKeyedSubscript:@"RawData"];

    v7 = [descriptor description];
    goto LABEL_5;
  }

  if (!mrcType)
  {
    descriptor = [underlyingMachineReadableCodeObject descriptor];
    errorCorrectedPayload = [descriptor errorCorrectedPayload];
    v7 = [errorCorrectedPayload description];

LABEL_5:
    goto LABEL_7;
  }

  v7 = &stru_1F1660A30;
LABEL_7:

  return v7;
}

- (NSString)metadataType
{
  underlyingMachineReadableCodeObject = [(CAMMachineReadableCodeResult *)self underlyingMachineReadableCodeObject];
  type = [underlyingMachineReadableCodeObject type];

  return type;
}

@end