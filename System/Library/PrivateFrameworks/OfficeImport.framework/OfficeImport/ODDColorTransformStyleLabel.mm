@interface ODDColorTransformStyleLabel
- (void)applyToShapeStyle:(id)style index:(unsigned int)index count:(unsigned int)count state:(id)state;
@end

@implementation ODDColorTransformStyleLabel

- (void)applyToShapeStyle:(id)style index:(unsigned int)index count:(unsigned int)count state:(id)state
{
  styleCopy = style;
  stateCopy = state;
  fillColors = [(ODDColorTransformStyleLabel *)self fillColors];
  countCopy = count;
  v13 = [fillColors colorAtIndex:index count:count state:stateCopy];

  if (v13)
  {
    fillReference = [styleCopy fillReference];
    [fillReference setColor:v13];
  }

  lineColors = [(ODDColorTransformStyleLabel *)self lineColors];
  v16 = [lineColors colorAtIndex:index count:countCopy state:stateCopy];

  if (v16)
  {
    lineReference = [styleCopy lineReference];
    [lineReference setColor:v16];
  }

  effectColors = [(ODDColorTransformStyleLabel *)self effectColors];
  v19 = [effectColors colorAtIndex:index count:countCopy state:stateCopy];

  if (v19)
  {
    effectReference = [styleCopy effectReference];
    [effectReference setColor:v19];
  }

  textFillColors = [(ODDColorTransformStyleLabel *)self textFillColors];
  v22 = [textFillColors colorAtIndex:index count:countCopy state:stateCopy];

  if (v22)
  {
    fontReference = [styleCopy fontReference];
    [fontReference setColor:v22];
  }
}

@end