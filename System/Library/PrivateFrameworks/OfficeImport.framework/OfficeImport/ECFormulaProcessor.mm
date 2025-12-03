@interface ECFormulaProcessor
+ (id)formulaStringForEDFormula:(id)formula edWorksheet:(id)worksheet xlFormulaProcessor:(void *)processor;
- (ECFormulaProcessor)init;
- (void)dealloc;
- (void)setupWithWorkbook:(id)workbook;
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

- (void)setupWithWorkbook:(id)workbook
{
  workbookCopy = workbook;
  resources = [workbookCopy resources];
  names = [resources names];
  self->mXlNameTable = [EBNameTable createXlNameTableFromNamesCollection:names state:0];

  links = [resources links];
  self->mXlLinkTable = [EBLinkTable createXlLinkTableFromLinksCollection:links workbook:workbookCopy state:0];

  mappingContext = [workbookCopy mappingContext];
  self->mLassoSheetNames = [mappingContext mappedSheetNames];

  self->mXlSheetNames = [(ECFormulaProcessor *)self sheetNamesFromWorkbook:workbookCopy];
  self->mXlFormulaProcessorLasso = [(ECFormulaProcessor *)self setupWithWorkbook:workbookCopy xlNameTable:self->mXlNameTable sheetNames:self->mLassoSheetNames xlLinkTable:self->mXlLinkTable lassoSyntax:1];
  self->mXlFormulaProcessorXl = [(ECFormulaProcessor *)self setupWithWorkbook:workbookCopy xlNameTable:self->mXlNameTable sheetNames:self->mXlSheetNames xlLinkTable:self->mXlLinkTable lassoSyntax:0];
}

+ (id)formulaStringForEDFormula:(id)formula edWorksheet:(id)worksheet xlFormulaProcessor:(void *)processor
{
  formulaCopy = formula;
  worksheetCopy = worksheet;
  if (!processor)
  {
    goto LABEL_9;
  }

  if ([formulaCopy isSharedFormula] && (objc_msgSend(formulaCopy, "isBaseFormula") & 1) == 0)
  {
    v11 = formulaCopy;
    rowBaseOrOffset = [v11 rowBaseOrOffset];
    columnBaseOrOffset = [v11 columnBaseOrOffset];
    rowBlocks = [worksheetCopy rowBlocks];
    formulaCopy = [v11 baseFormulaWithRowBlocks:rowBlocks];

    [rowBlocks unlock];
  }

  else
  {
    rowBaseOrOffset = 0;
    columnBaseOrOffset = 0;
  }

  xlPtgs = [formulaCopy xlPtgs];
  v17.var0 = xlPtgs;
  if (xlPtgs && (v14 = XlFormulaProcessor::toString(processor, xlPtgs, rowBaseOrOffset, columnBaseOrOffset), clearXlPtgs(&v17), v14))
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