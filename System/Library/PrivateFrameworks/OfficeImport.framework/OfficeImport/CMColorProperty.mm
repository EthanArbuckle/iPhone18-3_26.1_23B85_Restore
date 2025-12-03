@interface CMColorProperty
+ (CGColor)copyCGColorFromOADColor:(id)color state:(id)state;
+ (CGColor)copyCGColorFromOADFill:(id)fill state:(id)state;
+ (float)resolveColorValueWithPercentage:(float)percentage foregroundComponent:(float)component backgroundComponent:(float)backgroundComponent;
+ (float)transformedAlphaFromOADColor:(id)color;
+ (id)cssStringFromOADColor:(id)color;
+ (id)cssStringFromOADGradientFill:(id)fill state:(id)state;
+ (id)cssStringFromRed:(float)red green:(float)green blue:(float)blue;
+ (id)cssStringFromTSUColor:(id)color;
+ (id)nsColorFromOADColor:(id)color state:(id)state;
+ (id)nsColorFromOADFill:(id)fill state:(id)state;
+ (id)nsColorFromShading:(id)shading;
+ (id)resolveStyleColorWithPercentage:(float)percentage foregroundColor:(id)color backgroundColor:(id)backgroundColor;
+ (id)resolveStyleColorWithPercentage:(float)percentage shading:(id)shading;
- (BOOL)isEqualTo:(id)to;
- (CMColorProperty)initWithColor:(id)color;
- (id)cssStringForName:(id)name;
@end

@implementation CMColorProperty

+ (CGColor)copyCGColorFromOADColor:(id)color state:(id)state
{
  components[4] = *MEMORY[0x277D85DE8];
  v4 = [self nsColorFromOADColor:color state:state];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  [v4 redComponent];
  components[0] = v6;
  [v4 greenComponent];
  components[1] = v7;
  [v4 blueComponent];
  components[2] = v8;
  [v4 alphaComponent];
  components[3] = v9;
  v10 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);

  return v10;
}

+ (CGColor)copyCGColorFromOADFill:(id)fill state:(id)state
{
  components[4] = *MEMORY[0x277D85DE8];
  v4 = [self nsColorFromOADFill:fill state:state];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  [v4 redComponent];
  components[0] = v6;
  [v4 greenComponent];
  components[1] = v7;
  [v4 blueComponent];
  components[2] = v8;
  [v4 alphaComponent];
  components[3] = v9;
  v10 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);

  return v10;
}

+ (id)cssStringFromOADGradientFill:(id)fill state:(id)state
{
  fillCopy = fill;
  stateCopy = state;
  stops = [fillCopy stops];
  if ([stops count] != 2)
  {
    v19 = 0;
    goto LABEL_32;
  }

  v8 = [stops objectAtIndexedSubscript:0];
  color = [v8 color];

  v10 = [CMColorProperty nsColorFromOADColor:color state:stateCopy];
  v11 = [stops objectAtIndexedSubscript:1];
  color2 = [v11 color];

  v13 = [CMColorProperty nsColorFromOADColor:color2 state:stateCopy];
  shade = [fillCopy shade];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [shade angle];
    v16 = v15 * 3.14159265 / 180.0;
    v17 = v16;
    v18 = @"left top, right top";
    if (v17 >= 0.392699082)
    {
      if (v17 >= 1.17809725)
      {
        if (v17 >= 5.10508806)
        {
          if (v17 < 5.89048623)
          {
            v18 = @"left bottom, right top";
          }
        }

        else
        {
          v18 = @"left bottom, left top";
        }
      }

      else
      {
        v18 = @"left top, right bottom";
      }
    }

    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fillToRect = [shade fillToRect];
    v21 = fillToRect;
    if (fillToRect)
    {
      [fillToRect left];
      if (v22 == 1.0)
      {
        [v21 top];
        if (v23 == 1.0)
        {
          v18 = @"right bottom, left top";
LABEL_26:

LABEL_27:
          v30 = MEMORY[0x277CCACA8];
          [v10 redComponent];
          v32 = v31;
          [v10 greenComponent];
          v34 = v33;
          [v10 blueComponent];
          v36 = v35;
          [v13 redComponent];
          v38 = v37;
          [v13 greenComponent];
          v40 = v39;
          [v13 blueComponent];
          v19 = [v30 stringWithFormat:@":-webkit-gradient(linear, %@, from(#%02x%02x%02x), to(#%02x%02x%02x))", v18, (v32 * 255.0), (v34 * 255.0), (v36 * 255.0), (v38 * 255.0), (v40 * 255.0), (v41 * 255.0)];;
          v42 = 0;
          goto LABEL_30;
        }
      }

      [v21 right];
      if (v24 == 1.0)
      {
        [v21 top];
        if (v25 == 1.0)
        {
          v18 = @"left bottom, right top";
          goto LABEL_26;
        }
      }

      [v21 left];
      if (v26 == 1.0)
      {
        [v21 bottom];
        if (v27 == 1.0)
        {
          v18 = @"right top, left bottom";
          goto LABEL_26;
        }
      }

      [v21 right];
      if (v28 == 1.0)
      {
        [v21 bottom];
        if (v29 == 1.0)
        {
          v18 = @"left top, right bottom";
          goto LABEL_26;
        }
      }
    }
  }

  v19 = 0;
  v42 = 1;
LABEL_30:

  if (v42)
  {
    v43 = 0;
    goto LABEL_33;
  }

LABEL_32:
  v19 = v19;
  v43 = v19;
LABEL_33:

  return v43;
}

+ (id)nsColorFromOADFill:(id)fill state:(id)state
{
  v54 = *MEMORY[0x277D85DE8];
  fillCopy = fill;
  stateCopy = state;
  v38 = fillCopy;
  if (!fillCopy)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    color = [fillCopy color];
    v6 = [CMColorProperty nsColorFromOADColor:color state:stateCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_3:
      v6 = 0;
      goto LABEL_4;
    }

    stops = [fillCopy stops];
    v9 = [stops count];
    v10 = v9;
    if (v9)
    {
      if (v9 == 1)
      {
        v11 = [stops objectAtIndexedSubscript:0];
        color2 = [v11 color];
        v6 = [CMColorProperty nsColorFromOADColor:color2 state:stateCopy];
      }

      else
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        obj = stops;
        v13 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v13)
        {
          v42 = 0;
          v14 = *v49;
          v15 = 0.0;
          v16 = 0.0;
          v17 = 0.0;
          v18 = 0.0;
          v39 = v10;
          v40 = *v49;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v49 != v14)
              {
                objc_enumerationMutation(obj);
              }

              color3 = [*(*(&v48 + 1) + 8 * i) color];
              v21 = [CMColorProperty nsColorFromOADColor:color3 state:stateCopy];
              [v21 redComponent];
              v23 = v22;
              [v21 greenComponent];
              v25 = v24;
              [v21 blueComponent];
              v27 = v26;
              transforms = [color3 transforms];
              v29 = transforms;
              if (transforms)
              {
                v46 = 0u;
                v47 = 0u;
                v44 = 0u;
                v45 = 0u;
                v30 = transforms;
                v31 = [v30 countByEnumeratingWithState:&v44 objects:v52 count:16];
                if (v31)
                {
                  v32 = *v45;
                  while (2)
                  {
                    for (j = 0; j != v31; ++j)
                    {
                      if (*v45 != v32)
                      {
                        objc_enumerationMutation(v30);
                      }

                      v34 = *(*(&v44 + 1) + 8 * j);
                      if ([v34 type] == 6)
                      {
                        [v34 value];
                        v10 = v39;
                        v14 = v40;
                        ++v42;
                        v18 = v18 + v35;
                        goto LABEL_30;
                      }
                    }

                    v31 = [v30 countByEnumeratingWithState:&v44 objects:v52 count:16];
                    if (v31)
                    {
                      continue;
                    }

                    break;
                  }

                  v10 = v39;
                  v14 = v40;
                }

LABEL_30:
              }

              v15 = v23 + v15;
              v16 = v25 + v16;
              v17 = v27 + v17;
            }

            v13 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
          }

          while (v13);
        }

        else
        {
          v42 = 0;
          v15 = 0.0;
          v16 = 0.0;
          v17 = 0.0;
          v18 = 0.0;
        }

        v36 = 1.0;
        if (v42 >= 1)
        {
          v36 = (v18 / v42);
        }

        v6 = [OITSUColor colorWithRed:(v15 / v10) green:(v16 / v10) blue:(v17 / v10) alpha:v36];
      }
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_4:

  return v6;
}

+ (id)nsColorFromOADColor:(id)color state:(id)state
{
  colorCopy = color;
  stateCopy = state;
  colorMap = [stateCopy colorMap];
  colorScheme = [stateCopy colorScheme];
  resources = [stateCopy resources];
  colors = [resources colors];

  v11 = [OADColor tsuColorWithColor:colorCopy colorMap:colorMap colorScheme:colorScheme colorPalette:colors];

  return v11;
}

+ (id)nsColorFromShading:(id)shading
{
  shadingCopy = shading;
  v6 = shadingCopy;
  if (shadingCopy)
  {
    style = [shadingCopy style];
    v8 = 0.0;
    switch(style)
    {
      case 0:
        goto LABEL_47;
      case 1:
        LODWORD(v8) = 1.0;
        goto LABEL_47;
      case 2:
        LODWORD(v8) = 1028443341;
        goto LABEL_47;
      case 3:
        LODWORD(v8) = 1036831949;
        goto LABEL_47;
      case 4:
        LODWORD(v8) = 1045220557;
        goto LABEL_47;
      case 5:
      case 20:
      case 21:
      case 22:
      case 23:
        LODWORD(v8) = 0.25;
        goto LABEL_47;
      case 6:
        LODWORD(v8) = 1050253722;
        goto LABEL_47;
      case 7:
        LODWORD(v8) = 1053609165;
        goto LABEL_47;
      case 8:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 25:
        LODWORD(v8) = 0.5;
        goto LABEL_47;
      case 9:
      case 19:
        LODWORD(v8) = 1058642330;
        goto LABEL_47;
      case 10:
        LODWORD(v8) = 1060320051;
        goto LABEL_47;
      case 11:
        LODWORD(v8) = 0.75;
        goto LABEL_47;
      case 12:
        LODWORD(v8) = 1061997773;
        goto LABEL_47;
      case 13:
        LODWORD(v8) = *"fff?";
        goto LABEL_47;
      case 24:
      case 43:
        LODWORD(v8) = 1051931443;
        goto LABEL_47;
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        goto LABEL_8;
      case 35:
        LODWORD(v8) = 1020054733;
        goto LABEL_47;
      case 36:
        LODWORD(v8) = 1033476506;
        goto LABEL_47;
      case 37:
        LODWORD(v8) = 0.125;
        goto LABEL_47;
      case 38:
        LODWORD(v8) = 1041865114;
        goto LABEL_47;
      case 39:
        LODWORD(v8) = 1043542835;
        goto LABEL_47;
      case 40:
        LODWORD(v8) = 1046898278;
        goto LABEL_47;
      case 41:
        LODWORD(v8) = 1049414861;
        goto LABEL_47;
      case 42:
        LODWORD(v8) = 1051092582;
        goto LABEL_47;
      case 44:
        LODWORD(v8) = 0.375;
        goto LABEL_47;
      case 45:
        LODWORD(v8) = 1054448026;
        goto LABEL_47;
      case 46:
        LODWORD(v8) = 1055286886;
        goto LABEL_47;
      case 47:
        LODWORD(v8) = 1056125747;
        goto LABEL_47;
      case 48:
        LODWORD(v8) = 1057384038;
        goto LABEL_47;
      case 49:
        LODWORD(v8) = 1057803469;
        goto LABEL_47;
      case 50:
        LODWORD(v8) = 1058222899;
        goto LABEL_47;
      case 51:
        LODWORD(v8) = 0.625;
        goto LABEL_47;
      case 52:
        LODWORD(v8) = 1059481190;
        goto LABEL_47;
      case 53:
        LODWORD(v8) = 1059900621;
        goto LABEL_47;
      case 54:
        LODWORD(v8) = 1060739482;
        goto LABEL_47;
      case 55:
        LODWORD(v8) = 1061578342;
        goto LABEL_47;
      case 56:
        LODWORD(v8) = 1062417203;
        goto LABEL_47;
      case 57:
        LODWORD(v8) = 1062836634;
        goto LABEL_47;
      case 58:
        LODWORD(v8) = 0.875;
        goto LABEL_47;
      case 59:
        LODWORD(v8) = 1064094925;
        goto LABEL_47;
      case 60:
        LODWORD(v8) = 1064514355;
        goto LABEL_47;
      case 61:
        LODWORD(v8) = 1064933786;
        goto LABEL_47;
      case 62:
        LODWORD(v8) = 1064849900;
LABEL_47:
        v10 = [self resolveStyleColorWithPercentage:v6 shading:v8];
        goto LABEL_48;
      default:
        if (style == 0xFFFF)
        {
          break;
        }

LABEL_8:
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"CMColorProperty.mm" lineNumber:306 description:@"Bad shading style encountered."];

        break;
    }
  }

  v10 = 0;
LABEL_48:

  return v10;
}

+ (id)cssStringFromRed:(float)red green:(float)green blue:(float)blue
{
  v6 = vdup_n_s32(0x437F0000u);
  v7 = vmul_f32(*&green, v6);
  v8 = blue * 255.0;
  if (v8 > 255.0)
  {
    v8 = 255.0;
  }

  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  v9 = v8;
  v10 = vbsl_s8(vcgt_f32(v7, v6), v6, v7);
  v18 = vcvt_s32_f32(vbic_s8(v10, vcltz_f32(v10)));
  v11 = vshl_u32(v18, 0x1000000008);
  v12 = [MEMORY[0x277CCABB0] numberWithInt:{vorr_s8(v11, vdup_lane_s32(v11, 1)).u32[0] | v9}];
  v13 = +[CMGlobalCache colorPropertyCache];
  v14 = [v13 objectForKey:v12];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@":%c%02x%02x%02x;", 35, v18.u32[1], v18.u32[0], v9];
    [v13 setObject:v16 forKey:v12];
  }

  return v16;
}

+ (id)cssStringFromTSUColor:(id)color
{
  colorCopy = color;
  [colorCopy redComponent];
  v5 = v4;
  [colorCopy greenComponent];
  v7 = v6;
  [colorCopy blueComponent];
  v8 = v5;
  *&v9 = v7;
  *&v11 = v10;
  *&v10 = v8;
  v12 = [CMColorProperty cssStringFromRed:v10 green:v9 blue:v11];

  return v12;
}

+ (id)cssStringFromOADColor:(id)color
{
  colorCopy = color;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = colorCopy;
    [v4 red];
    v6 = v5;
    [v4 green];
    v8 = v7;
    [v4 blue];
    LODWORD(v10) = v9;
    LODWORD(v11) = v6;
    LODWORD(v12) = v8;
    v13 = [CMColorProperty cssStringFromRed:v11 green:v12 blue:v10];
  }

  else
  {
    v13 = @":white;";
  }

  return v13;
}

+ (float)transformedAlphaFromOADColor:(id)color
{
  transforms = [color transforms];
  v4 = transforms;
  v5 = 1.0;
  if (transforms)
  {
    v6 = [transforms count];
    if (v6)
    {
      v7 = 0;
      while (1)
      {
        v8 = [v4 objectAtIndex:v7];
        if ([v8 type] == 6)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_8;
        }
      }

      [v8 value];
      v5 = v9;
    }
  }

LABEL_8:

  return v5;
}

- (CMColorProperty)initWithColor:(id)color
{
  colorCopy = color;
  v10.receiver = self;
  v10.super_class = CMColorProperty;
  v6 = [(CMColorProperty *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->wdValue, color);
    v8 = v7;
  }

  return v7;
}

- (BOOL)isEqualTo:(id)to
{
  wdValue = self->wdValue;
  value = [to value];
  LOBYTE(wdValue) = [(OITSUColor *)wdValue isEqual:value];

  return wdValue;
}

- (id)cssStringForName:(id)name
{
  nameCopy = name;
  cssString = [(CMColorProperty *)self cssString];
  v6 = [nameCopy stringByAppendingString:cssString];

  return v6;
}

+ (id)resolveStyleColorWithPercentage:(float)percentage shading:(id)shading
{
  shadingCopy = shading;
  foreground = [shadingCopy foreground];
  background = [shadingCopy background];
  *&v9 = percentage;
  v10 = [self resolveStyleColorWithPercentage:foreground foregroundColor:background backgroundColor:v9];

  return v10;
}

+ (id)resolveStyleColorWithPercentage:(float)percentage foregroundColor:(id)color backgroundColor:(id)backgroundColor
{
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  if (percentage >= 0.0 && percentage <= 1.0)
  {
    if (colorCopy)
    {
      goto LABEL_6;
    }

LABEL_16:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CMColorProperty.mm" lineNumber:430 description:@"Foreground color is not set."];

    if (backgroundColorCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"CMColorProperty.mm" lineNumber:429 description:@"Percentage out of range."];

  if (!colorCopy)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (backgroundColorCopy)
  {
    goto LABEL_7;
  }

LABEL_17:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"CMColorProperty.mm" lineNumber:431 description:@"Background color is not set."];

LABEL_7:
  [backgroundColorCopy alphaComponent];
  if (v12 == 0.0)
  {
    v13 = [OITSUColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];

    v14 = v13;
  }

  else
  {
    v14 = backgroundColorCopy;
  }

  [colorCopy alphaComponent];
  if (v15 == 0.0)
  {
    v16 = [OITSUColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];

    colorCopy = v16;
  }

  [colorCopy redComponent];
  v18 = v17;
  [v14 redComponent];
  *&v19 = v18;
  *&v21 = v20;
  *&v20 = percentage;
  [self resolveColorValueWithPercentage:v20 foregroundComponent:v19 backgroundComponent:v21];
  LODWORD(v18) = v22;
  [colorCopy greenComponent];
  v24 = v23;
  [v14 greenComponent];
  *&v25 = v24;
  *&v27 = v26;
  *&v26 = percentage;
  [self resolveColorValueWithPercentage:v26 foregroundComponent:v25 backgroundComponent:v27];
  LODWORD(v24) = v28;
  [colorCopy blueComponent];
  v30 = v29;
  [v14 blueComponent];
  *&v31 = v30;
  *&v33 = v32;
  *&v32 = percentage;
  [self resolveColorValueWithPercentage:v32 foregroundComponent:v31 backgroundComponent:v33];
  v35 = [OITSUColor colorWithRed:*&v18 green:*&v24 blue:v34 alpha:1.0];

  return v35;
}

+ (float)resolveColorValueWithPercentage:(float)percentage foregroundComponent:(float)component backgroundComponent:(float)backgroundComponent
{
  if (percentage < 0.0 || percentage > 1.0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CMColorProperty.mm" lineNumber:462 description:@"Percentage out of range."];
  }

  if (component < 0.0 || component > 1.0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"CMColorProperty.mm" lineNumber:464 description:@"Foreground component out of range."];
  }

  if (backgroundComponent < 0.0 || backgroundComponent > 1.0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"CMColorProperty.mm" lineNumber:466 description:@"Background component out of range."];
  }

  return (percentage * component) + ((1.0 - percentage) * backgroundComponent);
}

@end