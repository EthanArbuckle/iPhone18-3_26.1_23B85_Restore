@interface NTKFaceColorScheme
+ (id)colorSchemeForDevice:(id)a3 withFaceColorPalette:(id)a4 foregroundColor:(id)a5 units:(unint64_t)a6 alternateHighlight:(BOOL)a7;
+ (id)interpolationForDevice:(id)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 fraction:(double)a6 units:(unint64_t)a7 brightenUnits:(unint64_t)a8 overrideColor:(id)a9 alternateHighlight:(BOOL)a10;
+ (id)interpolationFrom:(id)a3 to:(id)a4 fraction:(double)a5 brightenUnits:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (id)_colorForUnit:(unint64_t)a3;
- (id)initForDevice:(id)a3;
- (unint64_t)units;
- (void)_setColor:(id)a3 forUnit:(unint64_t)a4;
@end

@implementation NTKFaceColorScheme

- (id)initForDevice:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NTKFaceColorScheme;
  v6 = [(NTKFaceColorScheme *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    colorsByUnit = v7->_colorsByUnit;
    v7->_colorsByUnit = v8;
  }

  return v7;
}

+ (id)colorSchemeForDevice:(id)a3 withFaceColorPalette:(id)a4 foregroundColor:(id)a5 units:(unint64_t)a6 alternateHighlight:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v13)
  {
    if ([v12 isMulticolor])
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [v12 primaryColor];
    }
    v13 = ;
  }

  if ([v12 isWhite])
  {
    v14 = [v12 isMulticolor];
  }

  else
  {
    v15 = [MEMORY[0x277D75348] whiteColor];
    v16 = [v13 isEqual:v15];

    v14 = [v12 isMulticolor];
    if ((v16 & 1) == 0)
    {
      v18 = [MEMORY[0x277D75348] whiteColor];
      v17 = 0;
      goto LABEL_11;
    }
  }

  v17 = 1;
  v18 = NTKSecondaryForegroundGrayColor();
LABEL_11:
  aBlock = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __105__NTKFaceColorScheme_colorSchemeForDevice_withFaceColorPalette_foregroundColor_units_alternateHighlight___block_invoke;
  v32 = &unk_278781980;
  v37 = a7;
  v28 = v18;
  v33 = v28;
  v19 = v13;
  v34 = v19;
  v20 = v12;
  v35 = v20;
  v38 = v17;
  v21 = v11;
  v36 = v21;
  v39 = v14;
  v22 = _Block_copy(&aBlock);
  v23 = [[NTKFaceColorScheme alloc] initForDevice:v21];
  v24 = 1;
  do
  {
    if ((v24 & a6) != 0)
    {
      v25 = v22[2](v22, v24);
      [v23 _setColor:v25 forUnit:{v24, v28, aBlock, v30, v31, v32, v33, v34, v35}];
    }

    v26 = v24 >= 0x201;
    v24 *= 2;
  }

  while (!v26);
  [v23 setMulticolorAlpha:v14];
  [v23 setContainsOverrideFaceColor:{objc_msgSend(v20, "isMulticolor")}];
  [v23 setFaceColorPalette:v20];

  return v23;
}

id __105__NTKFaceColorScheme_colorSchemeForDevice_withFaceColorPalette_foregroundColor_units_alternateHighlight___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a2 > 31)
  {
    if (a2 <= 255)
    {
      if (a2 == 32)
      {
        v3 = [*(a1 + 48) secondaryShiftedColor];
        goto LABEL_36;
      }

      if (a2 != 64)
      {
        if (a2 != 128)
        {
          goto LABEL_36;
        }

        if (([*(a1 + 48) isZeus] & 1) != 0 || objc_msgSend(*(a1 + 48), "isVictory"))
        {
          v3 = [*(a1 + 48) primaryColor];
          goto LABEL_36;
        }

        goto LABEL_28;
      }

      if (*(a1 + 66))
      {
LABEL_28:
        v3 = [MEMORY[0x277D75348] whiteColor];
        goto LABEL_36;
      }

      v7 = *(a1 + 32);
      goto LABEL_35;
    }

    if (a2 == 256)
    {
      goto LABEL_28;
    }

    if (a2 != 512)
    {
      if (a2 == 1024)
      {
        v3 = [MEMORY[0x277D75348] blackColor];
      }

      goto LABEL_36;
    }

    if ([*(a1 + 48) isWhite])
    {
      v3 = [MEMORY[0x277D75348] colorWithWhite:0.45 alpha:1.0];
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v4 = *(a1 + 64) == 0;
      v5 = 40;
      v6 = 32;
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_36;
      }

      v4 = *(a1 + 64) == 0;
      v5 = 32;
      v6 = 40;
    }

    if (!v4)
    {
      v5 = v6;
    }

    v7 = *(a1 + v5);
    goto LABEL_35;
  }

  switch(a2)
  {
    case 4:
      v3 = [*(a1 + 48) secondaryColor];
      break;
    case 8:
      if (*(a1 + 65))
      {
        v3 = [MEMORY[0x277D75348] lightGrayColor];
        break;
      }

LABEL_31:
      v7 = *(a1 + 40);
LABEL_35:
      v3 = v7;
      break;
    case 16:
      v3 = [*(a1 + 48) primaryShiftedColor];
      break;
  }

LABEL_36:

  return v3;
}

+ (id)interpolationFrom:(id)a3 to:(id)a4 fraction:(double)a5 brightenUnits:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [a1 alloc];
  v13 = [v10 device];
  v14 = [v12 initForDevice:v13];

  v15 = MEMORY[0x277CBEB98];
  v16 = [v10 faceColors];
  v17 = [v15 setWithArray:v16];

  v18 = [v11 faceColors];
  v35 = v17;
  v19 = [v17 setByAddingObjectsFromArray:v18];

  v34 = v19;
  v20 = [v19 allObjects];
  [v14 setFaceColors:v20];

  if ([v10 containsOverrideFaceColor])
  {
    v21 = 1;
  }

  else
  {
    v21 = [v11 containsOverrideFaceColor];
  }

  [v14 setContainsOverrideFaceColor:v21];
  [v10 multicolorAlpha];
  [v11 multicolorAlpha];
  CLKInterpolateBetweenFloatsClipped();
  [v14 setMulticolorAlpha:?];
  v22 = a5 + -0.5;
  if (a5 + -0.5 < 0.0)
  {
    v22 = -(a5 + -0.5);
  }

  v23 = (0.5 - v22) * 0.8;
  v24 = 1;
  do
  {
    v25 = [v10 _colorForUnit:v24];
    v26 = [v11 _colorForUnit:v24];
    v27 = v26;
    if (v25 && v26)
    {
      v28 = NTKInterpolateBetweenColors();
      if (!v28)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!(v25 | v26))
      {
        v28 = 0;
        goto LABEL_22;
      }

      if (v25)
      {
        v29 = v25;
      }

      else
      {
        v29 = v26;
      }

      v28 = v29;
    }

    if ((v24 & a6) != 0)
    {
      v38 = 0.0;
      v39 = 0.0;
      v36 = 0;
      v37 = 0.0;
      [v28 getHue:&v39 saturation:&v38 brightness:&v37 alpha:&v36];
      if (v23 + v37 <= 1.0)
      {
        v30 = v23 + v37;
      }

      else
      {
        v30 = 1.0;
      }

      v37 = v30;
      v31 = [MEMORY[0x277D75348] colorWithHue:v39 saturation:v38 brightness:? alpha:?];

      v28 = v31;
    }

LABEL_22:
    [v14 _setColor:v28 forUnit:v24];

    v32 = v24 >= 0x201;
    v24 *= 2;
  }

  while (!v32);

  return v14;
}

+ (id)interpolationForDevice:(id)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 fraction:(double)a6 units:(unint64_t)a7 brightenUnits:(unint64_t)a8 overrideColor:(id)a9 alternateHighlight:(BOOL)a10
{
  v15 = a5;
  v16 = a9;
  v17 = a4;
  v18 = a3;
  LODWORD(a4) = [v17 isMulticolor];
  v19 = [v15 isMulticolor];
  if (a4)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  v21 = [NTKFaceColorScheme colorSchemeForDevice:v18 withFaceColorPalette:v17 foregroundColor:v20 units:a7 alternateHighlight:a10];

  if (v19)
  {
    v22 = v16;
  }

  else
  {
    v22 = 0;
  }

  v23 = [NTKFaceColorScheme colorSchemeForDevice:v18 withFaceColorPalette:v15 foregroundColor:v22 units:a7 alternateHighlight:a10];

  v24 = [NTKFaceColorScheme interpolationFrom:v21 to:v23 fraction:a8 brightenUnits:a6];

  return v24;
}

- (unint64_t)units
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMutableDictionary *)self->_colorsByUnit allKeys];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) unsignedIntegerValue];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
LABEL_9:
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NTKFaceColorScheme *)v4 units];
      if (v5 == [(NTKFaceColorScheme *)self units])
      {
        v6 = 1;
        while (1)
        {
          if (([(NTKFaceColorScheme *)self units]& v6) != 0)
          {
            v7 = [(NTKFaceColorScheme *)self _colorForUnit:v6];
            v8 = [(NTKFaceColorScheme *)v4 _colorForUnit:v6];
            v9 = [v7 isEqual:v8];

            if (!v9)
            {
              break;
            }
          }

          v10 = v6 >= 0x201;
          v6 *= 2;
          if (v10)
          {
            goto LABEL_9;
          }
        }
      }
    }

    v11 = 0;
  }

  return v11;
}

- (void)_setColor:(id)a3 forUnit:(unint64_t)a4
{
  v8 = a3;
  colorsByUnit = self->_colorsByUnit;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  if (v8)
  {
    [(NSMutableDictionary *)colorsByUnit setObject:v8 forKey:v7];
  }

  else
  {
    [(NSMutableDictionary *)colorsByUnit removeObjectForKey:v7];
  }
}

- (id)_colorForUnit:(unint64_t)a3
{
  colorsByUnit = self->_colorsByUnit;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)colorsByUnit objectForKey:v4];

  return v5;
}

@end