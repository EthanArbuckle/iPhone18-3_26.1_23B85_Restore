@interface EXRow
+ (id)createFormulaReferenceRangeForRowBlocks:(id)a3;
+ (void)edRowFrom:(_xmlTextReader *)a3 edRowInfo:(EDRowInfo *)a4 edRowBlock:(id)a5 edRowBlocks:(id)a6 state:(id)a7;
+ (void)readRowsFrom:(_xmlTextReader *)a3 state:(id)a4;
@end

@implementation EXRow

+ (void)readRowsFrom:(_xmlTextReader *)a3 state:(id)a4
{
  v6 = a4;
  if (!xmlTextReaderIsEmptyElement(a3))
  {
    v7 = [v6 currentSheet];
    v8 = [v7 rowBlocks];

    v9 = [v6 sheetDimension];
    v10 = [v9 lastRow];

    p_superclass = TCEnumerationMultiMap.superclass;
    v37 = v8;
    [TCProgressContext createStageWithSteps:@"read rows" takingSteps:((v10 & ~(v10 >> 31)) + 1) name:1.0];
    v32 = a1;
    v12 = objc_alloc_init(OCXSStream);
    v13 = xmlTextReaderDepth(a3);
    [(OCXSStream *)v12 pushLevel:v13 name:xmlTextReaderConstLocalName(a3)];
    v14 = 0;
    v33 = 0;
    v15 = 0;
    while ([OCXStreamUtility readStream:a3 streamState:v12])
    {
      [v6 setCurrentRowMinColumnIndex:0];
      [v6 setCurrentRowMaxColumnIndex:0];
      v16 = xmlTextReaderConstLocalName(a3);
      if (xmlStrEqual(v16, "row"))
      {
        v38 = v14;
        v36 = v15;
        Attribute = xmlTextReaderGetAttribute(a3, "r");
        v18 = Attribute;
        if (Attribute && sfaxmlXmlCharToLong(Attribute, &v38))
        {
          v35 = v38--;
        }

        else
        {
          v35 = v14 + 1;
        }

        free(v18);
        v19 = xmlTextReaderGetAttribute(a3, "spans");
        if (v19 && ([MEMORY[0x277CCACA8] tc_stringWithXmlString:v19], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v34 = v20;
          v22 = [v20 rangeOfString:@":"];
          if (v22 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v23 = 0;
          }

          else
          {
            v25 = v21;
            v26 = [v34 substringToIndex:v22];
            v27 = [v26 intValue];

            v23 = [v34 substringFromIndex:v22 + v25];
            v28 = [v23 intValue];

            if (v27)
            {
              [v6 setCurrentRowMinColumnIndex:(v27 - 1)];
            }

            LODWORD(v23) = vcvtpd_u64_f64(vcvtd_n_f64_u32(v28 - v27, 2uLL));
            if (v28)
            {
              [v6 setCurrentRowMaxColumnIndex:(v28 - 1)];
            }
          }

          v24 = v34;
        }

        else
        {
          v23 = 0;
          v24 = 0;
        }

        free(v19);
        if (v38 < 0)
        {

          v15 = v36;
          v8 = v37;
          p_superclass = (TCEnumerationMultiMap + 8);
          v14 = v35;
        }

        else
        {
          v29 = [v37 rowBlockForRowNumber:? currentRowBlock:? createIfNil:?];

          v30 = [v29 addRowInfoWithRowNumber:v38 cellCountHint:v23];
          if (v30)
          {
            [v32 edRowFrom:a3 edRowInfo:v30 edRowBlock:v29 edRowBlocks:v37 state:v6];
          }

          [TCProgressContext advanceProgress:1.0];
          ++v33;
          HIDWORD(v31) = -1030792151 * v33;
          LODWORD(v31) = -1030792151 * v33;
          if ((v31 >> 1) <= 0x51EB851)
          {
            if ([v6 isCancelled])
            {
              [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
            }
          }

          v15 = v29;
          v8 = v37;
          p_superclass = (TCEnumerationMultiMap + 8);
          v14 = v35;
        }
      }
    }

    [v8 unlock];
    [p_superclass + 59 endStage];
  }
}

+ (void)edRowFrom:(_xmlTextReader *)a3 edRowInfo:(EDRowInfo *)a4 edRowBlock:(id)a5 edRowBlocks:(id)a6 state:(id)a7
{
  v36 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v35 = 0;
  Attribute = xmlTextReaderGetAttribute(a3, "customFormat");
  v15 = Attribute;
  if (Attribute && sfaxmlXmlCharToBool(Attribute, &v35) && v35 == 1)
  {
    v34 = 0;
    v16 = xmlTextReaderGetAttribute(a3, "s");
    v17 = v16;
    if (v16 && sfaxmlXmlCharToUnsignedLong(v16, &v34))
    {
      setStyleIndexForEDRowInfo(a4, v34);
    }

    free(v17);
  }

  free(v15);
  v34 = 0;
  v18 = xmlTextReaderGetAttribute(a3, "outlineLevel");
  v19 = v18;
  if (v18 && sfaxmlXmlCharToUnsignedLong(v18, &v34))
  {
    a4->var6 = v34;
  }

  free(v19);
  [v13 defaultRowHeight];
  v33 = v20;
  v21 = xmlTextReaderGetAttribute(a3, "ht");
  v22 = v21;
  if (v21 && sfaxmlXmlCharToDouble(v21, &v33))
  {
    v33 = v33 * 20.0;
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  free(v22);
  a4->var5 = v33;
  *(a4 + 23) = *(a4 + 23) & 0xFE | v23;
  v32 = 0;
  v24 = xmlTextReaderGetAttribute(a3, "customHeight");
  v25 = v24;
  if (v24 && sfaxmlXmlCharToBool(v24, &v32))
  {
    *(a4 + 23) = *(a4 + 23) & 0xFE | v32;
  }

  free(v25);
  v31 = 0;
  v26 = xmlTextReaderGetAttribute(a3, "hidden");
  v27 = v26;
  if (v26 && sfaxmlXmlCharToBool(v26, &v31))
  {
    *(a4 + 23) = *(a4 + 23) & 0xFD | (2 * v31);
  }

  free(v27);
  if (!xmlTextReaderIsEmptyElement(a3))
  {
    v28 = objc_alloc_init(OCXSStream);
    v29 = xmlTextReaderDepth(a3);
    [(OCXSStream *)v28 pushLevel:v29 name:xmlTextReaderConstLocalName(a3)];
    while ([OCXStreamUtility readStream:a3 streamState:v28])
    {
      v30 = xmlTextReaderConstLocalName(a3);
      if (xmlStrEqual(v30, "c"))
      {
        [EXCell edCellFromXmlCellElement:xmlTextReaderExpand(a3) edRowInfo:&v36 edRowBlock:v11 edRowBlocks:v12 state:v13];
      }
    }
  }
}

+ (id)createFormulaReferenceRangeForRowBlocks:(id)a3
{
  v3 = a3;
  v4 = [(EDRowBlocks *)v3 formulas];
  std::vector<EDReference * {__strong}>::vector[abi:ne200100](v29, [v4 count]);

  if (v3)
  {
    for (i = 0; [(EDRowBlocks *)v3 rowBlockCount]> i; i = v28 + 1)
    {
      v28 = i;
      v6 = [(EDRowBlocks *)v3 rowBlockAtIndex:?];
      for (j = 0; j < [v6 rowCount]; j = (j + 1))
      {
        v8 = [v6 rowInfoAtIndex:j];
        v9 = v8;
        if (*(v8 + 8))
        {
          v10 = 0;
          v11 = *(v8 + 4);
          do
          {
            v12 = [v6 cellAtIndex:v10 rowInfo:v9];
            if (isFormulaCell(v12))
            {
              v13 = formulaIndexForEDCell(v12);
              v14 = columnNumberForEDCell(v12);
              if (v13 != -1)
              {
                v15 = v14;
                v16 = formulaForEDCell(v12, v3);
                if ([v16 isSharedFormula])
                {
                  if (([v16 isBaseFormula] & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v17 = v16;
                      v13 = [v17 baseFormulaIndex];
                    }
                  }
                }

                v18 = *(v29[0] + 8 * v13);
                if (v18)
                {
                  v19 = v18;
                  v20 = [[EDReference alloc] initWithFirstRow:v11 lastRow:v11 firstColumn:v15 lastColumn:v15];
                  [v19 unionWithReference:v20];
                }

                else
                {
                  v21 = [[EDReference alloc] initWithFirstRow:v11 lastRow:v11 firstColumn:v15 lastColumn:v15];
                  v19 = *(v29[0] + 8 * v13);
                  *(v29[0] + 8 * v13) = v21;
                }
              }
            }

            v10 = (v10 + 1);
          }

          while (v10 < *(v9 + 8));
        }
      }
    }
  }

  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (k = 0; ; ++k)
  {
    v24 = [(EDRowBlocks *)v3 formulas];
    v25 = [v24 count];

    if (v25 <= k)
    {
      break;
    }

    if (*(v29[0] + 8 * k))
    {
      [v22 addObject:?];
    }

    else
    {
      v26 = [[EDReference alloc] initWithFirstRow:0xFFFFFFFFLL lastRow:0xFFFFFFFFLL firstColumn:0xFFFFFFFFLL lastColumn:0xFFFFFFFFLL];
      [v22 addObject:v26];
    }
  }

  v30 = v29;
  std::vector<OADTableCell * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v30);

  return v22;
}

@end