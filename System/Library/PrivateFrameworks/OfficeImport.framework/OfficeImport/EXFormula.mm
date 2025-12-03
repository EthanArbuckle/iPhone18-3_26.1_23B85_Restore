@interface EXFormula
+ (Class)formulaClassFromXmlFormulaElement:(_xmlNode *)element state:(id)state;
+ (id)edFormulaFromXmlFormulaElement:(_xmlNode *)element formulaClass:(Class)class state:(id)state;
+ (id)edFormulaFromXmlFormulaElement:(_xmlNode *)element state:(id)state;
+ (id)edTokensForFormulaString:(id)string formulaClass:(Class)class rowNumber:(int)number columnNumber:(int)columnNumber sheet:(id)sheet workbook:(id)workbook;
+ (id)edTokensForFormulaString:(id)string sheet:(id)sheet workbook:(id)workbook;
+ (id)readFrom:(_xmlNode *)from formulaClass:(Class)class rowNumber:(int)number columnNumber:(int)columnNumber edCell:(EDCellHeader *)cell edRowBlocks:(id)blocks state:(id)state;
+ (void)applyArrayedFormula:(id)formula edReference:(id)reference edWorksheet:(id)worksheet state:(id)state;
+ (void)applyArrayedFormulasToSheet:(id)sheet state:(id)state;
+ (void)readFrom:(_xmlNode *)from rowNumber:(int)number columnNumber:(int)columnNumber edCell:(EDCellHeader *)cell edRowBlocks:(id)blocks state:(id)state;
@end

@implementation EXFormula

+ (id)edFormulaFromXmlFormulaElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v7 = [self edFormulaFromXmlFormulaElement:element formulaClass:objc_msgSend(self state:{"formulaClassFromXmlFormulaElement:state:", element, stateCopy), stateCopy}];

  return v7;
}

+ (id)edFormulaFromXmlFormulaElement:(_xmlNode *)element formulaClass:(Class)class state:(id)state
{
  v5 = [self readFrom:element formulaClass:class rowNumber:0xFFFFFFFFLL columnNumber:0xFFFFFFFFLL edCell:0 edRowBlocks:0 state:state];

  return v5;
}

+ (void)readFrom:(_xmlNode *)from rowNumber:(int)number columnNumber:(int)columnNumber edCell:(EDCellHeader *)cell edRowBlocks:(id)blocks state:(id)state
{
  v10 = *&columnNumber;
  v11 = *&number;
  blocksCopy = blocks;
  stateCopy = state;
  v15 = [self readFrom:from formulaClass:objc_msgSend(self rowNumber:"formulaClassFromXmlFormulaElement:state:" columnNumber:from edCell:stateCopy) edRowBlocks:v11 state:{v10, cell, blocksCopy, stateCopy}];
}

+ (void)applyArrayedFormulasToSheet:(id)sheet state:(id)state
{
  sheetCopy = sheet;
  stateCopy = state;
  v14 = sheetCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    arrayedFormulas = [stateCopy arrayedFormulas];
    v9 = [arrayedFormulas count];
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = [arrayedFormulas objectAtIndex:i];
        first = [v11 first];
        second = [v11 second];
        [self applyArrayedFormula:first edReference:second edWorksheet:v14 state:stateCopy];
      }
    }

    [arrayedFormulas removeAllObjects];
  }
}

+ (id)edTokensForFormulaString:(id)string sheet:(id)sheet workbook:(id)workbook
{
  stringCopy = string;
  sheetCopy = sheet;
  workbookCopy = workbook;
  v11 = [self edTokensForFormulaString:stringCopy formulaClass:objc_opt_class() rowNumber:0xFFFFFFFFLL columnNumber:0xFFFFFFFFLL sheet:sheetCopy workbook:workbookCopy];

  return v11;
}

+ (id)readFrom:(_xmlNode *)from formulaClass:(Class)class rowNumber:(int)number columnNumber:(int)columnNumber edCell:(EDCellHeader *)cell edRowBlocks:(id)blocks state:(id)state
{
  v10 = *&columnNumber;
  v11 = *&number;
  blocksCopy = blocks;
  stateCopy = state;
  formula = 0;
  if (from && class)
  {
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:from];
    if (v29 && [v29 length])
    {
      v17 = [@"=" stringByAppendingString:v29];
      v27 = stateCopy;
      currentSheet = [stateCopy currentSheet];
      workbook = [stateCopy workbook];
      formula = [self edTokensForFormulaString:v17 formulaClass:class rowNumber:v11 columnNumber:v10 sheet:currentSheet workbook:workbook];

      stateCopy = v27;
      if (!cell)
      {
        goto LABEL_19;
      }
    }

    else
    {
      formula = [(objc_class *)class formula];
      if (!cell)
      {
        goto LABEL_19;
      }
    }

    if (((v10 | v11) & 0x80000000) == 0)
    {
      setFormulaForEDCell(cell, formula, blocksCopy);
      v28 = stateCopy;
      v32 = 0;
      CXOptionalStringAttribute(from, CXNoNamespace, "ref", &v32);
      v20 = v32;
      if (objc_opt_class() == class)
      {
        arrayedFormulas = formula;
        v31 = -1;
        CXOptionalLongAttribute(from, CXNoNamespace, "si", &v31);
        if (v20)
        {
          [(EDFormula *)arrayedFormulas setRowBaseOrOffset:v11];
          [(EDFormula *)arrayedFormulas setColumnBaseOrOffset:v10];
          v24 = formulaIndexForEDCell(cell);
          [stateCopy addSharedBaseFormulaIndex:v24 withIndex:v31];
        }

        else
        {
          -[EDFormula setBaseFormulaIndex:](arrayedFormulas, "setBaseFormulaIndex:", [stateCopy sharedBaseFormulaIndexWithIndex:v31]);
          v25 = [(EDFormula *)arrayedFormulas baseFormulaWithRowBlocks:blocksCopy];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[EDFormula setRowBaseOrOffset:](arrayedFormulas, "setRowBaseOrOffset:", v11 - [v25 rowBaseOrOffset]);
            -[EDFormula setColumnBaseOrOffset:](arrayedFormulas, "setColumnBaseOrOffset:", v10 - [v25 columnBaseOrOffset]);
          }
        }
      }

      else
      {
        if (objc_opt_class() != class)
        {
LABEL_18:

          goto LABEL_19;
        }

        arrayedFormulas = [stateCopy arrayedFormulas];
        v22 = [EXReference edReferenceFromXmlReference:v20];
        v23 = [OITSUPair pairWithFirst:formula second:v22];
        [(EDFormula *)arrayedFormulas addObject:v23];

        stateCopy = v28;
      }

      goto LABEL_18;
    }

LABEL_19:
  }

  return formula;
}

+ (id)edTokensForFormulaString:(id)string formulaClass:(Class)class rowNumber:(int)number columnNumber:(int)columnNumber sheet:(id)sheet workbook:(id)workbook
{
  v10 = *&columnNumber;
  v11 = *&number;
  stringCopy = string;
  sheetCopy = sheet;
  workbookCopy = workbook;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = sheetCopy;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [[EDFormulaHelper alloc] initWithWorkbook:workbookCopy worksheet:v17 rowNumber:v11 columnNumber:v10];
  v19 = [EFormula stringToFormula:stringCopy formulaHelper:v18 formulaClass:class];
  [v19 setOriginalFormulaString:stringCopy];

  return v19;
}

+ (Class)formulaClassFromXmlFormulaElement:(_xmlNode *)element state:(id)state
{
  v13 = 0;
  v5 = CXOptionalStringAttribute(element, CXNoNamespace, "type", &v13);
  v6 = v13;
  v7 = v6;
  if (!v5)
  {
    v12 = v6;
    CXOptionalStringAttribute(element, CXNoNamespace, "t", &v12);
    v8 = v12;

    v7 = v8;
  }

  v9 = objc_opt_class();
  if ([v7 isEqualToString:@"shared"])
  {
    v9 = objc_opt_class();
  }

  if ([v7 isEqualToString:@"array"])
  {
    v9 = objc_opt_class();
  }

  else if (([v7 isEqualToString:@"dataTable"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"table"))
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

+ (void)applyArrayedFormula:(id)formula edReference:(id)reference edWorksheet:(id)worksheet state:(id)state
{
  formulaCopy = formula;
  referenceCopy = reference;
  worksheetCopy = worksheet;
  stateCopy = state;
  v37 = formulaCopy;
  v38 = worksheetCopy;
  originalFormulaString = [formulaCopy originalFormulaString];
  if (worksheetCopy)
  {
    if (referenceCopy)
    {
      if (originalFormulaString)
      {
        firstRow = [referenceCopy firstRow];
        lastRow = [referenceCopy lastRow];
        firstColumn = [referenceCopy firstColumn];
        lastColumn = [referenceCopy lastColumn];
        if (firstRow <= 0x10000 && firstColumn <= 256)
        {
          v13 = lastRow >= 0x10000 ? 0x10000 : lastRow;
          v42 = v13;
          v14 = lastColumn >= 256 ? 256 : lastColumn;
          v47 = v14;
          if (lastRow >= firstRow)
          {
            rowBlocks = [worksheetCopy rowBlocks];
            formulas = [rowBlocks formulas];
            v46 = [formulas indexOfObject:formulaCopy];

            v17 = [rowBlocks expectedIndexOfRowBlockForRowNumber:firstRow];
            v36 = [rowBlocks expectedIndexOfRowBlockForRowNumber:v42];
            if (v17 <= v36)
            {
              v44 = rowBlocks;
              while (1)
              {
                v41 = v17;
                v18 = [rowBlocks rowBlockAtIndex:v17];
                v19 = v18;
                if (v18)
                {
                  rowCount = [v18 rowCount];
                  if (rowCount)
                  {
                    break;
                  }
                }

LABEL_51:

                v17 = v41 + 1;
                rowBlocks = v44;
                if (v41 + 1 > v36)
                {
                  goto LABEL_52;
                }
              }

              v20 = 0;
              while (1)
              {
                v21 = [v19 rowInfoAtIndex:v20];
                v50 = v21;
                if (v21)
                {
                  v22 = *(v21 + 4);
                  if (v22 >= firstRow)
                  {
                    if (v22 > v42)
                    {
                      goto LABEL_51;
                    }

                    v23 = *(v21 + 8);
                    v24 = [v19 expectedIndexOfCellWithColumnNumber:firstColumn rowInfo:?];
                    v48 = v23;
                    if (v24 < v23)
                    {
                      break;
                    }
                  }
                }

LABEL_50:
                v20 = (v20 + 1);
                if (v20 == rowCount)
                {
                  goto LABEL_51;
                }
              }

              while (1)
              {
                v25 = [v19 cellAtIndex:v24 rowInfo:v50];
                v26 = columnNumberForEDCell(v25);
                v27 = v26;
                if (v26 >= firstColumn)
                {
                  break;
                }

LABEL_47:
                v24 = (v24 + 1);
                if (v24 >= v48)
                {
                  goto LABEL_50;
                }
              }

              if (v26 > v47)
              {
                goto LABEL_50;
              }

              if (isFormulaCell(v25))
              {
LABEL_46:
                setFormulaIndexForEDCell(v25, v46);
                if (v27 == v47)
                {
                  goto LABEL_50;
                }

                goto LABEL_47;
              }

              v28 = typeForEDCell(v25);
              v29 = styleIndexForEDCell(v25);
              v30 = 0;
              v31 = 0.0;
              v32 = -1;
              if (v28 > 2)
              {
                if (v28 != 3)
                {
                  if (v28 == 5)
                  {
                    v33 = errorValueForEDCell(v25);
                    v30 = 0;
                  }

                  else
                  {
                    v33 = 0;
                  }

                  goto LABEL_36;
                }

                v32 = stringIndexValueForEDCell(v25);
              }

              else
              {
                if (v28 == 1)
                {
                  v30 = BOOLValueForEDCell(v25);
LABEL_35:
                  v33 = 0;
                  goto LABEL_36;
                }

                v33 = 0;
                if (v28 != 2)
                {
LABEL_36:
                  v34 = [v19 addCellWithColumnNumber:v27 type:v28 isFormulaCell:1 rowInfo:&v50 rowBlocks:v44];
                  v25 = v34;
                  if (v28 > 2)
                  {
                    if (v28 == 3)
                    {
                      setStringIndexValueForEDCell(v34, v32);
                    }

                    else if (v28 == 5)
                    {
                      setErrorValueForEDCell(v34, v33);
                    }
                  }

                  else if (v28 == 1)
                  {
                    setBoolValueForEDCell(v34, v30);
                  }

                  else if (v28 == 2)
                  {
                    setNumberValueForEDCell(v34, v31);
                  }

                  setStyleIndexForEDCell(v25, v29);
                  goto LABEL_46;
                }

                v31 = numberValueForEDCell(v25);
              }

              v30 = 0;
              goto LABEL_35;
            }

LABEL_52:
            [rowBlocks unlock];
          }
        }
      }
    }
  }
}

@end