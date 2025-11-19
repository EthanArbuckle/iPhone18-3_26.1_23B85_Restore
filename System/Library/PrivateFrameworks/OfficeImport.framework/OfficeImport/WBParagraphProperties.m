@interface WBParagraphProperties
+ (void)createTrackedPropertiesIfNeeded:(id)a3;
+ (void)mapWordProperties:(void *)a3 reader:(id)a4 toProperties:(id)a5;
+ (void)readFrom:(id)a3 wrdProperties:(void *)a4 tracked:(void *)a5 document:(id)a6 properties:(id)a7;
@end

@implementation WBParagraphProperties

+ (void)readFrom:(id)a3 wrdProperties:(void *)a4 tracked:(void *)a5 document:(id)a6 properties:(id)a7
{
  v13 = a3;
  v11 = a7;
  v12 = v11;
  if (a4 && v11)
  {
    [v11 setResolveMode:0];
    [a1 mapWordProperties:a4 reader:v13 toProperties:v12];
    if (a5)
    {
      [v12 setResolveMode:1];
      [a1 mapWordProperties:a5 reader:v13 toProperties:v12];
    }

    [v12 setResolveMode:2];
  }
}

+ (void)createTrackedPropertiesIfNeeded:(id)a3
{
  v3 = a3;
  [v3 setResolveMode:1];
  if ([v3 isAnythingOverridden] && (v4 = +[WBObjectFactory create:](WBObjectFactory, "create:", 41)) != 0)
  {
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)mapWordProperties:(void *)a3 reader:(id)a4 toProperties:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = *(a3 + 12);
  if ((v9 & 4) != 0)
  {
    BorderTopReference = WrdParagraphProperties::getBorderTopReference(a3);
    v11 = [v8 mutableTopBorder];
    [WBBorder readFrom:BorderTopReference to:v11];

    v9 = *(a3 + 12);
  }

  if ((v9 & 8) != 0)
  {
    BorderLeftReference = WrdParagraphProperties::getBorderLeftReference(a3);
    v13 = [v8 mutableLeftBorder];
    [WBBorder readFrom:BorderLeftReference to:v13];

    v9 = *(a3 + 12);
  }

  if ((v9 & 0x10) != 0)
  {
    BorderBottomReference = WrdParagraphProperties::getBorderBottomReference(a3);
    v15 = [v8 mutableBottomBorder];
    [WBBorder readFrom:BorderBottomReference to:v15];

    v9 = *(a3 + 12);
  }

  if ((v9 & 0x20) != 0)
  {
    BorderRightReference = WrdParagraphProperties::getBorderRightReference(a3);
    v17 = [v8 mutableRightBorder];
    [WBBorder readFrom:BorderRightReference to:v17];

    v9 = *(a3 + 12);
  }

  if ((v9 & 0x40) != 0)
  {
    BorderBetweenReference = WrdParagraphProperties::getBorderBetweenReference(a3);
    v19 = [v8 mutableBetweenBorder];
    [WBBorder readFrom:BorderBetweenReference to:v19];

    v9 = *(a3 + 12);
  }

  if ((v9 & 0x80) != 0)
  {
    BorderBarReference = WrdParagraphProperties::getBorderBarReference(a3);
    v21 = [v8 mutableBarBorder];
    [WBBorder readFrom:BorderBarReference to:v21];
  }

  v22 = *(a3 + 2);
  if ((v22 & 0x80) != 0)
  {
    ShadingReference = WrdParagraphProperties::getShadingReference(a3);
    v24 = [v8 mutableShading];
    [WBShading readFrom:ShadingReference to:v24];

    v22 = *(a3 + 2);
  }

  if (v22)
  {
    v25 = [v7 styleAtIndex:*(a3 + 70) expectedType:1];
    [v8 setBaseStyle:v25];

    v22 = *(a3 + 2);
  }

  if ((v22 & 0x2000) != 0)
  {
    [v8 setPageBreakBefore:(*(a3 + 294) >> 5) & 1];
    v22 = *(a3 + 2);
  }

  if ((v22 & 8) != 0)
  {
    [v8 setListLevel:*(a3 + 300)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x10) != 0)
  {
    [v8 setListIndex:*(a3 + 71)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x200) != 0)
  {
    [v8 setDropCap:*(*(a3 + 6) + 8) | (*(*(a3 + 6) + 12) << 8)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x400000) != 0)
  {
    [v8 setWidth:*(a3 + 58)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x8000000) != 0)
  {
    [v8 setHeight:*(a3 + 145)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x10000000) != 0)
  {
    [v8 setHeightRule:*(a3 + 40)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x20000000) != 0)
  {
    [v8 setVerticalSpace:*(a3 + 59)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x40000000) != 0)
  {
    [v8 setHorizontalSpace:*(a3 + 60)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x400000000) != 0)
  {
    [v8 setWrap:(*(a3 + 294) >> 11) & 1];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x1000000) != 0)
  {
    [v8 setHorizontalAnchor:*(a3 + 39)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x800000) != 0)
  {
    [v8 setVerticalAnchor:*(a3 + 38)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x100000) != 0)
  {
    [v8 setHorizontalPosition:*(a3 + 56)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x200000) != 0)
  {
    [v8 setVerticalPosition:*(a3 + 57)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x2000000) != 0)
  {
    [v8 setWrapCode:*(a3 + 298)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x80000000) != 0)
  {
    [v8 setAnchorLock:(*(a3 + 294) >> 8) & 1];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x40000) != 0)
  {
    [v8 setSpaceBefore:*(a3 + 136)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x200000000000000) != 0)
  {
    [v8 setSpaceBeforeAuto:(*(a3 + 294) >> 23) & 1];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x80000) != 0)
  {
    [v8 setSpaceAfter:*(a3 + 138)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x400000000000000) != 0)
  {
    [v8 setSpaceAfterAuto:HIBYTE(*(a3 + 294)) & 1];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x20000) != 0)
  {
    [v8 setLineSpacing:*(*(a3 + 5) + 8)];
    v22 = *(a3 + 2);
    if ((v22 & 0x20000) != 0)
    {
      v26 = *(a3 + 5);
      if (*(v26 + 8) < 0)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2 * (*(v26 + 10) != 1);
      }

      [v8 setLineSpacingRule:v27];
      v22 = *(a3 + 2);
    }
  }

  if ((v22 & 0x1000000000000000) != 0)
  {
    [v8 setLeadingIndent:*(a3 + 126)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x800000000000000) != 0)
  {
    [v8 setFollowingIndent:*(a3 + 124)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x4000000000000000) != 0)
  {
    [v8 setLeftIndent:*(a3 + 134)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x2000000000000000) != 0)
  {
    [v8 setRightIndent:*(a3 + 132)];
    v22 = *(a3 + 2);
  }

  if (v22 < 0)
  {
    v28 = 256;
  }

  else
  {
    if ((*(a3 + 12) & 1) == 0)
    {
      goto LABEL_76;
    }

    v28 = 260;
  }

  [v8 setFirstLineIndent:*(a3 + v28)];
  v22 = *(a3 + 2);
LABEL_76:
  if ((v22 & 0x20) != 0)
  {
    [v8 setJustification:*(a3 + 42)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x40) != 0)
  {
    [v8 setPhysicalJustification:*(a3 + 43)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x80000000000) != 0)
  {
    [v8 setOutlineLevel:*(a3 + 299)];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x1000) != 0)
  {
    [v8 setKeepNextParagraphTogether:(*(a3 + 294) >> 4) & 1];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x800) != 0)
  {
    [v8 setKeepLinesTogether:(*(a3 + 294) >> 3) & 1];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x4000000) != 0)
  {
    [v8 setSuppressAutoHyphens:(*(a3 + 294) >> 7) & 1];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x10000) != 0)
  {
    [v8 setSuppressLineNumbers:(*(a3 + 294) >> 6) & 1];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x100000000) != 0)
  {
    [v8 setWidowControl:(*(a3 + 294) >> 9) & 1];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x100000000000) != 0)
  {
    [v8 setBiDi:HIWORD(*(a3 + 294)) & 1];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x200000000) != 0)
  {
    [v8 setKinsokuOff:(*(a3 + 294) & 0x400) == 0];
    v22 = *(a3 + 2);
  }

  if ((v22 & 0x100) != 0)
  {
    v29 = *(a3 + 68);
    if (v29 >= 1)
    {
      for (i = 0; i != v29; ++i)
      {
        v34 = *(*(a3 + 25) + 2 * i);
        WrdTabDescriptor::WrdTabDescriptor(v33, *(*(a3 + 22) + 8 * i));
        v35 = v33[8];
        v36 = v33[12];
        [v8 addTabStopAdded:&v34];
      }
    }

    [v8 setTabStopAddedCount:v29];
    if (*(a3 + 17))
    {
      v31 = *(a3 + 69);
      if (v31 >= 1)
      {
        v32 = 0;
        do
        {
          [v8 addTabStopDeletedPosition:*(*(a3 + 26) + v32)];
          v32 += 2;
        }

        while (2 * v31 != v32);
      }

      [v8 setTabStopDeletedPositionCount:v31];
    }
  }

  if ((*(a3 + 12) & 0x200) != 0)
  {
    [v8 setFormattingChanged:(*(a3 + 294) >> 26) & 1];
  }
}

@end