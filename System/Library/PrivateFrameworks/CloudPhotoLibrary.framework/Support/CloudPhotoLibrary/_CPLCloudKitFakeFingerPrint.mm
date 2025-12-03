@interface _CPLCloudKitFakeFingerPrint
- (CGSize)dimensions;
- (CPLResourceIdentity)fakeIdentity;
- (NSString)fingerPrint;
- (_CPLCloudKitFakeFingerPrint)initWithFakeFingerPrint:(id)print;
- (_CPLCloudKitFakeFingerPrint)initWithFakeIdentity:(id)identity;
- (_CPLCloudKitFakeFingerPrint)initWithRealResourceType:(unint64_t)type realFingerPrint:(id)print outputType:(id)outputType dimensions:(CGSize)dimensions;
@end

@implementation _CPLCloudKitFakeFingerPrint

- (_CPLCloudKitFakeFingerPrint)initWithFakeIdentity:(id)identity
{
  fingerPrint = [identity fingerPrint];
  v5 = [(_CPLCloudKitFakeFingerPrint *)self initWithFakeFingerPrint:fingerPrint];

  return v5;
}

- (_CPLCloudKitFakeFingerPrint)initWithFakeFingerPrint:(id)print
{
  selfCopy = print;
  printCopy2 = print;
  v6 = [printCopy2 componentsSeparatedByString:@"^"];
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
      objc_storeStrong(&v14->_fingerPrint, selfCopy);
    }

    self = v15;
    selfCopy = self;
  }

  if (!v13)
  {
LABEL_9:
    selfCopy = 0;
  }

  return selfCopy;
}

- (_CPLCloudKitFakeFingerPrint)initWithRealResourceType:(unint64_t)type realFingerPrint:(id)print outputType:(id)outputType dimensions:(CGSize)dimensions
{
  height = dimensions.height;
  width = dimensions.width;
  printCopy = print;
  outputTypeCopy = outputType;
  v17.receiver = self;
  v17.super_class = _CPLCloudKitFakeFingerPrint;
  v14 = [(_CPLCloudKitFakeFingerPrint *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_realResourceType = type;
    objc_storeStrong(&v14->_realFingerPrint, print);
    objc_storeStrong(&v15->_outputType, outputType);
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
  fingerPrint = [(_CPLCloudKitFakeFingerPrint *)self fingerPrint];
  [v3 setFingerPrint:fingerPrint];

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