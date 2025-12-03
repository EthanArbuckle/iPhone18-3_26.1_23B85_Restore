@interface OADColorTransform
+ (float)alphaByApplyingTransforms:(id)transforms toAlpha:(float)alpha;
+ (float)applyAlphaTransform:(id)transform toAlpha:(float)alpha;
+ (id)applyExpTransformWithValue:(float)value toColor:(id)color;
+ (id)applyHSLTransform:(id)transform toColor:(id)color;
+ (id)applyRGBTransform:(id)transform toColor:(id)color skipGamma:(BOOL)gamma;
+ (id)colorByApplyingTransforms:(id)transforms toColor:(id)color;
- (BOOL)isEqual:(id)equal;
- (OADColorTransform)initWithType:(int)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation OADColorTransform

- (OADColorTransform)initWithType:(int)type
{
  v5.receiver = self;
  v5.super_class = OADColorTransform;
  result = [(OADColorTransform *)&v5 init];
  if (result)
  {
    result->mType = type;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  mType = self->mType;

  return [v4 initWithType:mType];
}

+ (float)alphaByApplyingTransforms:(id)transforms toAlpha:(float)alpha
{
  transformsCopy = transforms;
  v7 = [transformsCopy count];
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [transformsCopy objectAtIndex:v8];
      if ([v9 type] - 6 < 3)
      {
        *&v10 = alpha;
        [self applyAlphaTransform:v9 toAlpha:v10];
        alpha = v11;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  return alpha;
}

+ (id)colorByApplyingTransforms:(id)transforms toColor:(id)color
{
  transformsCopy = transforms;
  colorCopy = color;
  [colorCopy red];
  if (v8 == 0.0 && ([colorCopy blue], v9 == 0.0))
  {
    [colorCopy green];
    v11 = v10 == 0.0;
  }

  else
  {
    v11 = 0;
  }

  for (i = 0; ; i = v13 + 1)
  {
    v13 = i;
    if ([transformsCopy count] <= i)
    {
      break;
    }

    v14 = [transformsCopy objectAtIndex:i];
    type = [v14 type];
    if (type > 17)
    {
      if (type < 27)
      {
        v17 = [self applyRGBTransform:v14 toColor:colorCopy skipGamma:v11];
        goto LABEL_12;
      }

      switch(type)
      {
        case 27:
          LODWORD(v16) = 1055439406;
          v17 = [self applyExpTransformWithValue:colorCopy toColor:v16];
          goto LABEL_12;
        case 28:
          LODWORD(v16) = 1074580685;
          v17 = [self applyExpTransformWithValue:colorCopy toColor:v16];
          goto LABEL_12;
        case 29:
          [v14 value];
          v17 = [self applyExpTransformWithValue:colorCopy toColor:?];
          goto LABEL_12;
      }
    }

    else
    {
      if (type > 8)
      {
        v17 = [self applyHSLTransform:v14 toColor:colorCopy];
LABEL_12:
        v18 = v17;

        colorCopy = v18;
        goto LABEL_13;
      }

      if (type > 3)
      {
        if ((type - 4) < 2)
        {
          v17 = [self applyRGBTransform:v14 toColor:colorCopy skipGamma:0];
          goto LABEL_12;
        }
      }

      else
      {
        switch(type)
        {
          case 1:
            [colorCopy red];
            v54 = v27;
            [colorCopy green];
            v53 = v28;
            [colorCopy blue];
            v52 = v29;
            v51 = 0.0;
            v50 = 0;
            convertRgbToHsl(v54, v53, v29, &v51, &v50 + 1, &v50);
            v30 = (((v51 + 180.0) / 360.0) - floorf((v51 + 180.0) / 360.0)) * 360.0;
            v31 = *(&v50 + 1);
            if (*(&v50 + 1) < 0.0)
            {
              v31 = 0.0;
            }

            v32 = fmin(v31, 1.0);
            *(&v50 + 1) = v32;
            v51 = v30;
            v33 = *&v50;
            if (*&v50 < 0.0)
            {
              v33 = 0.0;
            }

            v34 = fmin(v33, 1.0);
            *&v50 = v34;
            convertHslToRgb(v30, v32, v34, &v54, &v53, &v52);
            *&v36 = v53;
            *&v35 = v54;
            *&v37 = v52;
            v17 = [OADRgbColor rgbColorWithRed:v35 green:v36 blue:v37];
            goto LABEL_12;
          case 2:
            LODWORD(v16) = 1074580685;
            v38 = [self applyExpTransformWithValue:colorCopy toColor:v16];

            [v38 red];
            v40 = v39;
            [v38 green];
            v42 = v41;
            [v38 blue];
            *&v43 = 1.0 - v42;
            *&v45 = 1.0 - v44;
            *&v46 = 1.0 - v40;
            v47 = [OADRgbColor rgbColorWithRed:v46 green:v43 blue:v45];

            LODWORD(v48) = 1055439406;
            colorCopy = [self applyExpTransformWithValue:v47 toColor:v48];

            break;
          case 3:
            [colorCopy red];
            v20 = v19;
            [colorCopy green];
            v22 = v21;
            [colorCopy blue];
            v23 = v22 * 0.59;
            v24 = v23 + v20 * 0.3;
            v26 = v24 + v25 * 0.11;
            *&v26 = v26;
            LODWORD(v24) = LODWORD(v26);
            LODWORD(v23) = LODWORD(v26);
            v17 = [OADRgbColor rgbColorWithRed:v26 green:v24 blue:v23];
            goto LABEL_12;
        }
      }
    }

LABEL_13:
  }

  return colorCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mType = self->mType;
    v6 = mType == [equalCopy type];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (float)applyAlphaTransform:(id)transform toAlpha:(float)alpha
{
  transformCopy = transform;
  [transformCopy value];
  v7 = v6;
  type = [transformCopy type];
  if (type != 6)
  {
    alphaCopy = v7 * alpha;
    if (type != 8)
    {
      alphaCopy = alpha;
    }

    if (type == 7)
    {
      v7 = v7 + alpha;
    }

    else
    {
      v7 = alphaCopy;
    }
  }

  v10 = v7;
  if (v7 < 0.0)
  {
    v10 = 0.0;
  }

  v11 = fmin(v10, 1.0);

  return v11;
}

+ (id)applyRGBTransform:(id)transform toColor:(id)color skipGamma:(BOOL)gamma
{
  transformCopy = transform;
  colorCopy = color;
  if (!gamma)
  {
    LODWORD(v10) = 1074580685;
    v11 = [self applyExpTransformWithValue:colorCopy toColor:v10];

    colorCopy = v11;
  }

  [colorCopy red];
  v13 = v12;
  [colorCopy green];
  v15 = v14;
  [colorCopy blue];
  v17 = v16;
  [transformCopy value];
  v19 = v18;
  type = [transformCopy type];
  if (type <= 20)
  {
    if (type <= 17)
    {
      if (type == 4)
      {
        v13 = (1.0 - v19) + (v13 * v19);
        v15 = (1.0 - v19) + (v15 * v19);
        v17 = (1.0 - v19) + (v17 * v19);
      }

      else if (type == 5)
      {
        v17 = v17 * v19;
        v15 = v15 * v19;
        v13 = v13 * v19;
      }
    }

    else if (type == 18)
    {
      v13 = v19;
    }

    else
    {
      v22 = v13 * v19;
      if (type != 20)
      {
        v22 = v13;
      }

      if (type == 19)
      {
        v13 = v13 + v19;
      }

      else
      {
        v13 = v22;
      }
    }
  }

  else if (type > 23)
  {
    if (type == 24)
    {
      v17 = v19;
    }

    else
    {
      v23 = v17 * v19;
      if (type != 26)
      {
        v23 = v17;
      }

      if (type == 25)
      {
        v17 = v17 + v19;
      }

      else
      {
        v17 = v23;
      }
    }
  }

  else if (type == 21)
  {
    v15 = v19;
  }

  else
  {
    v21 = v15 * v19;
    if (type != 23)
    {
      v21 = v15;
    }

    if (type == 22)
    {
      v15 = v15 + v19;
    }

    else
    {
      v15 = v21;
    }
  }

  v24 = v13;
  v25 = 0.0;
  if (v13 < 0.0)
  {
    v24 = 0.0;
  }

  v26 = fmin(v24, 1.0);
  *&v26 = v26;
  v27 = v15;
  if (v15 < 0.0)
  {
    v27 = 0.0;
  }

  v28 = fmin(v27, 1.0);
  *&v28 = v28;
  if (v17 >= 0.0)
  {
    v25 = v17;
  }

  v29 = fmin(v25, 1.0);
  *&v29 = v29;
  v30 = [OADRgbColor rgbColorWithRed:v26 green:v28 blue:v29];

  if (!gamma)
  {
    LODWORD(v31) = 1055439406;
    v32 = [self applyExpTransformWithValue:v30 toColor:v31];

    v30 = v32;
  }

  return v30;
}

+ (id)applyHSLTransform:(id)transform toColor:(id)color
{
  transformCopy = transform;
  colorCopy = color;
  [colorCopy red];
  v8 = v7;
  v33 = v7;
  [colorCopy green];
  v10 = v9;
  v32 = v9;
  [colorCopy blue];
  v31 = v11;
  v30 = 0.0;
  v29 = 0;
  *&v12 = convertRgbToHsl(v8, v10, v11, &v30, &v29 + 1, &v29);
  [transformCopy value];
  v14 = v13;
  type = [transformCopy type];
  if (type <= 12)
  {
    if (type > 10)
    {
      if (type != 11)
      {
        *(&v29 + 1) = v14;
        goto LABEL_23;
      }

      v17 = v14 * v30;
    }

    else
    {
      if (type == 9)
      {
        v30 = v14;
        goto LABEL_23;
      }

      if (type != 10)
      {
        goto LABEL_23;
      }

      v17 = v14 + v30;
    }

    v30 = v17;
  }

  else if (type <= 14)
  {
    if (type == 13)
    {
      v18 = v14 + *(&v29 + 1);
    }

    else
    {
      v18 = v14 * *(&v29 + 1);
    }

    *(&v29 + 1) = v18;
  }

  else if (type == 15)
  {
    *&v29 = v14;
  }

  else
  {
    if (type == 16)
    {
      v16 = v14 + *&v29;
    }

    else
    {
      if (type != 17)
      {
        goto LABEL_23;
      }

      v16 = v14 * *&v29;
    }

    *&v29 = v16;
  }

LABEL_23:
  v19 = ((v30 / 360.0) - floorf(v30 / 360.0)) * 360.0;
  v20 = *(&v29 + 1);
  v21 = 0.0;
  if (*(&v29 + 1) < 0.0)
  {
    v20 = 0.0;
  }

  v22 = fmin(v20, 1.0);
  *(&v29 + 1) = v22;
  v30 = v19;
  if (*&v29 >= 0.0)
  {
    v21 = *&v29;
  }

  v23 = fmin(v21, 1.0);
  *&v29 = v23;
  convertHslToRgb(v19, v22, v23, &v33, &v32, &v31);
  *&v25 = v32;
  *&v24 = v33;
  *&v26 = v31;
  v27 = [OADRgbColor rgbColorWithRed:v24 green:v25 blue:v26];

  return v27;
}

+ (id)applyExpTransformWithValue:(float)value toColor:(id)color
{
  colorCopy = color;
  [colorCopy red];
  v7 = powf(v6, value);
  [colorCopy green];
  v9 = v8;
  [colorCopy blue];
  v11 = v10;
  v12 = powf(v9, value);
  LODWORD(v13) = powf(v11, value);
  *&v14 = v7;
  *&v15 = v12;
  v16 = [OADRgbColor rgbColorWithRed:v14 green:v15 blue:v13];

  return v16;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADColorTransform;
  v2 = [(OADColorTransform *)&v4 description];

  return v2;
}

@end