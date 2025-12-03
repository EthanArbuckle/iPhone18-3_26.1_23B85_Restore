@interface ODDFillColorList
- (id)colorAtIndex:(unint64_t)index count:(unint64_t)count state:(id)state;
- (id)cycleColorAtIndex:(unint64_t)index;
- (id)repeatColorAtIndex:(unint64_t)index;
- (id)spanColorAtIndex:(unint64_t)index count:(unint64_t)count state:(id)state;
- (void)getComponentsForIndex:(unint64_t)index hue:(float *)hue saturation:(float *)saturation brightness:(float *)brightness state:(id)state;
@end

@implementation ODDFillColorList

- (id)colorAtIndex:(unint64_t)index count:(unint64_t)count state:(id)state
{
  stateCopy = state;
  if (![(NSArray *)self->mColors count])
  {
    goto LABEL_6;
  }

  mMethod = self->mMethod;
  if (!mMethod)
  {
    v10 = [(ODDFillColorList *)self cycleColorAtIndex:index];
    goto LABEL_9;
  }

  if (mMethod == 1)
  {
    v10 = [(ODDFillColorList *)self repeatColorAtIndex:index];
    goto LABEL_9;
  }

  if (mMethod != 2)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_10;
  }

  v10 = [(ODDFillColorList *)self spanColorAtIndex:index count:count state:stateCopy];
LABEL_9:
  v11 = v10;
LABEL_10:

  return v11;
}

- (id)cycleColorAtIndex:(unint64_t)index
{
  v5 = [(NSArray *)self->mColors count];
  if (v5 == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = index % (2 * v5 - 2);
    if (v7 >= v5)
    {
      v6 = ~v7 + 2 * v5;
    }

    else
    {
      v6 = index % (2 * v5 - 2);
    }
  }

  v8 = [(NSArray *)self->mColors objectAtIndex:v6];

  return v8;
}

- (id)repeatColorAtIndex:(unint64_t)index
{
  v4 = index % [(NSArray *)self->mColors count];
  mColors = self->mColors;

  return [(NSArray *)mColors objectAtIndex:v4];
}

- (id)spanColorAtIndex:(unint64_t)index count:(unint64_t)count state:(id)state
{
  stateCopy = state;
  v9 = [(NSArray *)self->mColors count];
  if (index >= count || count < 2 || v9 == 1)
  {
    v13 = [(NSArray *)self->mColors objectAtIndex:0];
    goto LABEL_7;
  }

  v10 = (index / (count - 1)) * (v9 - 1);
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
  [(ODDFillColorList *)self getComponentsForIndex:v11 hue:&v22 + 4 saturation:&v22 brightness:&v21 state:stateCopy];
  v20 = 0.0;
  v19 = 0;
  [(ODDFillColorList *)self getComponentsForIndex:v11 + 1 hue:&v20 saturation:&v19 + 4 brightness:&v19 state:stateCopy];
  v12 = v11;
  v15 = [OITSUColor colorWithCalibratedHue:(((v10 - v12) * v20) + (*(&v22 + 1) * (1.0 - (v10 - v12)))) saturation:(((v10 - v12) * *(&v19 + 1)) + (*&v22 * (1.0 - (v10 - v12)))) brightness:(((v10 - v12) * *&v19) + (v21 * (1.0 - (v10 - v12)))) alpha:1.0];
  v14 = [OADRgbColor rgbColorWithTSUColor:v15];
  v16 = [(NSArray *)self->mColors objectAtIndex:v11];
  transforms = [v16 transforms];
  [v14 setTransforms:transforms];

LABEL_9:

  return v14;
}

- (void)getComponentsForIndex:(unint64_t)index hue:(float *)hue saturation:(float *)saturation brightness:(float *)brightness state:(id)state
{
  stateCopy = state;
  v12 = [(NSArray *)self->mColors objectAtIndex:index];
  drawingTheme = [stateCopy drawingTheme];
  colorMap = [drawingTheme colorMap];
  colorScheme = [drawingTheme colorScheme];
  colorPalette = [drawingTheme colorPalette];
  v17 = [OADColor rgbColorWithColor:v12 colorMap:colorMap colorScheme:colorScheme colorPalette:colorPalette];

  [v17 red];
  v19 = v18;
  [v17 green];
  v21 = v20;
  [v17 blue];
  convertRgbToHsl(v19, v21, v22, hue, saturation, brightness);
  *hue = *hue / 360.0;
}

@end