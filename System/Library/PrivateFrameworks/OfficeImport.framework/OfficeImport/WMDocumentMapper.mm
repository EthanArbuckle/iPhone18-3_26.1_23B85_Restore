@interface WMDocumentMapper
- (BOOL)hasSessionBreakAtIndex:(unint64_t)index;
- (CGSize)contentSizeForDevice;
- (CGSize)pageSizeForDevice;
- (double)bottomMargin;
- (double)headerMargin;
- (double)leftMargin;
- (double)rightMargin;
- (double)topMargin;
- (id)backgroundColor;
- (id)blipAtIndex:(unsigned int)index;
- (id)documentTitle;
- (id)styleMatrix;
- (int)defaultTabWidth;
- (void)mapDefaultCssStylesAt:(id)at;
- (void)mapWithState:(id)state;
@end

@implementation WMDocumentMapper

- (CGSize)pageSizeForDevice
{
  document = [(CMMapper *)self document];
  sections = [document sections];
  v4 = [sections objectAtIndex:0];

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
  document = [(CMMapper *)self document];
  sections = [document sections];
  v5 = [sections objectAtIndex:0];

  if ([v5 isPageWidthOverridden])
  {
    pageWidth = [v5 pageWidth];
    leftMargin = [v5 leftMargin];
    v8 = ((pageWidth - (leftMargin + [v5 rightMargin])) / 20.0);
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
    pageHeight = [v5 pageHeight];
    topMargin = [v5 topMargin];
    v14 = ((pageHeight - (topMargin + [v5 bottomMargin])) / 20.0);
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
  document = [(CMMapper *)self document];
  sections = [document sections];
  v4 = [sections objectAtIndex:0];

  if (!v4 || ![v4 isLeftMarginOverridden] || (v5 = objc_msgSend(v4, "leftMargin") / 20.0, v5 > 300.0))
  {
    v5 = 80.0;
  }

  return v5;
}

- (double)rightMargin
{
  document = [(CMMapper *)self document];
  sections = [document sections];
  v4 = [sections objectAtIndex:0];

  if (!v4 || ![v4 isRightMarginOverridden] || (v5 = objc_msgSend(v4, "rightMargin") / 20.0, v5 > 300.0))
  {
    v5 = 80.0;
  }

  return v5;
}

- (double)topMargin
{
  document = [(CMMapper *)self document];
  sections = [document sections];
  v4 = [sections objectAtIndex:0];

  if (!v4 || ![v4 isTopMarginOverridden] || (v5 = objc_msgSend(v4, "topMargin") / 20.0, v5 > 500.0))
  {
    v5 = 50.0;
  }

  return v5;
}

- (double)headerMargin
{
  document = [(CMMapper *)self document];
  sections = [document sections];
  v4 = [sections objectAtIndex:0];

  v5 = 0.0;
  if (v4)
  {
    firstPageHeader = [v4 firstPageHeader];
    if ([firstPageHeader blockCount])
    {
    }

    else
    {
      oddPageHeader = [v4 oddPageHeader];
      blockCount = [oddPageHeader blockCount];

      if (!blockCount)
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
  document = [(CMMapper *)self document];
  sections = [document sections];
  v4 = [sections objectAtIndex:0];

  if (!v4 || ![v4 isBottomMarginOverridden] || (v5 = objc_msgSend(v4, "bottomMargin") / 20.0, v5 > 500.0))
  {
    v5 = 50.0;
  }

  return v5;
}

- (id)documentTitle
{
  document = [(CMMapper *)self document];
  summary = [document summary];

  if (summary)
  {
    summary2 = [document summary];
    title = [summary2 title];

    if (title && [title length])
    {
      goto LABEL_11;
    }
  }

  else
  {
    title = 0;
  }

  oleFilename = [document oleFilename];

  if (oleFilename && [oleFilename length])
  {
    v8 = oleFilename;
LABEL_12:
    lastPathComponent = v8;
    title = v8;
    goto LABEL_13;
  }

  title = [(WMDocumentMapper *)self fileName];

  if (title && [title length])
  {
LABEL_11:
    v8 = title;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [(CMArchiveManager *)self->super.super.mArchiver name];
    lastPathComponent = [name lastPathComponent];
  }

  else
  {
    lastPathComponent = 0;
  }

LABEL_13:

  return lastPathComponent;
}

- (int)defaultTabWidth
{
  document = [(CMMapper *)self document];
  v3 = document;
  if (document && [document defaultTabWidth])
  {
    defaultTabWidth = [v3 defaultTabWidth];
  }

  else
  {
    defaultTabWidth = 720;
  }

  return defaultTabWidth;
}

- (id)blipAtIndex:(unsigned int)index
{
  v3 = *&index;
  document = [(CMMapper *)self document];
  blips = [document blips];
  v6 = [blips blipAtIndex:v3];

  return v6;
}

- (void)mapDefaultCssStylesAt:(id)at
{
  atCopy = at;
  v3 = [OIXMLElement elementWithType:17 stringValue:@"body\n{\n-webkit-text-size-adjust: none\nfont-size:18;\n}\ndiv\n{\nmargin-top: 0;\nmargin-bottom: 0;\n}\n p\n{\nmargin-top: 0;\nmargin-bottom: 0;\nline-height: 120%\n}\n span\n{\nline-height: 120%\n}\ntable\n{\nborder-collapse: collapse;\nborder-color: black;\nfont-size:12;\n}\ntd\n{\nword-wrap:break-word\n}\n"];;
  v4 = [OIXMLAttribute attributeWithName:0x286F007F0 stringValue:0x286F07970];
  [v3 addAttribute:v4];

  [atCopy addChild:v3];
  v5 = [OIXMLElement elementWithType:17 stringValue:@".bumpedFont15\n{\nfont-size:1.5em\n}\n.bumpedFont17\n{\nfont-size:1.7em;\n}\n.bumpedFont20\n{\nfont-size:2.0em;\n}\n"];;

  v6 = [OIXMLAttribute attributeWithName:0x286F007F0 stringValue:0x286F07970];
  [v5 addAttribute:v6];

  v7 = [OIXMLAttribute attributeWithName:0x286F06370 stringValue:0x286F07DD0];
  [v5 addAttribute:v7];

  [atCopy addChild:v5];
}

- (id)backgroundColor
{
  document = [(CMMapper *)self document];
  documentBackground = [document documentBackground];

  if (documentBackground && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    fill = [documentBackground fill];
    if (fill && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = fill;
      if ([v5 isColorOverridden])
      {
        color = [v5 color];

        if (color)
        {
          color = [v5 color];
          fill = v5;
        }
      }

      else
      {
        color = 0;
      }
    }

    else
    {
      color = 0;
    }
  }

  else
  {
    color = 0;
  }

  return color;
}

- (void)mapWithState:(id)state
{
  stateCopy = state;
  document = [(CMMapper *)self document];
  if ([document sectionCount])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[CMXmlUtils copyXhtmlDocument];
    v59 = v6;
    rootElement = [v6 rootElement];
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
    documentTitle = [(WMDocumentMapper *)self documentTitle];
    v24 = [CMXmlUtils copyHeadElementWithTitle:documentTitle deviceWidth:v10];

    v61 = v24;
    [rootElement addChild:v24];
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
    backgroundColor = [(WMDocumentMapper *)self backgroundColor];
    if (backgroundColor)
    {
      v29 = [CMColorProperty nsColorFromOADColor:backgroundColor state:stateCopy];
      [(CMStyle *)v27 appendPropertyForName:0x286F07DF0 color:v29];
    }

    [(CMMapper *)self addStyleUsingGlobalCacheTo:v26 style:v27];
    [v63 addChild:v26];
    theme = [document theme];
    baseStyles = [theme baseStyles];
    colorScheme = [baseStyles colorScheme];
    [stateCopy setColorScheme:colorScheme];

    [(WMDocumentMapper *)self mapDefaultCssStylesAt:v24];
    mArchiver = self->super.super.mArchiver;
    openingTagString = [v6 openingTagString];
    [(CMArchiveManager *)mArchiver pushText:openingTagString toPath:0];

    v33 = self->super.super.mArchiver;
    openingTagString2 = [rootElement openingTagString];
    [(CMArchiveManager *)v33 pushText:openingTagString2 toPath:0];

    v35 = self->super.super.mArchiver;
    xMLString = [v24 XMLString];
    [(CMArchiveManager *)v35 pushText:xMLString toPath:0];

    [(CMArchiveManager *)self->super.super.mArchiver pushCssToPath:0];
    v37 = self->super.super.mArchiver;
    openingTagString3 = [v63 openingTagString];
    [(CMArchiveManager *)v37 pushText:openingTagString3 toPath:0];

    v39 = self->super.super.mArchiver;
    openingTagString4 = [v26 openingTagString];
    context = v5;
    [(CMArchiveManager *)v39 pushText:openingTagString4 toPath:0];

    v41 = document;
    sectionCount = [document sectionCount];
    v43 = sectionCount;
    if (sectionCount)
    {
      v44 = 0;
      v45 = sectionCount - 1;
      do
      {
        v46 = [v41 sectionAt:v44];
        v47 = [(WMDocumentMapper *)self hasSessionBreakAtIndex:v44];
        v48 = v45 == v44 || [(WMDocumentMapper *)self hasSessionBreakAtIndex:v44 + 1];
        v49 = [[WMSectionMapper alloc] initWithWDSection:v46 breakAtStart:v47 breakAtEnd:v48 parent:self];
        [(WMSectionMapper *)v49 mapAt:v26 withState:stateCopy];

        ++v44;
      }

      while (v43 != v44);
    }

    [rootElement addChild:v63];
    [(CMArchiveManager *)self->super.super.mArchiver pushCssToPath:0];
    v50 = self->super.super.mArchiver;
    closingTagString = [v26 closingTagString];
    [(CMArchiveManager *)v50 pushText:closingTagString toPath:0];

    v52 = self->super.super.mArchiver;
    closingTagString2 = [v63 closingTagString];
    [(CMArchiveManager *)v52 pushText:closingTagString2 toPath:0];

    v54 = self->super.super.mArchiver;
    closingTagString3 = [rootElement closingTagString];
    [(CMArchiveManager *)v54 pushText:closingTagString3 toPath:0];

    [(CMArchiveManager *)self->super.super.mArchiver commitDataAtPath:0];
    [(CMArchiveManager *)self->super.super.mArchiver closeResourceAtPath:0];

    document = v41;
    objc_autoreleasePoolPop(context);
  }
}

- (id)styleMatrix
{
  document = [(CMMapper *)self document];
  theme = [document theme];
  v4 = theme;
  if (theme)
  {
    baseStyles = [theme baseStyles];
    v6 = baseStyles;
    if (baseStyles)
    {
      styleMatrix = [baseStyles styleMatrix];
    }

    else
    {
      styleMatrix = 0;
    }
  }

  else
  {
    styleMatrix = 0;
  }

  return styleMatrix;
}

- (BOOL)hasSessionBreakAtIndex:(unint64_t)index
{
  document = [(CMMapper *)self document];
  v5 = document;
  if (index)
  {
    v6 = [document sectionAt:index];
    if ([v6 isBreakTypeOverridden])
    {
      breakType = [v6 breakType];
    }

    else
    {
      breakType = 2;
    }

    v8 = breakType > 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end