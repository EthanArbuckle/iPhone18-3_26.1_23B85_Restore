@interface OADTableTextStyle
+ (id)defaultColor;
+ (id)defaultFontReference;
+ (id)defaultStyle;
- (OADTableTextStyle)init;
- (id)description;
- (id)shallowCopy;
- (void)applyOverridesFrom:(id)a3;
@end

@implementation OADTableTextStyle

- (OADTableTextStyle)init
{
  v3.receiver = self;
  v3.super_class = OADTableTextStyle;
  result = [(OADTableTextStyle *)&v3 init];
  if (result)
  {
    *&result->mBold = 0x200000002;
  }

  return result;
}

+ (id)defaultColor
{
  v2 = +[OADTableTextStyle defaultColor]::defaultColor;
  if (!+[OADTableTextStyle defaultColor]::defaultColor)
  {
    v3 = [[OADSchemeColor alloc] initWithSchemeColorIndex:1];
    v4 = +[OADTableTextStyle defaultColor]::defaultColor;
    +[OADTableTextStyle defaultColor]::defaultColor = v3;

    v2 = +[OADTableTextStyle defaultColor]::defaultColor;
  }

  return v2;
}

+ (id)defaultFontReference
{
  v3 = +[OADTableTextStyle defaultFontReference]::defaultFontReference;
  if (!+[OADTableTextStyle defaultFontReference]::defaultFontReference)
  {
    v4 = objc_alloc_init(OADFontReference);
    v5 = +[OADTableTextStyle defaultFontReference]::defaultFontReference;
    +[OADTableTextStyle defaultFontReference]::defaultFontReference = v4;

    [+[OADTableTextStyle defaultFontReference]::defaultFontReference setIndex:1];
    v6 = +[OADTableTextStyle defaultFontReference]::defaultFontReference;
    v7 = [a1 defaultColor];
    [v6 setColor:v7];

    v3 = +[OADTableTextStyle defaultFontReference]::defaultFontReference;
  }

  return v3;
}

+ (id)defaultStyle
{
  v3 = +[OADTableTextStyle defaultStyle]::defaultStyle;
  if (!+[OADTableTextStyle defaultStyle]::defaultStyle)
  {
    v4 = objc_alloc_init(OADTableTextStyle);
    v5 = +[OADTableTextStyle defaultStyle]::defaultStyle;
    +[OADTableTextStyle defaultStyle]::defaultStyle = v4;

    v6 = +[OADTableTextStyle defaultStyle]::defaultStyle;
    v7 = [a1 defaultFontReference];
    [v6 setFontReference:v7];

    v8 = +[OADTableTextStyle defaultStyle]::defaultStyle;
    v9 = [a1 defaultColor];
    [v8 setColor:v9];

    [+[OADTableTextStyle defaultStyle]::defaultStyle setBold:{objc_msgSend(a1, "defaultBold")}];
    [+[OADTableTextStyle defaultStyle]::defaultStyle setItalic:{objc_msgSend(a1, "defaultItalic")}];
    v3 = +[OADTableTextStyle defaultStyle]::defaultStyle;
  }

  return v3;
}

- (id)shallowCopy
{
  v3 = objc_alloc_init(OADTableTextStyle);
  v4 = [(OADTableTextStyle *)self fontReference];
  [(OADTableTextStyle *)v3 setFontReference:v4];

  v5 = [(OADTableTextStyle *)self color];
  [(OADTableTextStyle *)v3 setColor:v5];

  [(OADTableTextStyle *)v3 setBold:[(OADTableTextStyle *)self bold]];
  [(OADTableTextStyle *)v3 setItalic:[(OADTableTextStyle *)self italic]];
  return v3;
}

- (void)applyOverridesFrom:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [v8 fontReference];

    if (v4)
    {
      v5 = [v8 fontReference];
      [(OADTableTextStyle *)self setFontReference:v5];
    }

    v6 = [v8 color];

    if (v6)
    {
      v7 = [v8 color];
      [(OADTableTextStyle *)self setColor:v7];
    }

    if ([v8 bold] != 2)
    {
      -[OADTableTextStyle setBold:](self, "setBold:", [v8 bold]);
    }

    if ([v8 italic] != 2)
    {
      -[OADTableTextStyle setItalic:](self, "setItalic:", [v8 italic]);
    }
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTableTextStyle;
  v2 = [(OADTableTextStyle *)&v4 description];

  return v2;
}

@end