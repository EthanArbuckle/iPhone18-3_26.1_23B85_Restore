@interface WBParagraphProperties
+ (void)createTrackedPropertiesIfNeeded:(id)needed;
+ (void)mapWordProperties:(void *)properties reader:(id)reader toProperties:(id)toProperties;
+ (void)readFrom:(id)from wrdProperties:(void *)properties tracked:(void *)tracked document:(id)document properties:(id)a7;
@end

@implementation WBParagraphProperties

+ (void)readFrom:(id)from wrdProperties:(void *)properties tracked:(void *)tracked document:(id)document properties:(id)a7
{
  fromCopy = from;
  v11 = a7;
  v12 = v11;
  if (properties && v11)
  {
    [v11 setResolveMode:0];
    [self mapWordProperties:properties reader:fromCopy toProperties:v12];
    if (tracked)
    {
      [v12 setResolveMode:1];
      [self mapWordProperties:tracked reader:fromCopy toProperties:v12];
    }

    [v12 setResolveMode:2];
  }
}

+ (void)createTrackedPropertiesIfNeeded:(id)needed
{
  neededCopy = needed;
  [neededCopy setResolveMode:1];
  if ([neededCopy isAnythingOverridden] && (v4 = +[WBObjectFactory create:](WBObjectFactory, "create:", 41)) != 0)
  {
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)mapWordProperties:(void *)properties reader:(id)reader toProperties:(id)toProperties
{
  readerCopy = reader;
  toPropertiesCopy = toProperties;
  v9 = *(properties + 12);
  if ((v9 & 4) != 0)
  {
    BorderTopReference = WrdParagraphProperties::getBorderTopReference(properties);
    mutableTopBorder = [toPropertiesCopy mutableTopBorder];
    [WBBorder readFrom:BorderTopReference to:mutableTopBorder];

    v9 = *(properties + 12);
  }

  if ((v9 & 8) != 0)
  {
    BorderLeftReference = WrdParagraphProperties::getBorderLeftReference(properties);
    mutableLeftBorder = [toPropertiesCopy mutableLeftBorder];
    [WBBorder readFrom:BorderLeftReference to:mutableLeftBorder];

    v9 = *(properties + 12);
  }

  if ((v9 & 0x10) != 0)
  {
    BorderBottomReference = WrdParagraphProperties::getBorderBottomReference(properties);
    mutableBottomBorder = [toPropertiesCopy mutableBottomBorder];
    [WBBorder readFrom:BorderBottomReference to:mutableBottomBorder];

    v9 = *(properties + 12);
  }

  if ((v9 & 0x20) != 0)
  {
    BorderRightReference = WrdParagraphProperties::getBorderRightReference(properties);
    mutableRightBorder = [toPropertiesCopy mutableRightBorder];
    [WBBorder readFrom:BorderRightReference to:mutableRightBorder];

    v9 = *(properties + 12);
  }

  if ((v9 & 0x40) != 0)
  {
    BorderBetweenReference = WrdParagraphProperties::getBorderBetweenReference(properties);
    mutableBetweenBorder = [toPropertiesCopy mutableBetweenBorder];
    [WBBorder readFrom:BorderBetweenReference to:mutableBetweenBorder];

    v9 = *(properties + 12);
  }

  if ((v9 & 0x80) != 0)
  {
    BorderBarReference = WrdParagraphProperties::getBorderBarReference(properties);
    mutableBarBorder = [toPropertiesCopy mutableBarBorder];
    [WBBorder readFrom:BorderBarReference to:mutableBarBorder];
  }

  v22 = *(properties + 2);
  if ((v22 & 0x80) != 0)
  {
    ShadingReference = WrdParagraphProperties::getShadingReference(properties);
    mutableShading = [toPropertiesCopy mutableShading];
    [WBShading readFrom:ShadingReference to:mutableShading];

    v22 = *(properties + 2);
  }

  if (v22)
  {
    v25 = [readerCopy styleAtIndex:*(properties + 70) expectedType:1];
    [toPropertiesCopy setBaseStyle:v25];

    v22 = *(properties + 2);
  }

  if ((v22 & 0x2000) != 0)
  {
    [toPropertiesCopy setPageBreakBefore:(*(properties + 294) >> 5) & 1];
    v22 = *(properties + 2);
  }

  if ((v22 & 8) != 0)
  {
    [toPropertiesCopy setListLevel:*(properties + 300)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x10) != 0)
  {
    [toPropertiesCopy setListIndex:*(properties + 71)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x200) != 0)
  {
    [toPropertiesCopy setDropCap:*(*(properties + 6) + 8) | (*(*(properties + 6) + 12) << 8)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x400000) != 0)
  {
    [toPropertiesCopy setWidth:*(properties + 58)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x8000000) != 0)
  {
    [toPropertiesCopy setHeight:*(properties + 145)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x10000000) != 0)
  {
    [toPropertiesCopy setHeightRule:*(properties + 40)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x20000000) != 0)
  {
    [toPropertiesCopy setVerticalSpace:*(properties + 59)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x40000000) != 0)
  {
    [toPropertiesCopy setHorizontalSpace:*(properties + 60)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x400000000) != 0)
  {
    [toPropertiesCopy setWrap:(*(properties + 294) >> 11) & 1];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x1000000) != 0)
  {
    [toPropertiesCopy setHorizontalAnchor:*(properties + 39)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x800000) != 0)
  {
    [toPropertiesCopy setVerticalAnchor:*(properties + 38)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x100000) != 0)
  {
    [toPropertiesCopy setHorizontalPosition:*(properties + 56)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x200000) != 0)
  {
    [toPropertiesCopy setVerticalPosition:*(properties + 57)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x2000000) != 0)
  {
    [toPropertiesCopy setWrapCode:*(properties + 298)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x80000000) != 0)
  {
    [toPropertiesCopy setAnchorLock:(*(properties + 294) >> 8) & 1];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x40000) != 0)
  {
    [toPropertiesCopy setSpaceBefore:*(properties + 136)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x200000000000000) != 0)
  {
    [toPropertiesCopy setSpaceBeforeAuto:(*(properties + 294) >> 23) & 1];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x80000) != 0)
  {
    [toPropertiesCopy setSpaceAfter:*(properties + 138)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x400000000000000) != 0)
  {
    [toPropertiesCopy setSpaceAfterAuto:HIBYTE(*(properties + 294)) & 1];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x20000) != 0)
  {
    [toPropertiesCopy setLineSpacing:*(*(properties + 5) + 8)];
    v22 = *(properties + 2);
    if ((v22 & 0x20000) != 0)
    {
      v26 = *(properties + 5);
      if (*(v26 + 8) < 0)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2 * (*(v26 + 10) != 1);
      }

      [toPropertiesCopy setLineSpacingRule:v27];
      v22 = *(properties + 2);
    }
  }

  if ((v22 & 0x1000000000000000) != 0)
  {
    [toPropertiesCopy setLeadingIndent:*(properties + 126)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x800000000000000) != 0)
  {
    [toPropertiesCopy setFollowingIndent:*(properties + 124)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x4000000000000000) != 0)
  {
    [toPropertiesCopy setLeftIndent:*(properties + 134)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x2000000000000000) != 0)
  {
    [toPropertiesCopy setRightIndent:*(properties + 132)];
    v22 = *(properties + 2);
  }

  if (v22 < 0)
  {
    v28 = 256;
  }

  else
  {
    if ((*(properties + 12) & 1) == 0)
    {
      goto LABEL_76;
    }

    v28 = 260;
  }

  [toPropertiesCopy setFirstLineIndent:*(properties + v28)];
  v22 = *(properties + 2);
LABEL_76:
  if ((v22 & 0x20) != 0)
  {
    [toPropertiesCopy setJustification:*(properties + 42)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x40) != 0)
  {
    [toPropertiesCopy setPhysicalJustification:*(properties + 43)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x80000000000) != 0)
  {
    [toPropertiesCopy setOutlineLevel:*(properties + 299)];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x1000) != 0)
  {
    [toPropertiesCopy setKeepNextParagraphTogether:(*(properties + 294) >> 4) & 1];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x800) != 0)
  {
    [toPropertiesCopy setKeepLinesTogether:(*(properties + 294) >> 3) & 1];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x4000000) != 0)
  {
    [toPropertiesCopy setSuppressAutoHyphens:(*(properties + 294) >> 7) & 1];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x10000) != 0)
  {
    [toPropertiesCopy setSuppressLineNumbers:(*(properties + 294) >> 6) & 1];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x100000000) != 0)
  {
    [toPropertiesCopy setWidowControl:(*(properties + 294) >> 9) & 1];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x100000000000) != 0)
  {
    [toPropertiesCopy setBiDi:HIWORD(*(properties + 294)) & 1];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x200000000) != 0)
  {
    [toPropertiesCopy setKinsokuOff:(*(properties + 294) & 0x400) == 0];
    v22 = *(properties + 2);
  }

  if ((v22 & 0x100) != 0)
  {
    v29 = *(properties + 68);
    if (v29 >= 1)
    {
      for (i = 0; i != v29; ++i)
      {
        v34 = *(*(properties + 25) + 2 * i);
        WrdTabDescriptor::WrdTabDescriptor(v33, *(*(properties + 22) + 8 * i));
        v35 = v33[8];
        v36 = v33[12];
        [toPropertiesCopy addTabStopAdded:&v34];
      }
    }

    [toPropertiesCopy setTabStopAddedCount:v29];
    if (*(properties + 17))
    {
      v31 = *(properties + 69);
      if (v31 >= 1)
      {
        v32 = 0;
        do
        {
          [toPropertiesCopy addTabStopDeletedPosition:*(*(properties + 26) + v32)];
          v32 += 2;
        }

        while (2 * v31 != v32);
      }

      [toPropertiesCopy setTabStopDeletedPositionCount:v31];
    }
  }

  if ((*(properties + 12) & 0x200) != 0)
  {
    [toPropertiesCopy setFormattingChanged:(*(properties + 294) >> 26) & 1];
  }
}

@end