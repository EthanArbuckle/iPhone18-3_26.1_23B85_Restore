@interface CHPCachedValuesRetriever
- (BOOL)isObjectSupported:(id)supported;
- (void)applyProcessorToObject:(id)object sheet:(id)sheet;
@end

@implementation CHPCachedValuesRetriever

- (BOOL)isObjectSupported:(id)supported
{
  supportedCopy = supported;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    formula = [supportedCopy formula];
    v5 = formula != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)applyProcessorToObject:(id)object sheet:(id)sheet
{
  objectCopy = object;
  sheetCopy = sheet;
  v8 = objectCopy;
  dataValues = [v8 dataValues];
  formula = [v8 formula];
  references = [formula references];

  v11 = [dataValues count];
  CsData::CsData(&v25);
  v21 = sheetCopy;
  WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
  v13 = [EDReferenceIterator referenceIteratorWithReferenceArray:references workbook:WeakRetained];

  while (1)
  {
    nextCell = [v13 nextCell];
    v15 = nextCell;
    if (!nextCell)
    {
      break;
    }

    if (v11)
    {
      v16 = [dataValues dataPointAtIndex:{objc_msgSend(v13, "currentCellIndex")}];
      if (v16)
      {
LABEL_8:
        v17 = objc_loadWeakRetained(&self->super.mResources);
        v18 = styleForEDCell(v15, v17);

        if (v18)
        {
          contentFormat = [v18 contentFormat];

          if (contentFormat)
          {
            contentFormat2 = [v18 contentFormat];
            v16[3] = [contentFormat2 formatId];
          }
        }

        if (!v11)
        {
          [dataValues addDataPoint:v16];
        }
      }
    }

    else if (typeForEDCell(nextCell))
    {
      EDValue::makeFromCell(v15, &v23);
      EDValue::operator=(&v25, &v23);
      EDValue::~EDValue(&v23);
      currentCellIndex = [v13 currentCellIndex];
      v26 = 0;
      v16 = &currentCellIndex;
      goto LABEL_8;
    }
  }

  EDValue::~EDValue(&v25);
}

@end