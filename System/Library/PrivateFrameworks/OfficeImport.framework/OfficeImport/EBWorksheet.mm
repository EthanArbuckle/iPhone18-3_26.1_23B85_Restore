@interface EBWorksheet
+ (void)readChildrenWithState:(id)state;
+ (void)readSheetPresentationInfoWithState:(id)state;
+ (void)readWithState:(id)state;
+ (void)setupProcessors:(id)processors;
@end

@implementation EBWorksheet

+ (void)readWithState:(id)state
{
  stateCopy = state;
  edSheet = [stateCopy edSheet];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    processors = [edSheet processors];
    [self setupProcessors:processors];

    XlWorksheetProperties::XlWorksheetProperties(v13);
    xlReader = [stateCopy xlReader];
    (*(*xlReader + 376))(xlReader, v13);
    if (v14 == -1)
    {
      readerState = [stateCopy readerState];
      columnWidthConvertor = [readerState columnWidthConvertor];
      LOWORD(v10) = v13[4];
      [columnWidthConvertor xlColumnWidthFromXlBaseColumnWidth:v10];
      [edSheet setDefaultColumnWidth:?];
    }

    else
    {
      [edSheet setDefaultColumnWidth:{vcvtd_n_f64_s32(v14, 8uLL)}];
    }

    [edSheet setDefaultRowHeight:v15];
    [edSheet setFitToPage:v19];
    if (v16)
    {
      v11 = v16 - 1;
    }

    else
    {
      v11 = 0;
    }

    [edSheet setMaxRowOutlineLevel:v11];
    if (v17)
    {
      v12 = v17 - 1;
    }

    else
    {
      v12 = 0;
    }

    [edSheet setMaxColumnOutlineLevel:v12];
    [edSheet setIsDialogSheet:v18];
    XlWorksheetProperties::~XlWorksheetProperties(v13);
  }
}

+ (void)readChildrenWithState:(id)state
{
  stateCopy = state;
  [EBColumnTable readWithState:?];
  [EBRowBlocks readWithState:stateCopy];
  [EBGraphic readGraphicsWithState:stateCopy];
  [self readSheetPresentationInfoWithState:stateCopy];
  [EBMergeTable readWithState:stateCopy];
  [EBConditionalFormatTable readWithState:stateCopy];
  [EBHyperlinkTable readWithState:stateCopy];
}

+ (void)readSheetPresentationInfoWithState:(id)state
{
  stateCopy = state;
  XlSheetPresentationTable::XlSheetPresentationTable(v12);
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 384))(xlReader, v12);
  if (((v14 - v13) & 0x7FFFFFFF8) != 0)
  {
    v5 = XlConditionalFormatTable::at(v12, 0);
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        edSheet = [stateCopy edSheet];
        [EBPane readXlPaneFrom:v6 state:stateCopy];
        [edSheet setDisplayFormulas:*(v7 + 24)];
        [edSheet setDisplayGridlines:*(v7 + 25)];
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

        resources = [stateCopy resources];
        v11 = [EBColorReference edColorReferenceFromXlColorIndex:v9 edResources:resources];
        [edSheet setDefaultGridlineColorReference:v11];
      }
    }
  }

  XlSheetPresentationTable::~XlSheetPresentationTable(v12);
}

+ (void)setupProcessors:(id)processors
{
  processorsCopy = processors;
  [processorsCopy removeAllObjects];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
}

@end