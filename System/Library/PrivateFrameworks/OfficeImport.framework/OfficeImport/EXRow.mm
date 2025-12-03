@interface EXRow
+ (id)createFormulaReferenceRangeForRowBlocks:(id)blocks;
+ (void)edRowFrom:(_xmlTextReader *)from edRowInfo:(EDRowInfo *)info edRowBlock:(id)block edRowBlocks:(id)blocks state:(id)state;
+ (void)readRowsFrom:(_xmlTextReader *)from state:(id)state;
@end

@implementation EXRow

+ (void)readRowsFrom:(_xmlTextReader *)from state:(id)state
{
  stateCopy = state;
  if (!xmlTextReaderIsEmptyElement(from))
  {
    currentSheet = [stateCopy currentSheet];
    rowBlocks = [currentSheet rowBlocks];

    sheetDimension = [stateCopy sheetDimension];
    lastRow = [sheetDimension lastRow];

    p_superclass = TCEnumerationMultiMap.superclass;
    v37 = rowBlocks;
    [TCProgressContext createStageWithSteps:@"read rows" takingSteps:((lastRow & ~(lastRow >> 31)) + 1) name:1.0];
    selfCopy = self;
    v12 = objc_alloc_init(OCXSStream);
    v13 = xmlTextReaderDepth(from);
    [(OCXSStream *)v12 pushLevel:v13 name:xmlTextReaderConstLocalName(from)];
    v14 = 0;
    v33 = 0;
    v15 = 0;
    while ([OCXStreamUtility readStream:from streamState:v12])
    {
      [stateCopy setCurrentRowMinColumnIndex:0];
      [stateCopy setCurrentRowMaxColumnIndex:0];
      v16 = xmlTextReaderConstLocalName(from);
      if (xmlStrEqual(v16, "row"))
      {
        v38 = v14;
        v36 = v15;
        Attribute = xmlTextReaderGetAttribute(from, "r");
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
        v19 = xmlTextReaderGetAttribute(from, "spans");
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
            intValue = [v26 intValue];

            v23 = [v34 substringFromIndex:v22 + v25];
            intValue2 = [v23 intValue];

            if (intValue)
            {
              [stateCopy setCurrentRowMinColumnIndex:(intValue - 1)];
            }

            LODWORD(v23) = vcvtpd_u64_f64(vcvtd_n_f64_u32(intValue2 - intValue, 2uLL));
            if (intValue2)
            {
              [stateCopy setCurrentRowMaxColumnIndex:(intValue2 - 1)];
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
          rowBlocks = v37;
          p_superclass = (TCEnumerationMultiMap + 8);
          v14 = v35;
        }

        else
        {
          v29 = [v37 rowBlockForRowNumber:? currentRowBlock:? createIfNil:?];

          v30 = [v29 addRowInfoWithRowNumber:v38 cellCountHint:v23];
          if (v30)
          {
            [selfCopy edRowFrom:from edRowInfo:v30 edRowBlock:v29 edRowBlocks:v37 state:stateCopy];
          }

          [TCProgressContext advanceProgress:1.0];
          ++v33;
          HIDWORD(v31) = -1030792151 * v33;
          LODWORD(v31) = -1030792151 * v33;
          if ((v31 >> 1) <= 0x51EB851)
          {
            if ([stateCopy isCancelled])
            {
              [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
            }
          }

          v15 = v29;
          rowBlocks = v37;
          p_superclass = (TCEnumerationMultiMap + 8);
          v14 = v35;
        }
      }
    }

    [rowBlocks unlock];
    [p_superclass + 59 endStage];
  }
}

+ (void)edRowFrom:(_xmlTextReader *)from edRowInfo:(EDRowInfo *)info edRowBlock:(id)block edRowBlocks:(id)blocks state:(id)state
{
  infoCopy = info;
  blockCopy = block;
  blocksCopy = blocks;
  stateCopy = state;
  v35 = 0;
  Attribute = xmlTextReaderGetAttribute(from, "customFormat");
  v15 = Attribute;
  if (Attribute && sfaxmlXmlCharToBool(Attribute, &v35) && v35 == 1)
  {
    v34 = 0;
    v16 = xmlTextReaderGetAttribute(from, "s");
    v17 = v16;
    if (v16 && sfaxmlXmlCharToUnsignedLong(v16, &v34))
    {
      setStyleIndexForEDRowInfo(info, v34);
    }

    free(v17);
  }

  free(v15);
  v34 = 0;
  v18 = xmlTextReaderGetAttribute(from, "outlineLevel");
  v19 = v18;
  if (v18 && sfaxmlXmlCharToUnsignedLong(v18, &v34))
  {
    info->var6 = v34;
  }

  free(v19);
  [stateCopy defaultRowHeight];
  v33 = v20;
  v21 = xmlTextReaderGetAttribute(from, "ht");
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
  info->var5 = v33;
  *(info + 23) = *(info + 23) & 0xFE | v23;
  v32 = 0;
  v24 = xmlTextReaderGetAttribute(from, "customHeight");
  v25 = v24;
  if (v24 && sfaxmlXmlCharToBool(v24, &v32))
  {
    *(info + 23) = *(info + 23) & 0xFE | v32;
  }

  free(v25);
  v31 = 0;
  v26 = xmlTextReaderGetAttribute(from, "hidden");
  v27 = v26;
  if (v26 && sfaxmlXmlCharToBool(v26, &v31))
  {
    *(info + 23) = *(info + 23) & 0xFD | (2 * v31);
  }

  free(v27);
  if (!xmlTextReaderIsEmptyElement(from))
  {
    v28 = objc_alloc_init(OCXSStream);
    v29 = xmlTextReaderDepth(from);
    [(OCXSStream *)v28 pushLevel:v29 name:xmlTextReaderConstLocalName(from)];
    while ([OCXStreamUtility readStream:from streamState:v28])
    {
      v30 = xmlTextReaderConstLocalName(from);
      if (xmlStrEqual(v30, "c"))
      {
        [EXCell edCellFromXmlCellElement:xmlTextReaderExpand(from) edRowInfo:&infoCopy edRowBlock:blockCopy edRowBlocks:blocksCopy state:stateCopy];
      }
    }
  }
}

+ (id)createFormulaReferenceRangeForRowBlocks:(id)blocks
{
  blocksCopy = blocks;
  formulas = [(EDRowBlocks *)blocksCopy formulas];
  std::vector<EDReference * {__strong}>::vector[abi:ne200100](v29, [formulas count]);

  if (blocksCopy)
  {
    for (i = 0; [(EDRowBlocks *)blocksCopy rowBlockCount]> i; i = v28 + 1)
    {
      v28 = i;
      v6 = [(EDRowBlocks *)blocksCopy rowBlockAtIndex:?];
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
              baseFormulaIndex = formulaIndexForEDCell(v12);
              v14 = columnNumberForEDCell(v12);
              if (baseFormulaIndex != -1)
              {
                v15 = v14;
                v16 = formulaForEDCell(v12, blocksCopy);
                if ([v16 isSharedFormula])
                {
                  if (([v16 isBaseFormula] & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v17 = v16;
                      baseFormulaIndex = [v17 baseFormulaIndex];
                    }
                  }
                }

                v18 = *(v29[0] + 8 * baseFormulaIndex);
                if (v18)
                {
                  v19 = v18;
                  v20 = [[EDReference alloc] initWithFirstRow:v11 lastRow:v11 firstColumn:v15 lastColumn:v15];
                  [v19 unionWithReference:v20];
                }

                else
                {
                  v21 = [[EDReference alloc] initWithFirstRow:v11 lastRow:v11 firstColumn:v15 lastColumn:v15];
                  v19 = *(v29[0] + 8 * baseFormulaIndex);
                  *(v29[0] + 8 * baseFormulaIndex) = v21;
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
    formulas2 = [(EDRowBlocks *)blocksCopy formulas];
    v25 = [formulas2 count];

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