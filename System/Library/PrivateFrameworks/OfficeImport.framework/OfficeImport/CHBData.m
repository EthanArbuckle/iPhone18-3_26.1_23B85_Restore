@interface CHBData
+ (id)readFrom:(const void *)a3 state:(id)a4;
@end

@implementation CHBData

+ (id)readFrom:(const void *)a3 state:(id)a4
{
  v5 = a4;
  if (a3 && XlChartLinkedData::hasEnteredData(a3))
  {
    v6 = *(a3 + 12);
    v7 = [v5 resources];
    v8 = [CHDData dataWithDataPointCount:v6 resources:v7];
  }

  else
  {
    v9 = [v5 resources];
    v8 = [CHDData dataWithResources:v9];

    if (!a3)
    {
      v36 = v8;
      goto LABEL_47;
    }
  }

  v10 = *(a3 + 2);
  if (v10)
  {
    v11 = *(a3 + 12);
    v12 = objc_opt_class();
    v13 = [v5 ebReaderSheetState];
    v14 = [EBFormula edFormulaFromXlFmlaDefinition:v10 withFormulaLength:v11 formulaClass:v12 state:v13];

    v15 = [v5 workbook];
    [v14 setWorkbook:v15];

    v16 = [v5 chart];
    [v8 setFormula:v14 chart:v16];
  }

  else
  {
    v14 = 0;
  }

  if (XlChartLinkedData::hasEnteredData(a3))
  {
    v40 = v14;
    v41 = v5;
    v17 = [v8 dataValues];
    v18 = *(a3 + 4);
    v39 = a3;
    v19 = a3 + 40;
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
      [v17 addDataPoint:&v43];
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
    [v17 finishReading];

    v14 = v40;
    v5 = v41;
    a3 = v39;
  }

  else
  {
    LOWORD(v22) = -1;
  }

  v37 = *(a3 + 13);
  if (*([v5 xlReader] + 1344) == 1)
  {
    if (v37 == 0x8000)
    {
      LOWORD(v37) = v22;
    }

    else if (*(a3 + 28) == 1)
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