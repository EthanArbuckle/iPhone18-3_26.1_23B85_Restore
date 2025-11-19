@interface TDEffectComponent
- (id)CUIEffectParameterAngle;
- (id)CUIEffectParameterBevelStyle;
- (id)CUIEffectParameterBlendMode;
- (id)CUIEffectParameterBlurSize;
- (id)CUIEffectParameterColor1;
- (id)CUIEffectParameterColor2;
- (id)CUIEffectParameterOffset;
- (id)CUIEffectParameterOpacity;
- (id)CUIEffectParameterOpacity2;
- (id)CUIEffectParameterSoftenSize;
- (id)CUIEffectParameterSpread;
- (id)CUIEffectParameterTintable;
- (id)parameterOfType:(unsigned int)a3;
- (void)addParametersToPreset:(id)a3;
- (void)setEffectParametersFromPreset:(id)a3 atIndex:(unint64_t)a4 withDocument:(id)a5;
- (void)updatePresetParameters:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation TDEffectComponent

- (void)setEffectParametersFromPreset:(id)a3 atIndex:(unint64_t)a4 withDocument:(id)a5
{
  v9 = [a5 effectTypeWithIdentifier:{objc_msgSend(a3, "effectTypeAtIndex:", a4)}];
  v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:5];
  [(TDEffectComponent *)self setEffectType:v9];
  v20 = 0;
  v21 = 0;
  [a3 getEffectTuples:&v21 count:&v20 atEffectIndex:a4];
  if (v20)
  {
    v11 = 0;
    for (i = 0; i < v20; ++i)
    {
      v13 = *(v21 + v11 + 4);
      v14 = *(v21 + v11 + 8);
      v15 = [a5 effectParameterTypeWithIdentifier:v13];
      v16 = [a5 newObjectForEntity:@"EffectParameterValue"];
      [v16 setParameterType:v15];
      [v16 setComponent:self];
      if (v13 <= 0xB)
      {
        if (((1 << v13) & 0xFB0) != 0)
        {
          v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:*&v14];
          [v16 setIntValue:v17];
LABEL_12:

          goto LABEL_13;
        }

        if (((1 << v13) & 0xC) != 0)
        {
          v18 = objc_alloc(MEMORY[0x277CCABB0]);
          *&v19 = v14;
          v17 = [v18 initWithFloat:v19];
          [v16 setFloatValue:v17];
          goto LABEL_12;
        }

        if (v13 == 6)
        {
          v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithShort:SLOWORD(v14)];
          [v16 setAngleValue:v17];
          goto LABEL_12;
        }
      }

      if (v13 < 2)
      {
        v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:*&v14];
        [v16 setColorValue:v17];
        goto LABEL_12;
      }

LABEL_13:
      [v10 addObject:v16];

      v11 += 16;
    }
  }

  [(TDEffectComponent *)self setParameters:v10];
}

- (void)updatePresetParameters:(id)a3 atIndex:(unint64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = [-[TDEffectComponent effectType](self "effectType")];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(TDEffectComponent *)self parameters];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = [objc_msgSend(v13 "parameterType")];
        v15 = v14;
        if (v14 <= 0xB)
        {
          if (((1 << v14) & 0xFB0) != 0)
          {
            v16 = [v13 intValue];
LABEL_15:
            v18 = COERCE_DOUBLE([v16 unsignedIntegerValue]);
            goto LABEL_16;
          }

          if (((1 << v14) & 0xC) != 0)
          {
            [objc_msgSend(v13 "floatValue")];
            v18 = v17;
            goto LABEL_16;
          }

          if (v14 == 6)
          {
            *&v18 = [objc_msgSend(v13 "angleValue")];
            goto LABEL_16;
          }
        }

        if (v14 < 2)
        {
          v16 = [v13 colorValue];
          goto LABEL_15;
        }

        v18 = 0.0;
LABEL_16:
        [a3 addValue:*&v18 forParameter:v15 withEffectType:v7 atEffectIndex:a4];
        ++v12;
      }

      while (v10 != v12);
      v19 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v10 = v19;
    }

    while (v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addParametersToPreset:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [-[TDEffectComponent effectType](self "effectType")];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(TDEffectComponent *)self parameters];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [objc_msgSend(v11 "parameterType")];
        v13 = v12;
        if (v12 <= 0xB)
        {
          if (((1 << v12) & 0xFB0) != 0)
          {
            v14 = [v11 intValue];
LABEL_15:
            v16 = COERCE_DOUBLE([v14 unsignedIntegerValue]);
            goto LABEL_16;
          }

          if (((1 << v12) & 0xC) != 0)
          {
            [objc_msgSend(v11 "floatValue")];
            v16 = v15;
            goto LABEL_16;
          }

          if (v12 == 6)
          {
            *&v16 = [objc_msgSend(v11 "angleValue")];
            goto LABEL_16;
          }
        }

        if (v12 < 2)
        {
          v14 = [v11 colorValue];
          goto LABEL_15;
        }

        v16 = 0.0;
LABEL_16:
        [a3 appendValue:*&v16 forParameter:v13 withEffectType:v5];
        ++v10;
      }

      while (v8 != v10);
      v17 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v8 = v17;
    }

    while (v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)parameterOfType:(unsigned int)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(TDEffectComponent *)self parameters];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "parameterType")] == a3)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)CUIEffectParameterColor1
{
  v2 = [(TDEffectComponent *)self parameterOfType:0];

  return v2;
}

- (id)CUIEffectParameterColor2
{
  v2 = [(TDEffectComponent *)self parameterOfType:1];

  return v2;
}

- (id)CUIEffectParameterOpacity
{
  v2 = [(TDEffectComponent *)self parameterOfType:2];

  return v2;
}

- (id)CUIEffectParameterOpacity2
{
  v2 = [(TDEffectComponent *)self parameterOfType:3];

  return v2;
}

- (id)CUIEffectParameterBlurSize
{
  v2 = [(TDEffectComponent *)self parameterOfType:4];

  return v2;
}

- (id)CUIEffectParameterOffset
{
  v2 = [(TDEffectComponent *)self parameterOfType:5];

  return v2;
}

- (id)CUIEffectParameterAngle
{
  v2 = [(TDEffectComponent *)self parameterOfType:6];

  return v2;
}

- (id)CUIEffectParameterBlendMode
{
  v2 = [(TDEffectComponent *)self parameterOfType:7];

  return v2;
}

- (id)CUIEffectParameterSoftenSize
{
  v2 = [(TDEffectComponent *)self parameterOfType:8];

  return v2;
}

- (id)CUIEffectParameterSpread
{
  v2 = [(TDEffectComponent *)self parameterOfType:9];

  return v2;
}

- (id)CUIEffectParameterTintable
{
  v2 = [(TDEffectComponent *)self parameterOfType:10];

  return v2;
}

- (id)CUIEffectParameterBevelStyle
{
  v2 = [(TDEffectComponent *)self parameterOfType:11];

  return v2;
}

@end