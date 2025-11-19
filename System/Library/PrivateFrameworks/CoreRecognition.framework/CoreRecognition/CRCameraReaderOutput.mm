@interface CRCameraReaderOutput
- (CRCameraReaderOutput)init;
- (CRCameraReaderOutput)initWithImageReaderOutput:(id)a3;
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

- (CRCameraReaderOutput)initWithImageReaderOutput:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CRCameraReaderOutput;
  v5 = [(CRCameraReaderOutput *)&v22 init];
  if (v5)
  {
    v6 = objc_alloc_init(CRCameraReaderOutputInternal);
    [(CRCameraReaderOutput *)v5 setObjectInternal:v6];

    v7 = [v4 stringValue];
    v8 = [(CRCameraReaderOutput *)v5 objectInternal];
    [v8 setStringValue:v7];

    [v4 boundingBox];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(CRCameraReaderOutput *)v5 objectInternal];
    [v17 setBoundingBox:{v10, v12, v14, v16}];

    [v4 baselineAngle];
    LODWORD(v10) = v18;
    v19 = [(CRCameraReaderOutput *)v5 objectInternal];
    LODWORD(v20) = LODWORD(v10);
    [v19 setRotation:v20];
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
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  v3 = [v2 type];

  return v3;
}

- (NSString)stringValue
{
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  v3 = [v2 stringValue];

  return v3;
}

- (NSString)formattedStringValue
{
  v2 = [(CRCameraReaderOutput *)self objectInternal];
  v3 = [v2 formattedStringValue];

  return v3;
}

@end