@interface WBBorder
+ (void)readFrom:(WrdBorder *)from to:(id)to;
+ (void)write:(id)write to:(WrdBorder *)to;
@end

@implementation WBBorder

+ (void)readFrom:(WrdBorder *)from to:(id)to
{
  toCopy = to;
  if (from && toCopy)
  {
    [toCopy setStyle:from->var2];
    v5 = [OITSUColor colorWithCsColour:&from->var1];
    [toCopy setColor:v5];

    [toCopy setWidth:from->var6];
    [toCopy setSpace:from->var7];
    [toCopy setShadow:*(from + 24) & 1];
    [toCopy setFrame:(*(from + 24) >> 1) & 1];
  }
}

+ (void)write:(id)write to:(WrdBorder *)to
{
  writeCopy = write;
  v6 = writeCopy;
  if (writeCopy && to)
  {
    style = [writeCopy style];
    if (style == 235)
    {
      v8 = 0;
    }

    else
    {
      v8 = style;
    }

    if ((style - 233) >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 197;
    }

    if (style == 228)
    {
      v10 = 84;
    }

    else
    {
      v10 = v9;
    }

    if ((style - 229) >= 4)
    {
      v11 = v10;
    }

    else
    {
      v11 = 192;
    }

    to->var2 = v11;
    color = [v6 color];
    v13 = color;
    if (color)
    {
      [color csColour];
      v14 = v16;
    }

    else
    {
      v14 = 0;
    }

    to->var1 = v14;

    to->var6 = [v6 width];
    to->var7 = [v6 space];
    *(to + 24) = *(to + 24) & 0xFE | [v6 shadow];
    if ([v6 frame])
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    *(to + 24) = *(to + 24) & 0xFD | v15;
  }
}

@end