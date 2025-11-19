@interface TCDumpUnion
- (TCDumpUnion)initWithSelectorFieldName:(id)a3 selectorEnumType:(id)a4 selectorField:(id)a5 members:(id)a6;
- (void)fromBinary:(__sFILE *)a3 toXml:(_xmlNode *)a4 state:(id)a5;
@end

@implementation TCDumpUnion

- (TCDumpUnion)initWithSelectorFieldName:(id)a3 selectorEnumType:(id)a4 selectorField:(id)a5 members:(id)a6
{
  v11 = a3;
  v12 = a4;
  v32 = a5;
  v13 = a6;
  v34.receiver = self;
  v34.super_class = TCDumpUnion;
  v14 = [(TCDumpType *)&v34 init];
  p_isa = &v14->super.super.isa;
  if (v14)
  {
    v15 = v14;
    objc_storeStrong(&v14->mSelectorFieldName, a3);
    objc_storeStrong(&v15->mSelectorField, a5);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mSelectorToMemberMap = v15->mSelectorToMemberMap;
    v15->mSelectorToMemberMap = v16;

    v18 = [v13 count];
    v19 = v12;
    if (v18 >= 3)
    {
      v20 = v18 / 3;
      v21 = 1;
      do
      {
        v22 = [v13 objectAtIndex:v21 - 1];
        v23 = [v22 characterAtIndex:0];
        if (v23 <= 0x7F)
        {
          if ((*(MEMORY[0x277D85DE0] + 4 * v23 + 60) & 0x400) == 0)
          {
LABEL_8:
            v25 = v19;
            if (!v19)
            {
              v25 = [p_isa[3] enumType];
            }

            v19 = v25;
            v24 = [v25 valueForName:v22];
            goto LABEL_11;
          }
        }

        else if (!__maskrune(v23, 0x400uLL))
        {
          goto LABEL_8;
        }

        v24 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v22, "intValue")}];
LABEL_11:
        v26 = v24;
        v27 = [v13 objectAtIndex:v21 + 1];
        v28 = [v13 objectAtIndex:v21];
        v29 = [[TCDumpField alloc] initWithType:v27 name:v28];
        [p_isa[4] setObject:v29 forKey:v26];

        v21 += 3;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v19 = v12;
  }

  v30 = p_isa;

  return v30;
}

- (void)fromBinary:(__sFILE *)a3 toXml:(_xmlNode *)a4 state:(id)a5
{
  v8 = a5;
  v15 = v8;
  if (self->mSelectorFieldName)
  {
    [v8 valueForField:?];
  }

  else
  {
    readIntegerFromBinaryToXml(self->mSelectorField, @"selector", a3, a4);
  }
  v9 = ;
  v10 = [(NSMutableDictionary *)self->mSelectorToMemberMap objectForKey:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 name];
    v13 = xmlNewNode(0, [v12 UTF8String]);
    xmlAddChild(a4, v13);
    v14 = [v11 type];
    [v14 fromBinary:a3 toXml:v13 state:0];
  }
}

@end