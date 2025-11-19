@interface EBSheet
+ (Class)ebSheetClassFromEDSheet:(id)a3;
+ (Class)edSheetClassFromXlSheetTypeEnum:(int)a3;
+ (void)readDelayedSheetWithIndex:(unsigned int)a3 state:(id)a4;
+ (void)readSheetWithIndex:(unsigned int)a3 state:(id)a4;
@end

@implementation EBSheet

+ (Class)edSheetClassFromXlSheetTypeEnum:(int)a3
{
  v4 = objc_opt_class();

  return v4;
}

+ (Class)ebSheetClassFromEDSheet:(id)a3
{
  v3 = a3;
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

+ (void)readSheetWithIndex:(unsigned int)a3 state:(id)a4
{
  v4 = *&a3;
  v18 = a4;
  v6 = [v18 xlSheetInfoTable];
  v7 = [a1 edSheetClassFromXlSheetTypeEnum:{XlSheetInfoTable::getSheetType(v6, v4)}];
  if (v7)
  {
    v8 = *(v6 + 1);
    if (((*(v6 + 2) - v8) >> 3) <= v4)
    {
      std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
    }

    v9 = *(v8 + 8 * v4);
    v10 = [v7 alloc];
    v11 = [v18 workbook];
    v12 = [v10 initWithWorkbook:v11];

    v13 = *(v9 + 16);
    v14 = [v18 resources];
    v15 = [EBString edStringFromXlString:v13 edResources:v14];
    [v12 setName:v15];

    [v12 setHidden:{XlSheetInfoTable::getSheetHiddenState(v6, v4) != 0}];
    v16 = [[EBSheetContext alloc] initWithSheetIndex:v4 state:v18];
    [v12 setDelayedContext:v16];
    v17 = [v18 workbook];
    [v17 addSheet:v12];
  }
}

+ (void)readDelayedSheetWithIndex:(unsigned int)a3 state:(id)a4
{
  v6 = a4;
  XlBinaryReader::setSheet([v6 xlReader], a3);
  v7 = [v6 readerState];
  XlFormulaProcessor::clearBaseFormulas([v7 xlFormulaProcessor]);

  v8 = [v6 edSheet];
  v9 = [a1 ebSheetClassFromEDSheet:v8];

  [v9 readWithState:v6];
  [EBPageProperties readWithState:v6];
  [v9 readChildrenWithState:v6];
  XlWorksheetProtection::XlWorksheetProtection(v12);
  v10 = [v6 xlReader];
  (*(*v10 + 520))(v10, v12);
  if ((v12[8] & 1) != 0 || (v12[9] & 1) != 0 || v12[10] == 1)
  {
    v11 = [v6 readerState];
    [v11 reportWarning:ECPasswordProtectedSheet];
  }
}

@end