@interface _CPLCloudKitFakeFingerPrint
- (CGSize)dimensions;
- (CPLResourceIdentity)fakeIdentity;
- (NSString)fingerPrint;
- (_CPLCloudKitFakeFingerPrint)initWithFakeFingerPrint:(id)a3;
- (_CPLCloudKitFakeFingerPrint)initWithFakeIdentity:(id)a3;
- (_CPLCloudKitFakeFingerPrint)initWithRealResourceType:(unint64_t)a3 realFingerPrint:(id)a4 outputType:(id)a5 dimensions:(CGSize)a6;
@end

@implementation _CPLCloudKitFakeFingerPrint

- (_CPLCloudKitFakeFingerPrint)initWithFakeIdentity:(id)a3
{
  v4 = [a3 fingerPrint];
  v5 = [(_CPLCloudKitFakeFingerPrint *)self initWithFakeFingerPrint:v4];

  return v5;
}

- (_CPLCloudKitFakeFingerPrint)initWithFakeFingerPrint:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = [v5 componentsSeparatedByString:@"^"];
  if ([v6 count] != 5)
  {
    goto LABEL_9;
  }

  v7 = [v6 objectAtIndexedSubscript:1];
  v8 = [v6 objectAtIndexedSubscript:2];
  v9 = [v6 objectAtIndexedSubscript:3];
  v10 = [v6 objectAtIndexedSubscript:4];
  v11 = NSSizeFromString(v10);
  if (qword_1002C5138 != -1)
  {
    sub_100199E2C();
  }

  v12 = [qword_1002C5130 objectForKeyedSubscript:v7];
  v13 = v12;
  if (v12)
  {
    v14 = -[_CPLCloudKitFakeFingerPrint initWithRealResourceType:realFingerPrint:outputType:dimensions:](self, "initWithRealResourceType:realFingerPrint:outputType:dimensions:", [v12 integerValue], v8, v9, v11.width, v11.height);
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_fingerPrint, v3);
    }

    self = v15;
    v3 = self;
  }

  if (!v13)
  {
LABEL_9:
    v3 = 0;
  }

  return v3;
}

- (_CPLCloudKitFakeFingerPrint)initWithRealResourceType:(unint64_t)a3 realFingerPrint:(id)a4 outputType:(id)a5 dimensions:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = _CPLCloudKitFakeFingerPrint;
  v14 = [(_CPLCloudKitFakeFingerPrint *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_realResourceType = a3;
    objc_storeStrong(&v14->_realFingerPrint, a4);
    objc_storeStrong(&v15->_outputType, a5);
    v15->_dimensions.width = width;
    v15->_dimensions.height = height;
  }

  return v15;
}

- (NSString)fingerPrint
{
  fingerPrint = self->_fingerPrint;
  if (!fingerPrint)
  {
    v4 = [NSString alloc];
    v5 = [CPLResource shortDescriptionForResourceType:self->_realResourceType];
    realFingerPrint = self->_realFingerPrint;
    outputType = self->_outputType;
    v8 = NSStringFromSize(self->_dimensions);
    v9 = [v4 initWithFormat:@"^%@^%@^%@^%@", v5, realFingerPrint, outputType, v8];
    v10 = self->_fingerPrint;
    self->_fingerPrint = v9;

    fingerPrint = self->_fingerPrint;
  }

  return fingerPrint;
}

- (CPLResourceIdentity)fakeIdentity
{
  v3 = objc_alloc_init(CPLResourceIdentity);
  [v3 setFileUTI:self->_outputType];
  v4 = [(_CPLCloudKitFakeFingerPrint *)self fingerPrint];
  [v3 setFingerPrint:v4];

  [v3 setImageDimensions:{self->_dimensions.width, self->_dimensions.height}];
  [v3 setAvailable:1];
  width = self->_dimensions.width;
  height = self->_dimensions.height;
  v7 = self->_outputType;
  if (qword_1002C5158 != -1)
  {
    sub_100199E40();
  }

  v8 = [qword_1002C5150 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    [v8 doubleValue];
  }

  else
  {
    v10 = 4.19265652;
  }

  v11 = height * (width * v10);
  if (v11 < 10240.0)
  {
    v11 = 10240.0;
  }

  v12 = v11;

  [v3 setFileSize:v12];

  return v3;
}

- (CGSize)dimensions
{
  width = self->_dimensions.width;
  height = self->_dimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

@end