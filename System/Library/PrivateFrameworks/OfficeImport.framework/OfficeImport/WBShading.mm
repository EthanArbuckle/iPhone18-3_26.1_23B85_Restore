@interface WBShading
+ (CsColour)fixedUpVersionOfColor:(CsColour)a3;
+ (void)readFrom:(WrdShading *)a3 to:(id)a4;
+ (void)setToSolidWhite:(id)a3;
+ (void)write:(id)a3 to:(WrdShading *)a4;
@end

@implementation WBShading

+ (void)setToSolidWhite:(id)a3
{
  v5 = a3;
  [v5 setStyle:1];
  v3 = +[OITSUColor whiteColor];
  [v5 setForeground:v3];

  v4 = +[OITSUColor whiteColor];
  [v5 setBackground:v4];
}

+ (void)readFrom:(WrdShading *)a3 to:(id)a4
{
  v6 = a4;
  if (a3 && v6)
  {
    v13 = v6;
    [v6 setStyle:a3->var1];
    if (a3->var2)
    {
      if (a3->var1 != 0xFFFF || (transparentWhite(), a3->var3.var0 != _MergedGlobals_58) || __PAIR64__(a3->var3.var2, a3->var3.var1) != __PAIR64__(WORD2(_MergedGlobals_58), WORD1(_MergedGlobals_58)) || a3->var3.var3 != HIWORD(_MergedGlobals_58) || (transparentWhite(), a3->var4.var0 != _MergedGlobals_58) || __PAIR64__(a3->var4.var2, a3->var4.var1) != __PAIR64__(WORD2(_MergedGlobals_58), WORD1(_MergedGlobals_58)) || a3->var4.var3 != HIWORD(_MergedGlobals_58))
      {
        transparentBlack();
        p_var3 = &a3->var3;
        if (a3->var3.var0 == qword_27FC68DE0 && __PAIR64__(a3->var3.var2, a3->var3.var1) == __PAIR64__(WORD2(qword_27FC68DE0), WORD1(qword_27FC68DE0)) && a3->var3.var3 == HIWORD(qword_27FC68DE0))
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
        p_var4 = &a3->var4;
        if (a3->var4.var0 == qword_27FC68DE0 && __PAIR64__(a3->var4.var2, a3->var4.var1) == __PAIR64__(WORD2(qword_27FC68DE0), WORD1(qword_27FC68DE0)) && a3->var4.var3 == HIWORD(qword_27FC68DE0))
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
      [a1 setToSolidWhite:v13];
      v6 = v13;
      goto LABEL_34;
    }

    v6 = v13;
    if (!a3->var5)
    {
      goto LABEL_34;
    }

    var6 = a3->var6;
    if (a3->var1 == 0xFFFF && var6 == 31)
    {
      if (a3->var7 == 31)
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

    v12 = [OITSUColor colorWithCsColour:&a3->var3];
    [v13 setForeground:v12];
LABEL_29:

    if (a3->var7)
    {
      [OITSUColor colorWithCsColour:&a3->var4];
    }

    else
    {
      +[WDShading autoBackgroundColor];
    }
    v11 = ;
    [v13 setBackground:v11];
LABEL_33:

    v6 = v13;
  }

LABEL_34:
}

+ (CsColour)fixedUpVersionOfColor:(CsColour)a3
{
  v4 = v3;
  v5 = *a3.var0;
  *(v4 + 2) = *(*&a3 + 2);
  *(v4 + 4) = *(*&a3 + 4);
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
  return a1;
}

+ (void)write:(id)a3 to:(WrdShading *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && a4)
  {
    a4->var1 = [v6 style];
    v8 = [v7 foreground];

    if (v8)
    {
      v9 = [v7 foreground];
      v10 = +[WDShading autoForegroundColor];

      if (v9 == v10)
      {
        transparentBlack();
        a4->var3 = qword_27FC68DE0;
      }

      else
      {
        v11 = [v7 foreground];
        v12 = v11;
        if (v11)
        {
          [v11 csColour];
        }

        else
        {
          v19 = 0;
        }

        [a1 fixedUpVersionOfColor:&v19];
        a4->var3 = v20;
      }
    }

    v13 = [v7 background];

    if (v13)
    {
      v14 = [v7 background];
      v15 = +[WDShading autoBackgroundColor];

      if (v14 == v15)
      {
        transparentBlack();
        a4->var4 = qword_27FC68DE0;
      }

      else
      {
        v16 = [v7 background];
        v17 = v16;
        if (v16)
        {
          [v16 csColour];
        }

        else
        {
          v18 = 0;
        }

        [a1 fixedUpVersionOfColor:&v18];
        a4->var4 = v20;
      }
    }
  }
}

@end