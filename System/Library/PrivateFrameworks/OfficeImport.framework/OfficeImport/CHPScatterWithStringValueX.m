@interface CHPScatterWithStringValueX
- (BOOL)isObjectSupported:(id)a3;
- (void)applyProcessorToObject:(id)a3 sheet:(id)a4;
@end

@implementation CHPScatterWithStringValueX

- (BOOL)isObjectSupported:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v5 = [v3 isEmpty] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)applyProcessorToObject:(id)a3 sheet:(id)a4
{
  v4 = a3;
  v5 = [v4 dataValues];
  v6 = [v5 containsStringValue];

  if (v6)
  {
    v7 = [v4 dataValues];
    v8 = [v7 count];
    [v7 resetWithDataPointCount:v8];
    if (v8)
    {
      for (i = 1; i <= v8; ++i)
      {
        CsData::CsData(&v13);
        v12 = i - 1;
        EDValue::makeWithNumber(v10, i, &v11);
        EDValue::operator=(&v13, &v11);
        EDValue::~EDValue(&v11);
        [v7 addDataPoint:&v12];
        EDValue::~EDValue(&v13);
      }
    }

    [v7 finishReading];
    [v4 setFormula:0 chart:0];
  }
}

@end