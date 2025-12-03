@interface TDEffectRenditionSpec
- (TDEffectComponent)CUIShapeEffectOutputOpacity;
- (TDEffectComponent)CUIShapeEffectShapeOpacity;
- (id)componentOfType:(unsigned int)type;
- (id)effectPreset;
- (void)replaceComponentsWithComponentsFromEffectRendition:(id)rendition withDocument:(id)document;
- (void)setComponentsFromEffectPreset:(id)preset withDocument:(id)document;
@end

@implementation TDEffectRenditionSpec

- (void)setComponentsFromEffectPreset:(id)preset withDocument:(id)document
{
  effectCount = [preset effectCount];
  v10 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:6];
  if (effectCount)
  {
    for (i = 0; i != effectCount; ++i)
    {
      v9 = [document newObjectForEntity:@"EffectComponent"];
      [v9 setEffectParametersFromPreset:preset atIndex:i withDocument:document];
      [v10 addObject:v9];
    }
  }

  [(TDEffectRenditionSpec *)self setComponents:v10];
}

- (id)effectPreset
{
  v23 = *MEMORY[0x277D85DE8];
  [-[TDEffectRenditionSpec effectScale](self "effectScale")];
  v4 = [objc_alloc(MEMORY[0x277D026D8]) initWithEffectScale:v3];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  components = [(TDEffectRenditionSpec *)self components];
  v6 = [components countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(components);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        isEnabled = [v11 isEnabled];
        v13 = [objc_msgSend(v11 "effectType")];
        if (v13 == 1180787813 || v13 == 1397715043 || isEnabled != 0)
        {
          [v11 updatePresetParameters:v4 atIndex:v8++];
        }
      }

      v7 = [components countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  result = v4;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)replaceComponentsWithComponentsFromEffectRendition:(id)rendition withDocument:(id)document
{
  v44 = *MEMORY[0x277D85DE8];
  obj = [rendition components];
  if ([obj count])
  {
    components = [(TDEffectRenditionSpec *)self components];
    v26 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(components, "count")}];
    array = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = [components countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      do
      {
        v11 = 0;
        do
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(components);
          }

          [array addObject:*(*(&v37 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [components countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v9);
    }

    [(TDEffectRenditionSpec *)self removeComponents:components];
    [document deleteObjects:array];
    [objc_msgSend(document "managedObjectContext")];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v27)
    {
      v24 = *v34;
      selfCopy = self;
      do
      {
        v12 = 0;
        do
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v33 + 1) + 8 * v12);
          v14 = [document newObjectForEntity:@"EffectComponent"];
          v28 = v13;
          parameters = [v13 parameters];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v16 = [parameters countByEnumeratingWithState:&v29 objects:v41 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v30;
            do
            {
              v19 = 0;
              do
              {
                if (*v30 != v18)
                {
                  objc_enumerationMutation(parameters);
                }

                v20 = *(*(&v29 + 1) + 8 * v19);
                v21 = [document newObjectForEntity:@"EffectParameterValue"];
                [v21 setIntValue:{objc_msgSend(v20, "intValue")}];
                [v21 setFloatValue:{objc_msgSend(v20, "floatValue")}];
                [v21 setColorValue:{objc_msgSend(v20, "colorValue")}];
                [v21 setAngleValue:{objc_msgSend(v20, "angleValue")}];
                [v21 setParameterType:{objc_msgSend(v20, "parameterType")}];
                [v14 addParametersObject:v21];

                ++v19;
              }

              while (v17 != v19);
              v17 = [parameters countByEnumeratingWithState:&v29 objects:v41 count:16];
            }

            while (v17);
          }

          [v14 setEffectType:{objc_msgSend(v28, "effectType")}];
          [v14 setIsEnabled:{objc_msgSend(v28, "isEnabled")}];
          self = selfCopy;
          [v14 setRendition:selfCopy];
          [v26 addObject:v14];

          ++v12;
        }

        while (v12 != v27);
        v27 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v27);
    }

    [(TDEffectRenditionSpec *)self addComponents:v26];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)componentOfType:(unsigned int)type
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = type == 1397715043 || type == 1180787813;
  if (v3 && (v5 = -[TDEffectRenditionSpec components](self, "components"), v13 = 0u, v14 = 0u, v15 = 0u, v16 = 0u, (v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16]) != 0))
  {
    v7 = v6;
    v8 = *v14;
LABEL_8:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([objc_msgSend(v10 "effectType")] == type)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v10 = 0;
        if (v7)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (TDEffectComponent)CUIShapeEffectShapeOpacity
{
  v2 = [(TDEffectRenditionSpec *)self componentOfType:1397715043];

  return v2;
}

- (TDEffectComponent)CUIShapeEffectOutputOpacity
{
  v2 = [(TDEffectRenditionSpec *)self componentOfType:1180787813];

  return v2;
}

@end