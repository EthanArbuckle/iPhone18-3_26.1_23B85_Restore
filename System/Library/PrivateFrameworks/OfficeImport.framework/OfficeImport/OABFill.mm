@interface OABFill
+ (id)patternFromBlipId:(unsigned int)id blipName:(id)name blipDataReference:(EshBlip *)reference state:(id)state;
+ (id)readFillFromFillPropertiesManager:(id)manager state:(id)state;
+ (void)addStopsFromArray:(const OABGradientStop *)array stopCount:(int)count inverted:(BOOL)inverted startPos:(float)pos endPos:(float)endPos toStopArray:(id)stopArray fillPropertiesManager:(id)manager;
+ (void)readGradientFill:(id)fill fromFillPropertiesManager:(id)manager state:(id)state;
+ (void)readImageFill:(id)fill fromFillPropertiesManager:(id)manager state:(id)state;
@end

@implementation OABFill

+ (id)readFillFromFillPropertiesManager:(id)manager state:(id)state
{
  managerCopy = manager;
  stateCopy = state;
  fillType = [managerCopy fillType];
  if (([managerCopy isFilled] & 1) == 0)
  {
    v13 = +[OADNullFill nullFill];
    goto LABEL_7;
  }

  if (!fillType)
  {
    if (managerCopy)
    {
      [managerCopy fillFgColor];
    }

    else
    {
      v35 = 0;
    }

    v21 = EshFixedPointUtil::toFloat([managerCopy fillFgAlpha]);
    EshColor::EshColor(&v34, &v35);
    *&v22 = v21;
    fillBlipName = [OABShapeProperties targetColorWithSourceColor:&v34 alpha:managerCopy colorPropertiesManager:stateCopy state:v22];
    v9 = objc_alloc_init(OADSolidFill);
    [(OADSolidFill *)v9 setColor:fillBlipName];
    goto LABEL_18;
  }

  if (fillType == 7 || fillType == 4)
  {
    v9 = objc_alloc_init(OADGradientFill);
    [self readGradientFill:v9 fromFillPropertiesManager:managerCopy state:stateCopy];
    fillBlipName = objc_alloc_init(OADLinearShade);
    [(OADLinearShade *)fillBlipName setScaled:fillType == 7];
    v11 = EshFixedPointUtil::toFloat([managerCopy fillAngle]);
    *&v12 = (((270.0 - v11) / 360.0) - floorf((270.0 - v11) / 360.0)) * 360.0;
    [(OADLinearShade *)fillBlipName setAngle:v12];
    [(OADSolidFill *)v9 setShade:fillBlipName];
LABEL_18:

    goto LABEL_19;
  }

  if ((fillType - 5) <= 1)
  {
    v9 = objc_alloc_init(OADGradientFill);
    [self readGradientFill:v9 fromFillPropertiesManager:managerCopy state:stateCopy];
    v14 = objc_alloc_init(OADPathShade);
    fillBlipName = v14;
    if (fillType == 6)
    {
      v15 = 1;
    }

    else
    {
      v15 = 3;
    }

    [(OADPathShade *)v14 setType:v15];
    v16 = objc_alloc_init(OADRelativeRect);
    *&v17 = EshFixedPointUtil::toFloat([managerCopy fillFocusLeft]);
    [(OADRelativeRect *)v16 setLeft:v17];
    *&v18 = EshFixedPointUtil::toFloat([managerCopy fillFocusTop]);
    [(OADRelativeRect *)v16 setTop:v18];
    *&v19 = 1.0 - EshFixedPointUtil::toFloat([managerCopy fillFocusRight]);
    [(OADRelativeRect *)v16 setRight:v19];
    *&v20 = 1.0 - EshFixedPointUtil::toFloat([managerCopy fillFocusBottom]);
    [(OADRelativeRect *)v16 setBottom:v20];
    [(OADLinearShade *)fillBlipName setFillToRect:v16];
    [(OADSolidFill *)v9 setShade:fillBlipName];
LABEL_15:

    goto LABEL_18;
  }

  v9 = 0;
  if (fillType > 2)
  {
    if (fillType == 3)
    {
      v9 = objc_alloc_init(OADImageFill);
      [self readImageFill:v9 fromFillPropertiesManager:managerCopy state:stateCopy];
      fillBlipName = objc_alloc_init(OADStretchTechnique);
      [(OADSolidFill *)v9 setTechnique:fillBlipName];
      goto LABEL_18;
    }

    if (fillType != 9)
    {
      goto LABEL_19;
    }

    v13 = objc_alloc_init(OADBackgroundFill);
LABEL_7:
    v9 = v13;
    goto LABEL_19;
  }

  if (fillType == 1)
  {
    fillBlipID = [managerCopy fillBlipID];
    fillBlipName = [managerCopy fillBlipName];
    v16 = [self patternFromBlipId:fillBlipID blipName:fillBlipName blipDataReference:objc_msgSend(managerCopy state:{"fillBlipDataReference"), stateCopy}];
    if (v16)
    {
      if (managerCopy)
      {
        [managerCopy fillFgColor];
      }

      else
      {
        v35 = 0;
      }

      v25 = EshFixedPointUtil::toFloat([managerCopy fillFgAlpha]);
      EshColor::EshColor(&v33, &v35);
      *&v26 = v25;
      v27 = [OABShapeProperties targetColorWithSourceColor:&v33 alpha:managerCopy colorPropertiesManager:stateCopy state:v26];
      if (managerCopy)
      {
        [managerCopy fillBgColor];
      }

      else
      {
        v32 = 0;
      }

      v28 = EshFixedPointUtil::toFloat([managerCopy fillBgAlpha]);
      EshColor::EshColor(&v31, &v32);
      *&v29 = v28;
      v30 = [OABShapeProperties targetColorWithSourceColor:&v31 alpha:managerCopy colorPropertiesManager:stateCopy state:v29];
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

  if (fillType == 2)
  {
    v9 = objc_alloc_init(OADImageFill);
    [self readImageFill:v9 fromFillPropertiesManager:managerCopy state:stateCopy];
    fillBlipName = objc_alloc_init(OADTileTechnique);
    [(OADSolidFill *)v9 setTechnique:fillBlipName];
    goto LABEL_18;
  }

LABEL_19:

  return v9;
}

+ (id)patternFromBlipId:(unsigned int)id blipName:(id)name blipDataReference:(EshBlip *)reference state:(id)state
{
  v8 = *&id;
  nameCopy = name;
  stateCopy = state;
  v11 = stateCopy;
  referenceCopy2 = reference;
  if (v8)
  {
    referenceCopy2 = reference;
    if (!reference)
    {
      bstoreContainerHolder = [stateCopy bstoreContainerHolder];
      if ([bstoreContainerHolder childCount] >= v8)
      {
        v14 = [bstoreContainerHolder childAt:(v8 - 1)];
        eshObject = [v14 eshObject];
        {
          referenceCopy2 = *(v16 + 4);
        }

        else
        {
          referenceCopy2 = 0;
        }
      }

      else
      {
        referenceCopy2 = 0;
      }
    }
  }

  if (referenceCopy2 && (*(referenceCopy2->var0 + 2))(referenceCopy2) == 61471 && (var4 = referenceCopy2[2].var2.var4, var4 >= 0xC4) && (v18 = var4 + 60, v18 <= 0x2Fu))
  {
    v19 = +[OABFill patternFromBlipId:blipName:blipDataReference:state:]::kPresetPatternTypeArray[v18];
    v20 = objc_alloc_init(OADPresetPattern);
    [(OADPresetPattern *)v20 setType:v19];
    if (!reference)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v20 = 0;
    if (!reference)
    {
      goto LABEL_20;
    }
  }

  v21 = [OABBlip readBlipFromEshBlip:reference];
  if (v21)
  {
    v22 = [[OADBlipRef alloc] initWithIndex:v8 name:nameCopy blip:v21];
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

+ (void)addStopsFromArray:(const OABGradientStop *)array stopCount:(int)count inverted:(BOOL)inverted startPos:(float)pos endPos:(float)endPos toStopArray:(id)stopArray fillPropertiesManager:(id)manager
{
  invertedCopy = inverted;
  stopArrayCopy = stopArray;
  managerCopy = manager;
  v16 = managerCopy;
  if (pos < endPos)
  {
    v17 = EshFixedPointUtil::toFloat([managerCopy fillFgAlpha]);
    v18 = EshFixedPointUtil::toFloat([v16 fillBgAlpha]);
    v19 = count - 1;
    if (invertedCopy)
    {
      countCopy = -1;
    }

    else
    {
      v19 = 0;
      countCopy = count;
    }

    v21 = v19 - countCopy;
    if (v19 != countCopy)
    {
      v22 = v18;
      posCopy = pos;
      v24 = (endPos - pos);
      if (invertedCopy)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }

      p_var1 = &array[v19].var1;
      do
      {
        v27 = *(p_var1 - 1);
        if (invertedCopy)
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

        v33 = posCopy + v28 * v24;
        *&v33 = v33;
        [OADGradientFillStop addStopWithColor:v30 position:stopArrayCopy toArray:v33];

        p_var1 += 4 * v25;
        v21 += v25;
      }

      while (v21);
    }
  }
}

+ (void)readGradientFill:(id)fill fromFillPropertiesManager:(id)manager state:(id)state
{
  fill;
  managerCopy = manager;
  stateCopy = state;
  fillType = [managerCopy fillType];
  if (fillType == 7 || fillType == 4)
  {
    vcvtms_s32_f32(EshFixedPointUtil::toFloat([managerCopy fillAngle]) / 360.0);
  }

  [managerCopy fillFocus];
  if (managerCopy)
  {
    [managerCopy fillFgColor];
  }

  else
  {
    v15 = 0;
  }

  EshColor::EshColor(&v14, &v15);
  LODWORD(v10) = 1.0;
  [OABShapeProperties targetColorWithSourceColor:&v14 alpha:managerCopy colorPropertiesManager:stateCopy state:v10];
  objc_claimAutoreleasedReturnValue();
  if (managerCopy)
  {
    [managerCopy fillBgColor];
  }

  else
  {
    v13 = 0;
  }

  EshColor::EshColor(&v12, &v13);
  LODWORD(v11) = 1.0;
  [OABShapeProperties targetColorWithSourceColor:&v12 alpha:managerCopy colorPropertiesManager:stateCopy state:v11];
  objc_claimAutoreleasedReturnValue();
  [managerCopy fillGradientColors];
  operator new[]();
}

+ (void)readImageFill:(id)fill fromFillPropertiesManager:(id)manager state:(id)state
{
  fillCopy = fill;
  managerCopy = manager;
  stateCopy = state;
  fillBlipID = [managerCopy fillBlipID];
  fillBlipName = [managerCopy fillBlipName];
  fillBlipDataReference = [managerCopy fillBlipDataReference];
  if (fillBlipDataReference)
  {
    v13 = [OABBlip readBlipFromEshBlip:fillBlipDataReference];
  }

  else
  {
    v13 = 0;
  }

  v14 = [[OADBlipRef alloc] initWithIndex:fillBlipID name:fillBlipName blip:v13];
  [fillCopy setBlipRef:v14];
  if (managerCopy)
  {
    [managerCopy fillFgColor];
  }

  else
  {
    v20 = 0;
  }

  v15 = EshFixedPointUtil::toFloat([managerCopy fillFgAlpha]);
  EshColor::EshColor(&v19, &v20);
  *&v16 = v15;
  v17 = [OABShapeProperties targetColorWithSourceColor:&v19 alpha:managerCopy colorPropertiesManager:stateCopy state:v16];
  v18 = objc_alloc_init(OADForegroundColorEffect);
  [(OADForegroundColorEffect *)v18 setForegroundColor:v17];
  [(OADBlipRef *)v14 addEffect:v18];
}

@end