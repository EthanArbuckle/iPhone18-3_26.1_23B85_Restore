@interface OADTablePartStyle
+ (id)defaultStyle;
- (id)description;
- (id)shallowCopy;
- (void)applyOverridesFrom:(id)from;
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
  cellStyle = [(OADTablePartStyle *)self cellStyle];
  shallowCopy = [cellStyle shallowCopy];

  [(OADTablePartStyle *)v3 setCellStyle:shallowCopy];
  textStyle = [(OADTablePartStyle *)self textStyle];
  shallowCopy2 = [textStyle shallowCopy];

  [(OADTablePartStyle *)v3 setTextStyle:shallowCopy2];
  return v3;
}

- (void)applyOverridesFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    cellStyle = [(OADTablePartStyle *)self cellStyle];
    cellStyle2 = [fromCopy cellStyle];
    [cellStyle applyOverridesFrom:cellStyle2];

    textStyle = [(OADTablePartStyle *)self textStyle];
    textStyle2 = [fromCopy textStyle];
    [textStyle applyOverridesFrom:textStyle2];
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