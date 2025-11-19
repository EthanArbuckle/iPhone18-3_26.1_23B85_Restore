@interface WMDocumentMapper
- (BOOL)hasSessionBreakAtIndex:(unint64_t)a3;
- (CGSize)contentSizeForDevice;
- (CGSize)pageSizeForDevice;
- (double)bottomMargin;
- (double)headerMargin;
- (double)leftMargin;
- (double)rightMargin;
- (double)topMargin;
- (id)backgroundColor;
- (id)blipAtIndex:(unsigned int)a3;
- (id)documentTitle;
- (id)styleMatrix;
- (int)defaultTabWidth;
- (void)mapDefaultCssStylesAt:(id)a3;
- (void)mapWithState:(id)a3;
@end

@implementation WMDocumentMapper

- (CGSize)pageSizeForDevice
{
  v2 = [(CMMapper *)self document];
  v3 = [v2 sections];
  v4 = [v3 objectAtIndex:0];

  v5 = 980.0;
  if (v4)
  {
    if ([v4 isPageWidthOverridden])
    {
      v6 = ([v4 pageWidth] / 20.0);
    }

    else
    {
      v6 = 600.0;
    }

    if ([v4 isPageHeightOverridden])
    {
      v5 = ([v4 pageHeight] / 20.0);
    }
  }

  else
  {
    v6 = 600.0;
  }

  v7 = v6;
  v8 = v5;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)contentSizeForDevice
{
  v3 = [(CMMapper *)self document];
  v4 = [v3 sections];
  v5 = [v4 objectAtIndex:0];

  if ([v5 isPageWidthOverridden])
  {
    v6 = [v5 pageWidth];
    v7 = [v5 leftMargin];
    v8 = ((v6 - (v7 + [v5 rightMargin])) / 20.0);
  }

  else
  {
    [(WMDocumentMapper *)self leftMargin];
    v10 = v9;
    [(WMDocumentMapper *)self rightMargin];
    v8 = 600.0 - (v10 + v11);
  }

  if ([v5 isPageHeightOverridden])
  {
    v12 = [v5 pageHeight];
    v13 = [v5 topMargin];
    v14 = ((v12 - (v13 + [v5 bottomMargin])) / 20.0);
  }

  else
  {
    [(WMDocumentMapper *)self topMargin];
    v16 = v15;
    [(WMDocumentMapper *)self bottomMargin];
    v14 = 980.0 - (v16 + v17);
  }

  v18 = v8;
  v19 = v14;
  result.height = v19;
  result.width = v18;
  return result;
}

- (double)leftMargin
{
  v2 = [(CMMapper *)self document];
  v3 = [v2 sections];
  v4 = [v3 objectAtIndex:0];

  if (!v4 || ![v4 isLeftMarginOverridden] || (v5 = objc_msgSend(v4, "leftMargin") / 20.0, v5 > 300.0))
  {
    v5 = 80.0;
  }

  return v5;
}

- (double)rightMargin
{
  v2 = [(CMMapper *)self document];
  v3 = [v2 sections];
  v4 = [v3 objectAtIndex:0];

  if (!v4 || ![v4 isRightMarginOverridden] || (v5 = objc_msgSend(v4, "rightMargin") / 20.0, v5 > 300.0))
  {
    v5 = 80.0;
  }

  return v5;
}

- (double)topMargin
{
  v2 = [(CMMapper *)self document];
  v3 = [v2 sections];
  v4 = [v3 objectAtIndex:0];

  if (!v4 || ![v4 isTopMarginOverridden] || (v5 = objc_msgSend(v4, "topMargin") / 20.0, v5 > 500.0))
  {
    v5 = 50.0;
  }

  return v5;
}

- (double)headerMargin
{
  v2 = [(CMMapper *)self document];
  v3 = [v2 sections];
  v4 = [v3 objectAtIndex:0];

  v5 = 0.0;
  if (v4)
  {
    v6 = [v4 firstPageHeader];
    if ([v6 blockCount])
    {
    }

    else
    {
      v7 = [v4 oddPageHeader];
      v8 = [v7 blockCount];

      if (!v8)
      {
        goto LABEL_8;
      }
    }

    if (![v4 isTopMarginOverridden] || (v5 = objc_msgSend(v4, "headerMargin") / 20.0, v5 > 500.0))
    {
      v5 = 34.0;
    }
  }

LABEL_8:

  return v5;
}

- (double)bottomMargin
{
  v2 = [(CMMapper *)self document];
  v3 = [v2 sections];
  v4 = [v3 objectAtIndex:0];

  if (!v4 || ![v4 isBottomMarginOverridden] || (v5 = objc_msgSend(v4, "bottomMargin") / 20.0, v5 > 500.0))
  {
    v5 = 50.0;
  }

  return v5;
}

- (id)documentTitle
{
  v3 = [(CMMapper *)self document];
  v4 = [v3 summary];

  if (v4)
  {
    v5 = [v3 summary];
    v6 = [v5 title];

    if (v6 && [v6 length])
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 oleFilename];

  if (v7 && [v7 length])
  {
    v8 = v7;
LABEL_12:
    v9 = v8;
    v6 = v8;
    goto LABEL_13;
  }

  v6 = [(WMDocumentMapper *)self fileName];

  if (v6 && [v6 length])
  {
LABEL_11:
    v8 = v6;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(CMArchiveManager *)self->super.super.mArchiver name];
    v9 = [v11 lastPathComponent];
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (int)defaultTabWidth
{
  v2 = [(CMMapper *)self document];
  v3 = v2;
  if (v2 && [v2 defaultTabWidth])
  {
    v4 = [v3 defaultTabWidth];
  }

  else
  {
    v4 = 720;
  }

  return v4;
}

- (id)blipAtIndex:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(CMMapper *)self document];
  v5 = [v4 blips];
  v6 = [v5 blipAtIndex:v3];

  return v6;
}

- (void)mapDefaultCssStylesAt:(id)a3
{
  v8 = a3;
  v3 = [OIXMLElement elementWithType:17 stringValue:@"body\n{\n-webkit-text-size-adjust: none\nfont-size:18;\n}\ndiv\n{\nmargin-top: 0;\nmargin-bottom: 0;\n}\n p\n{\nmargin-top: 0;\nmargin-bottom: 0;\nline-height: 120%\n}\n span\n{\nline-height: 120%\n}\ntable\n{\nborder-collapse: collapse;\nborder-color: black;\nfont-size:12;\n}\ntd\n{\nword-wrap:break-word\n}\n"];;
  v4 = [OIXMLAttribute attributeWithName:0x286F007F0 stringValue:0x286F07970];
  [v3 addAttribute:v4];

  [v8 addChild:v3];
  v5 = [OIXMLElement elementWithType:17 stringValue:@".bumpedFont15\n{\nfont-size:1.5em\n}\n.bumpedFont17\n{\nfont-size:1.7em;\n}\n.bumpedFont20\n{\nfont-size:2.0em;\n}\n"];;

  v6 = [OIXMLAttribute attributeWithName:0x286F007F0 stringValue:0x286F07970];
  [v5 addAttribute:v6];

  v7 = [OIXMLAttribute attributeWithName:0x286F06370 stringValue:0x286F07DD0];
  [v5 addAttribute:v7];

  [v8 addChild:v5];
}

- (id)backgroundColor
{
  v2 = [(CMMapper *)self document];
  v3 = [v2 documentBackground];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 fill];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      if ([v5 isColorOverridden])
      {
        v6 = [v5 color];

        if (v6)
        {
          v6 = [v5 color];
          v4 = v5;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mapWithState:(id)a3
{
  v64 = a3;
  v4 = [(CMMapper *)self document];
  if ([v4 sectionCount])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[CMXmlUtils copyXhtmlDocument];
    v59 = v6;
    v62 = [v6 rootElement];
    [(WMDocumentMapper *)self pageSizeForDevice];
    v8 = v7;
    v10 = v9;
    [(CMArchiveManager *)self->super.super.mArchiver setHTMLWidth:v10];
    [(CMArchiveManager *)self->super.super.mArchiver setHTMLHeight:v8];
    [(WMDocumentMapper *)self contentSizeForDevice];
    v12 = v11;
    [(WMDocumentMapper *)self leftMargin];
    v14 = v13;
    [(WMDocumentMapper *)self rightMargin];
    v16 = v15;
    [(WMDocumentMapper *)self topMargin];
    v18 = v17;
    [(WMDocumentMapper *)self headerMargin];
    v20 = v19;
    [(WMDocumentMapper *)self bottomMargin];
    v22 = v21;
    v23 = [(WMDocumentMapper *)self documentTitle];
    v24 = [CMXmlUtils copyHeadElementWithTitle:v23 deviceWidth:v10];

    v61 = v24;
    [v62 addChild:v24];
    v63 = [OIXMLElement elementWithType:1];
    v25 = objc_alloc_init(CMStyle);
    [(CMStyle *)v25 appendPropertyForName:0x286EF67B0 intValue:0];
    [(CMStyle *)v25 appendPropertyForName:0x286EF67D0 intValue:0];
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v63 style:v25];
    v26 = [OIXMLElement elementWithType:3];
    v27 = objc_alloc_init(CMStyle);

    [(CMStyle *)v27 appendPropertyForName:0x286EF4D30 stringWithColons:@":hidden;"];
    [(CMStyle *)v27 appendPropertyForName:0x286EF5C90 stringWithColons:@":relative;"];
    [(CMStyle *)v27 appendPropertyForName:0x286F082D0 stringValue:@"break-word"];
    [(CMStyle *)v27 appendPropertyForName:0x286EEA530 intValue:v12];
    [(CMStyle *)v27 appendPropertyForName:0x286F081B0 intValue:v14];
    [(CMStyle *)v27 appendPropertyForName:0x286F081D0 intValue:v16];
    [(CMStyle *)v27 appendPropertyForName:0x286F08110 intValue:844];
    if (v20 <= 0.0)
    {
      v28 = v18;
    }

    else
    {
      v28 = v20;
    }

    [(CMStyle *)v27 appendPropertyForName:0x286F081F0 intValue:v28];
    [(CMStyle *)v27 appendPropertyForName:0x286F08190 intValue:v22];
    v60 = [(WMDocumentMapper *)self backgroundColor];
    if (v60)
    {
      v29 = [CMColorProperty nsColorFromOADColor:v60 state:v64];
      [(CMStyle *)v27 appendPropertyForName:0x286F07DF0 color:v29];
    }

    [(CMMapper *)self addStyleUsingGlobalCacheTo:v26 style:v27];
    [v63 addChild:v26];
    v58 = [v4 theme];
    v57 = [v58 baseStyles];
    v30 = [v57 colorScheme];
    [v64 setColorScheme:v30];

    [(WMDocumentMapper *)self mapDefaultCssStylesAt:v24];
    mArchiver = self->super.super.mArchiver;
    v32 = [v6 openingTagString];
    [(CMArchiveManager *)mArchiver pushText:v32 toPath:0];

    v33 = self->super.super.mArchiver;
    v34 = [v62 openingTagString];
    [(CMArchiveManager *)v33 pushText:v34 toPath:0];

    v35 = self->super.super.mArchiver;
    v36 = [v24 XMLString];
    [(CMArchiveManager *)v35 pushText:v36 toPath:0];

    [(CMArchiveManager *)self->super.super.mArchiver pushCssToPath:0];
    v37 = self->super.super.mArchiver;
    v38 = [v63 openingTagString];
    [(CMArchiveManager *)v37 pushText:v38 toPath:0];

    v39 = self->super.super.mArchiver;
    v40 = [v26 openingTagString];
    context = v5;
    [(CMArchiveManager *)v39 pushText:v40 toPath:0];

    v41 = v4;
    v42 = [v4 sectionCount];
    v43 = v42;
    if (v42)
    {
      v44 = 0;
      v45 = v42 - 1;
      do
      {
        v46 = [v41 sectionAt:v44];
        v47 = [(WMDocumentMapper *)self hasSessionBreakAtIndex:v44];
        v48 = v45 == v44 || [(WMDocumentMapper *)self hasSessionBreakAtIndex:v44 + 1];
        v49 = [[WMSectionMapper alloc] initWithWDSection:v46 breakAtStart:v47 breakAtEnd:v48 parent:self];
        [(WMSectionMapper *)v49 mapAt:v26 withState:v64];

        ++v44;
      }

      while (v43 != v44);
    }

    [v62 addChild:v63];
    [(CMArchiveManager *)self->super.super.mArchiver pushCssToPath:0];
    v50 = self->super.super.mArchiver;
    v51 = [v26 closingTagString];
    [(CMArchiveManager *)v50 pushText:v51 toPath:0];

    v52 = self->super.super.mArchiver;
    v53 = [v63 closingTagString];
    [(CMArchiveManager *)v52 pushText:v53 toPath:0];

    v54 = self->super.super.mArchiver;
    v55 = [v62 closingTagString];
    [(CMArchiveManager *)v54 pushText:v55 toPath:0];

    [(CMArchiveManager *)self->super.super.mArchiver commitDataAtPath:0];
    [(CMArchiveManager *)self->super.super.mArchiver closeResourceAtPath:0];

    v4 = v41;
    objc_autoreleasePoolPop(context);
  }
}

- (id)styleMatrix
{
  v2 = [(CMMapper *)self document];
  v3 = [v2 theme];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 baseStyles];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 styleMatrix];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasSessionBreakAtIndex:(unint64_t)a3
{
  v4 = [(CMMapper *)self document];
  v5 = v4;
  if (a3)
  {
    v6 = [v4 sectionAt:a3];
    if ([v6 isBreakTypeOverridden])
    {
      v7 = [v6 breakType];
    }

    else
    {
      v7 = 2;
    }

    v8 = v7 > 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end