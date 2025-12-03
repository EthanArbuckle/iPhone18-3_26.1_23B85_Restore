@interface CHBData
+ (id)readFrom:(const void *)from state:(id)state;
@end

@implementation CHBData

+ (id)readFrom:(const void *)from state:(id)state
{
  stateCopy = state;
  if (from && XlChartLinkedData::hasEnteredData(from))
  {
    v6 = *(from + 12);
    resources = [stateCopy resources];
    v8 = [CHDData dataWithDataPointCount:v6 resources:resources];
  }

  else
  {
    resources2 = [stateCopy resources];
    v8 = [CHDData dataWithResources:resources2];

    if (!from)
    {
      v36 = v8;
      goto LABEL_47;
    }
  }

  v10 = *(from + 2);
  if (v10)
  {
    v11 = *(from + 12);
    v12 = objc_opt_class();
    ebReaderSheetState = [stateCopy ebReaderSheetState];
    v14 = [EBFormula edFormulaFromXlFmlaDefinition:v10 withFormulaLength:v11 formulaClass:v12 state:ebReaderSheetState];

    workbook = [stateCopy workbook];
    [v14 setWorkbook:workbook];

    chart = [stateCopy chart];
    [v8 setFormula:v14 chart:chart];
  }

  else
  {
    v14 = 0;
  }

  if (XlChartLinkedData::hasEnteredData(from))
  {
    v40 = v14;
    v41 = stateCopy;
    dataValues = [v8 dataValues];
    v18 = *(from + 4);
    fromCopy = from;
    v19 = from + 40;
    if (v18 != v19)
    {
      v20 = 0;
      v21 = 1;
      v22 = 0xFFFF;
      while (1)
      {
        v23 = *(v18 + 5);
        CsData::CsData(&v44);
        if ((*(*v23 + 16))(v23))
        {
          break;
        }

        if (!(*(*v23 + 24))(v23))
        {
          goto LABEL_16;
        }

        v26 = [CHBString nsStringWithHandlingMultilevelCategoryDataFromOCText:(*(*v23 + 40))(v23) chdFormula:v40 state:v41];
        if ([(EDValue *)v26 length])
        {
          EDValue::makeWithNSString(v26, &v42);
          EDValue::operator=(&v44, &v42);
          EDValue::~EDValue(&v42);

          goto LABEL_16;
        }

        v32 = *(v18 + 1);
        v33 = v18;
        if (v32)
        {
          do
          {
            v34 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v34 = *(v33 + 2);
            v35 = *v34 == v33;
            v33 = v34;
          }

          while (!v35);
        }

        v20 = *(v18 + 8);

        v18 = v34;
LABEL_29:
        EDValue::~EDValue(&v44);
        if (v18 == v19)
        {
          goto LABEL_40;
        }
      }

      v24 = (*(*v23 + 32))(v23);
      EDValue::makeWithNumber(v24, v25, &v42);
      EDValue::operator=(&v44, &v42);
      EDValue::~EDValue(&v42);
LABEL_16:
      v27 = v23[4];
      if (v27 == v22)
      {
        v28 = v22;
      }

      else
      {
        v28 = -1;
      }

      if (v21)
      {
        v22 = v23[4];
      }

      else
      {
        v22 = v28;
      }

      v43 = *(v18 + 8);
      v45 = v27;
      [dataValues addDataPoint:&v43];
      v29 = *(v18 + 8);
      if (v29 <= v20)
      {
        v29 = v20;
      }

      [v8 setDataValueIndexCount:v29 + 1];
      v20 = *(v18 + 8);
      v30 = *(v18 + 1);
      if (v30)
      {
        do
        {
          v18 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v18;
          v18 = *(v18 + 2);
        }

        while (*v18 != v31);
      }

      v21 = 0;
      goto LABEL_29;
    }

    LOWORD(v22) = -1;
LABEL_40:
    [dataValues finishReading];

    v14 = v40;
    stateCopy = v41;
    from = fromCopy;
  }

  else
  {
    LOWORD(v22) = -1;
  }

  v37 = *(from + 13);
  if (*([stateCopy xlReader] + 1344) == 1)
  {
    if (v37 == 0x8000)
    {
      LOWORD(v37) = v22;
    }

    else if (*(from + 28) == 1)
    {
      LOWORD(v37) = v22;
    }
  }

  [v8 setContentFormatId:v37];
  v36 = v8;

LABEL_47:

  return v36;
}

@end