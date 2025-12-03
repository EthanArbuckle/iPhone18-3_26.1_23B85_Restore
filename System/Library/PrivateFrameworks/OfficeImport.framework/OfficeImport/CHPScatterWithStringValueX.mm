@interface CHPScatterWithStringValueX
- (BOOL)isObjectSupported:(id)supported;
- (void)applyProcessorToObject:(id)object sheet:(id)sheet;
@end

@implementation CHPScatterWithStringValueX

- (BOOL)isObjectSupported:(id)supported
{
  supportedCopy = supported;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v5 = [supportedCopy isEmpty] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)applyProcessorToObject:(id)object sheet:(id)sheet
{
  objectCopy = object;
  dataValues = [objectCopy dataValues];
  containsStringValue = [dataValues containsStringValue];

  if (containsStringValue)
  {
    dataValues2 = [objectCopy dataValues];
    v8 = [dataValues2 count];
    [dataValues2 resetWithDataPointCount:v8];
    if (v8)
    {
      for (i = 1; i <= v8; ++i)
      {
        CsData::CsData(&v13);
        v12 = i - 1;
        EDValue::makeWithNumber(v10, i, &v11);
        EDValue::operator=(&v13, &v11);
        EDValue::~EDValue(&v11);
        [dataValues2 addDataPoint:&v12];
        EDValue::~EDValue(&v13);
      }
    }

    [dataValues2 finishReading];
    [objectCopy setFormula:0 chart:0];
  }
}

@end