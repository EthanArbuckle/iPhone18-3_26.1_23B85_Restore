@interface _SlotDescriptor
+ (id)descriptorWithComplicationFamilies:(id)families complicationTypesRankedList:(id)list allowedComplicationTypes:(id)types;
- (BOOL)allowsFamily:(int64_t)family inFace:(id)face;
- (BOOL)allowsType:(unint64_t)type inFace:(id)face;
- (BOOL)supportsFamiliesOfComplications:(id)complications inFace:(id)face forSlot:(id)slot;
- (void)enumerateAllowedFamiliesForFace:(id)face withBlock:(id)block;
@end

@implementation _SlotDescriptor

+ (id)descriptorWithComplicationFamilies:(id)families complicationTypesRankedList:(id)list allowedComplicationTypes:(id)types
{
  v32 = *MEMORY[0x277D85DE8];
  familiesCopy = families;
  listCopy = list;
  typesCopy = types;
  v11 = objc_alloc_init(self);
  array = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = familiesCopy;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        integerValue = [*(*(&v27 + 1) + 8 * i) integerValue];
        do
        {
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
          [array addObject:v18];
        }

        while ((NTKFallbackComplicationFamilyForFamily(integerValue, &integerValue) & 1) != 0);
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v19 = [array copy];
  v20 = v11[1];
  v11[1] = v19;

  v21 = [listCopy copy];
  v22 = v11[2];
  v11[2] = v21;

  v23 = [typesCopy copy];
  v24 = v11[3];
  v11[3] = v23;

  return v11;
}

- (void)enumerateAllowedFamiliesForFace:(id)face withBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  blockCopy = block;
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_familiesRankedList;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v8);
      }

      integerValue = [*(*(&v14 + 1) + 8 * v12) integerValue];
      if ([(_SlotDescriptor *)self allowsFamily:integerValue inFace:faceCopy])
      {
        blockCopy[2](blockCopy, integerValue, &v18);
        if (v18)
        {
          break;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)allowsFamily:(int64_t)family inFace:(id)face
{
  device = [face device];
  deviceCategory = [device deviceCategory];

  familiesRankedList = self->_familiesRankedList;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:family];
  v10 = [(NSArray *)familiesRankedList containsObject:v9];

  if (family > 0xC)
  {
    goto LABEL_7;
  }

  if (((1 << family) & 0xDF) != 0)
  {
    return v10;
  }

  if (((1 << family) & 0x1F00) != 0)
  {
    if (deviceCategory == 1)
    {
      return 0;
    }
  }

  else
  {
LABEL_7:
    v17 = family == 100 || family == 101 || family == 102 || family == 103 || *MEMORY[0x277CBB668] == family || *MEMORY[0x277CBB680] == family;
    return v17 && v10;
  }

  return v10;
}

- (BOOL)supportsFamiliesOfComplications:(id)complications inFace:(id)face forSlot:(id)slot
{
  complicationsCopy = complications;
  faceCopy = face;
  slotCopy = slot;
  if ([complicationsCopy complicationType])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66___SlotDescriptor_supportsFamiliesOfComplications_inFace_forSlot___block_invoke;
    v13[3] = &unk_2787838B8;
    v14 = faceCopy;
    v15 = complicationsCopy;
    v16 = slotCopy;
    v17 = &v18;
    [(_SlotDescriptor *)self enumerateAllowedFamiliesForFace:v14 withBlock:v13];
    v11 = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (BOOL)allowsType:(unint64_t)type inFace:(id)face
{
  possibleTypes = self->_possibleTypes;
  faceCopy = face;
  v7 = [(NSIndexSet *)possibleTypes mutableCopy];
  device = [faceCopy device];

  v9 = [NTKComplicationProvider providerForDevice:device];
  disabledComplicationTypes = [v9 disabledComplicationTypes];

  [v7 removeIndexes:disabledComplicationTypes];
  v11 = 1;
  if (type && type != 55)
  {
    v11 = [v7 containsIndex:type];
  }

  return v11;
}

@end