@interface OADTablePartStyle
+ (id)defaultStyle;
- (id)description;
- (id)shallowCopy;
- (void)applyOverridesFrom:(id)a3;
@end

@implementation OADTablePartStyle

+ (id)defaultStyle
{
  v2 = +[OADTablePartStyle defaultStyle]::defaultStyle;
  if (!+[OADTablePartStyle defaultStyle]::defaultStyle)
  {
    v3 = objc_alloc_init(OADTablePartStyle);
    v4 = +[OADTablePartStyle defaultStyle]::defaultStyle;
    +[OADTablePartStyle defaultStyle]::defaultStyle = v3;

    v5 = +[OADTablePartStyle defaultStyle]::defaultStyle;
    v6 = +[OADTableTextStyle defaultStyle];
    [v5 setTextStyle:v6];

    v7 = +[OADTablePartStyle defaultStyle]::defaultStyle;
    v8 = +[OADTableCellStyle defaultStyle];
    [v7 setCellStyle:v8];

    v2 = +[OADTablePartStyle defaultStyle]::defaultStyle;
  }

  return v2;
}

- (id)shallowCopy
{
  v3 = objc_alloc_init(OADTablePartStyle);
  v4 = [(OADTablePartStyle *)self cellStyle];
  v5 = [v4 shallowCopy];

  [(OADTablePartStyle *)v3 setCellStyle:v5];
  v6 = [(OADTablePartStyle *)self textStyle];
  v7 = [v6 shallowCopy];

  [(OADTablePartStyle *)v3 setTextStyle:v7];
  return v3;
}

- (void)applyOverridesFrom:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(OADTablePartStyle *)self cellStyle];
    v5 = [v8 cellStyle];
    [v4 applyOverridesFrom:v5];

    v6 = [(OADTablePartStyle *)self textStyle];
    v7 = [v8 textStyle];
    [v6 applyOverridesFrom:v7];
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTablePartStyle;
  v2 = [(OADTablePartStyle *)&v4 description];

  return v2;
}

@end