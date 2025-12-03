@interface TCDumpArray
- (TCDumpArray)initWithCount:(int)count countFieldType:(int)type countFieldName:(id)name elementType:(id)elementType;
- (void)fromBinary:(__sFILE *)binary toXml:(_xmlNode *)xml state:(id)state;
@end

@implementation TCDumpArray

- (TCDumpArray)initWithCount:(int)count countFieldType:(int)type countFieldName:(id)name elementType:(id)elementType
{
  nameCopy = name;
  elementTypeCopy = elementType;
  v16.receiver = self;
  v16.super_class = TCDumpArray;
  v13 = [(TCDumpType *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->mCount = count;
    v13->mCountFieldType = type;
    objc_storeStrong(&v13->mCountFieldName, name);
    objc_storeStrong(&v14->mElementType, elementType);
  }

  return v14;
}

- (void)fromBinary:(__sFILE *)binary toXml:(_xmlNode *)xml state:(id)state
{
  stateCopy = state;
  if (self->mCountFieldType)
  {
    v8 = [[TCDumpNumeric alloc] initWithType:self->mCountFieldType];
    v9 = readIntegerFromBinaryToXml(v8, @"count", binary, xml);
    self->mCount = [v9 intValue];
  }

  if (self->mCountFieldName)
  {
    v10 = [stateCopy valueForField:?];
    self->mCount = [v10 intValue];
  }

  if (self->mCount >= 1)
  {
    v11 = 0;
    do
    {
      v12 = xmlNewNode(0, "element");
      xmlAddChild(xml, v12);
      sfaxmlSetLongNoNsProp(v12, "index", v11);
      [(TCDumpType *)self->mElementType fromBinary:binary toXml:v12 state:0];
      ++v11;
    }

    while (v11 < self->mCount);
  }

  if (self->mPaddingSize > 0)
  {
    v13 = xmlNewNode(0, "padding");
    xmlAddChild(xml, v13);
    v14 = [[TCDumpBlob alloc] initWithSize_:self->mPaddingSize];
    [(TCDumpBlob *)v14 fromBinary:binary toXml:v13 state:0];
  }
}

@end