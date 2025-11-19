@interface CAMMachineReadableCodeResult
- (BOOL)isOfSignificantSize;
- (CAMMachineReadableCodeResult)initWithMachineReadableCodeObject:(id)a3;
- (NSString)metadataType;
- (NSString)symbolString;
- (int64_t)mrcType;
@end

@implementation CAMMachineReadableCodeResult

- (CAMMachineReadableCodeResult)initWithMachineReadableCodeObject:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CAMMachineReadableCodeResult;
  v6 = [(CAMMachineReadableCodeResult *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingMachineReadableCodeObject, a3);
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v5 type];
    v10 = [(CAMMachineReadableCodeResult *)v7 symbolString];
    v11 = [v8 stringWithFormat:@"%@ %@", v9, v10];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = v11;

    v13 = v7;
  }

  return v7;
}

- (BOOL)isOfSignificantSize
{
  v2 = [(CAMMachineReadableCodeResult *)self underlyingMachineReadableCodeObject];
  v3 = +[CAMCaptureCapabilities capabilities];
  [v2 bounds];
  v5 = v4;
  [v3 minimumMachineReadableCodeNormalizedHeight];
  v7 = v5 >= v6;

  return v7;
}

- (int64_t)mrcType
{
  v2 = [(CAMMachineReadableCodeResult *)self underlyingMachineReadableCodeObject];
  v3 = [v2 descriptor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 basicDescriptor];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"BarcodeType"];
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
  v3 = [(CAMMachineReadableCodeResult *)self underlyingMachineReadableCodeObject];
  v4 = [(CAMMachineReadableCodeResult *)self mrcType];
  if (v4 == 1)
  {
    v8 = [v3 basicDescriptor];
    v5 = [v8 objectForKeyedSubscript:@"RawData"];

    v7 = [v5 description];
    goto LABEL_5;
  }

  if (!v4)
  {
    v5 = [v3 descriptor];
    v6 = [v5 errorCorrectedPayload];
    v7 = [v6 description];

LABEL_5:
    goto LABEL_7;
  }

  v7 = &stru_1F1660A30;
LABEL_7:

  return v7;
}

- (NSString)metadataType
{
  v2 = [(CAMMachineReadableCodeResult *)self underlyingMachineReadableCodeObject];
  v3 = [v2 type];

  return v3;
}

@end