@interface EMCellStyleWrapper
+ (id)fillColorForPatternFill:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isVisible;
- (EMCellStyleWrapper)initWithStyle:(id)a3;
- (OITSUColor)fillColor;
@end

@implementation EMCellStyleWrapper

- (EMCellStyleWrapper)initWithStyle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EMCellStyleWrapper;
  v5 = [(EMCellStyleWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(EMCellStyleWrapper *)v5 setEdStyle:v4];
  }

  return v6;
}

+ (id)fillColorForPatternFill:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  if (v4)
  {
    if (v4 == 1)
    {
      [v3 foreColor];
    }

    else
    {
      [v3 backColor];
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
    v5 = [(EDStyle *)self->_edStyle fill];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [objc_opt_class() fillColorForPatternFill:v5];
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
  v2 = [(EMCellStyleWrapper *)self fillColor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 edStyle];
    v6 = [v5 isEqual:self->_edStyle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end