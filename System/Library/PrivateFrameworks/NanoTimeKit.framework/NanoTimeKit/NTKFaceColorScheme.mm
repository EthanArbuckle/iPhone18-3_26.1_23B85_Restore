@interface NTKFaceColorScheme
+ (id)colorSchemeForDevice:(id)device withFaceColorPalette:(id)palette foregroundColor:(id)color units:(unint64_t)units alternateHighlight:(BOOL)highlight;
+ (id)interpolationForDevice:(id)device fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette fraction:(double)fraction units:(unint64_t)units brightenUnits:(unint64_t)brightenUnits overrideColor:(id)color alternateHighlight:(BOOL)self0;
+ (id)interpolationFrom:(id)from to:(id)to fraction:(double)fraction brightenUnits:(unint64_t)units;
- (BOOL)isEqual:(id)equal;
- (id)_colorForUnit:(unint64_t)unit;
- (id)initForDevice:(id)device;
- (unint64_t)units;
- (void)_setColor:(id)color forUnit:(unint64_t)unit;
@end

@implementation NTKFaceColorScheme

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = NTKFaceColorScheme;
  v6 = [(NTKFaceColorScheme *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    colorsByUnit = v7->_colorsByUnit;
    v7->_colorsByUnit = v8;
  }

  return v7;
}

+ (id)colorSchemeForDevice:(id)device withFaceColorPalette:(id)palette foregroundColor:(id)color units:(unint64_t)units alternateHighlight:(BOOL)highlight
{
  deviceCopy = device;
  paletteCopy = palette;
  colorCopy = color;
  if (!colorCopy)
  {
    if ([paletteCopy isMulticolor])
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [paletteCopy primaryColor];
    }
    colorCopy = ;
  }

  if ([paletteCopy isWhite])
  {
    isMulticolor = [paletteCopy isMulticolor];
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v16 = [colorCopy isEqual:whiteColor];

    isMulticolor = [paletteCopy isMulticolor];
    if ((v16 & 1) == 0)
    {
      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      v17 = 0;
      goto LABEL_11;
    }
  }

  v17 = 1;
  whiteColor2 = NTKSecondaryForegroundGrayColor();
LABEL_11:
  aBlock = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __105__NTKFaceColorScheme_colorSchemeForDevice_withFaceColorPalette_foregroundColor_units_alternateHighlight___block_invoke;
  v32 = &unk_278781980;
  highlightCopy = highlight;
  v28 = whiteColor2;
  v33 = v28;
  v19 = colorCopy;
  v34 = v19;
  v20 = paletteCopy;
  v35 = v20;
  v38 = v17;
  v21 = deviceCopy;
  v36 = v21;
  v39 = isMulticolor;
  v22 = _Block_copy(&aBlock);
  v23 = [[NTKFaceColorScheme alloc] initForDevice:v21];
  v24 = 1;
  do
  {
    if ((v24 & units) != 0)
    {
      v25 = v22[2](v22, v24);
      [v23 _setColor:v25 forUnit:{v24, v28, aBlock, v30, v31, v32, v33, v34, v35}];
    }

    v26 = v24 >= 0x201;
    v24 *= 2;
  }

  while (!v26);
  [v23 setMulticolorAlpha:isMulticolor];
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

+ (id)interpolationFrom:(id)from to:(id)to fraction:(double)fraction brightenUnits:(unint64_t)units
{
  fromCopy = from;
  toCopy = to;
  v12 = [self alloc];
  device = [fromCopy device];
  v14 = [v12 initForDevice:device];

  v15 = MEMORY[0x277CBEB98];
  faceColors = [fromCopy faceColors];
  v17 = [v15 setWithArray:faceColors];

  faceColors2 = [toCopy faceColors];
  v35 = v17;
  v19 = [v17 setByAddingObjectsFromArray:faceColors2];

  v34 = v19;
  allObjects = [v19 allObjects];
  [v14 setFaceColors:allObjects];

  if ([fromCopy containsOverrideFaceColor])
  {
    containsOverrideFaceColor = 1;
  }

  else
  {
    containsOverrideFaceColor = [toCopy containsOverrideFaceColor];
  }

  [v14 setContainsOverrideFaceColor:containsOverrideFaceColor];
  [fromCopy multicolorAlpha];
  [toCopy multicolorAlpha];
  CLKInterpolateBetweenFloatsClipped();
  [v14 setMulticolorAlpha:?];
  v22 = fraction + -0.5;
  if (fraction + -0.5 < 0.0)
  {
    v22 = -(fraction + -0.5);
  }

  v23 = (0.5 - v22) * 0.8;
  v24 = 1;
  do
  {
    v25 = [fromCopy _colorForUnit:v24];
    v26 = [toCopy _colorForUnit:v24];
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

    if ((v24 & units) != 0)
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

+ (id)interpolationForDevice:(id)device fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette fraction:(double)fraction units:(unint64_t)units brightenUnits:(unint64_t)brightenUnits overrideColor:(id)color alternateHighlight:(BOOL)self0
{
  colorPaletteCopy = colorPalette;
  colorCopy = color;
  paletteCopy = palette;
  deviceCopy = device;
  LODWORD(palette) = [paletteCopy isMulticolor];
  isMulticolor = [colorPaletteCopy isMulticolor];
  if (palette)
  {
    v20 = colorCopy;
  }

  else
  {
    v20 = 0;
  }

  v21 = [NTKFaceColorScheme colorSchemeForDevice:deviceCopy withFaceColorPalette:paletteCopy foregroundColor:v20 units:units alternateHighlight:highlight];

  if (isMulticolor)
  {
    v22 = colorCopy;
  }

  else
  {
    v22 = 0;
  }

  v23 = [NTKFaceColorScheme colorSchemeForDevice:deviceCopy withFaceColorPalette:colorPaletteCopy foregroundColor:v22 units:units alternateHighlight:highlight];

  v24 = [NTKFaceColorScheme interpolationFrom:v21 to:v23 fraction:brightenUnits brightenUnits:fraction];

  return v24;
}

- (unint64_t)units
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allKeys = [(NSMutableDictionary *)self->_colorsByUnit allKeys];
  v3 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) unsignedIntegerValue];
      }

      v4 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
LABEL_9:
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      units = [(NTKFaceColorScheme *)equalCopy units];
      if (units == [(NTKFaceColorScheme *)self units])
      {
        v6 = 1;
        while (1)
        {
          if (([(NTKFaceColorScheme *)self units]& v6) != 0)
          {
            v7 = [(NTKFaceColorScheme *)self _colorForUnit:v6];
            v8 = [(NTKFaceColorScheme *)equalCopy _colorForUnit:v6];
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

- (void)_setColor:(id)color forUnit:(unint64_t)unit
{
  colorCopy = color;
  colorsByUnit = self->_colorsByUnit;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unit];
  if (colorCopy)
  {
    [(NSMutableDictionary *)colorsByUnit setObject:colorCopy forKey:v7];
  }

  else
  {
    [(NSMutableDictionary *)colorsByUnit removeObjectForKey:v7];
  }
}

- (id)_colorForUnit:(unint64_t)unit
{
  colorsByUnit = self->_colorsByUnit;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unit];
  v5 = [(NSMutableDictionary *)colorsByUnit objectForKey:v4];

  return v5;
}

@end