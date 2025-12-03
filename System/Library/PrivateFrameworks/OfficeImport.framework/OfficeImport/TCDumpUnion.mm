@interface TCDumpUnion
- (TCDumpUnion)initWithSelectorFieldName:(id)name selectorEnumType:(id)type selectorField:(id)field members:(id)members;
- (void)fromBinary:(__sFILE *)binary toXml:(_xmlNode *)xml state:(id)state;
@end

@implementation TCDumpUnion

- (TCDumpUnion)initWithSelectorFieldName:(id)name selectorEnumType:(id)type selectorField:(id)field members:(id)members
{
  nameCopy = name;
  typeCopy = type;
  fieldCopy = field;
  membersCopy = members;
  v34.receiver = self;
  v34.super_class = TCDumpUnion;
  v14 = [(TCDumpType *)&v34 init];
  p_isa = &v14->super.super.isa;
  if (v14)
  {
    v15 = v14;
    objc_storeStrong(&v14->mSelectorFieldName, name);
    objc_storeStrong(&v15->mSelectorField, field);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mSelectorToMemberMap = v15->mSelectorToMemberMap;
    v15->mSelectorToMemberMap = v16;

    v18 = [membersCopy count];
    v19 = typeCopy;
    if (v18 >= 3)
    {
      v20 = v18 / 3;
      v21 = 1;
      do
      {
        v22 = [membersCopy objectAtIndex:v21 - 1];
        v23 = [v22 characterAtIndex:0];
        if (v23 <= 0x7F)
        {
          if ((*(MEMORY[0x277D85DE0] + 4 * v23 + 60) & 0x400) == 0)
          {
LABEL_8:
            enumType = v19;
            if (!v19)
            {
              enumType = [p_isa[3] enumType];
            }

            v19 = enumType;
            v24 = [enumType valueForName:v22];
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
        v27 = [membersCopy objectAtIndex:v21 + 1];
        v28 = [membersCopy objectAtIndex:v21];
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
    v19 = typeCopy;
  }

  v30 = p_isa;

  return v30;
}

- (void)fromBinary:(__sFILE *)binary toXml:(_xmlNode *)xml state:(id)state
{
  stateCopy = state;
  v15 = stateCopy;
  if (self->mSelectorFieldName)
  {
    [stateCopy valueForField:?];
  }

  else
  {
    readIntegerFromBinaryToXml(self->mSelectorField, @"selector", binary, xml);
  }
  v9 = ;
  v10 = [(NSMutableDictionary *)self->mSelectorToMemberMap objectForKey:v9];
  v11 = v10;
  if (v10)
  {
    name = [v10 name];
    v13 = xmlNewNode(0, [name UTF8String]);
    xmlAddChild(xml, v13);
    type = [v11 type];
    [type fromBinary:binary toXml:v13 state:0];
  }
}

@end