@interface OAVFill
+ (id)readBlipRefFromManager:(id)manager state:(id)state;
+ (id)readFromManager:(id)manager state:(id)state;
+ (id)targetBgColorWithManager:(id)manager;
+ (id)targetFgColorWithManager:(id)manager;
+ (void)addStopsFromArray:(const OAVGradientStop *)array stopCount:(int)count inverted:(BOOL)inverted startPos:(float)pos endPos:(float)endPos toGradientFill:(id)fill manager:(id)manager;
+ (void)readGradientFill:(id)fill fromManager:(id)manager;
+ (void)readImageFill:(id)fill fromManager:(id)manager state:(id)state;
@end

@implementation OAVFill

+ (id)readFromManager:(id)manager state:(id)state
{
  managerCopy = manager;
  stateCopy = state;
  fillType = [managerCopy fillType];
  if ([managerCopy isFilled])
  {
    if ([fillType isEqualToString:@"solid"])
    {
      v9 = objc_alloc_init(OADSolidFill);
      v10 = [self targetFgColorWithManager:managerCopy];
      [(OADSolidFill *)v9 setColor:v10];
LABEL_15:

      goto LABEL_17;
    }

    if ([fillType isEqualToString:@"gradient"])
    {
      v9 = objc_alloc_init(OADGradientFill);
      [self readGradientFill:v9 fromManager:managerCopy];
      v10 = objc_alloc_init(OADLinearShade);
      [(OADLinearShade *)v10 setScaled:0];
      [managerCopy fillAngle];
      *&v12 = (((270.0 - v11) / 360.0) - floorf((270.0 - v11) / 360.0)) * 360.0;
      [(OADLinearShade *)v10 setAngle:v12];
      [(OADSolidFill *)v9 setShade:v10];
      goto LABEL_15;
    }

    if ([fillType isEqualToString:@"gradientRadial"])
    {
      v9 = objc_alloc_init(OADGradientFill);
      [self readGradientFill:v9 fromManager:managerCopy];
      v10 = objc_alloc_init(OADPathShade);
      [(OADLinearShade *)v10 setType:1];
      [(OADSolidFill *)v9 setShade:v10];
      goto LABEL_15;
    }

    if ([fillType isEqualToString:@"pattern"])
    {
      v10 = [self readBlipRefFromManager:managerCopy state:stateCopy];
      v13 = [self targetFgColorWithManager:managerCopy];
      v14 = [self targetBgColorWithManager:managerCopy];
      v9 = objc_alloc_init(OADPatternFill);
      [(OADSolidFill *)v9 setFgColor:v13];
      [(OADSolidFill *)v9 setBgColor:v14];
      v15 = objc_alloc_init(OADCustomPattern);
      [(OADCustomPattern *)v15 setBlipRef:v10];
      [(OADSolidFill *)v9 setPattern:v15];

      goto LABEL_15;
    }

    if ([fillType isEqualToString:@"tile"])
    {
      v9 = objc_alloc_init(OADImageFill);
      v16 = [self readBlipRefFromManager:managerCopy state:stateCopy];
      [(OADSolidFill *)v9 setBlipRef:v16];

      v10 = objc_alloc_init(OADTileTechnique);
      [(OADSolidFill *)v9 setTechnique:v10];
      goto LABEL_15;
    }

    if ([fillType isEqualToString:@"frame"])
    {
      imageFillId = [managerCopy imageFillId];

      if (imageFillId)
      {
        v9 = objc_alloc_init(OADImageFill);
        v18 = [self readBlipRefFromManager:managerCopy state:stateCopy];
        [(OADSolidFill *)v9 setBlipRef:v18];

        v10 = objc_alloc_init(OADStretchTechnique);
        [(OADSolidFill *)v9 setTechnique:v10];
        goto LABEL_15;
      }
    }
  }

  v9 = +[OADNullFill nullFill];
LABEL_17:

  return v9;
}

+ (id)targetFgColorWithManager:(id)manager
{
  managerCopy = manager;
  fillFgColor = [managerCopy fillFgColor];
  [managerCopy fillFgAlpha];
  v5 = [OAVColor readColorFromAttribute:fillFgColor alpha:managerCopy manager:?];

  return v5;
}

+ (id)targetBgColorWithManager:(id)manager
{
  managerCopy = manager;
  fillBgColor = [managerCopy fillBgColor];
  [managerCopy fillBgAlpha];
  v5 = [OAVColor readColorFromAttribute:fillBgColor alpha:managerCopy manager:?];

  return v5;
}

+ (void)addStopsFromArray:(const OAVGradientStop *)array stopCount:(int)count inverted:(BOOL)inverted startPos:(float)pos endPos:(float)endPos toGradientFill:(id)fill manager:(id)manager
{
  invertedCopy = inverted;
  fillCopy = fill;
  managerCopy = manager;
  v16 = managerCopy;
  if (pos < endPos)
  {
    v36 = managerCopy;
    [managerCopy fillFgAlpha];
    v18 = v17;
    [v16 fillBgAlpha];
    v20 = v19;
    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:count];
    v22 = count - 1;
    if (invertedCopy)
    {
      countCopy = -1;
    }

    else
    {
      v22 = 0;
      countCopy = count;
    }

    v24 = v22 - countCopy;
    if (v22 != countCopy)
    {
      posCopy = pos;
      v26 = (endPos - pos);
      if (invertedCopy)
      {
        v27 = -1;
      }

      else
      {
        v27 = 1;
      }

      p_var1 = &array[v22].var1;
      do
      {
        v29 = *(p_var1 - 1);
        if (invertedCopy)
        {
          v30 = 1.0 - *p_var1;
        }

        else
        {
          v30 = *p_var1;
        }

        v31 = (v18 * (1.0 - *p_var1)) + (*p_var1 * v20);
        v32 = v29;
        if (v31 != 1.0)
        {
          v33 = [(OADColorTransform *)[OADValueColorTransform alloc] initWithType:6];
          *&v34 = v31;
          [(OADValueColorTransform *)v33 setValue:v34];
          [v32 addTransform:v33];
        }

        v35 = posCopy + v30 * v26;
        *&v35 = v35;
        [OADGradientFillStop addStopWithColor:v32 position:v21 toArray:v35];

        p_var1 += 4 * v27;
        v24 += v27;
      }

      while (v24);
    }

    [fillCopy setStops:v21];

    v16 = v36;
  }
}

+ (void)readGradientFill:(id)fill fromManager:(id)manager
{
  fill;
  managerCopy = manager;
  [managerCopy fillType];
  if ([objc_claimAutoreleasedReturnValue() isEqualToString:@"gradient"])
  {
    [managerCopy fillAngle];
  }

  [managerCopy fillFocus];
  fillFgColor = [managerCopy fillFgColor];
  LODWORD(v7) = 1.0;
  [OAVColor readColorFromAttribute:fillFgColor alpha:managerCopy manager:v7];
  objc_claimAutoreleasedReturnValue();
  fillBgColor = [managerCopy fillBgColor];
  LODWORD(v9) = 1.0;
  [OAVColor readColorFromAttribute:fillBgColor alpha:managerCopy manager:v9];
  objc_claimAutoreleasedReturnValue();
  [managerCopy fillGradientColors];
  [objc_claimAutoreleasedReturnValue() componentsSeparatedByString:@";"];
  [objc_claimAutoreleasedReturnValue() count];
  operator new[]();
}

+ (void)readImageFill:(id)fill fromManager:(id)manager state:(id)state
{
  fillCopy = fill;
  managerCopy = manager;
  stateCopy = state;
  imageFillId = [managerCopy imageFillId];
  packagePart = [managerCopy packagePart];
  v12 = [packagePart relationshipForIdentifier:imageFillId];

  targetLocation = [v12 targetLocation];
  v14 = [stateCopy blipRefForURL:targetLocation];

  [fillCopy setBlipRef:v14];
  v15 = objc_alloc_init(OADForegroundColorEffect);
  v16 = [self targetFgColorWithManager:managerCopy];
  [(OADForegroundColorEffect *)v15 setForegroundColor:v16];
}

+ (id)readBlipRefFromManager:(id)manager state:(id)state
{
  managerCopy = manager;
  stateCopy = state;
  imageFillId = [managerCopy imageFillId];
  if (imageFillId)
  {
    packagePart = [managerCopy packagePart];
    v10 = [packagePart relationshipForIdentifier:imageFillId];

    targetLocation = [v10 targetLocation];
    v12 = [stateCopy blipRefForURL:targetLocation];

    v13 = objc_alloc_init(OADForegroundColorEffect);
    v14 = [self targetFgColorWithManager:managerCopy];
    [(OADForegroundColorEffect *)v13 setForegroundColor:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end