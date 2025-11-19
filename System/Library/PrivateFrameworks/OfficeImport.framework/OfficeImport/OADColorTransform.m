@interface OADColorTransform
+ (float)alphaByApplyingTransforms:(id)a3 toAlpha:(float)a4;
+ (float)applyAlphaTransform:(id)a3 toAlpha:(float)a4;
+ (id)applyExpTransformWithValue:(float)a3 toColor:(id)a4;
+ (id)applyHSLTransform:(id)a3 toColor:(id)a4;
+ (id)applyRGBTransform:(id)a3 toColor:(id)a4 skipGamma:(BOOL)a5;
+ (id)colorByApplyingTransforms:(id)a3 toColor:(id)a4;
- (BOOL)isEqual:(id)a3;
- (OADColorTransform)initWithType:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation OADColorTransform

- (OADColorTransform)initWithType:(int)a3
{
  v5.receiver = self;
  v5.super_class = OADColorTransform;
  result = [(OADColorTransform *)&v5 init];
  if (result)
  {
    result->mType = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  mType = self->mType;

  return [v4 initWithType:mType];
}

+ (float)alphaByApplyingTransforms:(id)a3 toAlpha:(float)a4
{
  v6 = a3;
  v7 = [v6 count];
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndex:v8];
      if ([v9 type] - 6 < 3)
      {
        *&v10 = a4;
        [a1 applyAlphaTransform:v9 toAlpha:v10];
        a4 = v11;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  return a4;
}

+ (id)colorByApplyingTransforms:(id)a3 toColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 red];
  if (v8 == 0.0 && ([v7 blue], v9 == 0.0))
  {
    [v7 green];
    v11 = v10 == 0.0;
  }

  else
  {
    v11 = 0;
  }

  for (i = 0; ; i = v13 + 1)
  {
    v13 = i;
    if ([v6 count] <= i)
    {
      break;
    }

    v14 = [v6 objectAtIndex:i];
    v15 = [v14 type];
    if (v15 > 17)
    {
      if (v15 < 27)
      {
        v17 = [a1 applyRGBTransform:v14 toColor:v7 skipGamma:v11];
        goto LABEL_12;
      }

      switch(v15)
      {
        case 27:
          LODWORD(v16) = 1055439406;
          v17 = [a1 applyExpTransformWithValue:v7 toColor:v16];
          goto LABEL_12;
        case 28:
          LODWORD(v16) = 1074580685;
          v17 = [a1 applyExpTransformWithValue:v7 toColor:v16];
          goto LABEL_12;
        case 29:
          [v14 value];
          v17 = [a1 applyExpTransformWithValue:v7 toColor:?];
          goto LABEL_12;
      }
    }

    else
    {
      if (v15 > 8)
      {
        v17 = [a1 applyHSLTransform:v14 toColor:v7];
LABEL_12:
        v18 = v17;

        v7 = v18;
        goto LABEL_13;
      }

      if (v15 > 3)
      {
        if ((v15 - 4) < 2)
        {
          v17 = [a1 applyRGBTransform:v14 toColor:v7 skipGamma:0];
          goto LABEL_12;
        }
      }

      else
      {
        switch(v15)
        {
          case 1:
            [v7 red];
            v54 = v27;
            [v7 green];
            v53 = v28;
            [v7 blue];
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
            v38 = [a1 applyExpTransformWithValue:v7 toColor:v16];

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
            v7 = [a1 applyExpTransformWithValue:v47 toColor:v48];

            break;
          case 3:
            [v7 red];
            v20 = v19;
            [v7 green];
            v22 = v21;
            [v7 blue];
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

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mType = self->mType;
    v6 = mType == [v4 type];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (float)applyAlphaTransform:(id)a3 toAlpha:(float)a4
{
  v5 = a3;
  [v5 value];
  v7 = v6;
  v8 = [v5 type];
  if (v8 != 6)
  {
    v9 = v7 * a4;
    if (v8 != 8)
    {
      v9 = a4;
    }

    if (v8 == 7)
    {
      v7 = v7 + a4;
    }

    else
    {
      v7 = v9;
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

+ (id)applyRGBTransform:(id)a3 toColor:(id)a4 skipGamma:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    LODWORD(v10) = 1074580685;
    v11 = [a1 applyExpTransformWithValue:v9 toColor:v10];

    v9 = v11;
  }

  [v9 red];
  v13 = v12;
  [v9 green];
  v15 = v14;
  [v9 blue];
  v17 = v16;
  [v8 value];
  v19 = v18;
  v20 = [v8 type];
  if (v20 <= 20)
  {
    if (v20 <= 17)
    {
      if (v20 == 4)
      {
        v13 = (1.0 - v19) + (v13 * v19);
        v15 = (1.0 - v19) + (v15 * v19);
        v17 = (1.0 - v19) + (v17 * v19);
      }

      else if (v20 == 5)
      {
        v17 = v17 * v19;
        v15 = v15 * v19;
        v13 = v13 * v19;
      }
    }

    else if (v20 == 18)
    {
      v13 = v19;
    }

    else
    {
      v22 = v13 * v19;
      if (v20 != 20)
      {
        v22 = v13;
      }

      if (v20 == 19)
      {
        v13 = v13 + v19;
      }

      else
      {
        v13 = v22;
      }
    }
  }

  else if (v20 > 23)
  {
    if (v20 == 24)
    {
      v17 = v19;
    }

    else
    {
      v23 = v17 * v19;
      if (v20 != 26)
      {
        v23 = v17;
      }

      if (v20 == 25)
      {
        v17 = v17 + v19;
      }

      else
      {
        v17 = v23;
      }
    }
  }

  else if (v20 == 21)
  {
    v15 = v19;
  }

  else
  {
    v21 = v15 * v19;
    if (v20 != 23)
    {
      v21 = v15;
    }

    if (v20 == 22)
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

  if (!a5)
  {
    LODWORD(v31) = 1055439406;
    v32 = [a1 applyExpTransformWithValue:v30 toColor:v31];

    v30 = v32;
  }

  return v30;
}

+ (id)applyHSLTransform:(id)a3 toColor:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 red];
  v8 = v7;
  v33 = v7;
  [v6 green];
  v10 = v9;
  v32 = v9;
  [v6 blue];
  v31 = v11;
  v30 = 0.0;
  v29 = 0;
  *&v12 = convertRgbToHsl(v8, v10, v11, &v30, &v29 + 1, &v29);
  [v5 value];
  v14 = v13;
  v15 = [v5 type];
  if (v15 <= 12)
  {
    if (v15 > 10)
    {
      if (v15 != 11)
      {
        *(&v29 + 1) = v14;
        goto LABEL_23;
      }

      v17 = v14 * v30;
    }

    else
    {
      if (v15 == 9)
      {
        v30 = v14;
        goto LABEL_23;
      }

      if (v15 != 10)
      {
        goto LABEL_23;
      }

      v17 = v14 + v30;
    }

    v30 = v17;
  }

  else if (v15 <= 14)
  {
    if (v15 == 13)
    {
      v18 = v14 + *(&v29 + 1);
    }

    else
    {
      v18 = v14 * *(&v29 + 1);
    }

    *(&v29 + 1) = v18;
  }

  else if (v15 == 15)
  {
    *&v29 = v14;
  }

  else
  {
    if (v15 == 16)
    {
      v16 = v14 + *&v29;
    }

    else
    {
      if (v15 != 17)
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

+ (id)applyExpTransformWithValue:(float)a3 toColor:(id)a4
{
  v5 = a4;
  [v5 red];
  v7 = powf(v6, a3);
  [v5 green];
  v9 = v8;
  [v5 blue];
  v11 = v10;
  v12 = powf(v9, a3);
  LODWORD(v13) = powf(v11, a3);
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