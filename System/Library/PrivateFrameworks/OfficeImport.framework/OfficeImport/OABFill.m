@interface OABFill
+ (id)patternFromBlipId:(unsigned int)a3 blipName:(id)a4 blipDataReference:(EshBlip *)a5 state:(id)a6;
+ (id)readFillFromFillPropertiesManager:(id)a3 state:(id)a4;
+ (void)addStopsFromArray:(const OABGradientStop *)a3 stopCount:(int)a4 inverted:(BOOL)a5 startPos:(float)a6 endPos:(float)a7 toStopArray:(id)a8 fillPropertiesManager:(id)a9;
+ (void)readGradientFill:(id)a3 fromFillPropertiesManager:(id)a4 state:(id)a5;
+ (void)readImageFill:(id)a3 fromFillPropertiesManager:(id)a4 state:(id)a5;
@end

@implementation OABFill

+ (id)readFillFromFillPropertiesManager:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 fillType];
  if (([v6 isFilled] & 1) == 0)
  {
    v13 = +[OADNullFill nullFill];
    goto LABEL_7;
  }

  if (!v8)
  {
    if (v6)
    {
      [v6 fillFgColor];
    }

    else
    {
      v35 = 0;
    }

    v21 = EshFixedPointUtil::toFloat([v6 fillFgAlpha]);
    EshColor::EshColor(&v34, &v35);
    *&v22 = v21;
    v10 = [OABShapeProperties targetColorWithSourceColor:&v34 alpha:v6 colorPropertiesManager:v7 state:v22];
    v9 = objc_alloc_init(OADSolidFill);
    [(OADSolidFill *)v9 setColor:v10];
    goto LABEL_18;
  }

  if (v8 == 7 || v8 == 4)
  {
    v9 = objc_alloc_init(OADGradientFill);
    [a1 readGradientFill:v9 fromFillPropertiesManager:v6 state:v7];
    v10 = objc_alloc_init(OADLinearShade);
    [(OADLinearShade *)v10 setScaled:v8 == 7];
    v11 = EshFixedPointUtil::toFloat([v6 fillAngle]);
    *&v12 = (((270.0 - v11) / 360.0) - floorf((270.0 - v11) / 360.0)) * 360.0;
    [(OADLinearShade *)v10 setAngle:v12];
    [(OADSolidFill *)v9 setShade:v10];
LABEL_18:

    goto LABEL_19;
  }

  if ((v8 - 5) <= 1)
  {
    v9 = objc_alloc_init(OADGradientFill);
    [a1 readGradientFill:v9 fromFillPropertiesManager:v6 state:v7];
    v14 = objc_alloc_init(OADPathShade);
    v10 = v14;
    if (v8 == 6)
    {
      v15 = 1;
    }

    else
    {
      v15 = 3;
    }

    [(OADPathShade *)v14 setType:v15];
    v16 = objc_alloc_init(OADRelativeRect);
    *&v17 = EshFixedPointUtil::toFloat([v6 fillFocusLeft]);
    [(OADRelativeRect *)v16 setLeft:v17];
    *&v18 = EshFixedPointUtil::toFloat([v6 fillFocusTop]);
    [(OADRelativeRect *)v16 setTop:v18];
    *&v19 = 1.0 - EshFixedPointUtil::toFloat([v6 fillFocusRight]);
    [(OADRelativeRect *)v16 setRight:v19];
    *&v20 = 1.0 - EshFixedPointUtil::toFloat([v6 fillFocusBottom]);
    [(OADRelativeRect *)v16 setBottom:v20];
    [(OADLinearShade *)v10 setFillToRect:v16];
    [(OADSolidFill *)v9 setShade:v10];
LABEL_15:

    goto LABEL_18;
  }

  v9 = 0;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v9 = objc_alloc_init(OADImageFill);
      [a1 readImageFill:v9 fromFillPropertiesManager:v6 state:v7];
      v10 = objc_alloc_init(OADStretchTechnique);
      [(OADSolidFill *)v9 setTechnique:v10];
      goto LABEL_18;
    }

    if (v8 != 9)
    {
      goto LABEL_19;
    }

    v13 = objc_alloc_init(OADBackgroundFill);
LABEL_7:
    v9 = v13;
    goto LABEL_19;
  }

  if (v8 == 1)
  {
    v24 = [v6 fillBlipID];
    v10 = [v6 fillBlipName];
    v16 = [a1 patternFromBlipId:v24 blipName:v10 blipDataReference:objc_msgSend(v6 state:{"fillBlipDataReference"), v7}];
    if (v16)
    {
      if (v6)
      {
        [v6 fillFgColor];
      }

      else
      {
        v35 = 0;
      }

      v25 = EshFixedPointUtil::toFloat([v6 fillFgAlpha]);
      EshColor::EshColor(&v33, &v35);
      *&v26 = v25;
      v27 = [OABShapeProperties targetColorWithSourceColor:&v33 alpha:v6 colorPropertiesManager:v7 state:v26];
      if (v6)
      {
        [v6 fillBgColor];
      }

      else
      {
        v32 = 0;
      }

      v28 = EshFixedPointUtil::toFloat([v6 fillBgAlpha]);
      EshColor::EshColor(&v31, &v32);
      *&v29 = v28;
      v30 = [OABShapeProperties targetColorWithSourceColor:&v31 alpha:v6 colorPropertiesManager:v7 state:v29];
      v9 = objc_alloc_init(OADPatternFill);
      [(OADSolidFill *)v9 setFgColor:v27];
      [(OADSolidFill *)v9 setBgColor:v30];
      [(OADSolidFill *)v9 setPattern:v16];
    }

    else
    {
      v9 = +[OADNullFill nullFill];
    }

    goto LABEL_15;
  }

  if (v8 == 2)
  {
    v9 = objc_alloc_init(OADImageFill);
    [a1 readImageFill:v9 fromFillPropertiesManager:v6 state:v7];
    v10 = objc_alloc_init(OADTileTechnique);
    [(OADSolidFill *)v9 setTechnique:v10];
    goto LABEL_18;
  }

LABEL_19:

  return v9;
}

+ (id)patternFromBlipId:(unsigned int)a3 blipName:(id)a4 blipDataReference:(EshBlip *)a5 state:(id)a6
{
  v8 = *&a3;
  v9 = a4;
  v10 = a6;
  v11 = v10;
  v12 = a5;
  if (v8)
  {
    v12 = a5;
    if (!a5)
    {
      v13 = [v10 bstoreContainerHolder];
      if ([v13 childCount] >= v8)
      {
        v14 = [v13 childAt:(v8 - 1)];
        v15 = [v14 eshObject];
        {
          v12 = *(v16 + 4);
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  if (v12 && (*(v12->var0 + 2))(v12) == 61471 && (var4 = v12[2].var2.var4, var4 >= 0xC4) && (v18 = var4 + 60, v18 <= 0x2Fu))
  {
    v19 = +[OABFill patternFromBlipId:blipName:blipDataReference:state:]::kPresetPatternTypeArray[v18];
    v20 = objc_alloc_init(OADPresetPattern);
    [(OADPresetPattern *)v20 setType:v19];
    if (!a5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v20 = 0;
    if (!a5)
    {
      goto LABEL_20;
    }
  }

  v21 = [OABBlip readBlipFromEshBlip:a5];
  if (v21)
  {
    v22 = [[OADBlipRef alloc] initWithIndex:v8 name:v9 blip:v21];
    v23 = objc_alloc_init(OADCustomPattern);
    [(OADCustomPattern *)v23 setBlipRef:v22];

    goto LABEL_23;
  }

LABEL_20:
  if (v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

LABEL_23:

  return v23;
}

+ (void)addStopsFromArray:(const OABGradientStop *)a3 stopCount:(int)a4 inverted:(BOOL)a5 startPos:(float)a6 endPos:(float)a7 toStopArray:(id)a8 fillPropertiesManager:(id)a9
{
  v12 = a5;
  v34 = a8;
  v15 = a9;
  v16 = v15;
  if (a6 < a7)
  {
    v17 = EshFixedPointUtil::toFloat([v15 fillFgAlpha]);
    v18 = EshFixedPointUtil::toFloat([v16 fillBgAlpha]);
    v19 = a4 - 1;
    if (v12)
    {
      v20 = -1;
    }

    else
    {
      v19 = 0;
      v20 = a4;
    }

    v21 = v19 - v20;
    if (v19 != v20)
    {
      v22 = v18;
      v23 = a6;
      v24 = (a7 - a6);
      if (v12)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }

      p_var1 = &a3[v19].var1;
      do
      {
        v27 = *(p_var1 - 1);
        if (v12)
        {
          v28 = 1.0 - *p_var1;
        }

        else
        {
          v28 = *p_var1;
        }

        v29 = (v17 * (1.0 - *p_var1)) + (*p_var1 * v22);
        v30 = v27;
        if (v29 != 1.0)
        {
          v31 = [(OADColorTransform *)[OADValueColorTransform alloc] initWithType:6];
          *&v32 = v29;
          [(OADValueColorTransform *)v31 setValue:v32];
          [v30 addTransform:v31];
        }

        v33 = v23 + v28 * v24;
        *&v33 = v33;
        [OADGradientFillStop addStopWithColor:v30 position:v34 toArray:v33];

        p_var1 += 4 * v25;
        v21 += v25;
      }

      while (v21);
    }
  }
}

+ (void)readGradientFill:(id)a3 fromFillPropertiesManager:(id)a4 state:(id)a5
{
  a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 fillType];
  if (v9 == 7 || v9 == 4)
  {
    vcvtms_s32_f32(EshFixedPointUtil::toFloat([v7 fillAngle]) / 360.0);
  }

  [v7 fillFocus];
  if (v7)
  {
    [v7 fillFgColor];
  }

  else
  {
    v15 = 0;
  }

  EshColor::EshColor(&v14, &v15);
  LODWORD(v10) = 1.0;
  [OABShapeProperties targetColorWithSourceColor:&v14 alpha:v7 colorPropertiesManager:v8 state:v10];
  objc_claimAutoreleasedReturnValue();
  if (v7)
  {
    [v7 fillBgColor];
  }

  else
  {
    v13 = 0;
  }

  EshColor::EshColor(&v12, &v13);
  LODWORD(v11) = 1.0;
  [OABShapeProperties targetColorWithSourceColor:&v12 alpha:v7 colorPropertiesManager:v8 state:v11];
  objc_claimAutoreleasedReturnValue();
  [v7 fillGradientColors];
  operator new[]();
}

+ (void)readImageFill:(id)a3 fromFillPropertiesManager:(id)a4 state:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 fillBlipID];
  v11 = [v8 fillBlipName];
  v12 = [v8 fillBlipDataReference];
  if (v12)
  {
    v13 = [OABBlip readBlipFromEshBlip:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [[OADBlipRef alloc] initWithIndex:v10 name:v11 blip:v13];
  [v7 setBlipRef:v14];
  if (v8)
  {
    [v8 fillFgColor];
  }

  else
  {
    v20 = 0;
  }

  v15 = EshFixedPointUtil::toFloat([v8 fillFgAlpha]);
  EshColor::EshColor(&v19, &v20);
  *&v16 = v15;
  v17 = [OABShapeProperties targetColorWithSourceColor:&v19 alpha:v8 colorPropertiesManager:v9 state:v16];
  v18 = objc_alloc_init(OADForegroundColorEffect);
  [(OADForegroundColorEffect *)v18 setForegroundColor:v17];
  [(OADBlipRef *)v14 addEffect:v18];
}

@end