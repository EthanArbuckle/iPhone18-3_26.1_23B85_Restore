@interface EXCell
+ (BOOL)edBoolFromXmlBoolString:(id)a3;
+ (double)dateTimeNumberFromXmlDateString:(id)a3 state:(id)a4;
+ (id)xmlErrorStringValueEnumMap;
+ (int)edCellTypeFromXmlCellElement:(_xmlNode *)a3 isDate:(BOOL *)a4 isFmlaStr:(BOOL *)a5 stringIndex:(BOOL *)a6;
+ (int)edErrorFromXmlErrorString:(id)a3;
+ (void)edCellFromXmlCellElement:(_xmlNode *)a3 edRowInfo:(EDRowInfo *)a4 edRowBlock:(id)a5 edRowBlocks:(id)a6 state:(id)a7;
+ (void)xmlErrorStringValueEnumMap;
@end

@implementation EXCell

+ (id)xmlErrorStringValueEnumMap
{
  {
    +[EXCell xmlErrorStringValueEnumMap];
  }

  if (+[EXCell xmlErrorStringValueEnumMap]::once != -1)
  {
    +[EXCell xmlErrorStringValueEnumMap];
  }

  v2 = +[EXCell xmlErrorStringValueEnumMap]::sXmlErrorStringValueEnumMap;

  return v2;
}

void __36__EXCell_xmlErrorStringValueEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXCell xmlErrorStringValueEnumMap]::sXmlErrorStringValueStructs count:8 caseSensitive:1];
  v1 = +[EXCell xmlErrorStringValueEnumMap]::sXmlErrorStringValueEnumMap;
  +[EXCell xmlErrorStringValueEnumMap]::sXmlErrorStringValueEnumMap = v0;
}

+ (void)edCellFromXmlCellElement:(_xmlNode *)a3 edRowInfo:(EDRowInfo *)a4 edRowBlock:(id)a5 edRowBlocks:(id)a6 state:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  if (a3)
  {
    v38 = 0;
    v14 = CXOptionalStringAttribute(a3, CXNoNamespace, "r", &v38);
    v15 = v38;
    if (v14)
    {
      if ([EXReference edAreaReferenceFromXmlReference:v15 areaReference:v37])
      {
        v16 = HIDWORD(v37[0]);
        if ((v37[0] & 0x8000000000000000) != 0)
        {
          v17 = [v13 currentRowMinColumnIndex];
          if (v17 <= [v13 currentRowMaxColumnIndex])
          {
            v16 = [v13 currentRowMinColumnIndex];
          }
        }

        [v13 setCurrentRowMinColumnIndex:(v16 + 1)];
      }

      else
      {
        v16 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v16 = [v13 currentRowMinColumnIndex];
      [v13 setCurrentRowMinColumnIndex:(v16 + 1)];
    }

    v36 = 0;
    v35 = 0;
    v18 = [a1 edCellTypeFromXmlCellElement:a3 isDate:&v36 + 1 isFmlaStr:&v35 stringIndex:&v36];
    v19 = v18;
    if (v16 <= 255 && (*a4)->var1 < 0x10000)
    {
      v32 = v15;
      v33 = v11;
      v20 = 0;
    }

    else
    {
      if (!v18)
      {
LABEL_45:

        goto LABEL_46;
      }

      v32 = v15;
      v33 = v11;
      v19 = 4;
      v20 = 1;
    }

    v21 = [v13 EXSpreadsheetMLNamespace];
    v22 = OCXFindChild(a3, v21, "v");

    if (!v22 && v19 == 3)
    {
      v23 = [v13 EXSpreadsheetMLNamespace];
      v22 = OCXFindChild(a3, v23, "is");
    }

    if (v22)
    {
      v24 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v22];
      if (v19)
      {
        v25 = v20;
      }

      else
      {
        v25 = 0;
      }

      if (v25 == 1)
      {
        v26 = +[EXCell edCellFromXmlCellElement:edRowInfo:edRowBlock:edRowBlocks:state:]::hadOutOfBoundaryWarning();
        if ((*v26 & 1) == 0)
        {
          *v26 = 1;
          [TCMessageContext reportWarning:ECCellsOutsideLassoBoundary];
        }
      }
    }

    else
    {
      v24 = 0;
      v19 = 0;
    }

    v27 = [v13 EXSpreadsheetMLNamespace];
    v28 = OCXFindChild(a3, v27, "f");

    v29 = [v33 addCellWithColumnNumber:v16 type:v19 isFormulaCell:v28 != 0 rowInfo:a4 rowBlocks:v12];
    if (v29)
    {
      if (v24)
      {
        if (v19 > 2)
        {
          if (v19 == 3)
          {
            if (v36 == 1)
            {
              setStringIndexValueForEDCell(v29, [(NSString *)v24 intValue]);
            }

            else
            {
              v31 = [v13 resources];
              setInlineNSStringValueForEDCell(v29, v24, v31);
            }
          }

          else if (v19 == 5)
          {
            setErrorValueForEDCell(v29, [a1 edErrorFromXmlErrorString:v24]);
          }
        }

        else if (v19 == 1)
        {
          setBoolValueForEDCell(v29, [a1 edBoolFromXmlBoolString:v24]);
        }

        else if (v19 == 2)
        {
          if ((v36 & 0x100) != 0)
          {
            [a1 dateTimeNumberFromXmlDateString:v24 state:v13];
          }

          else
          {
            [(NSString *)v24 doubleValue];
          }

          setNumberValueForEDCell(v29, v30);
        }
      }

      v37[0] = 0;
      CXOptionalLongAttribute(a3, CXNoNamespace, "s", v37);
      setStyleIndexForEDCell(v29, v37[0]);
      if (v28)
      {
        [EXFormula readFrom:v28 rowNumber:(*a4)->var1 columnNumber:v16 edCell:v29 edRowBlocks:v12 state:v13];
      }
    }

    v15 = v32;
    v11 = v33;
    goto LABEL_45;
  }

LABEL_46:
}

+ (int)edCellTypeFromXmlCellElement:(_xmlNode *)a3 isDate:(BOOL *)a4 isFmlaStr:(BOOL *)a5 stringIndex:(BOOL *)a6
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  v14 = 0;
  v9 = CXOptionalStringAttribute(a3, CXNoNamespace, "t", &v14);
  v10 = v14;
  v11 = v10;
  if (!v9)
  {
    goto LABEL_5;
  }

  if ([v10 isEqualToString:@"b"])
  {
    v12 = 1;
    goto LABEL_6;
  }

  if ([v11 isEqualToString:@"n"])
  {
LABEL_5:
    v12 = 2;
    goto LABEL_6;
  }

  if ([v11 isEqualToString:@"e"])
  {
    v12 = 5;
    goto LABEL_6;
  }

  if ([v11 isEqualToString:@"str"])
  {
    *a5 = 1;
LABEL_11:
    v12 = 3;
    goto LABEL_6;
  }

  if ([v11 isEqualToString:@"d"])
  {
    *a4 = 1;
    goto LABEL_5;
  }

  if ([v11 isEqualToString:@"s"])
  {
    *a6 = 1;
    goto LABEL_11;
  }

  if ([v11 isEqualToString:@"inlineStr"])
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return v12;
}

+ (BOOL)edBoolFromXmlBoolString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = [v3 intValue];
  if (!v5)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  if (v5 != 1)
  {
LABEL_5:
    [TCMessageException raise:TCInvalidFileFormatMessage];
    goto LABEL_6;
  }

  v6 = 1;
LABEL_7:

  return v6;
}

+ (double)dateTimeNumberFromXmlDateString:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v5];
    v28 = 0;
    v29 = 0;
    v27 = 0;
    if ([v7 scanInteger:&v29] && objc_msgSend(v7, "scanString:intoString:", @"-", 0) && objc_msgSend(v7, "scanInteger:", &v28) && objc_msgSend(v7, "scanString:intoString:", @"-", 0))
    {
      v25 = 0;
      v26 = 0;
      v23 = 0.0;
      v24 = 0;
      if ([v7 scanInteger:&v27] && objc_msgSend(v7, "scanString:intoString:", @"T", 0) && objc_msgSend(v7, "scanInteger:", &v26) && objc_msgSend(v7, "scanString:intoString:", @":", 0) && objc_msgSend(v7, "scanInteger:", &v25) && objc_msgSend(v7, "scanString:intoString:", @":", 0) && objc_msgSend(v7, "scanInteger:", &v24))
      {
        [v7 scanDouble:&v23];
      }
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v23 = 0.0;
      v24 = 0;
    }

    v8 = [v7 scanString:@"P" intoString:0];
    if (v8)
    {
      LOBYTE(v9) = 0;
      v22 = 0;
      while (([v7 isAtEnd] & 1) == 0)
      {
        v9 = (v9 & 1) != 0 ? 1 : [v7 scanString:@"T" intoString:0];
        if (![v7 scanInteger:&v22])
        {
          break;
        }

        if (v9)
        {
          if ([v7 scanString:@"H" intoString:0])
          {
            v26 = v22;
          }

          else if ([v7 scanString:@"M" intoString:0])
          {
            v25 = v22;
          }

          else
          {
            if ([v7 scanString:@"." intoString:0])
            {
              [v7 scanDouble:&v23];
            }

            if (![v7 scanString:@"S" intoString:0])
            {
              break;
            }

            v24 = v22;
          }
        }

        else if ([v7 scanString:@"Y" intoString:0])
        {
          v29 = v22;
        }

        else if ([v7 scanString:@"M" intoString:0])
        {
          v28 = v22;
        }

        else
        {
          if (![v7 scanString:@"D" intoString:0])
          {
            break;
          }

          v27 = v22;
        }
      }
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v10 setYear:v29];
    [v10 setMonth:v28];
    [v10 setDay:v27];
    [v10 setHour:v26];
    [v10 setMinute:v25];
    [v10 setSecond:v24];
    v11 = objc_alloc(MEMORY[0x277CBEA80]);
    v12 = [v11 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v13 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v12 setTimeZone:v13];

    if (v8)
    {
      v14 = [v6 workbook];
      v15 = [v14 dateBaseDate];
      v16 = [v12 dateByAddingComponents:v10 toDate:v15 options:0];
    }

    else
    {
      v16 = [v12 dateFromComponents:v10];
    }

    v18 = [v16 dateByAddingTimeInterval:v23];

    v19 = [v6 workbook];
    [ECUtils dateTimeNumberFromNSDate:v18 edWorkbook:v19];
    v17 = v20;
  }

  else
  {
    v17 = 0.0;
  }

  return v17;
}

+ (int)edErrorFromXmlErrorString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 xmlErrorStringValueEnumMap];
    v6 = [v5 valueForString:v4];

    if (v6 == -130883970)
    {
      v7 = 7;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 7;
  }

  return v7;
}

+ (void)xmlErrorStringValueEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_22, 0, &dword_25D297000);
  }
}

@end