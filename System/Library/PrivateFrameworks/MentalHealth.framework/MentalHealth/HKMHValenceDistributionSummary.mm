@interface HKMHValenceDistributionSummary
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (BOOL)isEqual:(id)equal;
- (HKMHValenceDistributionSummary)initWithCoder:(id)coder;
- (HKMHValenceDistributionSummary)initWithDayIndexRange:(id)range valenceDistributions:(id)distributions;
- (NSString)hk_redactedDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMHValenceDistributionSummary

- (HKMHValenceDistributionSummary)initWithDayIndexRange:(id)range valenceDistributions:(id)distributions
{
  var1 = range.var1;
  var0 = range.var0;
  distributionsCopy = distributions;
  v15.receiver = self;
  v15.super_class = HKMHValenceDistributionSummary;
  v8 = [(HKMHValenceDistributionSummary *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_dayIndexRange.start = var0;
    v8->_dayIndexRange.duration = var1;
    v10 = [distributionsCopy copy];
    valenceDistributions = v9->_valenceDistributions;
    v9->_valenceDistributions = v10;

    [distributionsCopy hk_sumUsingEvaluationBlock:&__block_literal_global];
    v9->_countDaily = v12;
    [distributionsCopy hk_sumUsingEvaluationBlock:&__block_literal_global_294];
    v9->_countMomentary = v13;
  }

  return v9;
}

double __77__HKMHValenceDistributionSummary_initWithDayIndexRange_valenceDistributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = 0.0;
  if ([v2 reflectiveInterval] == 2)
  {
    v3 = [v2 sampleCount];
  }

  return v3;
}

double __77__HKMHValenceDistributionSummary_initWithDayIndexRange_valenceDistributions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = 0.0;
  if ([v2 reflectiveInterval] == 1)
  {
    v3 = [v2 sampleCount];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    valenceDistributions = [(HKMHValenceDistributionSummary *)self valenceDistributions];
    valenceDistributions2 = [v5 valenceDistributions];
    v9 = [valenceDistributions isEqualToArray:valenceDistributions2] && self->_countDaily == v5[3] && self->_countMomentary == v5[2] && self->_dayIndexRange.start == v5[4] && self->_dayIndexRange.duration == v5[5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  valenceDistributions = [(HKMHValenceDistributionSummary *)self valenceDistributions];
  v4 = [valenceDistributions hash];
  v5 = veorq_s8(*&self->_countMomentary, self->_dayIndexRange);
  v6 = veor_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));

  return *&v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = HKMHValenceDistributionSummary;
  v4 = [(HKMHValenceDistributionSummary *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@[range:(%ld - %ld) distributions:%@]", v4, self->_dayIndexRange.start, self->_dayIndexRange.duration + self->_dayIndexRange.start, self->_valenceDistributions];

  return v5;
}

- (NSString)hk_redactedDescription
{
  v4.receiver = self;
  v4.super_class = HKMHValenceDistributionSummary;
  v2 = [(HKMHValenceDistributionSummary *)&v4 description];

  return v2;
}

- (HKMHValenceDistributionSummary)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ValenceDistributions"];

  v9 = [coderCopy decodeIntegerForKey:@"DayIndexRangeStart"];
  v10 = [coderCopy decodeIntegerForKey:@"DayIndexRangeDuration"];

  v11 = [(HKMHValenceDistributionSummary *)self initWithDayIndexRange:v9 valenceDistributions:v10, v8];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  valenceDistributions = self->_valenceDistributions;
  coderCopy = coder;
  [coderCopy encodeObject:valenceDistributions forKey:@"ValenceDistributions"];
  [coderCopy encodeInteger:self->_dayIndexRange.start forKey:@"DayIndexRangeStart"];
  [coderCopy encodeInteger:self->_dayIndexRange.duration forKey:@"DayIndexRangeDuration"];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange
{
  duration = self->_dayIndexRange.duration;
  start = self->_dayIndexRange.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end