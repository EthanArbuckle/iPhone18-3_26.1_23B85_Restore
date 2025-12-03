@interface TCDumpContainer
- (TCDumpContainer)initWithByteSize:(int)size byteSizeFieldType:(int)type byteSizeFieldName:(id)name byteSizeCorrection:(int)correction elementType:(id)elementType;
- (void)fromBinary:(__sFILE *)binary toXml:(_xmlNode *)xml state:(id)state;
@end

@implementation TCDumpContainer

- (TCDumpContainer)initWithByteSize:(int)size byteSizeFieldType:(int)type byteSizeFieldName:(id)name byteSizeCorrection:(int)correction elementType:(id)elementType
{
  nameCopy = name;
  elementTypeCopy = elementType;
  v18.receiver = self;
  v18.super_class = TCDumpContainer;
  v15 = [(TCDumpType *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->mByteSize = size;
    v15->mByteSizeFieldType = type;
    objc_storeStrong(&v15->mByteSizeFieldName, name);
    v16->mByteSizeCorrection = correction;
    objc_storeStrong(&v16->mElementType, elementType);
  }

  return v16;
}

- (void)fromBinary:(__sFILE *)binary toXml:(_xmlNode *)xml state:(id)state
{
  stateCopy = state;
  if (self->mByteSizeFieldType)
  {
    v8 = [[TCDumpNumeric alloc] initWithType:self->mByteSizeFieldType];
    v9 = readIntegerFromBinaryToXml(v8, @"byteSize", binary, xml);
    self->mByteSize = self->mByteSizeCorrection + [v9 intValue];
  }

  if (self->mByteSizeFieldName)
  {
    v10 = [stateCopy valueForField:?];
    self->mByteSize = self->mByteSizeCorrection + [v10 intValue];
  }

  v11 = ftello(binary) + self->mByteSize;
  if (ftello(binary) < v11)
  {
    v12 = 0;
    do
    {
      v13 = xmlNewNode(0, "child");
      xmlAddChild(xml, v13);
      sfaxmlSetLongNoNsProp(v13, "index", v12);
      [(TCDumpType *)self->mElementType fromBinary:binary toXml:v13 state:0];
      ++v12;
    }

    while (ftello(binary) < v11);
  }
}

@end