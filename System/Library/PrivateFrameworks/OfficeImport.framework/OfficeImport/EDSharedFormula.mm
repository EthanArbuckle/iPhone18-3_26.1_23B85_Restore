@interface EDSharedFormula
- (BOOL)convertTokensToShared;
- (EDSharedFormula)init;
- (EDSharedFormula)initWithFormula:(id)a3;
- (id)baseFormulaWithRowBlocks:(id)a3;
- (id)description;
- (id)warningWithRowBlocks:(id)a3;
- (void)archiveByAppendingToMutableData:(__CFData *)a3;
- (void)unarchiveFromData:(__CFData *)a3 offset:(unint64_t *)a4;
- (void)updateBaseFormulaRangeWithRow:(int)a3 column:(int)a4;
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

- (EDSharedFormula)initWithFormula:(id)a3
{
  v4.receiver = self;
  v4.super_class = EDSharedFormula;
  result = [(EDFormula *)&v4 initWithFormula:a3];
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
  v3 = [(EDSharedFormula *)self rowBaseOrOffset];
  v4 = [(EDSharedFormula *)self columnBaseOrOffset];

  return [(EDFormula *)self convertTokensToSharedAtRow:v3 column:v4];
}

- (id)baseFormulaWithRowBlocks:(id)a3
{
  v4 = a3;
  if ([(EDSharedFormula *)self baseFormulaIndex]== -1)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 formulas];
    v6 = [v5 objectAtIndex:{-[EDSharedFormula baseFormulaIndex](self, "baseFormulaIndex")}];
  }

  return v6;
}

- (id)warningWithRowBlocks:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EDSharedFormula;
  v5 = [(EDFormula *)&v11 warning];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(EDSharedFormula *)self baseFormulaWithRowBlocks:v4];
    v9 = v8;
    if (v8 && (([v8 isContainsRelativeReferences] & 1) != 0 || (objc_msgSend(v9, "isCleanedWithEvaluationStack") & 1) != 0))
    {
      v7 = 0;
    }

    else
    {
      v7 = [v9 warning];
    }
  }

  return v7;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDSharedFormula;
  v2 = [(EDFormula *)&v4 description];

  return v2;
}

- (void)updateBaseFormulaRangeWithRow:(int)a3 column:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v7 = [(EDSharedFormula *)self baseFormulaRange];
  if (v7)
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

  v12 = [(EDSharedFormula *)self baseFormulaRange];
  [(EDReference *)v12 unionWithRow:v5 column:v4];
  baseFormulaRange = v12;
LABEL_9:
}

- (void)unarchiveFromData:(__CFData *)a3 offset:(unint64_t *)a4
{
  if (a3)
  {
    v11.receiver = self;
    v11.super_class = EDSharedFormula;
    [EDFormula unarchiveFromData:sel_unarchiveFromData_offset_ offset:?];
    v7 = *a4;
    v12.location = *a4;
    v12.length = 8;
    CFDataGetBytes(a3, v12, &self->_baseFormulaIndex);
    *a4 += 8;
    v13.location = v7 + 8;
    v13.length = 1;
    CFDataGetBytes(a3, v13, &self->_forceNonBaseFormula);
    ++*a4;
    v14.location = v7 + 9;
    v14.length = 4;
    CFDataGetBytes(a3, v14, &self->_rowBaseOrOffset);
    *a4 += 4;
    v15.location = v7 + 13;
    v15.length = 4;
    CFDataGetBytes(a3, v15, &self->_columnBaseOrOffset);
    *a4 += 4;
    v16.location = v7 + 17;
    v16.length = 16;
    CFDataGetBytes(a3, v16, v10);
    *a4 += 16;
    v8 = [[EDReference alloc] initWithAreaReference:v10];
    baseFormulaRange = self->_baseFormulaRange;
    self->_baseFormulaRange = v8;
  }
}

- (void)archiveByAppendingToMutableData:(__CFData *)a3
{
  v7.receiver = self;
  v7.super_class = EDSharedFormula;
  [(EDFormula *)&v7 archiveByAppendingToMutableData:?];
  CFDataAppendBytes(a3, &self->_baseFormulaIndex, 8);
  CFDataAppendBytes(a3, &self->_forceNonBaseFormula, 1);
  CFDataAppendBytes(a3, &self->_rowBaseOrOffset, 4);
  CFDataAppendBytes(a3, &self->_columnBaseOrOffset, 4);
  v6[0] = [(EDReference *)self->_baseFormulaRange areaReference];
  v6[1] = v5;
  CFDataAppendBytes(a3, v6, 16);
}

@end