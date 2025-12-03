@interface CRCameraReaderOutput
- (CRCameraReaderOutput)init;
- (CRCameraReaderOutput)initWithImageReaderOutput:(id)output;
- (NSString)formattedStringValue;
- (NSString)stringValue;
- (NSString)type;
- (void)dealloc;
@end

@implementation CRCameraReaderOutput

- (CRCameraReaderOutput)init
{
  v5.receiver = self;
  v5.super_class = CRCameraReaderOutput;
  v2 = [(CRCameraReaderOutput *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(CRCameraReaderOutputInternal);
    [(CRCameraReaderOutput *)v2 setObjectInternal:v3];
  }

  return v2;
}

- (CRCameraReaderOutput)initWithImageReaderOutput:(id)output
{
  outputCopy = output;
  v22.receiver = self;
  v22.super_class = CRCameraReaderOutput;
  v5 = [(CRCameraReaderOutput *)&v22 init];
  if (v5)
  {
    v6 = objc_alloc_init(CRCameraReaderOutputInternal);
    [(CRCameraReaderOutput *)v5 setObjectInternal:v6];

    stringValue = [outputCopy stringValue];
    objectInternal = [(CRCameraReaderOutput *)v5 objectInternal];
    [objectInternal setStringValue:stringValue];

    [outputCopy boundingBox];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    objectInternal2 = [(CRCameraReaderOutput *)v5 objectInternal];
    [objectInternal2 setBoundingBox:{v10, v12, v14, v16}];

    [outputCopy baselineAngle];
    LODWORD(v10) = v18;
    objectInternal3 = [(CRCameraReaderOutput *)v5 objectInternal];
    LODWORD(v20) = LODWORD(v10);
    [objectInternal3 setRotation:v20];
  }

  return v5;
}

- (void)dealloc
{
  [(CRCameraReaderOutput *)self setObjectInternal:0];
  v3.receiver = self;
  v3.super_class = CRCameraReaderOutput;
  [(CRCameraReaderOutput *)&v3 dealloc];
}

- (NSString)type
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  type = [objectInternal type];

  return type;
}

- (NSString)stringValue
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  stringValue = [objectInternal stringValue];

  return stringValue;
}

- (NSString)formattedStringValue
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  formattedStringValue = [objectInternal formattedStringValue];

  return formattedStringValue;
}

@end