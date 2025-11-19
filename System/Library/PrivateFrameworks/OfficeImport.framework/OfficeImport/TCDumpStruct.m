@interface TCDumpStruct
- (TCDumpStruct)initWithSize:(int64_t)a3 sizeFieldName:(id)a4 sizeCorrection:(int)a5 members:(id)a6;
- (void)fromBinary:(__sFILE *)a3 toXml:(_xmlNode *)a4 state:(id)a5;
@end

@implementation TCDumpStruct

- (TCDumpStruct)initWithSize:(int64_t)a3 sizeFieldName:(id)a4 sizeCorrection:(int)a5 members:(id)a6
{
  v11 = a4;
  v12 = a6;
  v24.receiver = self;
  v24.super_class = TCDumpStruct;
  v13 = [(TCDumpType *)&v24 init];
  v14 = v13;
  if (v13)
  {
    v13->mSize = a3;
    objc_storeStrong(&v13->mSizeFieldName, a4);
    v14->mSizeCorrection = a5;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mMembers = v14->mMembers;
    v14->mMembers = v15;

    v17 = [v12 count];
    if (v17 >= 2)
    {
      v18 = v17 >> 1;
      v19 = 1;
      do
      {
        v20 = [v12 objectAtIndex:v19];
        v21 = [v12 objectAtIndex:v19 - 1];
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

- (void)fromBinary:(__sFILE *)a3 toXml:(_xmlNode *)a4 state:(id)a5
{
  v25 = a5;
  v8 = objc_alloc_init(TCDumpBinaryToXmlState);
  v24 = ftello(a3);
  v9 = [(NSMutableArray *)self->mMembers count];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [(NSMutableArray *)self->mMembers objectAtIndex:i];
      v12 = [v11 name];

      v13 = a4;
      if (v12)
      {
        v14 = [v11 name];
        v13 = xmlNewNode(0, [v14 UTF8String]);

        xmlAddChild(a4, v13);
      }

      v15 = [v11 name];
      [(TCDumpBinaryToXmlState *)v8 setCurrentField:v15];

      v16 = [v11 type];
      [v16 fromBinary:a3 toXml:v13 state:v8];

      [(TCDumpBinaryToXmlState *)v8 setCurrentField:0];
    }
  }

  v17 = ftello(a3);
  if (self->mSizeFieldName)
  {
    v18 = [v25 valueForField:?];
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
    xmlAddChild(a4, v22);
    v23 = [[TCDumpBlob alloc] initWithSize_:self->mSize - v19];
    [(TCDumpBlob *)v23 fromBinary:a3 toXml:v22 state:0];
  }
}

@end