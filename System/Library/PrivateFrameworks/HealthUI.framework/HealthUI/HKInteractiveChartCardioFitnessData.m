@interface HKInteractiveChartCardioFitnessData
- (id)description;
@end

@implementation HKInteractiveChartCardioFitnessData

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = HKInteractiveChartCardioFitnessData;
  v4 = [(HKInteractiveChartSinglePointData *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, biologicalSex: %ld, age: %ld, classification: %ld, sample count: %lu", v4, self->_biologicalSex, self->_age, self->_classification, self->_sampleCount];

  return v5;
}

@end