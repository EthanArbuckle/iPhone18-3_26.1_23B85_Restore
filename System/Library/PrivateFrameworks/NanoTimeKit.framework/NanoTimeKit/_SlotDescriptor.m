@interface _SlotDescriptor
+ (id)descriptorWithComplicationFamilies:(id)a3 complicationTypesRankedList:(id)a4 allowedComplicationTypes:(id)a5;
- (BOOL)allowsFamily:(int64_t)a3 inFace:(id)a4;
- (BOOL)allowsType:(unint64_t)a3 inFace:(id)a4;
- (BOOL)supportsFamiliesOfComplications:(id)a3 inFace:(id)a4 forSlot:(id)a5;
- (void)enumerateAllowedFamiliesForFace:(id)a3 withBlock:(id)a4;
@end

@implementation _SlotDescriptor

+ (id)descriptorWithComplicationFamilies:(id)a3 complicationTypesRankedList:(id)a4 allowedComplicationTypes:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(a1);
  v12 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v8;
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

        v26 = [*(*(&v27 + 1) + 8 * i) integerValue];
        do
        {
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:v26];
          [v12 addObject:v18];
        }

        while ((NTKFallbackComplicationFamilyForFamily(v26, &v26) & 1) != 0);
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v19 = [v12 copy];
  v20 = v11[1];
  v11[1] = v19;

  v21 = [v9 copy];
  v22 = v11[2];
  v11[2] = v21;

  v23 = [v10 copy];
  v24 = v11[3];
  v11[3] = v23;

  return v11;
}

- (void)enumerateAllowedFamiliesForFace:(id)a3 withBlock:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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

      v13 = [*(*(&v14 + 1) + 8 * v12) integerValue];
      if ([(_SlotDescriptor *)self allowsFamily:v13 inFace:v6])
      {
        v7[2](v7, v13, &v18);
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

- (BOOL)allowsFamily:(int64_t)a3 inFace:(id)a4
{
  v6 = [a4 device];
  v7 = [v6 deviceCategory];

  familiesRankedList = self->_familiesRankedList;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v10 = [(NSArray *)familiesRankedList containsObject:v9];

  if (a3 > 0xC)
  {
    goto LABEL_7;
  }

  if (((1 << a3) & 0xDF) != 0)
  {
    return v10;
  }

  if (((1 << a3) & 0x1F00) != 0)
  {
    if (v7 == 1)
    {
      return 0;
    }
  }

  else
  {
LABEL_7:
    v17 = a3 == 100 || a3 == 101 || a3 == 102 || a3 == 103 || *MEMORY[0x277CBB668] == a3 || *MEMORY[0x277CBB680] == a3;
    return v17 && v10;
  }

  return v10;
}

- (BOOL)supportsFamiliesOfComplications:(id)a3 inFace:(id)a4 forSlot:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 complicationType])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66___SlotDescriptor_supportsFamiliesOfComplications_inFace_forSlot___block_invoke;
    v13[3] = &unk_2787838B8;
    v14 = v9;
    v15 = v8;
    v16 = v10;
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

- (BOOL)allowsType:(unint64_t)a3 inFace:(id)a4
{
  possibleTypes = self->_possibleTypes;
  v6 = a4;
  v7 = [(NSIndexSet *)possibleTypes mutableCopy];
  v8 = [v6 device];

  v9 = [NTKComplicationProvider providerForDevice:v8];
  v10 = [v9 disabledComplicationTypes];

  [v7 removeIndexes:v10];
  v11 = 1;
  if (a3 && a3 != 55)
  {
    v11 = [v7 containsIndex:a3];
  }

  return v11;
}

@end