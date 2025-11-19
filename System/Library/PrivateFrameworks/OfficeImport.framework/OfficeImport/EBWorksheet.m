@interface EBWorksheet
+ (void)readChildrenWithState:(id)a3;
+ (void)readSheetPresentationInfoWithState:(id)a3;
+ (void)readWithState:(id)a3;
+ (void)setupProcessors:(id)a3;
@end

@implementation EBWorksheet

+ (void)readWithState:(id)a3
{
  v4 = a3;
  v5 = [v4 edSheet];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 processors];
    [a1 setupProcessors:v6];

    XlWorksheetProperties::XlWorksheetProperties(v13);
    v7 = [v4 xlReader];
    (*(*v7 + 376))(v7, v13);
    if (v14 == -1)
    {
      v8 = [v4 readerState];
      v9 = [v8 columnWidthConvertor];
      LOWORD(v10) = v13[4];
      [v9 xlColumnWidthFromXlBaseColumnWidth:v10];
      [v5 setDefaultColumnWidth:?];
    }

    else
    {
      [v5 setDefaultColumnWidth:{vcvtd_n_f64_s32(v14, 8uLL)}];
    }

    [v5 setDefaultRowHeight:v15];
    [v5 setFitToPage:v19];
    if (v16)
    {
      v11 = v16 - 1;
    }

    else
    {
      v11 = 0;
    }

    [v5 setMaxRowOutlineLevel:v11];
    if (v17)
    {
      v12 = v17 - 1;
    }

    else
    {
      v12 = 0;
    }

    [v5 setMaxColumnOutlineLevel:v12];
    [v5 setIsDialogSheet:v18];
    XlWorksheetProperties::~XlWorksheetProperties(v13);
  }
}

+ (void)readChildrenWithState:(id)a3
{
  v4 = a3;
  [EBColumnTable readWithState:?];
  [EBRowBlocks readWithState:v4];
  [EBGraphic readGraphicsWithState:v4];
  [a1 readSheetPresentationInfoWithState:v4];
  [EBMergeTable readWithState:v4];
  [EBConditionalFormatTable readWithState:v4];
  [EBHyperlinkTable readWithState:v4];
}

+ (void)readSheetPresentationInfoWithState:(id)a3
{
  v3 = a3;
  XlSheetPresentationTable::XlSheetPresentationTable(v12);
  v4 = [v3 xlReader];
  (*(*v4 + 384))(v4, v12);
  if (((v14 - v13) & 0x7FFFFFFF8) != 0)
  {
    v5 = XlConditionalFormatTable::at(v12, 0);
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        v8 = [v3 edSheet];
        [EBPane readXlPaneFrom:v6 state:v3];
        [v8 setDisplayFormulas:*(v7 + 24)];
        [v8 setDisplayGridlines:*(v7 + 25)];
        v9 = *(v7 + 16);
        if ([EDColorsCollection isSystemColorId:v9])
        {
          if ([EDColorsCollection systemColorIdFromIndex:v9])
          {
            v9 = v9;
          }

          else
          {
            v9 = 64;
          }
        }

        v10 = [v3 resources];
        v11 = [EBColorReference edColorReferenceFromXlColorIndex:v9 edResources:v10];
        [v8 setDefaultGridlineColorReference:v11];
      }
    }
  }

  XlSheetPresentationTable::~XlSheetPresentationTable(v12);
}

+ (void)setupProcessors:(id)a3
{
  v3 = a3;
  [v3 removeAllObjects];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
}

@end