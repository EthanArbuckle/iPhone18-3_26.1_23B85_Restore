@interface EXFormula
+ (Class)formulaClassFromXmlFormulaElement:(_xmlNode *)a3 state:(id)a4;
+ (id)edFormulaFromXmlFormulaElement:(_xmlNode *)a3 formulaClass:(Class)a4 state:(id)a5;
+ (id)edFormulaFromXmlFormulaElement:(_xmlNode *)a3 state:(id)a4;
+ (id)edTokensForFormulaString:(id)a3 formulaClass:(Class)a4 rowNumber:(int)a5 columnNumber:(int)a6 sheet:(id)a7 workbook:(id)a8;
+ (id)edTokensForFormulaString:(id)a3 sheet:(id)a4 workbook:(id)a5;
+ (id)readFrom:(_xmlNode *)a3 formulaClass:(Class)a4 rowNumber:(int)a5 columnNumber:(int)a6 edCell:(EDCellHeader *)a7 edRowBlocks:(id)a8 state:(id)a9;
+ (void)applyArrayedFormula:(id)a3 edReference:(id)a4 edWorksheet:(id)a5 state:(id)a6;
+ (void)applyArrayedFormulasToSheet:(id)a3 state:(id)a4;
+ (void)readFrom:(_xmlNode *)a3 rowNumber:(int)a4 columnNumber:(int)a5 edCell:(EDCellHeader *)a6 edRowBlocks:(id)a7 state:(id)a8;
@end

@implementation EXFormula

+ (id)edFormulaFromXmlFormulaElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [a1 edFormulaFromXmlFormulaElement:a3 formulaClass:objc_msgSend(a1 state:{"formulaClassFromXmlFormulaElement:state:", a3, v6), v6}];

  return v7;
}

+ (id)edFormulaFromXmlFormulaElement:(_xmlNode *)a3 formulaClass:(Class)a4 state:(id)a5
{
  v5 = [a1 readFrom:a3 formulaClass:a4 rowNumber:0xFFFFFFFFLL columnNumber:0xFFFFFFFFLL edCell:0 edRowBlocks:0 state:a5];

  return v5;
}

+ (void)readFrom:(_xmlNode *)a3 rowNumber:(int)a4 columnNumber:(int)a5 edCell:(EDCellHeader *)a6 edRowBlocks:(id)a7 state:(id)a8
{
  v10 = *&a5;
  v11 = *&a4;
  v16 = a7;
  v14 = a8;
  v15 = [a1 readFrom:a3 formulaClass:objc_msgSend(a1 rowNumber:"formulaClassFromXmlFormulaElement:state:" columnNumber:a3 edCell:v14) edRowBlocks:v11 state:{v10, a6, v16, v14}];
}

+ (void)applyArrayedFormulasToSheet:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 arrayedFormulas];
    v9 = [v8 count];
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = [v8 objectAtIndex:i];
        v12 = [v11 first];
        v13 = [v11 second];
        [a1 applyArrayedFormula:v12 edReference:v13 edWorksheet:v14 state:v7];
      }
    }

    [v8 removeAllObjects];
  }
}

+ (id)edTokensForFormulaString:(id)a3 sheet:(id)a4 workbook:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 edTokensForFormulaString:v8 formulaClass:objc_opt_class() rowNumber:0xFFFFFFFFLL columnNumber:0xFFFFFFFFLL sheet:v9 workbook:v10];

  return v11;
}

+ (id)readFrom:(_xmlNode *)a3 formulaClass:(Class)a4 rowNumber:(int)a5 columnNumber:(int)a6 edCell:(EDCellHeader *)a7 edRowBlocks:(id)a8 state:(id)a9
{
  v10 = *&a6;
  v11 = *&a5;
  v30 = a8;
  v15 = a9;
  v16 = 0;
  if (a3 && a4)
  {
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:a3];
    if (v29 && [v29 length])
    {
      v17 = [@"=" stringByAppendingString:v29];
      v27 = v15;
      v18 = [v15 currentSheet];
      v19 = [v15 workbook];
      v16 = [a1 edTokensForFormulaString:v17 formulaClass:a4 rowNumber:v11 columnNumber:v10 sheet:v18 workbook:v19];

      v15 = v27;
      if (!a7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = [(objc_class *)a4 formula];
      if (!a7)
      {
        goto LABEL_19;
      }
    }

    if (((v10 | v11) & 0x80000000) == 0)
    {
      setFormulaForEDCell(a7, v16, v30);
      v28 = v15;
      v32 = 0;
      CXOptionalStringAttribute(a3, CXNoNamespace, "ref", &v32);
      v20 = v32;
      if (objc_opt_class() == a4)
      {
        v21 = v16;
        v31 = -1;
        CXOptionalLongAttribute(a3, CXNoNamespace, "si", &v31);
        if (v20)
        {
          [(EDFormula *)v21 setRowBaseOrOffset:v11];
          [(EDFormula *)v21 setColumnBaseOrOffset:v10];
          v24 = formulaIndexForEDCell(a7);
          [v15 addSharedBaseFormulaIndex:v24 withIndex:v31];
        }

        else
        {
          -[EDFormula setBaseFormulaIndex:](v21, "setBaseFormulaIndex:", [v15 sharedBaseFormulaIndexWithIndex:v31]);
          v25 = [(EDFormula *)v21 baseFormulaWithRowBlocks:v30];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[EDFormula setRowBaseOrOffset:](v21, "setRowBaseOrOffset:", v11 - [v25 rowBaseOrOffset]);
            -[EDFormula setColumnBaseOrOffset:](v21, "setColumnBaseOrOffset:", v10 - [v25 columnBaseOrOffset]);
          }
        }
      }

      else
      {
        if (objc_opt_class() != a4)
        {
LABEL_18:

          goto LABEL_19;
        }

        v21 = [v15 arrayedFormulas];
        v22 = [EXReference edReferenceFromXmlReference:v20];
        v23 = [OITSUPair pairWithFirst:v16 second:v22];
        [(EDFormula *)v21 addObject:v23];

        v15 = v28;
      }

      goto LABEL_18;
    }

LABEL_19:
  }

  return v16;
}

+ (id)edTokensForFormulaString:(id)a3 formulaClass:(Class)a4 rowNumber:(int)a5 columnNumber:(int)a6 sheet:(id)a7 workbook:(id)a8
{
  v10 = *&a6;
  v11 = *&a5;
  v13 = a3;
  v14 = a7;
  v15 = a8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [[EDFormulaHelper alloc] initWithWorkbook:v15 worksheet:v17 rowNumber:v11 columnNumber:v10];
  v19 = [EFormula stringToFormula:v13 formulaHelper:v18 formulaClass:a4];
  [v19 setOriginalFormulaString:v13];

  return v19;
}

+ (Class)formulaClassFromXmlFormulaElement:(_xmlNode *)a3 state:(id)a4
{
  v13 = 0;
  v5 = CXOptionalStringAttribute(a3, CXNoNamespace, "type", &v13);
  v6 = v13;
  v7 = v6;
  if (!v5)
  {
    v12 = v6;
    CXOptionalStringAttribute(a3, CXNoNamespace, "t", &v12);
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

+ (void)applyArrayedFormula:(id)a3 edReference:(id)a4 edWorksheet:(id)a5 state:(id)a6
{
  v9 = a3;
  v40 = a4;
  v10 = a5;
  v35 = a6;
  v37 = v9;
  v38 = v10;
  v39 = [v9 originalFormulaString];
  if (v10)
  {
    if (v40)
    {
      if (v39)
      {
        v43 = [v40 firstRow];
        v11 = [v40 lastRow];
        v49 = [v40 firstColumn];
        v12 = [v40 lastColumn];
        if (v43 <= 0x10000 && v49 <= 256)
        {
          v13 = v11 >= 0x10000 ? 0x10000 : v11;
          v42 = v13;
          v14 = v12 >= 256 ? 256 : v12;
          v47 = v14;
          if (v11 >= v43)
          {
            v15 = [v10 rowBlocks];
            v16 = [v15 formulas];
            v46 = [v16 indexOfObject:v9];

            v17 = [v15 expectedIndexOfRowBlockForRowNumber:v43];
            v36 = [v15 expectedIndexOfRowBlockForRowNumber:v42];
            if (v17 <= v36)
            {
              v44 = v15;
              while (1)
              {
                v41 = v17;
                v18 = [v15 rowBlockAtIndex:v17];
                v19 = v18;
                if (v18)
                {
                  v45 = [v18 rowCount];
                  if (v45)
                  {
                    break;
                  }
                }

LABEL_51:

                v17 = v41 + 1;
                v15 = v44;
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
                  if (v22 >= v43)
                  {
                    if (v22 > v42)
                    {
                      goto LABEL_51;
                    }

                    v23 = *(v21 + 8);
                    v24 = [v19 expectedIndexOfCellWithColumnNumber:v49 rowInfo:?];
                    v48 = v23;
                    if (v24 < v23)
                    {
                      break;
                    }
                  }
                }

LABEL_50:
                v20 = (v20 + 1);
                if (v20 == v45)
                {
                  goto LABEL_51;
                }
              }

              while (1)
              {
                v25 = [v19 cellAtIndex:v24 rowInfo:v50];
                v26 = columnNumberForEDCell(v25);
                v27 = v26;
                if (v26 >= v49)
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
            [v15 unlock];
          }
        }
      }
    }
  }
}

@end