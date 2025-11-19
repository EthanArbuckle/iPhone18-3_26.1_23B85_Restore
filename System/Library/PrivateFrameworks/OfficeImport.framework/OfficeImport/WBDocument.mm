@interface WBDocument
+ (id)readFrom:(id)a3;
+ (void)readNoteSeparatorFrom:(id)a3 type:(int)a4 separator:(id)a5;
+ (void)readProperties:(id)a3 document:(id)a4;
+ (void)readSectionsFrom:(id)a3 document:(id)a4;
+ (void)readTextBoxesFrom:(id)a3;
+ (void)setTimeStamp:(WrdDocumentProperties *)a3;
+ (void)setupZIndices:(id)a3 document:(id)a4 escherType:(int)a5;
- (WBDocument)init;
@end

@implementation WBDocument

- (WBDocument)init
{
  v3.receiver = self;
  v3.super_class = WBDocument;
  return [(WBDocument *)&v3 init];
}

+ (id)readFrom:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(WDDocument);
  if (v4)
  {
    v7 = v4;
    [v3 setTargetDocument:v4];
    [(OCDDocument *)v4 setReader:v3];
    v5 = [(WDDocument *)v4 fontTable];
    [WBFontTable readFrom:v3 fontTable:v5];

    [WBDocument readProperties:v3 document:v7];
    operator new();
  }

  return 0;
}

+ (void)setTimeStamp:(WrdDocumentProperties *)a3
{
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [MEMORY[0x277CBEAA8] date];
  v9 = [v4 components:638 fromDate:v5];

  var5 = a3->var5;
  var6 = a3->var6;
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

+ (void)readSectionsFrom:(id)a3 document:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v9 = [v5 wrdReader];
  (*(*v9 + 200))(v9, v8);
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
        v14 = [v5 cancelDelegate];
        v15 = [v14 isCancelled];

        v13 = v10[2];
        if ((v15 & 1) == 0)
        {
          v18 = [v6 addSection];
          [WBSection readFrom:v5 textRun:v13 document:v6 index:v12 section:v18];

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

+ (void)readNoteSeparatorFrom:(id)a3 type:(int)a4 separator:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 tableHeaders];
  if (((*(v9 + 16) - *(v9 + 8)) & 0x3FFFC) != 0)
  {
    v10[0] = &unk_286ED3718;
    WrdCPTableHeaders::getTextRun(v9, v10, a4, 0);
    [WBText readFrom:v7 text:v8 textRun:v10];
    [v8 removeLastCharacter:13];
  }
}

+ (void)readTextBoxesFrom:(id)a3
{
  v7 = a3;
  v3 = [v7 textBoxCount];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = [v7 textBoxInfoAtIndex:i];
      [WBTextBox readTextFrom:v7 to:v5 chain:v6];
    }
  }
}

+ (void)readProperties:(id)a3 document:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [WBObjectFactory create:15];
  if (v7)
  {
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 wrdReader];
  (*(*v9 + 240))(v9, v8);
  [v6 setTrackChanges:(*(v8 + 148) >> 8) & 1];
  [v6 setShowRevisionMarksOnScreen:(*(v8 + 148) >> 19) & 1];
  [v6 setShowInsertionsAndDeletions:(*(v8 + 156) >> 39) & 1];
  [v6 setShowFormatting:(*(v8 + 156) >> 40) & 1];
  [v6 setShowMarkup:(*(v8 + 156) >> 37) & 1];
  [v6 setShowComments:(*(v8 + 156) >> 38) & 1];
  [v6 setMirrorMargins:(*(v8 + 148) >> 14) & 1];
  [v6 setBorderSurroundHeader:(*(v8 + 156) >> 23) & 1];
  [v6 setBorderSurroundFooter:(*(v8 + 156) >> 24) & 1];
  [v6 setDefaultTabWidth:*(v8 + 70)];
  [v6 setAutoHyphenate:(*(v8 + 148) >> 5) & 1];
  [v6 setEvenAndOddHeaders:*(v8 + 37) & 1];
  [v6 setFootnotePosition:*(v8 + 16)];
  [v6 setEndnotePosition:*(v8 + 19)];
  [v6 setFootnoteNumberFormat:*(v8 + 20)];
  [v6 setEndnoteNumberFormat:*(v8 + 21)];
  [v6 setFootnoteRestart:*(v8 + 17)];
  [v6 setEndnoteRestart:*(v8 + 18)];
  [v6 setFootnoteNumberingStart:*(v8 + 73)];
  [v6 setGutterPosition:*(v8 + 25)];
  [v6 setBookFold:(*(v8 + 156) >> 52) & 1];
  [v6 setNoTabForHangingIndents:(*(v8 + 148) >> 41) & 1];
  [v6 setZoomPercentage:*(v8 + 66)];
  [v6 setShowOutline:*(v8 + 22) == 2];
  WrdDOPTypography::WrdDOPTypography(&v22, *(v8 + 2));
  [v6 setKinsokuStrict:(v26 >> 3) & 1];
  if (v23 == 2)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCharacters:v25.var1 length:v25.var2];
    [v6 setKinsokuAltBreakAfter:v10];

    v11 = [MEMORY[0x277CCACA8] stringWithCharacters:v24.var1 length:v24.var2];
    [v6 setKinsokuAltBreakBefore:v11];
  }

  v12 = [v5 officeArtState];
  v13 = [v12 useXmlBlobs];

  if (v13)
  {
    v14 = *(v8 + 29);
    v15 = *(v8 + 60);
    v16 = [v6 theme];
    v17 = [v5 officeArtState];
    v18 = [v17 xmlDrawingState];
    [OAXTheme readFromThemeData:v14 themeDataSize:v15 toTheme:v16 xmlDrawingState:v18];

    v19 = CXGetRootElement(*(v8 + 31), *(v8 + 64));
    v20 = v19;
    if (v19)
    {
      if (xmlStrEqual(v19->name, "clrMap"))
      {
        v21 = objc_alloc_init(OADColorMap);
        [OAXColorMap readFromXmlNode:v20 toColorMap:v21];
        [v6 setColorMap:v21];
      }

      xmlFreeDoc(v20->doc);
    }
  }

  (*(*v8 + 8))(v8);
  v22 = &unk_286ED3758;
  CsString::~CsString(&v25);
  CsString::~CsString(&v24);
}

+ (void)setupZIndices:(id)a3 document:(id)a4 escherType:(int)a5
{
  v10 = a3;
  v5 = [v10 count];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [v10 objectAtIndex:i];
      v8 = [v7 clientData];
      v9 = [v8 anchor];

      if (v9)
      {
        [v9 setZIndex:{i + objc_msgSend(v9, "zIndex")}];
      }
    }
  }
}

@end