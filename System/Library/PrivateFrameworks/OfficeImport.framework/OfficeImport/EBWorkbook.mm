@interface EBWorkbook
+ (id)readWithState:(id)a3 reader:(id)a4;
+ (int)xlSheetTypeEnumFromEDSheet:(id)a3;
+ (void)readDocumentPresentation:(id)a3 state:(id)a4;
+ (void)readDocumentProperties:(id)a3 state:(id)a4;
+ (void)setupProcessors:(id)a3;
@end

@implementation EBWorkbook

+ (id)readWithState:(id)a3 reader:(id)a4
{
  v35 = a3;
  v6 = a4;
  v7 = [EDWorkbook alloc];
  v8 = [v6 fileName];
  v9 = -[EDWorkbook initWithFileName:andStringOptimization:](v7, "initWithFileName:andStringOptimization:", v8, [v6 useStringOptimization]);

  v10 = v35;
  [(OCDDocument *)v9 setReader:v6];
  v11 = [v6 temporaryDirectory];
  [(EDWorkbook *)v9 setTemporaryDirectory:v11];

  v12 = [(EDWorkbook *)v9 processors];
  [a1 setupProcessors:v12];

  [TCProgressContext createStageWithSteps:@"read workbook globals" takingSteps:10.0 name:1.0];
  [v35 setWorkbook:v9];
  v13 = [(EDWorkbook *)v9 resources];
  [v35 setResources:v13];

  [a1 readDocumentProperties:v9 state:v35];
  [a1 readDocumentPresentation:v9 state:v35];
  [TCProgressContext advanceProgress:1.0];
  [EBFontTable readWithState:v35];
  [EBContentFormatTable readWithState:v35];
  [EBCellFormatTable readWithState:v35];
  [TCProgressContext advanceProgress:2.0];
  v36 = &unk_286ED1A78;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v14 = [v35 xlReader];
  (*(*v14 + 352))(v14, &v36);
  if (((v38 - v37) & 0x7FFFFFFF8) != 0)
  {
    [v35 reportWarning:ECPivotTables];
  }

  [EBColorTable readWithState:v35];
  [TCProgressContext advanceProgress:1.0];
  [v35 readGlobalXlObjects];
  [EBLinkTable readFromState:v35];
  [EBNameTable readFromState:v35];
  [TCProgressContext advanceProgress:1.0];
  [EBStringTable readWithState:v35];
  [TCProgressContext advanceProgress:3.0];
  if (*([v35 xlReader] + 200) >= 1)
  {
    v15 = [EBEscher readRootObjectWithType:1 state:v35];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v35 oaState];
      [OABDrawingGroup readBlipsFromDrawingGroup:v15 toDocument:v9 state:v16];

      v17 = [(OCDDocument *)v9 theme];
      v18 = [v35 oaState];
      [OABDrawingGroup readGraphicalDefaultsFromDrawingGroup:v15 toTheme:v17 state:v18];
    }

    v10 = v35;
  }

  [TCProgressContext advanceProgress:1.0];
  SheetCount = XlBinaryReader::getSheetCount([v10 xlReader]);
  v20 = [v6 delegate];
  if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v20 readerDidStartDocument:v9 withElementCount:SheetCount];
  }

  if (SheetCount)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      if ([v35 isCancelled])
      {
        [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
      }

      [EBSheet readSheetWithIndex:v21 state:v35];
      if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v23 = v9;
        v24 = [(EDWorkbook *)v9 sheetAtIndex:v21];
        v25 = v6;
        v26 = [v6 isThumbnail];
        v27 = [v35 workbook];
        if (v21 >= SheetCount - 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v26;
        }

        [v20 readerDidReadElement:v24 atIndex:v21 inDocument:v27 isLastElement:v28];

        v22 |= [v24 isHidden] ^ 1;
        if (v22 & 1) != 0 && ([v25 isThumbnail])
        {

          v6 = v25;
          v9 = v23;
          break;
        }

        v6 = v25;
        v9 = v23;
      }

      ++v21;
    }

    while (SheetCount != v21);
  }

  [TCProgressContext advanceProgress:1.0];
  +[TCProgressContext endStage];
  v29 = [v35 xlReader];
  if ((*(*v29 + 88))(v29))
  {
    v30 = [(OCDDocument *)v9 summary];
    v31 = [v35 xlReader];
    if (v31)
    {
      v32 = v31 + *(*v31 - 24);
    }

    else
    {
      v32 = 0;
    }

    [OCBSummary readSummary:v30 reader:v32];

    v33 = [(OCDDocument *)v9 theme];
    [v33 validateTheme];
  }

  if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v20 readerDidEndDocument:v9];
  }

  XlPivotInfoTable::~XlPivotInfoTable(&v36);

  return v9;
}

+ (void)readDocumentProperties:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  XlDocumentProperties::XlDocumentProperties(v17);
  v7 = [v6 xlReader];
  (*(*v7 + 152))(v7, v17);
  if (v18 == 1900)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v5 setDateBase:v8];
  v9 = [v6 oaState];
  v10 = [v9 useXmlBlobs];

  if (v10)
  {
    v11 = v20;
    v12 = v21;
    v13 = [v5 theme];
    v14 = [v6 oaState];
    v15 = [v14 xmlDrawingState];
    [OAXTheme readFromThemeData:v11 themeDataSize:v12 toTheme:v13 xmlDrawingState:v15];
  }

  if (v19[10] == 1)
  {
    v16 = [EBReference edReferenceFromXlRef:v19];
    [v5 setVisibleRange:v16];
  }

  XlDocumentProperties::~XlDocumentProperties(v17);
}

+ (void)readDocumentPresentation:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (*([v6 xlReader] + 1344) == 1)
  {
    [v5 setActiveSheetIndex:0];
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v7 = [v6 xlReader];
    (*(*v7 + 160))(v7, &v9);
    if (((v11 - v10) & 0x7FFFFFFF8) != 0)
    {
      v8 = XlConditionalFormatTable::at(&v9, 0);
      if (v8)
      {
        [v5 setActiveSheetIndex:*(v8 + 8)];
      }
    }

    XlDocumentPresentationTable::~XlDocumentPresentationTable(&v9);
  }
}

+ (void)setupProcessors:(id)a3
{
  v3 = a3;
  [v3 removeAllObjects];
  [v3 addProcessorClass:objc_opt_class()];
}

+ (int)xlSheetTypeEnumFromEDSheet:(id)a3
{
  v3 = a3;
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