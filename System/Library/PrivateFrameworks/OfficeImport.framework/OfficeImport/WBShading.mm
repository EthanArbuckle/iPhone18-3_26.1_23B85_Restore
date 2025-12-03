@interface WBShading
+ (CsColour)fixedUpVersionOfColor:(CsColour)color;
+ (void)readFrom:(WrdShading *)from to:(id)to;
+ (void)setToSolidWhite:(id)white;
+ (void)write:(id)write to:(WrdShading *)to;
@end

@implementation WBShading

+ (void)setToSolidWhite:(id)white
{
  whiteCopy = white;
  [whiteCopy setStyle:1];
  v3 = +[OITSUColor whiteColor];
  [whiteCopy setForeground:v3];

  v4 = +[OITSUColor whiteColor];
  [whiteCopy setBackground:v4];
}

+ (void)readFrom:(WrdShading *)from to:(id)to
{
  toCopy = to;
  if (from && toCopy)
  {
    v13 = toCopy;
    [toCopy setStyle:from->var1];
    if (from->var2)
    {
      if (from->var1 != 0xFFFF || (transparentWhite(), from->var3.var0 != _MergedGlobals_58) || __PAIR64__(from->var3.var2, from->var3.var1) != __PAIR64__(WORD2(_MergedGlobals_58), WORD1(_MergedGlobals_58)) || from->var3.var3 != HIWORD(_MergedGlobals_58) || (transparentWhite(), from->var4.var0 != _MergedGlobals_58) || __PAIR64__(from->var4.var2, from->var4.var1) != __PAIR64__(WORD2(_MergedGlobals_58), WORD1(_MergedGlobals_58)) || from->var4.var3 != HIWORD(_MergedGlobals_58))
      {
        transparentBlack();
        p_var3 = &from->var3;
        if (from->var3.var0 == qword_27FC68DE0 && __PAIR64__(from->var3.var2, from->var3.var1) == __PAIR64__(WORD2(qword_27FC68DE0), WORD1(qword_27FC68DE0)) && from->var3.var3 == HIWORD(qword_27FC68DE0))
        {
          v8 = +[WDShading autoForegroundColor];
          [v13 setForeground:v8];
        }

        else
        {
          v8 = [OITSUColor colorWithCsColour:p_var3];
          [v13 setForeground:v8];
        }

        transparentBlack();
        p_var4 = &from->var4;
        if (from->var4.var0 == qword_27FC68DE0 && __PAIR64__(from->var4.var2, from->var4.var1) == __PAIR64__(WORD2(qword_27FC68DE0), WORD1(qword_27FC68DE0)) && from->var4.var3 == HIWORD(qword_27FC68DE0))
        {
          v11 = +[WDShading autoBackgroundColor];
          [v13 setBackground:v11];
        }

        else
        {
          v11 = [OITSUColor colorWithCsColour:p_var4];
          [v13 setBackground:v11];
        }

        goto LABEL_33;
      }

LABEL_19:
      [self setToSolidWhite:v13];
      toCopy = v13;
      goto LABEL_34;
    }

    toCopy = v13;
    if (!from->var5)
    {
      goto LABEL_34;
    }

    var6 = from->var6;
    if (from->var1 == 0xFFFF && var6 == 31)
    {
      if (from->var7 == 31)
      {
        goto LABEL_19;
      }
    }

    else if (!var6)
    {
      v12 = +[WDShading autoForegroundColor];
      [v13 setForeground:v12];
      goto LABEL_29;
    }

    v12 = [OITSUColor colorWithCsColour:&from->var3];
    [v13 setForeground:v12];
LABEL_29:

    if (from->var7)
    {
      [OITSUColor colorWithCsColour:&from->var4];
    }

    else
    {
      +[WDShading autoBackgroundColor];
    }
    v11 = ;
    [v13 setBackground:v11];
LABEL_33:

    toCopy = v13;
  }

LABEL_34:
}

+ (CsColour)fixedUpVersionOfColor:(CsColour)color
{
  v4 = v3;
  v5 = *color.var0;
  *(v4 + 2) = *(*&color + 2);
  *(v4 + 4) = *(*&color + 4);
  if (v5)
  {
    v6 = 255;
  }

  else
  {
    transparentBlack();
    v6 = qword_27FC68DE0;
    *(v4 + 2) = WORD1(qword_27FC68DE0);
    *(v4 + 4) = HIDWORD(qword_27FC68DE0);
  }

  *v4 = v6;
  return self;
}

+ (void)write:(id)write to:(WrdShading *)to
{
  writeCopy = write;
  v7 = writeCopy;
  if (writeCopy && to)
  {
    to->var1 = [writeCopy style];
    foreground = [v7 foreground];

    if (foreground)
    {
      foreground2 = [v7 foreground];
      v10 = +[WDShading autoForegroundColor];

      if (foreground2 == v10)
      {
        transparentBlack();
        to->var3 = qword_27FC68DE0;
      }

      else
      {
        foreground3 = [v7 foreground];
        v12 = foreground3;
        if (foreground3)
        {
          [foreground3 csColour];
        }

        else
        {
          v19 = 0;
        }

        [self fixedUpVersionOfColor:&v19];
        to->var3 = v20;
      }
    }

    background = [v7 background];

    if (background)
    {
      background2 = [v7 background];
      v15 = +[WDShading autoBackgroundColor];

      if (background2 == v15)
      {
        transparentBlack();
        to->var4 = qword_27FC68DE0;
      }

      else
      {
        background3 = [v7 background];
        v17 = background3;
        if (background3)
        {
          [background3 csColour];
        }

        else
        {
          v18 = 0;
        }

        [self fixedUpVersionOfColor:&v18];
        to->var4 = v20;
      }
    }
  }
}

@end