@interface EBConditionalFormat
+ (BOOL)validXlCf:(XlCf *)a3;
+ (int)convertEDConditionalFmtOperatorEnumToXl:(int)a3;
+ (int)convertEDConditionalFmtTypeEnumToXl:(int)a3;
+ (int)convertXlConditionalFmtOperatorEnumToED:(int)a3;
+ (int)convertXlConditionalFmtTypeEnumToED:(int)a3;
+ (void)readXlConditionalFormat:(void *)a3 toEDConditionalFormatting:(id)a4 state:(id)a5;
@end

@implementation EBConditionalFormat

+ (void)readXlConditionalFormat:(void *)a3 toEDConditionalFormatting:(id)a4 state:(id)a5
{
  v28 = a4;
  v8 = a5;
  v9 = v8;
  if (a3)
  {
    v10 = [v8 resources];
    v11 = *(a3 + 4);
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
            [v28 addRange:v15];
          }

          ++v13;
        }

        while (v12 != v13);
      }
    }

    v16 = *(a3 + 2) - *(a3 + 1);
    if ((v16 & 0x7FFFFFFF8) != 0)
    {
      v17 = 0;
      v18 = (v16 >> 3);
      do
      {
        v19 = *(a3 + 1);
        if (v17 >= ((*(a3 + 2) - v19) >> 3))
        {
          std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
        }

        v20 = *(v19 + 8 * v17);
        v21 = [[EDConditionalFormattingRule alloc] initWithResources:v10];
        [(EDConditionalFormattingRule *)v21 setStopIfTrue:1];
        v22 = [a1 convertXlConditionalFmtTypeEnumToED:*(v20 + 16)];
        [(EDConditionalFormattingRule *)v21 setType:v22];
        if (v22 == 2)
        {
          -[EDConditionalFormattingRule setOperatorEnum:](v21, "setOperatorEnum:", [a1 convertXlConditionalFmtOperatorEnumToED:*(v20 + 20)]);
        }

        if (*(v20 + 24) >= 1)
        {
          v23 = [EBFormula edFormulaFromXlFmlaDefinition:"edFormulaFromXlFmlaDefinition:withFormulaLength:state:" withFormulaLength:*(v20 + 40) state:?];
          v24 = [v9 edSheet];
          [(EDConditionalFormattingRule *)v21 addFormula:v23 worksheet:v24];
        }

        if (*(v20 + 26) >= 1)
        {
          v25 = [EBFormula edFormulaFromXlFmlaDefinition:"edFormulaFromXlFmlaDefinition:withFormulaLength:state:" withFormulaLength:*(v20 + 48) state:?];
          v26 = [v9 edSheet];
          [(EDConditionalFormattingRule *)v21 addFormula:v25 worksheet:v26];
        }

        v27 = [EBDifferentialStyle edDifferentialStyleFromXlDXf:*(v20 + 32) edResources:v10];
        [(EDConditionalFormattingRule *)v21 setDifferentialStyle:v27];

        [v28 addRule:v21];
        ++v17;
      }

      while (v18 != v17);
    }
  }
}

+ (BOOL)validXlCf:(XlCf *)a3
{
  if (!a3)
  {
    return 0;
  }

  var4 = a3->var4;
  v4 = var4 > 0;
  var5 = a3->var5;
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

  if (a3->var2 == 2)
  {
    return v4;
  }

  var3 = a3->var3;
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

+ (int)convertEDConditionalFmtTypeEnumToXl:(int)a3
{
  if (a3 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (int)convertXlConditionalFmtTypeEnumToED:(int)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (int)convertXlConditionalFmtOperatorEnumToED:(int)a3
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return *&asc_25D6FE938[4 * (a3 - 1)];
  }
}

+ (int)convertEDConditionalFmtOperatorEnumToXl:(int)a3
{
  if ((a3 - 2) > 7)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE958[a3 - 2];
  }
}

@end