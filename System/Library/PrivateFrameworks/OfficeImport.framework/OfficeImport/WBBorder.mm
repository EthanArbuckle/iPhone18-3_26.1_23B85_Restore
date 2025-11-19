@interface WBBorder
+ (void)readFrom:(WrdBorder *)a3 to:(id)a4;
+ (void)write:(id)a3 to:(WrdBorder *)a4;
@end

@implementation WBBorder

+ (void)readFrom:(WrdBorder *)a3 to:(id)a4
{
  v6 = a4;
  if (a3 && v6)
  {
    [v6 setStyle:a3->var2];
    v5 = [OITSUColor colorWithCsColour:&a3->var1];
    [v6 setColor:v5];

    [v6 setWidth:a3->var6];
    [v6 setSpace:a3->var7];
    [v6 setShadow:*(a3 + 24) & 1];
    [v6 setFrame:(*(a3 + 24) >> 1) & 1];
  }
}

+ (void)write:(id)a3 to:(WrdBorder *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && a4)
  {
    v7 = [v5 style];
    if (v7 == 235)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if ((v7 - 233) >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 197;
    }

    if (v7 == 228)
    {
      v10 = 84;
    }

    else
    {
      v10 = v9;
    }

    if ((v7 - 229) >= 4)
    {
      v11 = v10;
    }

    else
    {
      v11 = 192;
    }

    a4->var2 = v11;
    v12 = [v6 color];
    v13 = v12;
    if (v12)
    {
      [v12 csColour];
      v14 = v16;
    }

    else
    {
      v14 = 0;
    }

    a4->var1 = v14;

    a4->var6 = [v6 width];
    a4->var7 = [v6 space];
    *(a4 + 24) = *(a4 + 24) & 0xFE | [v6 shadow];
    if ([v6 frame])
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    *(a4 + 24) = *(a4 + 24) & 0xFD | v15;
  }
}

@end