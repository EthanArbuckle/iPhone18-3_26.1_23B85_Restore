@interface EBSheet
+ (Class)ebSheetClassFromEDSheet:(id)sheet;
+ (Class)edSheetClassFromXlSheetTypeEnum:(int)enum;
+ (void)readDelayedSheetWithIndex:(unsigned int)index state:(id)state;
+ (void)readSheetWithIndex:(unsigned int)index state:(id)state;
@end

@implementation EBSheet

+ (Class)edSheetClassFromXlSheetTypeEnum:(int)enum
{
  v4 = objc_opt_class();

  return v4;
}

+ (Class)ebSheetClassFromEDSheet:(id)sheet
{
  sheetCopy = sheet;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)readSheetWithIndex:(unsigned int)index state:(id)state
{
  v4 = *&index;
  stateCopy = state;
  xlSheetInfoTable = [stateCopy xlSheetInfoTable];
  v7 = [self edSheetClassFromXlSheetTypeEnum:{XlSheetInfoTable::getSheetType(xlSheetInfoTable, v4)}];
  if (v7)
  {
    v8 = *(xlSheetInfoTable + 1);
    if (((*(xlSheetInfoTable + 2) - v8) >> 3) <= v4)
    {
      std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
    }

    v9 = *(v8 + 8 * v4);
    v10 = [v7 alloc];
    workbook = [stateCopy workbook];
    v12 = [v10 initWithWorkbook:workbook];

    v13 = *(v9 + 16);
    resources = [stateCopy resources];
    v15 = [EBString edStringFromXlString:v13 edResources:resources];
    [v12 setName:v15];

    [v12 setHidden:{XlSheetInfoTable::getSheetHiddenState(xlSheetInfoTable, v4) != 0}];
    v16 = [[EBSheetContext alloc] initWithSheetIndex:v4 state:stateCopy];
    [v12 setDelayedContext:v16];
    workbook2 = [stateCopy workbook];
    [workbook2 addSheet:v12];
  }
}

+ (void)readDelayedSheetWithIndex:(unsigned int)index state:(id)state
{
  stateCopy = state;
  XlBinaryReader::setSheet([stateCopy xlReader], index);
  readerState = [stateCopy readerState];
  XlFormulaProcessor::clearBaseFormulas([readerState xlFormulaProcessor]);

  edSheet = [stateCopy edSheet];
  v9 = [self ebSheetClassFromEDSheet:edSheet];

  [v9 readWithState:stateCopy];
  [EBPageProperties readWithState:stateCopy];
  [v9 readChildrenWithState:stateCopy];
  XlWorksheetProtection::XlWorksheetProtection(v12);
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 520))(xlReader, v12);
  if ((v12[8] & 1) != 0 || (v12[9] & 1) != 0 || v12[10] == 1)
  {
    readerState2 = [stateCopy readerState];
    [readerState2 reportWarning:ECPasswordProtectedSheet];
  }
}

@end