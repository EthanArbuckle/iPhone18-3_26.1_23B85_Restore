@interface EBConditionalFormat
+ (BOOL)validXlCf:(XlCf *)cf;
+ (int)convertEDConditionalFmtOperatorEnumToXl:(int)xl;
+ (int)convertEDConditionalFmtTypeEnumToXl:(int)xl;
+ (int)convertXlConditionalFmtOperatorEnumToED:(int)d;
+ (int)convertXlConditionalFmtTypeEnumToED:(int)d;
+ (void)readXlConditionalFormat:(void *)format toEDConditionalFormatting:(id)formatting state:(id)state;
@end

@implementation EBConditionalFormat

+ (void)readXlConditionalFormat:(void *)format toEDConditionalFormatting:(id)formatting state:(id)state
{
  formattingCopy = formatting;
  stateCopy = state;
  v9 = stateCopy;
  if (format)
  {
    resources = [stateCopy resources];
    v11 = *(format + 4);
    if (v11)
    {
      v12 = (*(v11 + 5) - *(v11 + 4)) >> 3;
      if (v12)
      {
        v13 = 0;
        do
        {
          CellRange = XlCondFmt::getCellRange(v11, v13);
          if (CellRange)
          {
            v15 = [EBReference edReferenceFromXlRef:CellRange];
            [formattingCopy addRange:v15];
          }

          ++v13;
        }

        while (v12 != v13);
      }
    }

    v16 = *(format + 2) - *(format + 1);
    if ((v16 & 0x7FFFFFFF8) != 0)
    {
      v17 = 0;
      v18 = (v16 >> 3);
      do
      {
        v19 = *(format + 1);
        if (v17 >= ((*(format + 2) - v19) >> 3))
        {
          std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
        }

        v20 = *(v19 + 8 * v17);
        v21 = [[EDConditionalFormattingRule alloc] initWithResources:resources];
        [(EDConditionalFormattingRule *)v21 setStopIfTrue:1];
        v22 = [self convertXlConditionalFmtTypeEnumToED:*(v20 + 16)];
        [(EDConditionalFormattingRule *)v21 setType:v22];
        if (v22 == 2)
        {
          -[EDConditionalFormattingRule setOperatorEnum:](v21, "setOperatorEnum:", [self convertXlConditionalFmtOperatorEnumToED:*(v20 + 20)]);
        }

        if (*(v20 + 24) >= 1)
        {
          v23 = [EBFormula edFormulaFromXlFmlaDefinition:"edFormulaFromXlFmlaDefinition:withFormulaLength:state:" withFormulaLength:*(v20 + 40) state:?];
          edSheet = [v9 edSheet];
          [(EDConditionalFormattingRule *)v21 addFormula:v23 worksheet:edSheet];
        }

        if (*(v20 + 26) >= 1)
        {
          v25 = [EBFormula edFormulaFromXlFmlaDefinition:"edFormulaFromXlFmlaDefinition:withFormulaLength:state:" withFormulaLength:*(v20 + 48) state:?];
          edSheet2 = [v9 edSheet];
          [(EDConditionalFormattingRule *)v21 addFormula:v25 worksheet:edSheet2];
        }

        v27 = [EBDifferentialStyle edDifferentialStyleFromXlDXf:*(v20 + 32) edResources:resources];
        [(EDConditionalFormattingRule *)v21 setDifferentialStyle:v27];

        [formattingCopy addRule:v21];
        ++v17;
      }

      while (v18 != v17);
    }
  }
}

+ (BOOL)validXlCf:(XlCf *)cf
{
  if (!cf)
  {
    return 0;
  }

  var4 = cf->var4;
  v4 = var4 > 0;
  var5 = cf->var5;
  if (var4 <= 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (var5 > 0)
  {
    v4 = v6;
  }

  if (cf->var2 == 2)
  {
    return v4;
  }

  var3 = cf->var3;
  if ((var3 - 3) < 6)
  {
    return v4;
  }

  if ((var3 - 1) >= 2)
  {
    if (!var3)
    {
      return !v4;
    }

    return 0;
  }

  return var5 > 0 && var4 > 0;
}

+ (int)convertEDConditionalFmtTypeEnumToXl:(int)xl
{
  if (xl == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (int)convertXlConditionalFmtTypeEnumToED:(int)d
{
  if (d == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (int)convertXlConditionalFmtOperatorEnumToED:(int)d
{
  if ((d - 1) > 7)
  {
    return 0;
  }

  else
  {
    return *&asc_25D6FE938[4 * (d - 1)];
  }
}

+ (int)convertEDConditionalFmtOperatorEnumToXl:(int)xl
{
  if ((xl - 2) > 7)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE958[xl - 2];
  }
}

@end