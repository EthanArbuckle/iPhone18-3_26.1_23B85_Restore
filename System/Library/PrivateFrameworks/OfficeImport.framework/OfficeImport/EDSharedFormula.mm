@interface EDSharedFormula
- (BOOL)convertTokensToShared;
- (EDSharedFormula)init;
- (EDSharedFormula)initWithFormula:(id)formula;
- (id)baseFormulaWithRowBlocks:(id)blocks;
- (id)description;
- (id)warningWithRowBlocks:(id)blocks;
- (void)archiveByAppendingToMutableData:(__CFData *)data;
- (void)unarchiveFromData:(__CFData *)data offset:(unint64_t *)offset;
- (void)updateBaseFormulaRangeWithRow:(int)row column:(int)column;
@end

@implementation EDSharedFormula

- (EDSharedFormula)init
{
  v3.receiver = self;
  v3.super_class = EDSharedFormula;
  result = [(EDFormula *)&v3 init];
  if (result)
  {
    result->_baseFormulaIndex = -1;
    result->_rowBaseOrOffset = -1;
    result->_columnBaseOrOffset = -1;
  }

  return result;
}

- (EDSharedFormula)initWithFormula:(id)formula
{
  v4.receiver = self;
  v4.super_class = EDSharedFormula;
  result = [(EDFormula *)&v4 initWithFormula:formula];
  if (result)
  {
    result->_baseFormulaIndex = -1;
    result->_rowBaseOrOffset = -1;
    result->_columnBaseOrOffset = -1;
  }

  return result;
}

- (BOOL)convertTokensToShared
{
  rowBaseOrOffset = [(EDSharedFormula *)self rowBaseOrOffset];
  columnBaseOrOffset = [(EDSharedFormula *)self columnBaseOrOffset];

  return [(EDFormula *)self convertTokensToSharedAtRow:rowBaseOrOffset column:columnBaseOrOffset];
}

- (id)baseFormulaWithRowBlocks:(id)blocks
{
  blocksCopy = blocks;
  if ([(EDSharedFormula *)self baseFormulaIndex]== -1)
  {
    v6 = 0;
  }

  else
  {
    formulas = [blocksCopy formulas];
    v6 = [formulas objectAtIndex:{-[EDSharedFormula baseFormulaIndex](self, "baseFormulaIndex")}];
  }

  return v6;
}

- (id)warningWithRowBlocks:(id)blocks
{
  blocksCopy = blocks;
  v11.receiver = self;
  v11.super_class = EDSharedFormula;
  warning = [(EDFormula *)&v11 warning];
  v6 = warning;
  if (warning)
  {
    warning2 = warning;
  }

  else
  {
    v8 = [(EDSharedFormula *)self baseFormulaWithRowBlocks:blocksCopy];
    v9 = v8;
    if (v8 && (([v8 isContainsRelativeReferences] & 1) != 0 || (objc_msgSend(v9, "isCleanedWithEvaluationStack") & 1) != 0))
    {
      warning2 = 0;
    }

    else
    {
      warning2 = [v9 warning];
    }
  }

  return warning2;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDSharedFormula;
  v2 = [(EDFormula *)&v4 description];

  return v2;
}

- (void)updateBaseFormulaRangeWithRow:(int)row column:(int)column
{
  v4 = *&column;
  v5 = *&row;
  baseFormulaRange = [(EDSharedFormula *)self baseFormulaRange];
  if (baseFormulaRange)
  {
  }

  else if ([(EDSharedFormula *)self rowBaseOrOffset]== -1 || [(EDSharedFormula *)self columnBaseOrOffset]== -1)
  {
    v11 = [[EDReference alloc] initWithFirstRow:v5 lastRow:v5 firstColumn:v4 lastColumn:v4];
    baseFormulaRange = self->_baseFormulaRange;
    self->_baseFormulaRange = v11;
    goto LABEL_9;
  }

  if (!self->_baseFormulaRange)
  {
    v8 = [[EDReference alloc] initWithFirstRow:[(EDSharedFormula *)self rowBaseOrOffset] lastRow:[(EDSharedFormula *)self rowBaseOrOffset] firstColumn:[(EDSharedFormula *)self columnBaseOrOffset] lastColumn:[(EDSharedFormula *)self columnBaseOrOffset]];
    v9 = self->_baseFormulaRange;
    self->_baseFormulaRange = v8;
  }

  baseFormulaRange2 = [(EDSharedFormula *)self baseFormulaRange];
  [(EDReference *)baseFormulaRange2 unionWithRow:v5 column:v4];
  baseFormulaRange = baseFormulaRange2;
LABEL_9:
}

- (void)unarchiveFromData:(__CFData *)data offset:(unint64_t *)offset
{
  if (data)
  {
    v11.receiver = self;
    v11.super_class = EDSharedFormula;
    [EDFormula unarchiveFromData:sel_unarchiveFromData_offset_ offset:?];
    v7 = *offset;
    v12.location = *offset;
    v12.length = 8;
    CFDataGetBytes(data, v12, &self->_baseFormulaIndex);
    *offset += 8;
    v13.location = v7 + 8;
    v13.length = 1;
    CFDataGetBytes(data, v13, &self->_forceNonBaseFormula);
    ++*offset;
    v14.location = v7 + 9;
    v14.length = 4;
    CFDataGetBytes(data, v14, &self->_rowBaseOrOffset);
    *offset += 4;
    v15.location = v7 + 13;
    v15.length = 4;
    CFDataGetBytes(data, v15, &self->_columnBaseOrOffset);
    *offset += 4;
    v16.location = v7 + 17;
    v16.length = 16;
    CFDataGetBytes(data, v16, v10);
    *offset += 16;
    v8 = [[EDReference alloc] initWithAreaReference:v10];
    baseFormulaRange = self->_baseFormulaRange;
    self->_baseFormulaRange = v8;
  }
}

- (void)archiveByAppendingToMutableData:(__CFData *)data
{
  v7.receiver = self;
  v7.super_class = EDSharedFormula;
  [(EDFormula *)&v7 archiveByAppendingToMutableData:?];
  CFDataAppendBytes(data, &self->_baseFormulaIndex, 8);
  CFDataAppendBytes(data, &self->_forceNonBaseFormula, 1);
  CFDataAppendBytes(data, &self->_rowBaseOrOffset, 4);
  CFDataAppendBytes(data, &self->_columnBaseOrOffset, 4);
  v6[0] = [(EDReference *)self->_baseFormulaRange areaReference];
  v6[1] = v5;
  CFDataAppendBytes(data, v6, 16);
}

@end