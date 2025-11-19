@interface EBNameTable
+ (XlName)xlNameFromEDName:(id)a3 state:(id)a4;
+ (id)edNameFromXlName:(XlName *)a3 name:(OcText *)a4 state:(id)a5;
+ (void)createXlNameTableFromNamesCollection:(id)a3 state:(id)a4;
+ (void)readFromState:(id)a3;
@end

@implementation EBNameTable

+ (void)readFromState:(id)a3
{
  v4 = a3;
  v5 = [v4 resources];
  v6 = [v5 names];

  v7 = [v4 xlNameTable];
  v8 = *(v7 + 2) - *(v7 + 1);
  if ((v8 & 0x7FFFFFFF8) != 0)
  {
    v9 = 0;
    v10 = (v8 >> 3);
    do
    {
      v11 = *(v7 + 1);
      if (v9 >= ((*(v7 + 2) - v11) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = *(v11 + 8 * v9);
      XlNameTable::getName(v7, v9, &v14);
      v13 = [a1 edNameFromXlName:v12 name:&v14 state:v4];
      OcText::~OcText(&v14);
      [v6 addObject:v13];

      ++v9;
    }

    while (v10 != v9);
  }
}

+ (void)createXlNameTableFromNamesCollection:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  operator new();
}

+ (id)edNameFromXlName:(XlName *)a3 name:(OcText *)a4 state:(id)a5
{
  v7 = a5;
  if (a3)
  {
    v8 = objc_alloc_init(EDName);
    [(EDName *)v8 setSheetIndex:a3->var10];
    if (a3->var19)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithOcText:a4];
      [EDString edStringWithString:v9];
    }

    else
    {
      var2 = a3->var2;
      v9 = [v7 resources];
      [EBString edStringFromXlString:var2 edResources:v9];
    }
    v11 = ;

    [(EDName *)v8 setNameString:v11];
    v12 = [EBFormula edFormulaFromXlFmlaDefinition:a3->var7 withTokenLength:a3->var9 formulaLength:a3->var8 formulaClass:objc_opt_class() edSheet:0 state:v7];
    if ([(EDName *)v8 isInternalFunction])
    {
      [v12 setWarning:0];
    }

    v13 = [v7 workbook];
    [(EDName *)v8 setFormula:v12 workbook:v13];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (XlName)xlNameFromEDName:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  operator new();
}

@end