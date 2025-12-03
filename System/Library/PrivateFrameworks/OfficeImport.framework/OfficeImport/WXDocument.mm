@interface WXDocument
+ (id)documentFrom:(id)from reader:(id)reader cancel:(id)cancel asThumbnail:(BOOL)thumbnail;
+ (id)notePositionEnumMap;
+ (id)noteRestartEnumMap;
+ (void)notePositionEnumMap;
+ (void)noteRestartEnumMap;
+ (void)readDocBackground:(id)background XmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state;
+ (void)readDocument:(id)document to:(id)to state:(id)state;
+ (void)readDocumentSettings:(id)settings to:(id)to state:(id)state;
+ (void)readFontTable:(id)table to:(id)to state:(id)state;
+ (void)readLists:(id)lists to:(id)to state:(id)state;
+ (void)readSources:(id)sources to:(id)to state:(id)state;
+ (void)readStyles:(id)styles to:(id)to state:(id)state;
@end

@implementation WXDocument

+ (id)noteRestartEnumMap
{
  {
    +[WXDocument noteRestartEnumMap];
  }

  if (+[WXDocument noteRestartEnumMap]::onceToken != -1)
  {
    +[WXDocument noteRestartEnumMap];
  }

  v2 = +[WXDocument noteRestartEnumMap]::sNoteRestartEnumMap;

  return v2;
}

void __32__WXDocument_noteRestartEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXDocument noteRestartEnumMap]::sNoteRestartEnumStructs count:3 caseSensitive:1];
  v1 = +[WXDocument noteRestartEnumMap]::sNoteRestartEnumMap;
  +[WXDocument noteRestartEnumMap]::sNoteRestartEnumMap = v0;
}

+ (id)notePositionEnumMap
{
  {
    +[WXDocument notePositionEnumMap];
  }

  if (+[WXDocument notePositionEnumMap]::onceToken != -1)
  {
    +[WXDocument notePositionEnumMap];
  }

  v2 = +[WXDocument notePositionEnumMap]::sNotePositionEnumMap;

  return v2;
}

void __33__WXDocument_notePositionEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXDocument notePositionEnumMap]::sNotePositionEnumStructs count:2 caseSensitive:1];
  v1 = +[WXDocument notePositionEnumMap]::sNotePositionEnumMap;
  +[WXDocument notePositionEnumMap]::sNotePositionEnumMap = v0;
}

+ (id)documentFrom:(id)from reader:(id)reader cancel:(id)cancel asThumbnail:(BOOL)thumbnail
{
  thumbnailCopy = thumbnail;
  fromCopy = from;
  readerCopy = reader;
  cancelCopy = cancel;
  v13 = objc_alloc_init(WDDocument);
  [(OCDDocument *)v13 setReader:readerCopy];
  if (fromCopy && v13)
  {
    v38 = fromCopy;
    v39 = cancelCopy;
    v36 = readerCopy;
    v14 = objc_alloc_init(WXReadState);
    [(WXReadState *)v14 setDocument:v13];
    [(WXReadState *)v14 setCancelDelegate:cancelCopy];
    [(WXReadState *)v14 setIsThumbnail:thumbnailCopy];
    mainDocumentPart = [fromCopy mainDocumentPart];
    xmlReader = [(OCPPackagePart *)mainDocumentPart xmlReader];
    if (!xmlReader)
    {
      [TCMessageException raise:WXBadFormat];
    }

    if (xmlTextReaderRead(xmlReader) != 1)
    {
      xmlFreeTextReader(xmlReader);
      [TCMessageException raise:WXBadFormat];
    }

    if (xmlTextReaderNodeType(xmlReader) != 1 || (v17 = xmlTextReaderConstLocalName(xmlReader), !xmlStrEqual(v17, "document")))
    {
      xmlFreeTextReader(xmlReader);
      [TCMessageException raise:WXBadFormat];
    }

    if (OCXIsStrictXmlFile(xmlReader))
    {
      [(WXReadState *)v14 setupNSForXMLFormat:1];
    }

    xmlFreeTextReader(xmlReader);
    theme = [(OCDDocument *)v13 theme];
    v35 = theme;
    v37 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(mainDocumentPart, &v14->super.super, sel_OCXThemeRelationshipType);
    if (v37)
    {
      drawingState = [(WXReadState *)v14 drawingState];
      [OAXTheme readFromPackagePart:v37 toTheme:theme state:drawingState];
    }

    [theme validateTheme];
    drawingState2 = [(WXReadState *)v14 drawingState];
    baseStyles = [theme baseStyles];
    colorScheme = [baseStyles colorScheme];
    [drawingState2 setColorScheme:colorScheme];

    oCXFontTableRelationshipType = [(OCXState *)v14 OCXFontTableRelationshipType];
    v24 = [(OCPPackagePart *)mainDocumentPart firstPartWithRelationshipOfType:oCXFontTableRelationshipType];

    if (v24)
    {
      [self readFontTable:v24 to:v13 state:v14];
    }

    oCXStylesRelationshipType = [(OCXState *)v14 OCXStylesRelationshipType];
    v26 = [(OCPPackagePart *)mainDocumentPart firstPartWithRelationshipOfType:oCXStylesRelationshipType];

    if (v26)
    {
      [self readStyles:v26 to:v13 state:v14];
    }

    else
    {
      styleSheet = [(WDDocument *)v13 styleSheet];
      [styleSheet createDefaultStyles];
    }

    oCXNumberingRelationshipType = [(OCXState *)v14 OCXNumberingRelationshipType];
    v29 = [(OCPPackagePart *)mainDocumentPart firstPartWithRelationshipOfType:oCXNumberingRelationshipType];

    if (v29)
    {
      [self readLists:v29 to:v13 state:v14];
    }

    v30 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(mainDocumentPart, &v14->super.super, sel_OCXCustomXmlRelationshipType);
    if (v30)
    {
      [self readSources:v30 to:v13 state:v14];
    }

    oCXSettingsRelationshipType = [(OCXState *)v14 OCXSettingsRelationshipType];
    v32 = [(OCPPackagePart *)mainDocumentPart firstPartWithRelationshipOfType:oCXSettingsRelationshipType];

    if (v32)
    {
      [WXDocument readDocumentSettings:v32 to:v13 state:v14];
    }

    [(WXReadState *)v14 setDocumentPart:mainDocumentPart];
    [self readDocument:mainDocumentPart to:v13 state:v14];
    summary = [(OCDDocument *)v13 summary];
    [OCXSummary readSummary:summary package:v38];

    fromCopy = v38;
    cancelCopy = v39;
    readerCopy = v36;
  }

  return v13;
}

+ (void)readFontTable:(id)table to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  xmlDocument = [table xmlDocument];
  if (xmlDocument)
  {
    v9 = OCXGetRootElement(xmlDocument);
    fontTable = [toCopy fontTable];
    [WXFontTable readFrom:v9 to:fontTable state:stateCopy];
  }
}

+ (void)readStyles:(id)styles to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  xmlDocument = [styles xmlDocument];
  if (xmlDocument)
  {
    v9 = OCXGetRootElement(xmlDocument);
    styleSheet = [toCopy styleSheet];
    [WXStyleSheet readFrom:v9 to:styleSheet state:stateCopy];
  }
}

+ (void)readLists:(id)lists to:(id)to state:(id)state
{
  listsCopy = lists;
  toCopy = to;
  stateCopy = state;
  wxoavState = [stateCopy wxoavState];
  [wxoavState setPackagePart:listsCopy];

  drawingState = [stateCopy drawingState];
  [drawingState setPackagePart:listsCopy];

  xmlDocument = [listsCopy xmlDocument];
  if (xmlDocument)
  {
    v36 = OCXGetRootElement(xmlDocument);
    if (v36)
    {
      wXMainNamespace = [stateCopy WXMainNamespace];
      Child = OCXFindChild(v36, wXMainNamespace, "numPicBullet");

      if (Child)
      {
        imageBullets = [toCopy imageBullets];
        imageBulletParagraph = [toCopy imageBulletParagraph];
        do
        {
          wXMainNamespace2 = [stateCopy WXMainNamespace];
          if (CXCountChildren(Child, wXMainNamespace2, "pict") == 1)
          {
          }

          else
          {
            wXMainNamespace3 = [stateCopy WXMainNamespace];
            v18 = CXCountChildren(Child, wXMainNamespace3, "drawing");

            if (v18 != 1)
            {
              v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[WXDocument(Private) readLists:to:state:]"];
              v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Xml/Mapper/WXDocument.mm"];
              [OITSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:400 isFatal:0 description:"Unexpect number of office art image bullet elements."];

              +[OITSUAssertionHandler logBacktraceThrottled];
            }
          }

          wXMainNamespace4 = [stateCopy WXMainNamespace];
          v22 = OCXFindChild(Child, wXMainNamespace4, "pict");

          if (v22 || ([stateCopy WXMainNamespace], v23 = objc_claimAutoreleasedReturnValue(), v22 = OCXFindChild(Child, v23, "drawing"), v23, v22))
          {
            v24 = [WDOfficeArt alloc];
            imageBulletParagraph2 = [toCopy imageBulletParagraph];
            v26 = [(WDOfficeArt *)v24 initWithParagraph:imageBulletParagraph2];

            [WXOfficeArt readFrom:v22 parentRElement:Child parentParagraph:imageBulletParagraph state:stateCopy to:v26];
            [imageBulletParagraph addRun:v26];
            [imageBullets addObject:v26];
          }

          else
          {
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[WXDocument(Private) readLists:to:state:]"];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Xml/Mapper/WXDocument.mm"];
            [OITSUAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:407 isFatal:0 description:"WXDocument readLists: unable to find image bullet node"];

            +[OITSUAssertionHandler logBacktraceThrottled];
          }

          wXMainNamespace5 = [stateCopy WXMainNamespace];
          Child = OCXFindNextChild(Child, wXMainNamespace5, "numPicBullet");
        }

        while (Child);
      }

      listDefinitionTable = [toCopy listDefinitionTable];
      [WXListDefinitionTable readFrom:v36 to:listDefinitionTable state:stateCopy];

      listTable = [toCopy listTable];
      [WXListTable readFrom:v36 to:listTable state:stateCopy];
    }
  }

  wxoavState2 = [stateCopy wxoavState];
  [wxoavState2 setPackagePart:0];

  drawingState2 = [stateCopy drawingState];
  [drawingState2 setPackagePart:0];

  wxoavState3 = [stateCopy wxoavState];
  [wxoavState3 resetForNewDrawing];

  drawingState3 = [stateCopy drawingState];
  [drawingState3 resetForNewDrawing];
}

+ (void)readSources:(id)sources to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  xmlDocument = [sources xmlDocument];
  if (xmlDocument)
  {
    [WXCitationTable readFrom:OCXGetRootElement(xmlDocument) to:toCopy state:stateCopy];
  }
}

+ (void)readDocBackground:(id)background XmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state
{
  backgroundCopy = background;
  partCopy = part;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v25 = @"white";
  CXOptionalStringAttribute(node, wXMainNamespace, "color", &v25);
  v13 = v25;

  v14 = OCXFindChild(node, OAVOfficeMainNamespace, "background");
  if (!v14 || ([stateCopy wxoavState], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[OAVShapeManager initWithShape:type:packagePart:state:]([OAVShapeManager alloc], "initWithShape:type:packagePart:state:", v14, 0, partCopy, v15), +[OAVFill readFromManager:state:](OAVFill, "readFromManager:state:", v16, v15), v14 = objc_claimAutoreleasedReturnValue(), v16, v15, !v14) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = objc_alloc_init(OADSolidFill);
    if (v17)
    {
      if ((LODWORD(v18) = 1.0, +[OAVColor readColorFromAttribute:alpha:manager:](OAVColor, "readColorFromAttribute:alpha:manager:", v13, 0, v18), (v19 = objc_claimAutoreleasedReturnValue()) != 0) || -[__CFString rangeOfString:](v13, "rangeOfString:", @"#") == 0x7FFFFFFFFFFFFFFFLL && ([@"#" stringByAppendingString:v13], v21 = objc_claimAutoreleasedReturnValue(), LODWORD(v22) = 1.0, +[OAVColor readColorFromAttribute:alpha:manager:](OAVColor, "readColorFromAttribute:alpha:manager:", v21, 0, v22), v19 = objc_claimAutoreleasedReturnValue(), v21, v19) || (LODWORD(v20) = 1.0, +[OAVColor readColorFromAttribute:alpha:manager:](OAVColor, "readColorFromAttribute:alpha:manager:", @"white", 0, v20), (v19 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        [(OADSolidFill *)v17 setColor:v19];
        v23 = v17;

        v14 = v23;
      }
    }
  }

  v24 = objc_alloc_init(OADBackgroundProperties);
  [(OADBackgroundProperties *)v24 setFill:v14];
  [backgroundCopy setDocumentBackground:v24];
}

+ (void)readDocument:(id)document to:(id)to state:(id)state
{
  documentCopy = document;
  toCopy = to;
  stateCopy = state;
  xmlReader = [documentCopy xmlReader];
  if (!xmlReader)
  {
    [TCMessageException raise:WXBadFormat];
  }

  if (xmlTextReaderRead(xmlReader) != 1)
  {
    xmlFreeTextReader(xmlReader);
    [TCMessageException raise:WXBadFormat];
  }

  if (xmlTextReaderNodeType(xmlReader) != 1 || (v11 = xmlTextReaderConstLocalName(xmlReader), !xmlStrEqual(v11, "document")))
  {
    xmlFreeTextReader(xmlReader);
    [TCMessageException raise:WXBadFormat];
  }

  v12 = 0;
  v13 = xmlTextReaderDepth(xmlReader) + 1;
  while (xmlTextReaderRead(xmlReader) == 1)
  {
    v14 = xmlTextReaderNodeType(xmlReader);
    if (xmlTextReaderDepth(xmlReader) == v13 && v14 == 1)
    {
      v15 = xmlTextReaderConstLocalName(xmlReader);
      if (xmlStrEqual(v15, "body"))
      {
        v12 = 1;
        [WXText readFromStream:xmlReader state:stateCopy];
      }

      else if (xmlStrEqual(v15, "background"))
      {
        [self readDocBackground:toCopy XmlNode:xmlTextReaderExpand(xmlReader) packagePart:documentCopy drawingState:stateCopy];
      }
    }
  }

  xmlFreeTextReader(xmlReader);
  if ((v12 & 1) == 0)
  {
    [TCMessageException raise:WXBadFormat];
  }
}

+ (void)readDocumentSettings:(id)settings to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  xmlDocument = [settings xmlDocument];
  if (xmlDocument)
  {
    v10 = OCXGetRootElement(xmlDocument);
    if (v10)
    {
      v95 = 0;
      v91 = v10;
      if (wmxmlGetBoolOnlyProperty(v10, "evenAndOddHeaders", "val", &v95, stateCopy))
      {
        [toCopy setEvenAndOddHeaders:v95];
      }

      wXMainNamespace = [(WXReadState *)stateCopy WXMainNamespace];
      v12 = OCXFindChild(v91, wXMainNamespace, "mirrorMargins") != 0;

      [toCopy setMirrorMargins:v12];
      wXMainNamespace2 = [(WXReadState *)stateCopy WXMainNamespace];
      LODWORD(v12) = CXOptionalBoolAttribute(v91, wXMainNamespace2, "bordersDoNotSurroundHeader", &v95);

      if (v12)
      {
        [toCopy setBorderSurroundHeader:!v95];
      }

      wXMainNamespace3 = [(WXReadState *)stateCopy WXMainNamespace];
      v15 = CXOptionalBoolAttribute(v91, wXMainNamespace3, "bordersDoNotSurroundFooter", &v95);

      if (v15)
      {
        [toCopy setBorderSurroundFooter:!v95];
      }

      wXMainNamespace4 = [(WXReadState *)stateCopy WXMainNamespace];
      v17 = OCXFindChild(v91, wXMainNamespace4, "autoHyphenation");

      if (v17)
      {
        [toCopy setAutoHyphenate:1];
      }

      wXMainNamespace5 = [(WXReadState *)stateCopy WXMainNamespace];
      [toCopy setBookFold:{OCXFindChild(v91, wXMainNamespace5, "bookFoldPrinting") != 0}];

      wXMainNamespace6 = [(WXReadState *)stateCopy WXMainNamespace];
      v20 = OCXFindChild(v91, wXMainNamespace6, "gutterAtTop") != 0;

      [toCopy setGutterPosition:v20];
      wXMainNamespace7 = [(WXReadState *)stateCopy WXMainNamespace];
      v22 = OCXFindChild(v91, wXMainNamespace7, "defaultTabStop");

      wXMainNamespace8 = [(WXReadState *)stateCopy WXMainNamespace];
      LOWORD(v22) = CXDefaultLongAttribute(v22, wXMainNamespace8, "val", 0, 14);

      [toCopy setDefaultTabWidth:v22];
      wXMainNamespace9 = [(WXReadState *)stateCopy WXMainNamespace];
      v25 = OCXFindChild(v91, wXMainNamespace9, "strictFirstAndLastChars");

      if (v25)
      {
        [toCopy setKinsokuStrict:1];
      }

      wXMainNamespace10 = [(WXReadState *)stateCopy WXMainNamespace];
      v27 = OCXFindChild(v91, wXMainNamespace10, "noLineBreaksBefore");

      if (v27)
      {
        wXMainNamespace11 = [(WXReadState *)stateCopy WXMainNamespace];
        v29 = CXRequiredStringAttribute(v27, wXMainNamespace11, "val");

        [toCopy setKinsokuAltBreakBefore:v29];
      }

      wXMainNamespace12 = [(WXReadState *)stateCopy WXMainNamespace];
      v31 = OCXFindChild(v91, wXMainNamespace12, "noLineBreaksAfter");

      if (v31)
      {
        wXMainNamespace13 = [(WXReadState *)stateCopy WXMainNamespace];
        v33 = CXRequiredStringAttribute(v31, wXMainNamespace13, "val");

        [toCopy setKinsokuAltBreakAfter:v33];
      }

      wXMainNamespace14 = [(WXReadState *)stateCopy WXMainNamespace];
      v35 = OCXFindChild(v91, wXMainNamespace14, "revisionView");

      if (v35)
      {
        wXMainNamespace15 = [(WXReadState *)stateCopy WXMainNamespace];
        v37 = CXDefaultBoolAttribute(v35, wXMainNamespace15, "comments", 1);

        wXMainNamespace16 = [(WXReadState *)stateCopy WXMainNamespace];
        v39 = CXDefaultBoolAttribute(v35, wXMainNamespace16, "insDel", 1);

        wXMainNamespace17 = [(WXReadState *)stateCopy WXMainNamespace];
        v41 = CXDefaultBoolAttribute(v35, wXMainNamespace17, "formatting", 1);

        wXMainNamespace18 = [(WXReadState *)stateCopy WXMainNamespace];
        v43 = CXDefaultBoolAttribute(v35, wXMainNamespace18, "markup", 1);
      }

      else
      {
        v41 = 1;
        v39 = 1;
        v43 = 1;
        v37 = 1;
      }

      [toCopy setShowComments:v37];
      [toCopy setShowMarkup:v43];
      [toCopy setShowInsertionsAndDeletions:v39];
      [toCopy setShowFormatting:v41];
      if (wmxmlGetBoolOnlyProperty(v91, "view", "val", &v95, stateCopy))
      {
        [toCopy setShowOutline:v95];
      }

      wXMainNamespace19 = [(WXReadState *)stateCopy WXMainNamespace];
      v45 = OCXFindChild(v91, wXMainNamespace19, "trackRevisions");

      [toCopy setTrackChanges:v45 != 0];
      wXMainNamespace20 = [(WXReadState *)stateCopy WXMainNamespace];
      v47 = OCXFindChild(v91, wXMainNamespace20, "compat");

      if (v47)
      {
        wXMainNamespace21 = [(WXReadState *)stateCopy WXMainNamespace];
        v49 = OCXFindChild(v47, wXMainNamespace21, "noTabHangInd");

        if (v49)
        {
          [toCopy setNoTabForHangingIndents:1];
        }
      }

      wXMainNamespace22 = [(WXReadState *)stateCopy WXMainNamespace];
      v51 = OCXFindChild(v91, wXMainNamespace22, "footnotePr");

      if (v51)
      {
        v94 = 0;
        v52 = +[WXCommon numberFormatEnumMap];
        v53 = readEnumProperty<WDNumberFormat>(v51, "numFmt", "val", v52, &v94, stateCopy);

        if (v53)
        {
          v54 = v94;
        }

        else
        {
          v54 = 0;
        }

        [toCopy setFootnoteNumberFormat:v54];
        if (v94 == 62)
        {
          v55 = +[WXCommon customNumberFormatEnumMap];
          v56 = readEnumProperty<WDNumberFormat>(v51, "numFmt", "format", v55, &v94, stateCopy);

          if (v56)
          {
            [toCopy setFootnoteNumberFormat:v94];
          }
        }

        v93 = 0;
        noteRestartEnumMap = [v90 noteRestartEnumMap];
        v58 = readEnumProperty<WDNoteRestart>(v51, "numRestart", "val", noteRestartEnumMap, &v93, stateCopy);

        v59 = v58 ? v93 : 0;
        [toCopy setFootnoteRestart:v59];
        v92 = 0;
        notePositionEnumMap = [v90 notePositionEnumMap];
        v61 = readEnumProperty<WDNotePosition>(v51, "pos", "val", notePositionEnumMap, &v92, stateCopy);

        v62 = v61 ? v92 : 1;
        [toCopy setFootnotePosition:v62];
        wXMainNamespace23 = [(WXReadState *)stateCopy WXMainNamespace];
        v64 = OCXFindChild(v91, wXMainNamespace23, "numStart");

        wXMainNamespace24 = [(WXReadState *)stateCopy WXMainNamespace];
        LOWORD(v64) = CXDefaultLongAttribute(v64, wXMainNamespace24, "val", 1);

        [toCopy setFootnoteNumberingStart:v64];
        wXMainNamespace25 = [(WXReadState *)stateCopy WXMainNamespace];
        Child = OCXFindChild(v51, wXMainNamespace25, "footnote");

        while (Child)
        {
          Prop = xmlGetProp(Child, "type");
          if (xmlStrEqual(Prop, "separator"))
          {
            footnoteSeparator = [toCopy footnoteSeparator];
            [WXText readFrom:Child baseStyle:0 to:footnoteSeparator state:stateCopy];
          }

          else if (xmlStrEqual(Prop, "continuationSeparator"))
          {
            footnoteSeparator = [toCopy footnoteContinuationSeparator];
            [WXText readFrom:Child baseStyle:0 to:footnoteSeparator state:stateCopy];
          }

          else
          {
            if (!xmlStrEqual(Prop, "continuationNotice") && Prop)
            {
              goto LABEL_47;
            }

            footnoteSeparator = [toCopy footnoteContinuationNotice];
            [WXText readFrom:Child baseStyle:0 to:footnoteSeparator state:stateCopy];
          }

LABEL_47:
          free(Prop);
          wXMainNamespace26 = [(WXReadState *)stateCopy WXMainNamespace];
          Child = OCXFindNextChild(Child, wXMainNamespace26, "footnote");
        }
      }

      wXMainNamespace27 = [(WXReadState *)stateCopy WXMainNamespace];
      v72 = OCXFindChild(v91, wXMainNamespace27, "endnotePr");

      if (v72)
      {
        v94 = 0;
        v73 = +[WXCommon numberFormatEnumMap];
        v74 = readEnumProperty<WDNumberFormat>(v72, "numFmt", "val", v73, &v94, stateCopy);

        if (v74)
        {
          v75 = v94;
        }

        else
        {
          v75 = 0;
        }

        [toCopy setEndnoteNumberFormat:v75];
        if (v94 == 62)
        {
          v76 = +[WXCommon customNumberFormatEnumMap];
          v77 = readEnumProperty<WDNumberFormat>(v72, "numFmt", "format", v76, &v94, stateCopy);

          if (v77)
          {
            [toCopy setFootnoteNumberFormat:v94];
          }
        }

        v93 = 0;
        noteRestartEnumMap2 = [v90 noteRestartEnumMap];
        v79 = readEnumProperty<WDNoteRestart>(v72, "numRestart", "val", noteRestartEnumMap2, &v93, stateCopy);

        v80 = v79 ? v93 : 0;
        [toCopy setEndnoteRestart:v80];
        v92 = 0;
        notePositionEnumMap2 = [v90 notePositionEnumMap];
        v82 = readEnumProperty<WDNotePosition>(v72, "pos", "val", notePositionEnumMap2, &v92, stateCopy);

        v83 = v82 ? v92 : 3;
        [toCopy setEndnotePosition:v83];
        wXMainNamespace28 = [(WXReadState *)stateCopy WXMainNamespace];
        v85 = OCXFindChild(v72, wXMainNamespace28, "endnote");

        while (v85)
        {
          v86 = xmlGetProp(v85, "type");
          if (xmlStrEqual(v86, "separator"))
          {
            endnoteSeparator = [toCopy endnoteSeparator];
            [WXText readFrom:v85 baseStyle:0 to:endnoteSeparator state:stateCopy];
          }

          else if (xmlStrEqual(v86, "continuationSeparator"))
          {
            endnoteSeparator = [toCopy endnoteContinuationSeparator];
            [WXText readFrom:v85 baseStyle:0 to:endnoteSeparator state:stateCopy];
          }

          else
          {
            if (!xmlStrEqual(v86, "continuationNotice") && v86)
            {
              goto LABEL_70;
            }

            endnoteSeparator = [toCopy endnoteContinuationNotice];
            [WXText readFrom:v85 baseStyle:0 to:endnoteSeparator state:stateCopy];
          }

LABEL_70:
          free(v86);
          wXMainNamespace29 = [(WXReadState *)stateCopy WXMainNamespace];
          v85 = OCXFindNextChild(v85, wXMainNamespace29, "endnote");
        }
      }
    }
  }
}

+ (void)noteRestartEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_33, 0, &dword_25D297000);
  }
}

+ (void)notePositionEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_14_0, 0, &dword_25D297000);
  }
}

@end