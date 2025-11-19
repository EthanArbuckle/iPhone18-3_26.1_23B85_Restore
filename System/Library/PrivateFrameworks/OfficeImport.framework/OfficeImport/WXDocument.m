@interface WXDocument
+ (id)documentFrom:(id)a3 reader:(id)a4 cancel:(id)a5 asThumbnail:(BOOL)a6;
+ (id)notePositionEnumMap;
+ (id)noteRestartEnumMap;
+ (void)notePositionEnumMap;
+ (void)noteRestartEnumMap;
+ (void)readDocBackground:(id)a3 XmlNode:(_xmlNode *)a4 packagePart:(id)a5 drawingState:(id)a6;
+ (void)readDocument:(id)a3 to:(id)a4 state:(id)a5;
+ (void)readDocumentSettings:(id)a3 to:(id)a4 state:(id)a5;
+ (void)readFontTable:(id)a3 to:(id)a4 state:(id)a5;
+ (void)readLists:(id)a3 to:(id)a4 state:(id)a5;
+ (void)readSources:(id)a3 to:(id)a4 state:(id)a5;
+ (void)readStyles:(id)a3 to:(id)a4 state:(id)a5;
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

+ (id)documentFrom:(id)a3 reader:(id)a4 cancel:(id)a5 asThumbnail:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(WDDocument);
  [(OCDDocument *)v13 setReader:v11];
  if (v10 && v13)
  {
    v38 = v10;
    v39 = v12;
    v36 = v11;
    v14 = objc_alloc_init(WXReadState);
    [(WXReadState *)v14 setDocument:v13];
    [(WXReadState *)v14 setCancelDelegate:v12];
    [(WXReadState *)v14 setIsThumbnail:v6];
    v15 = [v10 mainDocumentPart];
    v16 = [(OCPPackagePart *)v15 xmlReader];
    if (!v16)
    {
      [TCMessageException raise:WXBadFormat];
    }

    if (xmlTextReaderRead(v16) != 1)
    {
      xmlFreeTextReader(v16);
      [TCMessageException raise:WXBadFormat];
    }

    if (xmlTextReaderNodeType(v16) != 1 || (v17 = xmlTextReaderConstLocalName(v16), !xmlStrEqual(v17, "document")))
    {
      xmlFreeTextReader(v16);
      [TCMessageException raise:WXBadFormat];
    }

    if (OCXIsStrictXmlFile(v16))
    {
      [(WXReadState *)v14 setupNSForXMLFormat:1];
    }

    xmlFreeTextReader(v16);
    v18 = [(OCDDocument *)v13 theme];
    v35 = v18;
    v37 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(v15, &v14->super.super, sel_OCXThemeRelationshipType);
    if (v37)
    {
      v19 = [(WXReadState *)v14 drawingState];
      [OAXTheme readFromPackagePart:v37 toTheme:v18 state:v19];
    }

    [v18 validateTheme];
    v20 = [(WXReadState *)v14 drawingState];
    v21 = [v18 baseStyles];
    v22 = [v21 colorScheme];
    [v20 setColorScheme:v22];

    v23 = [(OCXState *)v14 OCXFontTableRelationshipType];
    v24 = [(OCPPackagePart *)v15 firstPartWithRelationshipOfType:v23];

    if (v24)
    {
      [a1 readFontTable:v24 to:v13 state:v14];
    }

    v25 = [(OCXState *)v14 OCXStylesRelationshipType];
    v26 = [(OCPPackagePart *)v15 firstPartWithRelationshipOfType:v25];

    if (v26)
    {
      [a1 readStyles:v26 to:v13 state:v14];
    }

    else
    {
      v27 = [(WDDocument *)v13 styleSheet];
      [v27 createDefaultStyles];
    }

    v28 = [(OCXState *)v14 OCXNumberingRelationshipType];
    v29 = [(OCPPackagePart *)v15 firstPartWithRelationshipOfType:v28];

    if (v29)
    {
      [a1 readLists:v29 to:v13 state:v14];
    }

    v30 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(v15, &v14->super.super, sel_OCXCustomXmlRelationshipType);
    if (v30)
    {
      [a1 readSources:v30 to:v13 state:v14];
    }

    v31 = [(OCXState *)v14 OCXSettingsRelationshipType];
    v32 = [(OCPPackagePart *)v15 firstPartWithRelationshipOfType:v31];

    if (v32)
    {
      [WXDocument readDocumentSettings:v32 to:v13 state:v14];
    }

    [(WXReadState *)v14 setDocumentPart:v15];
    [a1 readDocument:v15 to:v13 state:v14];
    v33 = [(OCDDocument *)v13 summary];
    [OCXSummary readSummary:v33 package:v38];

    v10 = v38;
    v12 = v39;
    v11 = v36;
  }

  return v13;
}

+ (void)readFontTable:(id)a3 to:(id)a4 state:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [a3 xmlDocument];
  if (v8)
  {
    v9 = OCXGetRootElement(v8);
    v10 = [v11 fontTable];
    [WXFontTable readFrom:v9 to:v10 state:v7];
  }
}

+ (void)readStyles:(id)a3 to:(id)a4 state:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [a3 xmlDocument];
  if (v8)
  {
    v9 = OCXGetRootElement(v8);
    v10 = [v11 styleSheet];
    [WXStyleSheet readFrom:v9 to:v10 state:v7];
  }
}

+ (void)readLists:(id)a3 to:(id)a4 state:(id)a5
{
  v37 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 wxoavState];
  [v9 setPackagePart:v37];

  v10 = [v8 drawingState];
  [v10 setPackagePart:v37];

  v11 = [v37 xmlDocument];
  if (v11)
  {
    v36 = OCXGetRootElement(v11);
    if (v36)
    {
      v12 = [v8 WXMainNamespace];
      Child = OCXFindChild(v36, v12, "numPicBullet");

      if (Child)
      {
        v14 = [v7 imageBullets];
        v15 = [v7 imageBulletParagraph];
        do
        {
          v16 = [v8 WXMainNamespace];
          if (CXCountChildren(Child, v16, "pict") == 1)
          {
          }

          else
          {
            v17 = [v8 WXMainNamespace];
            v18 = CXCountChildren(Child, v17, "drawing");

            if (v18 != 1)
            {
              v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[WXDocument(Private) readLists:to:state:]"];
              v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Xml/Mapper/WXDocument.mm"];
              [OITSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:400 isFatal:0 description:"Unexpect number of office art image bullet elements."];

              +[OITSUAssertionHandler logBacktraceThrottled];
            }
          }

          v21 = [v8 WXMainNamespace];
          v22 = OCXFindChild(Child, v21, "pict");

          if (v22 || ([v8 WXMainNamespace], v23 = objc_claimAutoreleasedReturnValue(), v22 = OCXFindChild(Child, v23, "drawing"), v23, v22))
          {
            v24 = [WDOfficeArt alloc];
            v25 = [v7 imageBulletParagraph];
            v26 = [(WDOfficeArt *)v24 initWithParagraph:v25];

            [WXOfficeArt readFrom:v22 parentRElement:Child parentParagraph:v15 state:v8 to:v26];
            [v15 addRun:v26];
            [v14 addObject:v26];
          }

          else
          {
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[WXDocument(Private) readLists:to:state:]"];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Xml/Mapper/WXDocument.mm"];
            [OITSUAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:407 isFatal:0 description:"WXDocument readLists: unable to find image bullet node"];

            +[OITSUAssertionHandler logBacktraceThrottled];
          }

          v27 = [v8 WXMainNamespace];
          Child = OCXFindNextChild(Child, v27, "numPicBullet");
        }

        while (Child);
      }

      v30 = [v7 listDefinitionTable];
      [WXListDefinitionTable readFrom:v36 to:v30 state:v8];

      v31 = [v7 listTable];
      [WXListTable readFrom:v36 to:v31 state:v8];
    }
  }

  v32 = [v8 wxoavState];
  [v32 setPackagePart:0];

  v33 = [v8 drawingState];
  [v33 setPackagePart:0];

  v34 = [v8 wxoavState];
  [v34 resetForNewDrawing];

  v35 = [v8 drawingState];
  [v35 resetForNewDrawing];
}

+ (void)readSources:(id)a3 to:(id)a4 state:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [a3 xmlDocument];
  if (v8)
  {
    [WXCitationTable readFrom:OCXGetRootElement(v8) to:v9 state:v7];
  }
}

+ (void)readDocBackground:(id)a3 XmlNode:(_xmlNode *)a4 packagePart:(id)a5 drawingState:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v11 WXMainNamespace];
  v25 = @"white";
  CXOptionalStringAttribute(a4, v12, "color", &v25);
  v13 = v25;

  v14 = OCXFindChild(a4, OAVOfficeMainNamespace, "background");
  if (!v14 || ([v11 wxoavState], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[OAVShapeManager initWithShape:type:packagePart:state:]([OAVShapeManager alloc], "initWithShape:type:packagePart:state:", v14, 0, v10, v15), +[OAVFill readFromManager:state:](OAVFill, "readFromManager:state:", v16, v15), v14 = objc_claimAutoreleasedReturnValue(), v16, v15, !v14) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
  [v9 setDocumentBackground:v24];
}

+ (void)readDocument:(id)a3 to:(id)a4 state:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v16 xmlReader];
  if (!v10)
  {
    [TCMessageException raise:WXBadFormat];
  }

  if (xmlTextReaderRead(v10) != 1)
  {
    xmlFreeTextReader(v10);
    [TCMessageException raise:WXBadFormat];
  }

  if (xmlTextReaderNodeType(v10) != 1 || (v11 = xmlTextReaderConstLocalName(v10), !xmlStrEqual(v11, "document")))
  {
    xmlFreeTextReader(v10);
    [TCMessageException raise:WXBadFormat];
  }

  v12 = 0;
  v13 = xmlTextReaderDepth(v10) + 1;
  while (xmlTextReaderRead(v10) == 1)
  {
    v14 = xmlTextReaderNodeType(v10);
    if (xmlTextReaderDepth(v10) == v13 && v14 == 1)
    {
      v15 = xmlTextReaderConstLocalName(v10);
      if (xmlStrEqual(v15, "body"))
      {
        v12 = 1;
        [WXText readFromStream:v10 state:v9];
      }

      else if (xmlStrEqual(v15, "background"))
      {
        [a1 readDocBackground:v8 XmlNode:xmlTextReaderExpand(v10) packagePart:v16 drawingState:v9];
      }
    }
  }

  xmlFreeTextReader(v10);
  if ((v12 & 1) == 0)
  {
    [TCMessageException raise:WXBadFormat];
  }
}

+ (void)readDocumentSettings:(id)a3 to:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 xmlDocument];
  if (v9)
  {
    v10 = OCXGetRootElement(v9);
    if (v10)
    {
      v95 = 0;
      v91 = v10;
      if (wmxmlGetBoolOnlyProperty(v10, "evenAndOddHeaders", "val", &v95, v8))
      {
        [v7 setEvenAndOddHeaders:v95];
      }

      v11 = [(WXReadState *)v8 WXMainNamespace];
      v12 = OCXFindChild(v91, v11, "mirrorMargins") != 0;

      [v7 setMirrorMargins:v12];
      v13 = [(WXReadState *)v8 WXMainNamespace];
      LODWORD(v12) = CXOptionalBoolAttribute(v91, v13, "bordersDoNotSurroundHeader", &v95);

      if (v12)
      {
        [v7 setBorderSurroundHeader:!v95];
      }

      v14 = [(WXReadState *)v8 WXMainNamespace];
      v15 = CXOptionalBoolAttribute(v91, v14, "bordersDoNotSurroundFooter", &v95);

      if (v15)
      {
        [v7 setBorderSurroundFooter:!v95];
      }

      v16 = [(WXReadState *)v8 WXMainNamespace];
      v17 = OCXFindChild(v91, v16, "autoHyphenation");

      if (v17)
      {
        [v7 setAutoHyphenate:1];
      }

      v18 = [(WXReadState *)v8 WXMainNamespace];
      [v7 setBookFold:{OCXFindChild(v91, v18, "bookFoldPrinting") != 0}];

      v19 = [(WXReadState *)v8 WXMainNamespace];
      v20 = OCXFindChild(v91, v19, "gutterAtTop") != 0;

      [v7 setGutterPosition:v20];
      v21 = [(WXReadState *)v8 WXMainNamespace];
      v22 = OCXFindChild(v91, v21, "defaultTabStop");

      v23 = [(WXReadState *)v8 WXMainNamespace];
      LOWORD(v22) = CXDefaultLongAttribute(v22, v23, "val", 0, 14);

      [v7 setDefaultTabWidth:v22];
      v24 = [(WXReadState *)v8 WXMainNamespace];
      v25 = OCXFindChild(v91, v24, "strictFirstAndLastChars");

      if (v25)
      {
        [v7 setKinsokuStrict:1];
      }

      v26 = [(WXReadState *)v8 WXMainNamespace];
      v27 = OCXFindChild(v91, v26, "noLineBreaksBefore");

      if (v27)
      {
        v28 = [(WXReadState *)v8 WXMainNamespace];
        v29 = CXRequiredStringAttribute(v27, v28, "val");

        [v7 setKinsokuAltBreakBefore:v29];
      }

      v30 = [(WXReadState *)v8 WXMainNamespace];
      v31 = OCXFindChild(v91, v30, "noLineBreaksAfter");

      if (v31)
      {
        v32 = [(WXReadState *)v8 WXMainNamespace];
        v33 = CXRequiredStringAttribute(v31, v32, "val");

        [v7 setKinsokuAltBreakAfter:v33];
      }

      v34 = [(WXReadState *)v8 WXMainNamespace];
      v35 = OCXFindChild(v91, v34, "revisionView");

      if (v35)
      {
        v36 = [(WXReadState *)v8 WXMainNamespace];
        v37 = CXDefaultBoolAttribute(v35, v36, "comments", 1);

        v38 = [(WXReadState *)v8 WXMainNamespace];
        v39 = CXDefaultBoolAttribute(v35, v38, "insDel", 1);

        v40 = [(WXReadState *)v8 WXMainNamespace];
        v41 = CXDefaultBoolAttribute(v35, v40, "formatting", 1);

        v42 = [(WXReadState *)v8 WXMainNamespace];
        v43 = CXDefaultBoolAttribute(v35, v42, "markup", 1);
      }

      else
      {
        v41 = 1;
        v39 = 1;
        v43 = 1;
        v37 = 1;
      }

      [v7 setShowComments:v37];
      [v7 setShowMarkup:v43];
      [v7 setShowInsertionsAndDeletions:v39];
      [v7 setShowFormatting:v41];
      if (wmxmlGetBoolOnlyProperty(v91, "view", "val", &v95, v8))
      {
        [v7 setShowOutline:v95];
      }

      v44 = [(WXReadState *)v8 WXMainNamespace];
      v45 = OCXFindChild(v91, v44, "trackRevisions");

      [v7 setTrackChanges:v45 != 0];
      v46 = [(WXReadState *)v8 WXMainNamespace];
      v47 = OCXFindChild(v91, v46, "compat");

      if (v47)
      {
        v48 = [(WXReadState *)v8 WXMainNamespace];
        v49 = OCXFindChild(v47, v48, "noTabHangInd");

        if (v49)
        {
          [v7 setNoTabForHangingIndents:1];
        }
      }

      v50 = [(WXReadState *)v8 WXMainNamespace];
      v51 = OCXFindChild(v91, v50, "footnotePr");

      if (v51)
      {
        v94 = 0;
        v52 = +[WXCommon numberFormatEnumMap];
        v53 = readEnumProperty<WDNumberFormat>(v51, "numFmt", "val", v52, &v94, v8);

        if (v53)
        {
          v54 = v94;
        }

        else
        {
          v54 = 0;
        }

        [v7 setFootnoteNumberFormat:v54];
        if (v94 == 62)
        {
          v55 = +[WXCommon customNumberFormatEnumMap];
          v56 = readEnumProperty<WDNumberFormat>(v51, "numFmt", "format", v55, &v94, v8);

          if (v56)
          {
            [v7 setFootnoteNumberFormat:v94];
          }
        }

        v93 = 0;
        v57 = [v90 noteRestartEnumMap];
        v58 = readEnumProperty<WDNoteRestart>(v51, "numRestart", "val", v57, &v93, v8);

        v59 = v58 ? v93 : 0;
        [v7 setFootnoteRestart:v59];
        v92 = 0;
        v60 = [v90 notePositionEnumMap];
        v61 = readEnumProperty<WDNotePosition>(v51, "pos", "val", v60, &v92, v8);

        v62 = v61 ? v92 : 1;
        [v7 setFootnotePosition:v62];
        v63 = [(WXReadState *)v8 WXMainNamespace];
        v64 = OCXFindChild(v91, v63, "numStart");

        v65 = [(WXReadState *)v8 WXMainNamespace];
        LOWORD(v64) = CXDefaultLongAttribute(v64, v65, "val", 1);

        [v7 setFootnoteNumberingStart:v64];
        v66 = [(WXReadState *)v8 WXMainNamespace];
        Child = OCXFindChild(v51, v66, "footnote");

        while (Child)
        {
          Prop = xmlGetProp(Child, "type");
          if (xmlStrEqual(Prop, "separator"))
          {
            v69 = [v7 footnoteSeparator];
            [WXText readFrom:Child baseStyle:0 to:v69 state:v8];
          }

          else if (xmlStrEqual(Prop, "continuationSeparator"))
          {
            v69 = [v7 footnoteContinuationSeparator];
            [WXText readFrom:Child baseStyle:0 to:v69 state:v8];
          }

          else
          {
            if (!xmlStrEqual(Prop, "continuationNotice") && Prop)
            {
              goto LABEL_47;
            }

            v69 = [v7 footnoteContinuationNotice];
            [WXText readFrom:Child baseStyle:0 to:v69 state:v8];
          }

LABEL_47:
          free(Prop);
          v70 = [(WXReadState *)v8 WXMainNamespace];
          Child = OCXFindNextChild(Child, v70, "footnote");
        }
      }

      v71 = [(WXReadState *)v8 WXMainNamespace];
      v72 = OCXFindChild(v91, v71, "endnotePr");

      if (v72)
      {
        v94 = 0;
        v73 = +[WXCommon numberFormatEnumMap];
        v74 = readEnumProperty<WDNumberFormat>(v72, "numFmt", "val", v73, &v94, v8);

        if (v74)
        {
          v75 = v94;
        }

        else
        {
          v75 = 0;
        }

        [v7 setEndnoteNumberFormat:v75];
        if (v94 == 62)
        {
          v76 = +[WXCommon customNumberFormatEnumMap];
          v77 = readEnumProperty<WDNumberFormat>(v72, "numFmt", "format", v76, &v94, v8);

          if (v77)
          {
            [v7 setFootnoteNumberFormat:v94];
          }
        }

        v93 = 0;
        v78 = [v90 noteRestartEnumMap];
        v79 = readEnumProperty<WDNoteRestart>(v72, "numRestart", "val", v78, &v93, v8);

        v80 = v79 ? v93 : 0;
        [v7 setEndnoteRestart:v80];
        v92 = 0;
        v81 = [v90 notePositionEnumMap];
        v82 = readEnumProperty<WDNotePosition>(v72, "pos", "val", v81, &v92, v8);

        v83 = v82 ? v92 : 3;
        [v7 setEndnotePosition:v83];
        v84 = [(WXReadState *)v8 WXMainNamespace];
        v85 = OCXFindChild(v72, v84, "endnote");

        while (v85)
        {
          v86 = xmlGetProp(v85, "type");
          if (xmlStrEqual(v86, "separator"))
          {
            v87 = [v7 endnoteSeparator];
            [WXText readFrom:v85 baseStyle:0 to:v87 state:v8];
          }

          else if (xmlStrEqual(v86, "continuationSeparator"))
          {
            v87 = [v7 endnoteContinuationSeparator];
            [WXText readFrom:v85 baseStyle:0 to:v87 state:v8];
          }

          else
          {
            if (!xmlStrEqual(v86, "continuationNotice") && v86)
            {
              goto LABEL_70;
            }

            v87 = [v7 endnoteContinuationNotice];
            [WXText readFrom:v85 baseStyle:0 to:v87 state:v8];
          }

LABEL_70:
          free(v86);
          v88 = [(WXReadState *)v8 WXMainNamespace];
          v85 = OCXFindNextChild(v85, v88, "endnote");
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