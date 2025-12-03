@interface EBCell
+ (int)convertEDErrorValueEnumToXl:(int)xl;
+ (int)convertXlCellTypeToED:(int)d;
+ (int)convertXlErrorEnumToED:(int)d;
+ (void)readXlCell:(XlCell *)cell edRowInfo:(EDRowInfo *)info edRowBlock:(id)block edRowBlocks:(id)blocks state:(id)state;
@end

@implementation EBCell

+ (void)readXlCell:(XlCell *)cell edRowInfo:(EDRowInfo *)info edRowBlock:(id)block edRowBlocks:(id)blocks state:(id)state
{
  blockCopy = block;
  blocksCopy = blocks;
  stateCopy = state;
  if (cell)
  {
    v14 = [self convertXlCellTypeToED:cell->var4];
    v15 = v14;
    var2 = cell->var2;
    if (var2 > 255 || (*info)->var1 >= 0x10000)
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
        LOWORD(var2) = cell->var2;
      }

      v15 = 4;
    }

    var8 = cell->var8;
    v19 = [blockCopy addCellWithColumnNumber:var2 type:v15 isFormulaCell:var8 != 0 rowInfo:info rowBlocks:blocksCopy];
    v20 = v19;
    if (v19)
    {
      setStyleIndexForEDCell(v19, cell->var3);
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          var6 = cell->var6;
          if (var6)
          {
            resources = [stateCopy resources];
            v23 = resources;
            v24 = *(var6 + 22);
            if (v24 < 0)
            {
              strings = [resources strings];
              v26 = [MEMORY[0x277CCACA8] stringWithOcText:var6 + 8];
              v27 = [EDString edStringWithString:v26];
              v24 = [strings addObject:v27];
            }

            setStringIndexValueForEDCell(v20, v24);
          }
        }

        else if (v15 == 5)
        {
          setErrorValueForEDCell(v20, [self convertXlErrorEnumToED:cell->var7]);
        }
      }

      else if (v15 == 1)
      {
        setBoolValueForEDCell(v20, cell->var9);
      }

      else if (v15 == 2)
      {
        setNumberValueForEDCell(v20, cell->var5);
      }

      if (var8)
      {
        [EBFormula readFormulaFromXlCell:cell edCell:v20 edRowBlocks:blocksCopy state:stateCopy];
      }
    }
  }

LABEL_23:
}

+ (int)convertXlCellTypeToED:(int)d
{
  HIDWORD(v4) = d - 2;
  LODWORD(v4) = d - 2;
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

+ (int)convertXlErrorEnumToED:(int)d
{
  result = d;
  if (d <= 22)
  {
    switch(d)
    {
      case 0:
        return result;
      case 7:
        return 1;
      case 15:
        return 2;
    }
  }

  else if (d > 35)
  {
    if (d == 36)
    {
      return 5;
    }

    if (d == 42)
    {
      return 6;
    }
  }

  else
  {
    if (d == 23)
    {
      return 3;
    }

    if (d == 29)
    {
      return 4;
    }
  }

  return 7;
}

+ (int)convertEDErrorValueEnumToXl:(int)xl
{
  if (xl > 6)
  {
    return 255;
  }

  else
  {
    return dword_25D6FE8D8[xl];
  }
}

@end