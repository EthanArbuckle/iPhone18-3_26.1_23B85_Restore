@interface WXParagraph
+ (void)readAnnotationFrom:(_xmlNode *)from paragraphNamespace:(_xmlNs *)namespace to:(id)to state:(id)state;
+ (void)readFrom:(_xmlNode *)from baseStyle:(id)style to:(id)to state:(id)state;
+ (void)readFromString:(id)string to:(id)to;
+ (void)readRFrom:(_xmlNode *)from to:(id)to targetRun:(id)run state:(id)state;
+ (void)readRunsFrom:(_xmlNode *)from paragraphNamespace:(_xmlNs *)namespace to:(id)to targetRun:(id)run state:(id)state;
+ (void)readRunsTo:(id)to state:(id)state;
+ (void)readSimpleFieldFrom:(_xmlNode *)from paragraphNamespace:(_xmlNs *)namespace to:(id)to state:(id)state;
+ (void)readTrackingFrom:(_xmlNode *)from paragraphNamespace:(_xmlNs *)namespace to:(id)to state:(id)state;
@end

@implementation WXParagraph

+ (void)readFrom:(_xmlNode *)from baseStyle:(id)style to:(id)to state:(id)state
{
  styleCopy = style;
  toCopy = to;
  stateCopy = state;
  if (!from)
  {
    goto LABEL_18;
  }

  if (toCopy)
  {
    v33 = 0;
    if (CXOptionalUnsignedAttributeFromHex8X(from, WXWord2010Namespace, "paraId", &v33))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v33];
      v13 = [OCXSTValidator isValidValue:v12 simpleType:10];

      if (v13)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v33];
        [toCopy setIdentifier:{objc_msgSend(v14, "unsignedIntegerValue")}];
      }
    }
  }

  wXMainNamespace = [stateCopy WXMainNamespace];
  v16 = OCXFindChild(from, wXMainNamespace, "pPr");

  if (v16)
  {
    properties = [toCopy properties];
    properties2 = properties;
    if (styleCopy)
    {
      [properties setBaseStyle:styleCopy];
    }

    else
    {
      document = [toCopy document];
      styleSheet = [document styleSheet];
      defaultParagraphStyle = [styleSheet defaultParagraphStyle];
      [properties2 setBaseStyle:defaultParagraphStyle];
    }

    [WXParagraphProperties readFrom:v16 to:properties2 readBaseStyle:1 state:stateCopy];
  }

  else if (styleCopy)
  {
    properties2 = [toCopy properties];
    [properties2 setBaseStyle:styleCopy];
  }

  else
  {
    document2 = [toCopy document];
    styleSheet2 = [document2 styleSheet];
    defaultParagraphStyle2 = [styleSheet2 defaultParagraphStyle];

    if (!defaultParagraphStyle2)
    {
      goto LABEL_14;
    }

    properties2 = [toCopy properties];
    document3 = [toCopy document];
    styleSheet3 = [document3 styleSheet];
    defaultParagraphStyle3 = [styleSheet3 defaultParagraphStyle];
    [properties2 setBaseStyle:defaultParagraphStyle3];
  }

LABEL_14:
  [WXParagraph readRunsTo:toCopy state:stateCopy];
  [WXParagraph readRunsFrom:from paragraphNamespace:from->ns to:toCopy targetRun:0 state:stateCopy];
  runCount = [toCopy runCount];
  if (v16)
  {
    if (!runCount)
    {
      wXMainNamespace2 = [stateCopy WXMainNamespace];
      v24 = OCXFindChild(v16, wXMainNamespace2, "rPr");

      if (v24)
      {
        addCharacterRun = [toCopy addCharacterRun];
        properties3 = [addCharacterRun properties];
        [WXCharacterProperties readFrom:v24 to:properties3 state:stateCopy];
      }
    }
  }

LABEL_18:
}

+ (void)readFromString:(id)string to:(id)to
{
  stringCopy = string;
  addCharacterRun = [to addCharacterRun];
  [addCharacterRun setString:stringCopy];
}

+ (void)readRFrom:(_xmlNode *)from to:(id)to targetRun:(id)run state:(id)state
{
  toCopy = to;
  runCopy = run;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v12 = OCXFindChild(from, wXMainNamespace, "rPr");

  for (i = OCXFirstChild(from); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "rPr"))
    {
      goto LABEL_4;
    }

    if (xmlStrEqual(i->name, "t") || xmlStrEqual(i->name, "tab") || xmlStrEqual(i->name, "ptab") || xmlStrEqual(i->name, "br") || xmlStrEqual(i->name, "delText"))
    {
      if (runCopy)
      {
        addCharacterRun = runCopy;
      }

      else
      {
        addCharacterRun = [toCopy addCharacterRun];
      }

      addFieldMarker = addCharacterRun;
      [WXCharacterRun readFrom:i to:addCharacterRun];
      properties = [addFieldMarker properties];
    }

    else
    {
      if (xmlStrEqual(i->name, "commentReference"))
      {
        properties2 = 0;
        [WXAnnotation readFrom:i to:toCopy type:2 state:stateCopy];
        goto LABEL_5;
      }

      if (xmlStrEqual(i->name, "footnoteReference") || xmlStrEqual(i->name, "endnoteReference"))
      {
        if (xmlStrEqual(i->name, "footnoteReference"))
        {
          [toCopy addFootnote];
        }

        else
        {
          [toCopy addEndnote];
        }
        addFieldMarker = ;
        v41 = 0;
        [WXNote readFrom:i to:addFieldMarker skipNextSib:&v41 state:stateCopy];
        reference = [addFieldMarker reference];
        properties2 = [reference properties];

        if (v41 == 1)
        {
          i = OCXNextSibling(i);
        }

        goto LABEL_16;
      }

      if (xmlStrEqual(i->name, "footnoteRef") || xmlStrEqual(i->name, "endnoteRef"))
      {
        addSpecialCharacter = [toCopy addSpecialCharacter];
        [(WDRubyRun *)addSpecialCharacter setCharacterType:2];
        if (v12)
        {
          goto LABEL_31;
        }

LABEL_49:

        goto LABEL_4;
      }

      if (xmlStrEqual(i->name, "pict") || xmlStrEqual(i->name, "drawing") || xmlStrEqual(i->name, "object"))
      {
        p_super = [[WDOfficeArt alloc] initWithParagraph:toCopy];
        v21 = [WDCharacterProperties alloc];
        document = [toCopy document];
        addSymbol = [(WDCharacterProperties *)v21 initWithDocument:document];

        [WXCharacterProperties applyDeletionInsertionProperties:addSymbol state:stateCopy];
        if (v12)
        {
          [WXCharacterProperties readFrom:v12 to:addSymbol state:stateCopy];
        }

        [(WDRunWithCharacterProperties *)p_super setProperties:addSymbol];
        [WXOfficeArt readFrom:i parentRElement:from parentParagraph:toCopy state:stateCopy to:p_super];
        if ([(WDOfficeArt *)p_super isDrawableOverridden])
        {
          drawable = [(WDOfficeArt *)p_super drawable];
          v37 = addSymbol;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_41;
          }

          isFloating = [(WDOfficeArt *)p_super isFloating];

          if (!isFloating)
          {
            v25 = [(WDOfficeArt *)[WDPicture alloc] initWithParagraph:toCopy];
            drawable = p_super;
            properties3 = [(WDRunWithCharacterProperties *)p_super properties];
            [(WDRunWithCharacterProperties *)v25 setProperties:properties3];

            drawable2 = [(WDOfficeArt *)p_super drawable];
            [(WDOfficeArt *)v25 setDrawable:drawable2];

            [(WDOfficeArt *)v25 setFloating:0];
            p_super = &v25->super;
LABEL_41:
          }

          p_super = p_super;
          drawable3 = [(WDOfficeArt *)p_super drawable];
          objc_opt_class();
          relativeString = p_super;
          if (objc_opt_isKindOfClass())
          {
            v29 = drawable3;
            v30 = [v29 ole];

            relativeString = p_super;
            if (v30)
            {
              relativeString = [(WDOfficeArt *)[WDOleObject alloc] initWithParagraph:toCopy];
              properties4 = [(WDRunWithCharacterProperties *)p_super properties];
              [(WDRunWithCharacterProperties *)relativeString setProperties:properties4];

              drawable4 = [(WDOfficeArt *)p_super drawable];
              [(WDOfficeArt *)relativeString setDrawable:drawable4];

              [(WDOfficeArt *)relativeString setFloating:[(WDOfficeArt *)p_super isFloating]];
            }
          }

          [toCopy addRun:relativeString];
          [(WDOfficeArt *)p_super propagateTextTypeToDrawables];

          addSymbol = v37;
LABEL_46:
        }

        addSpecialCharacter = p_super;
LABEL_48:

        goto LABEL_49;
      }

      if (xmlStrEqual(i->name, "contentPart"))
      {
        p_super = [stateCopy packagePart];
        addSymbol = [stateCopy OCXReadRequiredRelationshipForNode:i packagePart:p_super];
        targetLocation = [(WDCharacterProperties *)addSymbol targetLocation];
        relativeString = [targetLocation relativeString];

        [TCMessageContext reportWarning:OAUnsupportedMediaType, relativeString];
        goto LABEL_46;
      }

      if (!xmlStrEqual(i->name, "fldChar"))
      {
        if (!xmlStrEqual(i->name, "instrText"))
        {
          if (xmlStrEqual(i->name, "annotation"))
          {
            goto LABEL_4;
          }

          if (xmlStrEqual(i->name, "sym"))
          {
            addSpecialCharacter = [stateCopy readSymbolTo];
            if (addSpecialCharacter)
            {
              [stateCopy setReadSymbolTo:0];
              [WXSymbol readFrom:i to:addSpecialCharacter state:stateCopy];
              if (v12)
              {
                properties5 = [(WDRunWithCharacterProperties *)addSpecialCharacter properties];
                [WXCharacterProperties readFrom:v12 to:properties5 state:stateCopy];
              }
            }

            addSymbol = [toCopy addSymbol];
            [WXSymbol readFrom:i parentRElement:from to:addSymbol state:stateCopy];
          }

          else
          {
            if (!xmlStrEqual(i->name, "pgNum"))
            {
              if (xmlStrEqual(i->name, "ruby"))
              {
                addSpecialCharacter = [[WDRubyRun alloc] initWithParagraph:toCopy];
                [WXRubyRun readFrom:i to:addSpecialCharacter state:stateCopy];
                [toCopy addRun:addSpecialCharacter];
                goto LABEL_49;
              }

LABEL_4:
              properties2 = 0;
              goto LABEL_5;
            }

            addSpecialCharacter = [toCopy addSpecialCharacter];
            [(WDRubyRun *)addSpecialCharacter setCharacterType:0];
            if (!v12)
            {
              goto LABEL_49;
            }

LABEL_31:
            addSymbol = [(WDRunWithCharacterProperties *)addSpecialCharacter properties];
            [WXCharacterProperties readFrom:v12 to:addSymbol state:stateCopy];
          }

          goto LABEL_48;
        }

        if (runCopy)
        {
          addCharacterRun2 = runCopy;
        }

        else
        {
          addCharacterRun2 = [toCopy addCharacterRun];
        }

        addFieldMarker = addCharacterRun2;
        properties2 = [addCharacterRun2 properties];
        v36 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:i];
        [addFieldMarker setString:v36];

        goto LABEL_16;
      }

      addFieldMarker = [toCopy addFieldMarker];
      [WXFieldMarker readFrom:i to:addFieldMarker];
      properties = [addFieldMarker properties];
    }

    properties2 = properties;
LABEL_16:

    if (properties2)
    {
      [WXCharacterProperties applyDeletionInsertionProperties:properties2 state:stateCopy];
      if (v12)
      {
        [WXCharacterProperties readFrom:v12 to:properties2 state:stateCopy];
      }
    }

LABEL_5:
  }
}

+ (void)readTrackingFrom:(_xmlNode *)from paragraphNamespace:(_xmlNs *)namespace to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  v10 = wmxmlGetAuthorProperty(from);
  v11 = wmxmlGetDateProperty(from);
  if (xmlStrEqual(from->name, "ins"))
  {
    [stateCopy pushEditAuthor:v10 date:v11];
    [WXParagraph readRunsFrom:from paragraphNamespace:namespace to:toCopy targetRun:0 state:stateCopy];
    [stateCopy popEditAuthorDate];
  }

  else if (xmlStrEqual(from->name, "del"))
  {
    [stateCopy pushDeleteAuthor:v10 date:v11];
    [WXParagraph readRunsFrom:from paragraphNamespace:namespace to:toCopy targetRun:0 state:stateCopy];
    [stateCopy popDeleteAuthorDate];
  }
}

+ (void)readRunsFrom:(_xmlNode *)from paragraphNamespace:(_xmlNs *)namespace to:(id)to targetRun:(id)run state:(id)state
{
  toCopy = to;
  runCopy = run;
  stateCopy = state;
  for (i = OCXFirstChild(from); i; i = OCXNextSibling(i))
  {
    if (!sfaxmlNsEqual(i->ns, namespace))
    {
      drawingState = [stateCopy drawingState];
      oAXMathNamespace = [drawingState OAXMathNamespace];
      if ([oAXMathNamespace containsNode:i])
      {
        readingMath = [stateCopy readingMath];

        if ((readingMath & 1) == 0)
        {
          [stateCopy setReadingMath:1];
          [WXMath readMathRootFrom:i paragraphNamespace:namespace to:toCopy targetRun:runCopy state:stateCopy];
          [stateCopy setReadingMath:0];
          continue;
        }
      }

      else
      {
      }

LABEL_14:
      [WXParagraph readRunsFrom:i paragraphNamespace:namespace to:toCopy targetRun:runCopy state:stateCopy];
      continue;
    }

    if (xmlStrEqual(i->name, "smartTag"))
    {
      goto LABEL_14;
    }

    if (xmlStrEqual(i->name, "bdo"))
    {
      wXMainNamespace = [stateCopy WXMainNamespace];
      addBookmark = CXRequiredStringAttribute(i, wXMainNamespace, "dir");

      if (([addBookmark isEqualToString:@"rtl"] & 1) != 0 || objc_msgSend(addBookmark, "isEqualToString:", @"ltr"))
      {
        [WXParagraph readRunsFrom:i paragraphNamespace:namespace to:toCopy targetRun:runCopy state:stateCopy];
      }

      goto LABEL_9;
    }

    if (xmlStrEqual(i->name, "r"))
    {
      [WXParagraph readRFrom:i to:toCopy targetRun:runCopy state:stateCopy];
      continue;
    }

    if (xmlStrEqual(i->name, "fldSimple"))
    {
      [WXParagraph readSimpleFieldFrom:i paragraphNamespace:namespace to:toCopy state:stateCopy];
      continue;
    }

    if (xmlStrEqual(i->name, "hyperlink"))
    {
      [WXHyperlinkFieldMarker readFrom:i paragraphNamespace:namespace to:toCopy state:stateCopy];
      continue;
    }

    if (xmlStrEqual(i->name, "commentRangeStart"))
    {
      v19 = 0;
LABEL_28:
      [WXAnnotation readFrom:i to:toCopy type:v19 state:stateCopy];
      continue;
    }

    if (xmlStrEqual(i->name, "commentRangeEnd"))
    {
      v19 = 1;
      goto LABEL_28;
    }

    if (xmlStrEqual(i->name, "commentReference"))
    {
      v19 = 2;
      goto LABEL_28;
    }

    if (xmlStrEqual(i->name, "bookmarkStart") || xmlStrEqual(i->name, "bookmarkEnd"))
    {
      addBookmark = [toCopy addBookmark];
      [WXBookmark readFrom:i to:addBookmark state:stateCopy];
LABEL_9:

      continue;
    }

    if (xmlStrEqual(i->name, "ins") || xmlStrEqual(i->name, "del"))
    {
      [WXParagraph readTrackingFrom:i paragraphNamespace:namespace to:toCopy state:stateCopy];
    }

    else if (xmlStrEqual(i->name, "sdt"))
    {
      [TCMessageContext reportWarning:WXFormsNotSupported];
      wXMainNamespace2 = [stateCopy WXMainNamespace];
      v21 = OCXFindChild(i, wXMainNamespace2, "sdtContent");

      if (v21)
      {
        [WXParagraph readRunsFrom:v21 paragraphNamespace:namespace to:toCopy targetRun:runCopy state:stateCopy];
      }
    }
  }
}

+ (void)readRunsTo:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  text = [toCopy text];
  v7 = [stateCopy nodesToBeAdded:text];

  v8 = 0;
  while (1)
  {
    nextObject = [v7 nextObject];

    if (!nextObject)
    {
      break;
    }

    longValue = [nextObject longValue];
    v8 = nextObject;
    if (xmlStrEqual(*(longValue + 16), "annotation"))
    {
      [WXParagraph readAnnotationFrom:longValue paragraphNamespace:0 to:toCopy state:stateCopy];
      v8 = nextObject;
    }
  }

  text2 = [toCopy text];
  [stateCopy clearOutNodesToBeAdded:text2];
}

+ (void)readSimpleFieldFrom:(_xmlNode *)from paragraphNamespace:(_xmlNs *)namespace to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  v10 = [toCopy addFieldMarker:19];
  addCharacterRun = [toCopy addCharacterRun];
  wXMainNamespace = [stateCopy WXMainNamespace];
  v13 = CXRequiredStringAttribute(from, wXMainNamespace, "instr");
  [addCharacterRun setString:v13];

  v14 = [toCopy addFieldMarker:20];
  [WXParagraph readRunsFrom:from paragraphNamespace:namespace to:toCopy targetRun:0 state:stateCopy];
  v15 = [toCopy addFieldMarker:21];
}

+ (void)readAnnotationFrom:(_xmlNode *)from paragraphNamespace:(_xmlNs *)namespace to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v10 = CXRequiredStringAttribute(from, wXMainNamespace, "type");

  if ([v10 hasPrefix:@"wordBookmark"])
  {
    addBookmark = [toCopy addBookmark];
    [WXBookmark readFrom:from to:addBookmark state:stateCopy];

    goto LABEL_8;
  }

  if ([v10 isEqualToString:@"wordCommentStart"])
  {
    v12 = 0;
  }

  else
  {
    if (![v10 isEqualToString:@"wordCommentEnd"])
    {
      goto LABEL_8;
    }

    v12 = 1;
  }

  [WXAnnotation readFrom:from to:toCopy type:v12 state:stateCopy];
LABEL_8:
}

@end