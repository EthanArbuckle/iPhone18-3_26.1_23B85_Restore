@interface OADTableCellStyle
+ (id)defaultStyle;
- (id)description;
- (id)shallowCopy;
- (void)applyOverridesFrom:(id)from;
- (void)setFill:(id)fill;
@end

@implementation OADTableCellStyle

- (void)setFill:(id)fill
{
  fillCopy = fill;
  mFill = self->mFill;
  p_mFill = &self->mFill;
  if (mFill != fillCopy)
  {
    v8 = fillCopy;
    objc_storeStrong(p_mFill, fill);
    fillCopy = v8;
  }
}

+ (id)defaultStyle
{
  v3 = +[OADTableCellStyle defaultStyle]::defaultStyle;
  if (!+[OADTableCellStyle defaultStyle]::defaultStyle)
  {
    v4 = objc_alloc_init(OADTableCellStyle);
    v5 = +[OADTableCellStyle defaultStyle]::defaultStyle;
    +[OADTableCellStyle defaultStyle]::defaultStyle = v4;

    v6 = +[OADTableCellStyle defaultStyle]::defaultStyle;
    v7 = +[OADTableCellBorderStyle defaultStyle];
    [v6 setBorderStyle:v7];

    v8 = +[OADTableCellStyle defaultStyle]::defaultStyle;
    defaultFill = [self defaultFill];
    [v8 setFill:defaultFill];

    v3 = +[OADTableCellStyle defaultStyle]::defaultStyle;
  }

  return v3;
}

- (id)shallowCopy
{
  v3 = objc_alloc_init(OADTableCellStyle);
  fill = [(OADTableCellStyle *)self fill];
  [(OADTableCellStyle *)v3 setFill:fill];

  borderStyle = [(OADTableCellStyle *)self borderStyle];
  shallowCopy = [borderStyle shallowCopy];

  [(OADTableCellStyle *)v3 setBorderStyle:shallowCopy];
  return v3;
}

- (void)applyOverridesFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    v9 = fromCopy;
    fill = [fromCopy fill];

    if (fill)
    {
      fill2 = [v9 fill];
      [(OADTableCellStyle *)self setFill:fill2];
    }

    borderStyle = [(OADTableCellStyle *)self borderStyle];
    borderStyle2 = [v9 borderStyle];
    [borderStyle applyOverridesFrom:borderStyle2];

    fromCopy = v9;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTableCellStyle;
  v2 = [(OADTableCellStyle *)&v4 description];

  return v2;
}

@end