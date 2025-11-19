@interface CHPSeriesValueSynthesizer
- (BOOL)isObjectSupported:(id)a3;
- (void)applyProcessorToObject:(id)a3 sheet:(id)a4;
@end

@implementation CHPSeriesValueSynthesizer

- (BOOL)isObjectSupported:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 valueData];
    if ([v5 isEmpty])
    {
      v6 = 0;
    }

    else
    {
      v7 = [v4 categoryData];
      v6 = [v7 isEmpty];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyProcessorToObject:(id)a3 sheet:(id)a4
{
  v5 = a3;
  v6 = [v5 valueData];
  v7 = [v5 categoryData];
  if (!v7)
  {
    v8 = [CHDData alloc];
    WeakRetained = objc_loadWeakRetained(&self->super.mResources);
    v7 = [(CHDData *)v8 initWithResources:WeakRetained];

    [v5 setCategoryData:v7];
  }

  if ([(CHDData *)v7 isEmpty])
  {
    v10 = [(CHDData *)v7 dataValues];
    v11 = [v6 countOfCellsBeingReferenced];
    if (v11)
    {
      v12 = 1;
      do
      {
        CsData::CsData(&v16);
        v15 = v12 - 1;
        EDValue::makeWithNumber(v13, v12, &v14);
        EDValue::operator=(&v16, &v14);
        EDValue::~EDValue(&v14);
        v17 = -1;
        [v10 addDataPoint:&v15];
        EDValue::~EDValue(&v16);
        ++v12;
      }

      while (v12 <= v11);
    }

    [v10 finishReading];
  }
}

@end