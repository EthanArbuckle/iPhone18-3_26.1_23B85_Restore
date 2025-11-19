@interface OAXTextParaPropertyBag
+ (id)readSpacing:(_xmlNode *)a3 drawingState:(id)a4;
+ (int)readBulletScheme:(id)a3;
+ (void)readAlign:(id)a3 paragraphProperties:(id)a4;
+ (void)readFontAlign:(id)a3 paragraphProperties:(id)a4;
+ (void)readParagraphProperties:(_xmlNode *)a3 paragraphProperties:(id)a4 drawingState:(id)a5;
+ (void)readTabList:(_xmlNode *)a3 paragraphProperties:(id)a4 drawingState:(id)a5;
@end

@implementation OAXTextParaPropertyBag

+ (void)readParagraphProperties:(_xmlNode *)a3 paragraphProperties:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v53 = 0;
    v52 = 0;
    v51 = 0.0;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "marL", &v53))
    {
      v10 = v53 / 12700.0;
      *&v10 = v10;
      [v8 setLeftMargin:v10];
    }

    if (CXOptionalLongAttribute(a3, CXNoNamespace, "marR", &v53))
    {
      v11 = v53 / 12700.0;
      *&v11 = v11;
      [v8 setRightMargin:v11];
    }

    if (CXOptionalLongAttribute(a3, CXNoNamespace, "lvl", &v53))
    {
      [v8 setLevel:v53];
    }

    if (CXOptionalLongAttribute(a3, CXNoNamespace, "indent", &v53))
    {
      v12 = v53 / 12700.0;
      *&v12 = v12;
      [v8 setIndent:v12];
    }

    v50 = 0;
    v13 = CXOptionalStringAttribute(a3, CXNoNamespace, "algn", &v50);
    v14 = v50;
    if (v13)
    {
      [a1 readAlign:v14 paragraphProperties:v8];
    }

    if (CXOptionalLongAttribute(a3, CXNoNamespace, "defTabSz", &v53, 12))
    {
      v15 = v53 / 12700.0;
      *&v15 = v15;
      [v8 setDefaultTab:v15];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "rtl", &v52))
    {
      [v8 setIsRightToLeft:v52];
    }

    v49 = 0;
    v16 = CXOptionalStringAttribute(a3, CXNoNamespace, "fontAlgn", &v49);
    v17 = v49;
    if (v16)
    {
      [a1 readFontAlign:v17 paragraphProperties:v8];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "latinLnBrk", &v52))
    {
      [v8 setIsLatinLineBreak:v52];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "hangingPunct", &v52))
    {
      [v8 setIsHangingPunctuation:v52];
    }

    v44 = v17;
    for (i = OCXFirstChild(a3); ; i = OCXNextSibling(i))
    {
      if (!i)
      {

        break;
      }

      if (xmlStrEqual(i->name, "lnSpc"))
      {
        v19 = [a1 readSpacing:i drawingState:v9];
        [v8 setLineSpacing:v19];
        goto LABEL_42;
      }

      if (xmlStrEqual(i->name, "spcBef"))
      {
        v19 = [a1 readSpacing:i drawingState:v9];
        [v8 setBeforeSpacing:v19];
        goto LABEL_42;
      }

      if (xmlStrEqual(i->name, "spcAft"))
      {
        v19 = [a1 readSpacing:i drawingState:v9];
        [v8 setAfterSpacing:v19];
        goto LABEL_42;
      }

      if (xmlStrEqual(i->name, "tabLst"))
      {
        [a1 readTabList:i paragraphProperties:v8 drawingState:v9];
        v19 = 0;
        goto LABEL_42;
      }

      if (xmlStrEqual(i->name, "defRPr"))
      {
        [OAXTextCharPropertyBag readCharacterProperties:i characterProperties:v8 drawingState:v9];
        v19 = 0;
        goto LABEL_42;
      }

      if (xmlStrEqual(i->name, "buClr"))
      {
        v20 = [OAXColor readColorFromParentXmlNode:i];
        if (v20)
        {
          v21 = [[OADBulletColorSpecification alloc] initWithBulletColor:v20];
          [v8 setBulletColor:v21];
LABEL_37:
        }
      }

      else
      {
        if (xmlStrEqual(i->name, "buClrTx"))
        {
          v20 = objc_alloc_init(OADBulletColorFollowText);
          [v8 setBulletColor:v20];
          goto LABEL_40;
        }

        if (xmlStrEqual(i->name, "buSzPts"))
        {
          if (!CXOptionalLongAttribute(i, CXNoNamespace, "val", &v53))
          {
            goto LABEL_41;
          }

          v22 = [OADPointBulletSize alloc];
          v20 = [(OADPointBulletSize *)v22 initWithPoints:(v53 / 100)];
          [v8 setBulletSize:v20];
        }

        else
        {
          if (xmlStrEqual(i->name, "buSzPct"))
          {
            if (!CXOptionalFractionAttribute(i, CXNoNamespace, "val", &v51))
            {
              goto LABEL_41;
            }

            v23 = [OADPercentBulletSize alloc];
            v24 = v51 * 100.0;
            *&v24 = v51 * 100.0;
            v20 = [(OADPercentBulletSize *)v23 initWithPercent:v24];
            [v8 setBulletSize:v20];
            goto LABEL_40;
          }

          if (xmlStrEqual(i->name, "buSzTx"))
          {
            v20 = objc_alloc_init(OADBulletSizeFollowText);
            [v8 setBulletSize:v20];
            goto LABEL_40;
          }

          if (xmlStrEqual(i->name, "buFont"))
          {
            v48 = 0;
            v25 = CXOptionalStringAttribute(i, CXNoNamespace, "typeface", &v48);
            v20 = v48;
            if (v25)
            {
              v26 = [[OADBulletFontSpecification alloc] initWithFont:v20];
            }

            else
            {
              v26 = objc_alloc_init(OADBulletFontFollowText);
            }

            [v8 setBulletFont:v26];

            v47 = 0;
            if (CXOptionalUnsignedLongAttribute(i, CXNoNamespace, "charset", &v47))
            {
              [v8 setBulletCharSet:v47];
            }

            goto LABEL_40;
          }

          if (xmlStrEqual(i->name, "buFontTx"))
          {
            v20 = objc_alloc_init(OADBulletFontFollowText);
            [v8 setBulletFont:v20];
            goto LABEL_40;
          }

          if (xmlStrEqual(i->name, "buAutoNum"))
          {
            v46 = 0;
            v27 = CXOptionalStringAttribute(i, CXNoNamespace, "type", &v46);
            v20 = v46;
            if (v27)
            {
              v28 = numberBulletSchemeEnumMap();
              v40 = v20;
              v39 = [v28 valueForString:v20];

              LODWORD(v28) = CXOptionalLongAttribute(i, CXNoNamespace, "startAt", &v53);
              v29 = v53;
              v30 = [OADAutoNumberBulletProperties alloc];
              if (v28)
              {
                v31 = v29;
              }

              else
              {
                v31 = 1;
              }

              v32 = [(OADAutoNumberBulletProperties *)v30 initWithAutoNumberSchemeType:v39 startIndex:v31];
              [v8 setBulletProperties:v32];

              v20 = v40;
            }

            goto LABEL_40;
          }

          if (xmlStrEqual(i->name, "buChar"))
          {
            v45 = 0;
            v33 = CXOptionalStringAttribute(i, CXNoNamespace, "char", &v45);
            v34 = v45;
            v20 = v34;
            if (!v33)
            {
              goto LABEL_40;
            }

            v35 = [(OADBulletColorFollowText *)v34 length];
            if (!v35)
            {
              goto LABEL_40;
            }

            v36 = [(OADBulletColorFollowText *)v20 characterAtIndex:0]& 0xFC00;
            if (v36 == 55296)
            {
              if (v35 == 1 || [(OADBulletColorFollowText *)v20 characterAtIndex:1]>> 10 != 55)
              {
                goto LABEL_40;
              }

              v37 = 2;
            }

            else
            {
              if (v36 == 56320)
              {
                goto LABEL_40;
              }

              v37 = 1;
            }

            v41 = v37;
            v38 = [OADCharacterBulletProperties alloc];
            v42 = [(OADBulletColorFollowText *)v20 substringToIndex:v41];
            v21 = [(OADCharacterBulletProperties *)v38 initWithBullet:v42];

            [v8 setBulletProperties:v21];
            goto LABEL_37;
          }

          if (!xmlStrEqual(i->name, "buBlip"))
          {
            if (!xmlStrEqual(i->name, "buNone"))
            {
              goto LABEL_41;
            }

            v20 = objc_alloc_init(OADNullBulletProperties);
            [v8 setBulletProperties:v20];
            goto LABEL_40;
          }

          v43 = [v9 packagePart];
          v20 = [OAXFill readBlipRefFromXmlNode:i packagePart:v43 forDrawable:0 drawingState:v9 forBullet:1];

          if (v20 && ([(OADBulletColorFollowText *)v20 isNull]& 1) == 0)
          {
            v21 = [[OADImageBulletProperties alloc] initWithBlipRef:v20];
            [v8 setBulletProperties:v21];
            goto LABEL_37;
          }
        }
      }

LABEL_40:

LABEL_41:
      v19 = 0;
LABEL_42:
    }
  }
}

+ (id)readSpacing:(_xmlNode *)a3 drawingState:(id)a4
{
  v5 = a4;
  v6 = [v5 OAXMainNamespace];
  v7 = OCXFindChild(a3, v6, "spcPct");

  v8 = [v5 OAXMainNamespace];
  v9 = OCXFindChild(a3, v8, "spcPts");

  if (v7)
  {
    *&v20 = 0.0;
    v10 = CXOptionalFractionAttribute(v7, CXNoNamespace, "val", &v20);
    if (*&v20 >= 0.0 && v10)
    {
      v12 = [OADPercentTextSpacing alloc];
      v13 = *&v20 * 100.0;
      *&v13 = *&v20 * 100.0;
      v14 = [(OADPercentTextSpacing *)v12 initWithPercent:v13];
LABEL_13:
      v18 = v14;
      goto LABEL_15;
    }
  }

  else if (v9)
  {
    *&v20 = 0.0;
    v15 = CXOptionalLongAttribute(v9, CXNoNamespace, "val", &v20);
    if (v20 >= 0 && v15)
    {
      v17 = [OADPointTextSpacing alloc];
      v14 = [(OADPointTextSpacing *)v17 initWithPoints:(v20 / 100)];
      goto LABEL_13;
    }
  }

  v18 = 0;
LABEL_15:

  return v18;
}

+ (void)readTabList:(_xmlNode *)a3 paragraphProperties:(id)a4 drawingState:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [v8 OAXMainNamespace];
  Child = OCXFindChild(a3, v10, "tab");

  while (Child)
  {
    v18 = 0;
    if (CXOptionalLongAttribute(Child, CXNoNamespace, "pos", &v18, 12))
    {
      v17 = 0;
      v12 = CXOptionalStringAttribute(Child, CXNoNamespace, "algn", &v17);
      v13 = v17;
      if (v12)
      {
        v14 = objc_alloc_init(OADTabStop);
        [(OADTabStop *)v14 setPosition:(v18 / 12700.0)];
        if (tabStopAlignEnumMap(void)::once != -1)
        {
          +[OAXTextParaPropertyBag(Private) readTabList:paragraphProperties:drawingState:];
        }

        v15 = tabStopAlignEnumMap(void)::theEnumMap;
        -[OADTabStop setAlign:](v14, "setAlign:", [v15 valueForString:v13]);

        [v9 addObject:v14];
      }
    }

    else
    {
      v13 = 0;
    }

    v16 = [v8 OAXMainNamespace];
    Child = OCXFindNextChild(Child, v16, "tab");
  }

  [v7 setTabStops:v9];
}

+ (void)readAlign:(id)a3 paragraphProperties:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (textAlignEnumMap(void)::once != -1)
  {
    +[OAXTextParaPropertyBag(Private) readAlign:paragraphProperties:];
  }

  v6 = textAlignEnumMap(void)::theEnumMap;
  [v5 setAlign:{objc_msgSend(v6, "valueForString:", v7)}];
}

+ (void)readFontAlign:(id)a3 paragraphProperties:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (fontAlignEnumMap(void)::once != -1)
  {
    +[OAXTextParaPropertyBag(Private) readFontAlign:paragraphProperties:];
  }

  v6 = fontAlignEnumMap(void)::theEnumMap;
  [v5 setFontAlign:{objc_msgSend(v6, "valueForString:", v7)}];
}

+ (int)readBulletScheme:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"alphaLcParenBoth"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"alphaLcParenR"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:@"alphaLcPeriod"])
    {
      v5 = 5;
    }

    else if ([v4 isEqualToString:@"alphaUcParenBoth"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"alphaUcParenR"])
    {
      v5 = 4;
    }

    else if ([v4 isEqualToString:@"alphaUcPeriod"])
    {
      v5 = 6;
    }

    else if ([v4 isEqualToString:@"arabic1Minus"])
    {
      v5 = 13;
    }

    else if ([v4 isEqualToString:@"arabic2Minus"])
    {
      v5 = 14;
    }

    else if ([v4 isEqualToString:@"arabicDbPeriod"])
    {
      v5 = 11;
    }

    else if ([v4 isEqualToString:@"arabicDbPlain"])
    {
      v5 = 12;
    }

    else if ([v4 isEqualToString:@"arabicParenBoth"])
    {
      v5 = 7;
    }

    else if ([v4 isEqualToString:@"arabicParenR"])
    {
      v5 = 8;
    }

    else if ([v4 isEqualToString:@"arabicPeriod"])
    {
      v5 = 9;
    }

    else if ([v4 isEqualToString:@"arabicPlain"])
    {
      v5 = 10;
    }

    else if ([v4 isEqualToString:@"circleNumDbPlain"])
    {
      v5 = 22;
    }

    else if ([v4 isEqualToString:@"circleNumWdBlackPlain"])
    {
      v5 = 23;
    }

    else if ([v4 isEqualToString:@"circleNumWdWhitePlain"])
    {
      v5 = 24;
    }

    else if ([v4 isEqualToString:@"ea1ChsPeriod"])
    {
      v5 = 25;
    }

    else if ([v4 isEqualToString:@"ea1ChsPlain"])
    {
      v5 = 26;
    }

    else if ([v4 isEqualToString:@"ea1ChtPeriod"])
    {
      v5 = 27;
    }

    else if ([v4 isEqualToString:@"ea1ChtPlain"])
    {
      v5 = 28;
    }

    else if ([v4 isEqualToString:@"ea1JpnChsDbPeriod"])
    {
      v5 = 29;
    }

    else if ([v4 isEqualToString:@"ea1JpnKorPeriod"])
    {
      v5 = 31;
    }

    else if ([v4 isEqualToString:@"ea1JpnKorPlain"])
    {
      v5 = 30;
    }

    else if ([v4 isEqualToString:@"hebrew2Minus"])
    {
      v5 = 15;
    }

    else if ([v4 isEqualToString:@"hindiAlpha1Period"])
    {
      v5 = 41;
    }

    else if ([v4 isEqualToString:@"hindiAlphaPeriod"])
    {
      v5 = 38;
    }

    else if ([v4 isEqualToString:@"hindiNumParenR"])
    {
      v5 = 40;
    }

    else if ([v4 isEqualToString:@"hindiNumPeriod"])
    {
      v5 = 39;
    }

    else if ([v4 isEqualToString:@"romanLcParenBoth"])
    {
      v5 = 16;
    }

    else if ([v4 isEqualToString:@"romanLcParenR"])
    {
      v5 = 18;
    }

    else if ([v4 isEqualToString:@"romanLcPeriod"])
    {
      v5 = 20;
    }

    else if ([v4 isEqualToString:@"romanUcParenBoth"])
    {
      v5 = 17;
    }

    else if ([v4 isEqualToString:@"romanUcParenR"])
    {
      v5 = 19;
    }

    else if ([v4 isEqualToString:@"romanUcPeriod"])
    {
      v5 = 21;
    }

    else if ([v4 isEqualToString:@"thaiAlphaParenBoth"])
    {
      v5 = 34;
    }

    else if ([v4 isEqualToString:@"thaiAlphaParenR"])
    {
      v5 = 33;
    }

    else if ([v4 isEqualToString:@"thaiAlphaPeriod"])
    {
      v5 = 32;
    }

    else if ([v4 isEqualToString:@"thaiNumParenBoth"])
    {
      v5 = 37;
    }

    else if ([v4 isEqualToString:@"thaiNumParenR"])
    {
      v5 = 36;
    }

    else if ([v4 isEqualToString:@"thaiNumPeriod"])
    {
      v5 = 35;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end