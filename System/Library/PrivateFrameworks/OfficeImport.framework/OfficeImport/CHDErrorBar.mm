@interface CHDErrorBar
+ (CHDErrorBar)errorBarWithChart:(id)chart;
- (CHDErrorBar)initWithChart:(id)chart;
- (id)description;
- (void)setGraphicProperties:(id)properties;
- (void)setMinusValues:(id)values;
- (void)setPlusValues:(id)values;
@end

@implementation CHDErrorBar

- (CHDErrorBar)initWithChart:(id)chart
{
  chartCopy = chart;
  v9.receiver = self;
  v9.super_class = CHDErrorBar;
  v6 = [(CHDErrorBar *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mChart, chart);
    v7->mValue = 0.0;
    *&v7->mType = 0x200000000;
    v7->mDirection = 1;
    v7->mNoEndCap = 0;
  }

  return v7;
}

+ (CHDErrorBar)errorBarWithChart:(id)chart
{
  chartCopy = chart;
  v4 = [objc_alloc(objc_opt_class()) initWithChart:chartCopy];

  return v4;
}

- (void)setMinusValues:(id)values
{
  valuesCopy = values;
  if (self->mMinusValues != valuesCopy)
  {
    v7 = valuesCopy;
    objc_storeStrong(&self->mMinusValues, values);
    processors = [(CHDChart *)self->mChart processors];
    [processors markObject:v7 processor:objc_opt_class()];

    valuesCopy = v7;
  }
}

- (void)setPlusValues:(id)values
{
  valuesCopy = values;
  if (self->mPlusValues != valuesCopy)
  {
    v7 = valuesCopy;
    objc_storeStrong(&self->mPlusValues, values);
    processors = [(CHDChart *)self->mChart processors];
    [processors markObject:v7 processor:objc_opt_class()];

    valuesCopy = v7;
  }
}

- (void)setGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  mGraphicProperties = self->mGraphicProperties;
  p_mGraphicProperties = &self->mGraphicProperties;
  if (mGraphicProperties != propertiesCopy)
  {
    v8 = propertiesCopy;
    objc_storeStrong(p_mGraphicProperties, properties);
    propertiesCopy = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDErrorBar;
  v2 = [(CHDErrorBar *)&v4 description];

  return v2;
}

@end