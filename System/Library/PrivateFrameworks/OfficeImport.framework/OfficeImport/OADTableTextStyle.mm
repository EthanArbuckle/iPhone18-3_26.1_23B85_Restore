@interface OADTableTextStyle
+ (id)defaultColor;
+ (id)defaultFontReference;
+ (id)defaultStyle;
- (OADTableTextStyle)init;
- (id)description;
- (id)shallowCopy;
- (void)applyOverridesFrom:(id)from;
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
    defaultColor = [self defaultColor];
    [v6 setColor:defaultColor];

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
    defaultFontReference = [self defaultFontReference];
    [v6 setFontReference:defaultFontReference];

    v8 = +[OADTableTextStyle defaultStyle]::defaultStyle;
    defaultColor = [self defaultColor];
    [v8 setColor:defaultColor];

    [+[OADTableTextStyle defaultStyle]::defaultStyle setBold:{objc_msgSend(self, "defaultBold")}];
    [+[OADTableTextStyle defaultStyle]::defaultStyle setItalic:{objc_msgSend(self, "defaultItalic")}];
    v3 = +[OADTableTextStyle defaultStyle]::defaultStyle;
  }

  return v3;
}

- (id)shallowCopy
{
  v3 = objc_alloc_init(OADTableTextStyle);
  fontReference = [(OADTableTextStyle *)self fontReference];
  [(OADTableTextStyle *)v3 setFontReference:fontReference];

  color = [(OADTableTextStyle *)self color];
  [(OADTableTextStyle *)v3 setColor:color];

  [(OADTableTextStyle *)v3 setBold:[(OADTableTextStyle *)self bold]];
  [(OADTableTextStyle *)v3 setItalic:[(OADTableTextStyle *)self italic]];
  return v3;
}

- (void)applyOverridesFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    fontReference = [fromCopy fontReference];

    if (fontReference)
    {
      fontReference2 = [fromCopy fontReference];
      [(OADTableTextStyle *)self setFontReference:fontReference2];
    }

    color = [fromCopy color];

    if (color)
    {
      color2 = [fromCopy color];
      [(OADTableTextStyle *)self setColor:color2];
    }

    if ([fromCopy bold] != 2)
    {
      -[OADTableTextStyle setBold:](self, "setBold:", [fromCopy bold]);
    }

    if ([fromCopy italic] != 2)
    {
      -[OADTableTextStyle setItalic:](self, "setItalic:", [fromCopy italic]);
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