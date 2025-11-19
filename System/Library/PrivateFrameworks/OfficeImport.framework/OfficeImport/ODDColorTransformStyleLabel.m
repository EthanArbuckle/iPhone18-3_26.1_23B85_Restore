@interface ODDColorTransformStyleLabel
- (void)applyToShapeStyle:(id)a3 index:(unsigned int)a4 count:(unsigned int)a5 state:(id)a6;
@end

@implementation ODDColorTransformStyleLabel

- (void)applyToShapeStyle:(id)a3 index:(unsigned int)a4 count:(unsigned int)a5 state:(id)a6
{
  v24 = a3;
  v10 = a6;
  v11 = [(ODDColorTransformStyleLabel *)self fillColors];
  v12 = a5;
  v13 = [v11 colorAtIndex:a4 count:a5 state:v10];

  if (v13)
  {
    v14 = [v24 fillReference];
    [v14 setColor:v13];
  }

  v15 = [(ODDColorTransformStyleLabel *)self lineColors];
  v16 = [v15 colorAtIndex:a4 count:v12 state:v10];

  if (v16)
  {
    v17 = [v24 lineReference];
    [v17 setColor:v16];
  }

  v18 = [(ODDColorTransformStyleLabel *)self effectColors];
  v19 = [v18 colorAtIndex:a4 count:v12 state:v10];

  if (v19)
  {
    v20 = [v24 effectReference];
    [v20 setColor:v19];
  }

  v21 = [(ODDColorTransformStyleLabel *)self textFillColors];
  v22 = [v21 colorAtIndex:a4 count:v12 state:v10];

  if (v22)
  {
    v23 = [v24 fontReference];
    [v23 setColor:v22];
  }
}

@end