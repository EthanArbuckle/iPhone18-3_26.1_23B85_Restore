@interface EBNameTable
+ (XlName)xlNameFromEDName:(id)name state:(id)state;
+ (id)edNameFromXlName:(XlName *)name name:(OcText *)a4 state:(id)state;
+ (void)createXlNameTableFromNamesCollection:(id)collection state:(id)state;
+ (void)readFromState:(id)state;
@end

@implementation EBNameTable

+ (void)readFromState:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  names = [resources names];

  xlNameTable = [stateCopy xlNameTable];
  v8 = *(xlNameTable + 2) - *(xlNameTable + 1);
  if ((v8 & 0x7FFFFFFF8) != 0)
  {
    v9 = 0;
    v10 = (v8 >> 3);
    do
    {
      v11 = *(xlNameTable + 1);
      if (v9 >= ((*(xlNameTable + 2) - v11) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = *(v11 + 8 * v9);
      XlNameTable::getName(xlNameTable, v9, &v14);
      v13 = [self edNameFromXlName:v12 name:&v14 state:stateCopy];
      OcText::~OcText(&v14);
      [names addObject:v13];

      ++v9;
    }

    while (v10 != v9);
  }
}

+ (void)createXlNameTableFromNamesCollection:(id)collection state:(id)state
{
  collectionCopy = collection;
  stateCopy = state;
  operator new();
}

+ (id)edNameFromXlName:(XlName *)name name:(OcText *)a4 state:(id)state
{
  stateCopy = state;
  if (name)
  {
    v8 = objc_alloc_init(EDName);
    [(EDName *)v8 setSheetIndex:name->var10];
    if (name->var19)
    {
      resources = [MEMORY[0x277CCACA8] stringWithOcText:a4];
      [EDString edStringWithString:resources];
    }

    else
    {
      var2 = name->var2;
      resources = [stateCopy resources];
      [EBString edStringFromXlString:var2 edResources:resources];
    }
    v11 = ;

    [(EDName *)v8 setNameString:v11];
    v12 = [EBFormula edFormulaFromXlFmlaDefinition:name->var7 withTokenLength:name->var9 formulaLength:name->var8 formulaClass:objc_opt_class() edSheet:0 state:stateCopy];
    if ([(EDName *)v8 isInternalFunction])
    {
      [v12 setWarning:0];
    }

    workbook = [stateCopy workbook];
    [(EDName *)v8 setFormula:v12 workbook:workbook];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (XlName)xlNameFromEDName:(id)name state:(id)state
{
  nameCopy = name;
  stateCopy = state;
  operator new();
}

@end