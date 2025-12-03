@interface EBWorkbook
+ (id)readWithState:(id)state reader:(id)reader;
+ (int)xlSheetTypeEnumFromEDSheet:(id)sheet;
+ (void)readDocumentPresentation:(id)presentation state:(id)state;
+ (void)readDocumentProperties:(id)properties state:(id)state;
+ (void)setupProcessors:(id)processors;
@end

@implementation EBWorkbook

+ (id)readWithState:(id)state reader:(id)reader
{
  stateCopy = state;
  readerCopy = reader;
  v7 = [EDWorkbook alloc];
  fileName = [readerCopy fileName];
  v9 = -[EDWorkbook initWithFileName:andStringOptimization:](v7, "initWithFileName:andStringOptimization:", fileName, [readerCopy useStringOptimization]);

  v10 = stateCopy;
  [(OCDDocument *)v9 setReader:readerCopy];
  temporaryDirectory = [readerCopy temporaryDirectory];
  [(EDWorkbook *)v9 setTemporaryDirectory:temporaryDirectory];

  processors = [(EDWorkbook *)v9 processors];
  [self setupProcessors:processors];

  [TCProgressContext createStageWithSteps:@"read workbook globals" takingSteps:10.0 name:1.0];
  [stateCopy setWorkbook:v9];
  resources = [(EDWorkbook *)v9 resources];
  [stateCopy setResources:resources];

  [self readDocumentProperties:v9 state:stateCopy];
  [self readDocumentPresentation:v9 state:stateCopy];
  [TCProgressContext advanceProgress:1.0];
  [EBFontTable readWithState:stateCopy];
  [EBContentFormatTable readWithState:stateCopy];
  [EBCellFormatTable readWithState:stateCopy];
  [TCProgressContext advanceProgress:2.0];
  v36 = &unk_286ED1A78;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 352))(xlReader, &v36);
  if (((v38 - v37) & 0x7FFFFFFF8) != 0)
  {
    [stateCopy reportWarning:ECPivotTables];
  }

  [EBColorTable readWithState:stateCopy];
  [TCProgressContext advanceProgress:1.0];
  [stateCopy readGlobalXlObjects];
  [EBLinkTable readFromState:stateCopy];
  [EBNameTable readFromState:stateCopy];
  [TCProgressContext advanceProgress:1.0];
  [EBStringTable readWithState:stateCopy];
  [TCProgressContext advanceProgress:3.0];
  if (*([stateCopy xlReader] + 200) >= 1)
  {
    v15 = [EBEscher readRootObjectWithType:1 state:stateCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      oaState = [stateCopy oaState];
      [OABDrawingGroup readBlipsFromDrawingGroup:v15 toDocument:v9 state:oaState];

      theme = [(OCDDocument *)v9 theme];
      oaState2 = [stateCopy oaState];
      [OABDrawingGroup readGraphicalDefaultsFromDrawingGroup:v15 toTheme:theme state:oaState2];
    }

    v10 = stateCopy;
  }

  [TCProgressContext advanceProgress:1.0];
  SheetCount = XlBinaryReader::getSheetCount([v10 xlReader]);
  delegate = [readerCopy delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate readerDidStartDocument:v9 withElementCount:SheetCount];
  }

  if (SheetCount)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      if ([stateCopy isCancelled])
      {
        [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
      }

      [EBSheet readSheetWithIndex:v21 state:stateCopy];
      if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v23 = v9;
        v24 = [(EDWorkbook *)v9 sheetAtIndex:v21];
        v25 = readerCopy;
        isThumbnail = [readerCopy isThumbnail];
        workbook = [stateCopy workbook];
        if (v21 >= SheetCount - 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = isThumbnail;
        }

        [delegate readerDidReadElement:v24 atIndex:v21 inDocument:workbook isLastElement:v28];

        v22 |= [v24 isHidden] ^ 1;
        if (v22 & 1) != 0 && ([v25 isThumbnail])
        {

          readerCopy = v25;
          v9 = v23;
          break;
        }

        readerCopy = v25;
        v9 = v23;
      }

      ++v21;
    }

    while (SheetCount != v21);
  }

  [TCProgressContext advanceProgress:1.0];
  +[TCProgressContext endStage];
  xlReader2 = [stateCopy xlReader];
  if ((*(*xlReader2 + 88))(xlReader2))
  {
    summary = [(OCDDocument *)v9 summary];
    xlReader3 = [stateCopy xlReader];
    if (xlReader3)
    {
      v32 = xlReader3 + *(*xlReader3 - 24);
    }

    else
    {
      v32 = 0;
    }

    [OCBSummary readSummary:summary reader:v32];

    theme2 = [(OCDDocument *)v9 theme];
    [theme2 validateTheme];
  }

  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate readerDidEndDocument:v9];
  }

  XlPivotInfoTable::~XlPivotInfoTable(&v36);

  return v9;
}

+ (void)readDocumentProperties:(id)properties state:(id)state
{
  propertiesCopy = properties;
  stateCopy = state;
  XlDocumentProperties::XlDocumentProperties(v17);
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 152))(xlReader, v17);
  if (v18 == 1900)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [propertiesCopy setDateBase:v8];
  oaState = [stateCopy oaState];
  useXmlBlobs = [oaState useXmlBlobs];

  if (useXmlBlobs)
  {
    v11 = v20;
    v12 = v21;
    theme = [propertiesCopy theme];
    oaState2 = [stateCopy oaState];
    xmlDrawingState = [oaState2 xmlDrawingState];
    [OAXTheme readFromThemeData:v11 themeDataSize:v12 toTheme:theme xmlDrawingState:xmlDrawingState];
  }

  if (v19[10] == 1)
  {
    v16 = [EBReference edReferenceFromXlRef:v19];
    [propertiesCopy setVisibleRange:v16];
  }

  XlDocumentProperties::~XlDocumentProperties(v17);
}

+ (void)readDocumentPresentation:(id)presentation state:(id)state
{
  presentationCopy = presentation;
  stateCopy = state;
  if (*([stateCopy xlReader] + 1344) == 1)
  {
    [presentationCopy setActiveSheetIndex:0];
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    xlReader = [stateCopy xlReader];
    (*(*xlReader + 160))(xlReader, &v9);
    if (((v11 - v10) & 0x7FFFFFFF8) != 0)
    {
      v8 = XlConditionalFormatTable::at(&v9, 0);
      if (v8)
      {
        [presentationCopy setActiveSheetIndex:*(v8 + 8)];
      }
    }

    XlDocumentPresentationTable::~XlDocumentPresentationTable(&v9);
  }
}

+ (void)setupProcessors:(id)processors
{
  processorsCopy = processors;
  [processorsCopy removeAllObjects];
  [processorsCopy addProcessorClass:objc_opt_class()];
}

+ (int)xlSheetTypeEnumFromEDSheet:(id)sheet
{
  sheetCopy = sheet;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end