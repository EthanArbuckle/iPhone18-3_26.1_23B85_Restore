@interface CHPCachedValuesRetriever
- (BOOL)isObjectSupported:(id)a3;
- (void)applyProcessorToObject:(id)a3 sheet:(id)a4;
@end

@implementation CHPCachedValuesRetriever

- (BOOL)isObjectSupported:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v6 = [v3 formula];
    v5 = v6 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)applyProcessorToObject:(id)a3 sheet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 dataValues];
  v10 = [v8 formula];
  v22 = [v10 references];

  v11 = [v9 count];
  CsData::CsData(&v25);
  v21 = v7;
  WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
  v13 = [EDReferenceIterator referenceIteratorWithReferenceArray:v22 workbook:WeakRetained];

  while (1)
  {
    v14 = [v13 nextCell];
    v15 = v14;
    if (!v14)
    {
      break;
    }

    if (v11)
    {
      v16 = [v9 dataPointAtIndex:{objc_msgSend(v13, "currentCellIndex")}];
      if (v16)
      {
LABEL_8:
        v17 = objc_loadWeakRetained(&self->super.mResources);
        v18 = styleForEDCell(v15, v17);

        if (v18)
        {
          v19 = [v18 contentFormat];

          if (v19)
          {
            v20 = [v18 contentFormat];
            v16[3] = [v20 formatId];
          }
        }

        if (!v11)
        {
          [v9 addDataPoint:v16];
        }
      }
    }

    else if (typeForEDCell(v14))
    {
      EDValue::makeFromCell(v15, &v23);
      EDValue::operator=(&v25, &v23);
      EDValue::~EDValue(&v23);
      v24 = [v13 currentCellIndex];
      v26 = 0;
      v16 = &v24;
      goto LABEL_8;
    }
  }

  EDValue::~EDValue(&v25);
}

@end