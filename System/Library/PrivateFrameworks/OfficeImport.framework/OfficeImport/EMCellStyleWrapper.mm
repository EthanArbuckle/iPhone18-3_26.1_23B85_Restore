@interface EMCellStyleWrapper
+ (id)fillColorForPatternFill:(id)fill;
- (BOOL)isEqual:(id)equal;
- (BOOL)isVisible;
- (EMCellStyleWrapper)initWithStyle:(id)style;
- (OITSUColor)fillColor;
@end

@implementation EMCellStyleWrapper

- (EMCellStyleWrapper)initWithStyle:(id)style
{
  styleCopy = style;
  v8.receiver = self;
  v8.super_class = EMCellStyleWrapper;
  v5 = [(EMCellStyleWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(EMCellStyleWrapper *)v5 setEdStyle:styleCopy];
  }

  return v6;
}

+ (id)fillColorForPatternFill:(id)fill
{
  fillCopy = fill;
  type = [fillCopy type];
  if (type)
  {
    if (type == 1)
    {
      [fillCopy foreColor];
    }

    else
    {
      [fillCopy backColor];
    }
    v6 = ;
    v7 = +[OITSUColor whiteColor];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v5 = 0;
    }

    else
    {
      v5 = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (OITSUColor)fillColor
{
  fillColor = self->_fillColor;
  if (fillColor)
  {
    v3 = fillColor;
  }

  else if ([(EDStyle *)self->_edStyle isFillOverridden])
  {
    fill = [(EDStyle *)self->_edStyle fill];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [objc_opt_class() fillColorForPatternFill:fill];
      v7 = self->_fillColor;
      self->_fillColor = v6;

      v3 = self->_fillColor;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isVisible
{
  fillColor = [(EMCellStyleWrapper *)self fillColor];
  v3 = fillColor != 0;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    edStyle = [equalCopy edStyle];
    v6 = [edStyle isEqual:self->_edStyle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end