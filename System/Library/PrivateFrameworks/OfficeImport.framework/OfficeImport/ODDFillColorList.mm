@interface ODDFillColorList
- (id)colorAtIndex:(unint64_t)a3 count:(unint64_t)a4 state:(id)a5;
- (id)cycleColorAtIndex:(unint64_t)a3;
- (id)repeatColorAtIndex:(unint64_t)a3;
- (id)spanColorAtIndex:(unint64_t)a3 count:(unint64_t)a4 state:(id)a5;
- (void)getComponentsForIndex:(unint64_t)a3 hue:(float *)a4 saturation:(float *)a5 brightness:(float *)a6 state:(id)a7;
@end

@implementation ODDFillColorList

- (id)colorAtIndex:(unint64_t)a3 count:(unint64_t)a4 state:(id)a5
{
  v8 = a5;
  if (![(NSArray *)self->mColors count])
  {
    goto LABEL_6;
  }

  mMethod = self->mMethod;
  if (!mMethod)
  {
    v10 = [(ODDFillColorList *)self cycleColorAtIndex:a3];
    goto LABEL_9;
  }

  if (mMethod == 1)
  {
    v10 = [(ODDFillColorList *)self repeatColorAtIndex:a3];
    goto LABEL_9;
  }

  if (mMethod != 2)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_10;
  }

  v10 = [(ODDFillColorList *)self spanColorAtIndex:a3 count:a4 state:v8];
LABEL_9:
  v11 = v10;
LABEL_10:

  return v11;
}

- (id)cycleColorAtIndex:(unint64_t)a3
{
  v5 = [(NSArray *)self->mColors count];
  if (v5 == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = a3 % (2 * v5 - 2);
    if (v7 >= v5)
    {
      v6 = ~v7 + 2 * v5;
    }

    else
    {
      v6 = a3 % (2 * v5 - 2);
    }
  }

  v8 = [(NSArray *)self->mColors objectAtIndex:v6];

  return v8;
}

- (id)repeatColorAtIndex:(unint64_t)a3
{
  v4 = a3 % [(NSArray *)self->mColors count];
  mColors = self->mColors;

  return [(NSArray *)mColors objectAtIndex:v4];
}

- (id)spanColorAtIndex:(unint64_t)a3 count:(unint64_t)a4 state:(id)a5
{
  v8 = a5;
  v9 = [(NSArray *)self->mColors count];
  if (a3 >= a4 || a4 < 2 || v9 == 1)
  {
    v13 = [(NSArray *)self->mColors objectAtIndex:0];
    goto LABEL_7;
  }

  v10 = (a3 / (a4 - 1)) * (v9 - 1);
  v11 = vcvtms_u32_f32(v10);
  if (TCFloatEqual(v10, v11))
  {
    v13 = [(NSArray *)self->mColors objectAtIndex:v11];
LABEL_7:
    v14 = v13;
    goto LABEL_9;
  }

  v22 = 0;
  v21 = 0.0;
  [(ODDFillColorList *)self getComponentsForIndex:v11 hue:&v22 + 4 saturation:&v22 brightness:&v21 state:v8];
  v20 = 0.0;
  v19 = 0;
  [(ODDFillColorList *)self getComponentsForIndex:v11 + 1 hue:&v20 saturation:&v19 + 4 brightness:&v19 state:v8];
  v12 = v11;
  v15 = [OITSUColor colorWithCalibratedHue:(((v10 - v12) * v20) + (*(&v22 + 1) * (1.0 - (v10 - v12)))) saturation:(((v10 - v12) * *(&v19 + 1)) + (*&v22 * (1.0 - (v10 - v12)))) brightness:(((v10 - v12) * *&v19) + (v21 * (1.0 - (v10 - v12)))) alpha:1.0];
  v14 = [OADRgbColor rgbColorWithTSUColor:v15];
  v16 = [(NSArray *)self->mColors objectAtIndex:v11];
  v17 = [v16 transforms];
  [v14 setTransforms:v17];

LABEL_9:

  return v14;
}

- (void)getComponentsForIndex:(unint64_t)a3 hue:(float *)a4 saturation:(float *)a5 brightness:(float *)a6 state:(id)a7
{
  v23 = a7;
  v12 = [(NSArray *)self->mColors objectAtIndex:a3];
  v13 = [v23 drawingTheme];
  v14 = [v13 colorMap];
  v15 = [v13 colorScheme];
  v16 = [v13 colorPalette];
  v17 = [OADColor rgbColorWithColor:v12 colorMap:v14 colorScheme:v15 colorPalette:v16];

  [v17 red];
  v19 = v18;
  [v17 green];
  v21 = v20;
  [v17 blue];
  convertRgbToHsl(v19, v21, v22, a4, a5, a6);
  *a4 = *a4 / 360.0;
}

@end