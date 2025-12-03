@interface WBDocument
+ (id)readFrom:(id)from;
+ (void)readNoteSeparatorFrom:(id)from type:(int)type separator:(id)separator;
+ (void)readProperties:(id)properties document:(id)document;
+ (void)readSectionsFrom:(id)from document:(id)document;
+ (void)readTextBoxesFrom:(id)from;
+ (void)setTimeStamp:(WrdDocumentProperties *)stamp;
+ (void)setupZIndices:(id)indices document:(id)document escherType:(int)type;
- (WBDocument)init;
@end

@implementation WBDocument

- (WBDocument)init
{
  v3.receiver = self;
  v3.super_class = WBDocument;
  return [(WBDocument *)&v3 init];
}

+ (id)readFrom:(id)from
{
  fromCopy = from;
  v4 = objc_alloc_init(WDDocument);
  if (v4)
  {
    v7 = v4;
    [fromCopy setTargetDocument:v4];
    [(OCDDocument *)v4 setReader:fromCopy];
    fontTable = [(WDDocument *)v4 fontTable];
    [WBFontTable readFrom:fromCopy fontTable:fontTable];

    [WBDocument readProperties:fromCopy document:v7];
    operator new();
  }

  return 0;
}

+ (void)setTimeStamp:(WrdDocumentProperties *)stamp
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [currentCalendar components:638 fromDate:date];

  var5 = stamp->var5;
  var6 = stamp->var6;
  v8 = [v9 era];
  var5->var6 = v8 - 1900;
  var6->var6 = v8 - 1900;
  var5->var5 = [v9 month];
  var6->var5 = [v9 month];
  var5->var1 = [v9 weekday] - 1;
  var6->var1 = [v9 weekday] - 1;
  var5->var4 = [v9 day];
  var6->var4 = [v9 day];
  var5->var3 = [v9 hour];
  var6->var3 = [v9 hour];
  var5->var2 = [v9 minute];
  var6->var2 = [v9 minute];
}

+ (void)readSectionsFrom:(id)from document:(id)document
{
  fromCopy = from;
  documentCopy = document;
  v21 = &v21;
  __p = &v21;
  v23 = 0;
  v7 = [WBObjectFactory create:48];
  if (v7)
  {
  }

  else
  {
    v8 = 0;
  }

  v8[2] = 0;
  v8[3] = 0;
  wrdReader = [fromCopy wrdReader];
  (*(*wrdReader + 200))(wrdReader, v8);
  if (v8[4])
  {
    operator new();
  }

  (*(*v8 + 8))(v8);
  [TCProgressContext createStageWithSteps:0 takingSteps:1.0];
  v10 = __p;
  if (__p != &v21)
  {
    LOBYTE(v11) = 0;
    v12 = 0;
    while (1)
    {
      if (v11)
      {
        v13 = v10[2];
      }

      else
      {
        cancelDelegate = [fromCopy cancelDelegate];
        isCancelled = [cancelDelegate isCancelled];

        v13 = v10[2];
        if ((isCancelled & 1) == 0)
        {
          addSection = [documentCopy addSection];
          [WBSection readFrom:fromCopy textRun:v13 document:documentCopy index:v12 section:addSection];

          v11 = 0;
          if (!v13)
          {
            goto LABEL_13;
          }

LABEL_12:
          (*(*v13 + 8))(v13);
          goto LABEL_13;
        }
      }

      v11 = 1;
      if (v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v16 = *v10;
      v17 = v10[1];
      *(v16 + 8) = v17;
      *v17 = v16;
      --v23;
      operator delete(v10);
      v12 = (v12 + 1);
      v10 = v17;
      if (v17 == &v21)
      {
        goto LABEL_18;
      }
    }
  }

  v11 = 0;
LABEL_18:
  for (i = __p; i != &v21; i = i[1])
  {
    v20 = i[2];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  if (v11)
  {
    [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0, v21];
  }

  +[TCProgressContext endStage];
  std::__list_imp<WrdSectionTextRun *>::clear(&v21);
}

+ (void)readNoteSeparatorFrom:(id)from type:(int)type separator:(id)separator
{
  fromCopy = from;
  separatorCopy = separator;
  tableHeaders = [fromCopy tableHeaders];
  if (((*(tableHeaders + 16) - *(tableHeaders + 8)) & 0x3FFFC) != 0)
  {
    v10[0] = &unk_286ED3718;
    WrdCPTableHeaders::getTextRun(tableHeaders, v10, type, 0);
    [WBText readFrom:fromCopy text:separatorCopy textRun:v10];
    [separatorCopy removeLastCharacter:13];
  }
}

+ (void)readTextBoxesFrom:(id)from
{
  fromCopy = from;
  textBoxCount = [fromCopy textBoxCount];
  if (textBoxCount)
  {
    for (i = 0; i != textBoxCount; ++i)
    {
      v5 = [fromCopy textBoxInfoAtIndex:i];
      [WBTextBox readTextFrom:fromCopy to:v5 chain:v6];
    }
  }
}

+ (void)readProperties:(id)properties document:(id)document
{
  propertiesCopy = properties;
  documentCopy = document;
  v7 = [WBObjectFactory create:15];
  if (v7)
  {
  }

  else
  {
    v8 = 0;
  }

  wrdReader = [propertiesCopy wrdReader];
  (*(*wrdReader + 240))(wrdReader, v8);
  [documentCopy setTrackChanges:(*(v8 + 148) >> 8) & 1];
  [documentCopy setShowRevisionMarksOnScreen:(*(v8 + 148) >> 19) & 1];
  [documentCopy setShowInsertionsAndDeletions:(*(v8 + 156) >> 39) & 1];
  [documentCopy setShowFormatting:(*(v8 + 156) >> 40) & 1];
  [documentCopy setShowMarkup:(*(v8 + 156) >> 37) & 1];
  [documentCopy setShowComments:(*(v8 + 156) >> 38) & 1];
  [documentCopy setMirrorMargins:(*(v8 + 148) >> 14) & 1];
  [documentCopy setBorderSurroundHeader:(*(v8 + 156) >> 23) & 1];
  [documentCopy setBorderSurroundFooter:(*(v8 + 156) >> 24) & 1];
  [documentCopy setDefaultTabWidth:*(v8 + 70)];
  [documentCopy setAutoHyphenate:(*(v8 + 148) >> 5) & 1];
  [documentCopy setEvenAndOddHeaders:*(v8 + 37) & 1];
  [documentCopy setFootnotePosition:*(v8 + 16)];
  [documentCopy setEndnotePosition:*(v8 + 19)];
  [documentCopy setFootnoteNumberFormat:*(v8 + 20)];
  [documentCopy setEndnoteNumberFormat:*(v8 + 21)];
  [documentCopy setFootnoteRestart:*(v8 + 17)];
  [documentCopy setEndnoteRestart:*(v8 + 18)];
  [documentCopy setFootnoteNumberingStart:*(v8 + 73)];
  [documentCopy setGutterPosition:*(v8 + 25)];
  [documentCopy setBookFold:(*(v8 + 156) >> 52) & 1];
  [documentCopy setNoTabForHangingIndents:(*(v8 + 148) >> 41) & 1];
  [documentCopy setZoomPercentage:*(v8 + 66)];
  [documentCopy setShowOutline:*(v8 + 22) == 2];
  WrdDOPTypography::WrdDOPTypography(&v22, *(v8 + 2));
  [documentCopy setKinsokuStrict:(v26 >> 3) & 1];
  if (v23 == 2)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCharacters:v25.var1 length:v25.var2];
    [documentCopy setKinsokuAltBreakAfter:v10];

    v11 = [MEMORY[0x277CCACA8] stringWithCharacters:v24.var1 length:v24.var2];
    [documentCopy setKinsokuAltBreakBefore:v11];
  }

  officeArtState = [propertiesCopy officeArtState];
  useXmlBlobs = [officeArtState useXmlBlobs];

  if (useXmlBlobs)
  {
    v14 = *(v8 + 29);
    v15 = *(v8 + 60);
    theme = [documentCopy theme];
    officeArtState2 = [propertiesCopy officeArtState];
    xmlDrawingState = [officeArtState2 xmlDrawingState];
    [OAXTheme readFromThemeData:v14 themeDataSize:v15 toTheme:theme xmlDrawingState:xmlDrawingState];

    v19 = CXGetRootElement(*(v8 + 31), *(v8 + 64));
    v20 = v19;
    if (v19)
    {
      if (xmlStrEqual(v19->name, "clrMap"))
      {
        v21 = objc_alloc_init(OADColorMap);
        [OAXColorMap readFromXmlNode:v20 toColorMap:v21];
        [documentCopy setColorMap:v21];
      }

      xmlFreeDoc(v20->doc);
    }
  }

  (*(*v8 + 8))(v8);
  v22 = &unk_286ED3758;
  CsString::~CsString(&v25);
  CsString::~CsString(&v24);
}

+ (void)setupZIndices:(id)indices document:(id)document escherType:(int)type
{
  indicesCopy = indices;
  v5 = [indicesCopy count];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [indicesCopy objectAtIndex:i];
      clientData = [v7 clientData];
      anchor = [clientData anchor];

      if (anchor)
      {
        [anchor setZIndex:{i + objc_msgSend(anchor, "zIndex")}];
      }
    }
  }
}

@end