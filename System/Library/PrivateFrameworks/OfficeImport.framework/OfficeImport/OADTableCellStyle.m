@interface OADTableCellStyle
+ (id)defaultStyle;
- (id)description;
- (id)shallowCopy;
- (void)applyOverridesFrom:(id)a3;
- (void)setFill:(id)a3;
@end

@implementation OADTableCellStyle

- (void)setFill:(id)a3
{
  v5 = a3;
  mFill = self->mFill;
  p_mFill = &self->mFill;
  if (mFill != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mFill, a3);
    v5 = v8;
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
    v9 = [a1 defaultFill];
    [v8 setFill:v9];

    v3 = +[OADTableCellStyle defaultStyle]::defaultStyle;
  }

  return v3;
}

- (id)shallowCopy
{
  v3 = objc_alloc_init(OADTableCellStyle);
  v4 = [(OADTableCellStyle *)self fill];
  [(OADTableCellStyle *)v3 setFill:v4];

  v5 = [(OADTableCellStyle *)self borderStyle];
  v6 = [v5 shallowCopy];

  [(OADTableCellStyle *)v3 setBorderStyle:v6];
  return v3;
}

- (void)applyOverridesFrom:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [v4 fill];

    if (v5)
    {
      v6 = [v9 fill];
      [(OADTableCellStyle *)self setFill:v6];
    }

    v7 = [(OADTableCellStyle *)self borderStyle];
    v8 = [v9 borderStyle];
    [v7 applyOverridesFrom:v8];

    v4 = v9;
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