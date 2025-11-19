@interface ECFormulaProcessor
+ (id)formulaStringForEDFormula:(id)a3 edWorksheet:(id)a4 xlFormulaProcessor:(void *)a5;
- (ECFormulaProcessor)init;
- (void)dealloc;
- (void)setupWithWorkbook:(id)a3;
@end

@implementation ECFormulaProcessor

- (ECFormulaProcessor)init
{
  v3.receiver = self;
  v3.super_class = ECFormulaProcessor;
  result = [(ECFormulaProcessor *)&v3 init];
  if (result)
  {
    *&result->mXlSheetNames = 0u;
    *&result->mXlNameTable = 0u;
    *&result->mXlFormulaProcessorLasso = 0u;
  }

  return result;
}

- (void)dealloc
{
  mXlFormulaProcessorLasso = self->mXlFormulaProcessorLasso;
  if (mXlFormulaProcessorLasso)
  {
    (*(*mXlFormulaProcessorLasso + 8))(mXlFormulaProcessorLasso, a2);
  }

  self->mXlFormulaProcessorLasso = 0;
  mXlFormulaProcessorXl = self->mXlFormulaProcessorXl;
  if (mXlFormulaProcessorXl)
  {
    (*(*mXlFormulaProcessorXl + 8))(mXlFormulaProcessorXl, a2);
  }

  self->mXlFormulaProcessorXl = 0;
  mXlNameTable = self->mXlNameTable;
  if (mXlNameTable)
  {
    (*(*mXlNameTable + 8))(mXlNameTable, a2);
  }

  self->mXlNameTable = 0;
  mLassoSheetNames = self->mLassoSheetNames;
  if (mLassoSheetNames)
  {
    v10 = self->mLassoSheetNames;
    std::vector<OcText,ChAllocator<OcText>>::__destroy_vector::operator()[abi:ne200100](&v10);
    MEMORY[0x25F897000](mLassoSheetNames, 0x20C40960023A9);
  }

  self->mLassoSheetNames = 0;
  mXlSheetNames = self->mXlSheetNames;
  if (mXlSheetNames)
  {
    v10 = self->mXlSheetNames;
    std::vector<OcText,ChAllocator<OcText>>::__destroy_vector::operator()[abi:ne200100](&v10);
    MEMORY[0x25F897000](mXlSheetNames, 0x20C40960023A9);
  }

  self->mXlSheetNames = 0;
  mXlLinkTable = self->mXlLinkTable;
  if (mXlLinkTable)
  {
    (*(*mXlLinkTable + 8))(mXlLinkTable, a2);
  }

  self->mXlLinkTable = 0;
  v9.receiver = self;
  v9.super_class = ECFormulaProcessor;
  [(ECFormulaProcessor *)&v9 dealloc];
}

- (void)setupWithWorkbook:(id)a3
{
  v8 = a3;
  v4 = [v8 resources];
  v5 = [v4 names];
  self->mXlNameTable = [EBNameTable createXlNameTableFromNamesCollection:v5 state:0];

  v6 = [v4 links];
  self->mXlLinkTable = [EBLinkTable createXlLinkTableFromLinksCollection:v6 workbook:v8 state:0];

  v7 = [v8 mappingContext];
  self->mLassoSheetNames = [v7 mappedSheetNames];

  self->mXlSheetNames = [(ECFormulaProcessor *)self sheetNamesFromWorkbook:v8];
  self->mXlFormulaProcessorLasso = [(ECFormulaProcessor *)self setupWithWorkbook:v8 xlNameTable:self->mXlNameTable sheetNames:self->mLassoSheetNames xlLinkTable:self->mXlLinkTable lassoSyntax:1];
  self->mXlFormulaProcessorXl = [(ECFormulaProcessor *)self setupWithWorkbook:v8 xlNameTable:self->mXlNameTable sheetNames:self->mXlSheetNames xlLinkTable:self->mXlLinkTable lassoSyntax:0];
}

+ (id)formulaStringForEDFormula:(id)a3 edWorksheet:(id)a4 xlFormulaProcessor:(void *)a5
{
  v7 = a3;
  v8 = a4;
  if (!a5)
  {
    goto LABEL_9;
  }

  if ([v7 isSharedFormula] && (objc_msgSend(v7, "isBaseFormula") & 1) == 0)
  {
    v11 = v7;
    v9 = [v11 rowBaseOrOffset];
    v10 = [v11 columnBaseOrOffset];
    v12 = [v8 rowBlocks];
    v7 = [v11 baseFormulaWithRowBlocks:v12];

    [v12 unlock];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v13 = [v7 xlPtgs];
  v17.var0 = v13;
  if (v13 && (v14 = XlFormulaProcessor::toString(a5, v13, v9, v10), clearXlPtgs(&v17), v14))
  {
    v15 = [MEMORY[0x277CCACA8] stringWithOcText:v14];
    (*(*v14 + 8))(v14);
  }

  else
  {
LABEL_9:
    v15 = 0;
  }

  return v15;
}

@end