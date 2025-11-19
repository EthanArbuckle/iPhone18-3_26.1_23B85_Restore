@interface TCDumpContainer
- (TCDumpContainer)initWithByteSize:(int)a3 byteSizeFieldType:(int)a4 byteSizeFieldName:(id)a5 byteSizeCorrection:(int)a6 elementType:(id)a7;
- (void)fromBinary:(__sFILE *)a3 toXml:(_xmlNode *)a4 state:(id)a5;
@end

@implementation TCDumpContainer

- (TCDumpContainer)initWithByteSize:(int)a3 byteSizeFieldType:(int)a4 byteSizeFieldName:(id)a5 byteSizeCorrection:(int)a6 elementType:(id)a7
{
  v13 = a5;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = TCDumpContainer;
  v15 = [(TCDumpType *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->mByteSize = a3;
    v15->mByteSizeFieldType = a4;
    objc_storeStrong(&v15->mByteSizeFieldName, a5);
    v16->mByteSizeCorrection = a6;
    objc_storeStrong(&v16->mElementType, a7);
  }

  return v16;
}

- (void)fromBinary:(__sFILE *)a3 toXml:(_xmlNode *)a4 state:(id)a5
{
  v14 = a5;
  if (self->mByteSizeFieldType)
  {
    v8 = [[TCDumpNumeric alloc] initWithType:self->mByteSizeFieldType];
    v9 = readIntegerFromBinaryToXml(v8, @"byteSize", a3, a4);
    self->mByteSize = self->mByteSizeCorrection + [v9 intValue];
  }

  if (self->mByteSizeFieldName)
  {
    v10 = [v14 valueForField:?];
    self->mByteSize = self->mByteSizeCorrection + [v10 intValue];
  }

  v11 = ftello(a3) + self->mByteSize;
  if (ftello(a3) < v11)
  {
    v12 = 0;
    do
    {
      v13 = xmlNewNode(0, "child");
      xmlAddChild(a4, v13);
      sfaxmlSetLongNoNsProp(v13, "index", v12);
      [(TCDumpType *)self->mElementType fromBinary:a3 toXml:v13 state:0];
      ++v12;
    }

    while (ftello(a3) < v11);
  }
}

@end