@interface EBCell
+ (int)convertEDErrorValueEnumToXl:(int)a3;
+ (int)convertXlCellTypeToED:(int)a3;
+ (int)convertXlErrorEnumToED:(int)a3;
+ (void)readXlCell:(XlCell *)a3 edRowInfo:(EDRowInfo *)a4 edRowBlock:(id)a5 edRowBlocks:(id)a6 state:(id)a7;
@end

@implementation EBCell

+ (void)readXlCell:(XlCell *)a3 edRowInfo:(EDRowInfo *)a4 edRowBlock:(id)a5 edRowBlocks:(id)a6 state:(id)a7
{
  v28 = a5;
  v12 = a6;
  v13 = a7;
  if (a3)
  {
    v14 = [a1 convertXlCellTypeToED:a3->var4];
    v15 = v14;
    var2 = a3->var2;
    if (var2 > 255 || (*a4)->var1 >= 0x10000)
    {
      if (!v14)
      {
        goto LABEL_23;
      }

      v17 = +[EBCell readXlCell:edRowInfo:edRowBlock:edRowBlocks:state:]::hadOutOfBoundaryWarning();
      if ((*v17 & 1) == 0)
      {
        *v17 = 1;
        [TCMessageContext reportWarning:ECCellsOutsideLassoBoundary];
        LOWORD(var2) = a3->var2;
      }

      v15 = 4;
    }

    var8 = a3->var8;
    v19 = [v28 addCellWithColumnNumber:var2 type:v15 isFormulaCell:var8 != 0 rowInfo:a4 rowBlocks:v12];
    v20 = v19;
    if (v19)
    {
      setStyleIndexForEDCell(v19, a3->var3);
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          var6 = a3->var6;
          if (var6)
          {
            v22 = [v13 resources];
            v23 = v22;
            v24 = *(var6 + 22);
            if (v24 < 0)
            {
              v25 = [v22 strings];
              v26 = [MEMORY[0x277CCACA8] stringWithOcText:var6 + 8];
              v27 = [EDString edStringWithString:v26];
              v24 = [v25 addObject:v27];
            }

            setStringIndexValueForEDCell(v20, v24);
          }
        }

        else if (v15 == 5)
        {
          setErrorValueForEDCell(v20, [a1 convertXlErrorEnumToED:a3->var7]);
        }
      }

      else if (v15 == 1)
      {
        setBoolValueForEDCell(v20, a3->var9);
      }

      else if (v15 == 2)
      {
        setNumberValueForEDCell(v20, a3->var5);
      }

      if (var8)
      {
        [EBFormula readFormulaFromXlCell:a3 edCell:v20 edRowBlocks:v12 state:v13];
      }
    }
  }

LABEL_23:
}

+ (int)convertXlCellTypeToED:(int)a3
{
  HIDWORD(v4) = a3 - 2;
  LODWORD(v4) = a3 - 2;
  v3 = v4 >> 1;
  if (v3 > 7)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE8B8[v3];
  }
}

+ (int)convertXlErrorEnumToED:(int)a3
{
  result = a3;
  if (a3 <= 22)
  {
    switch(a3)
    {
      case 0:
        return result;
      case 7:
        return 1;
      case 15:
        return 2;
    }
  }

  else if (a3 > 35)
  {
    if (a3 == 36)
    {
      return 5;
    }

    if (a3 == 42)
    {
      return 6;
    }
  }

  else
  {
    if (a3 == 23)
    {
      return 3;
    }

    if (a3 == 29)
    {
      return 4;
    }
  }

  return 7;
}

+ (int)convertEDErrorValueEnumToXl:(int)a3
{
  if (a3 > 6)
  {
    return 255;
  }

  else
  {
    return dword_25D6FE8D8[a3];
  }
}

@end