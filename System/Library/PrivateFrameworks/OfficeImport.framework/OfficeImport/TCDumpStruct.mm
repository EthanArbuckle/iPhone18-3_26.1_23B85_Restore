@interface TCDumpStruct
- (TCDumpStruct)initWithSize:(int64_t)size sizeFieldName:(id)name sizeCorrection:(int)correction members:(id)members;
- (void)fromBinary:(__sFILE *)binary toXml:(_xmlNode *)xml state:(id)state;
@end

@implementation TCDumpStruct

- (TCDumpStruct)initWithSize:(int64_t)size sizeFieldName:(id)name sizeCorrection:(int)correction members:(id)members
{
  nameCopy = name;
  membersCopy = members;
  v24.receiver = self;
  v24.super_class = TCDumpStruct;
  v13 = [(TCDumpType *)&v24 init];
  v14 = v13;
  if (v13)
  {
    v13->mSize = size;
    objc_storeStrong(&v13->mSizeFieldName, name);
    v14->mSizeCorrection = correction;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mMembers = v14->mMembers;
    v14->mMembers = v15;

    v17 = [membersCopy count];
    if (v17 >= 2)
    {
      v18 = v17 >> 1;
      v19 = 1;
      do
      {
        v20 = [membersCopy objectAtIndex:v19];
        v21 = [membersCopy objectAtIndex:v19 - 1];
        v22 = [[TCDumpField alloc] initWithType:v20 name:v21];
        [(NSMutableArray *)v14->mMembers addObject:v22];

        v19 += 2;
        --v18;
      }

      while (v18);
    }
  }

  return v14;
}

- (void)fromBinary:(__sFILE *)binary toXml:(_xmlNode *)xml state:(id)state
{
  stateCopy = state;
  v8 = objc_alloc_init(TCDumpBinaryToXmlState);
  v24 = ftello(binary);
  v9 = [(NSMutableArray *)self->mMembers count];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [(NSMutableArray *)self->mMembers objectAtIndex:i];
      name = [v11 name];

      xmlCopy = xml;
      if (name)
      {
        name2 = [v11 name];
        xmlCopy = xmlNewNode(0, [name2 UTF8String]);

        xmlAddChild(xml, xmlCopy);
      }

      name3 = [v11 name];
      [(TCDumpBinaryToXmlState *)v8 setCurrentField:name3];

      type = [v11 type];
      [type fromBinary:binary toXml:xmlCopy state:v8];

      [(TCDumpBinaryToXmlState *)v8 setCurrentField:0];
    }
  }

  v17 = ftello(binary);
  if (self->mSizeFieldName)
  {
    v18 = [stateCopy valueForField:?];
    if (!v18)
    {
      v18 = [(TCDumpBinaryToXmlState *)v8 valueForField:self->mSizeFieldName];
    }

    self->mSize = self->mSizeCorrection + [v18 intValue];
  }

  v19 = v17 - v24;
  mSize = self->mSize;
  if (mSize != -1 && mSize > v19)
  {
    v22 = xmlNewNode(0, "padding");
    xmlAddChild(xml, v22);
    v23 = [[TCDumpBlob alloc] initWithSize_:self->mSize - v19];
    [(TCDumpBlob *)v23 fromBinary:binary toXml:v22 state:0];
  }
}

@end