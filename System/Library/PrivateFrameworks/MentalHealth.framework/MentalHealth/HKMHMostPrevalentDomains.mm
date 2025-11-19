@interface HKMHMostPrevalentDomains
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (BOOL)isEqual:(id)a3;
- (HKMHMostPrevalentDomains)initWithCoder:(id)a3;
- (HKMHMostPrevalentDomains)initWithMostUnpleasantDomains:(id)a3 mostPleasantDomains:(id)a4 dayIndexRange:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMHMostPrevalentDomains

- (HKMHMostPrevalentDomains)initWithMostUnpleasantDomains:(id)a3 mostPleasantDomains:(id)a4 dayIndexRange:(id)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v10 = a3;
  v11 = a4;
  v15.receiver = self;
  v15.super_class = HKMHMostPrevalentDomains;
  v12 = [(HKMHMostPrevalentDomains *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mostUnpleasantDomains, a3);
    objc_storeStrong(&v13->_mostPleasantDomains, a4);
    v13->_dayIndexRange.start = var0;
    v13->_dayIndexRange.duration = var1;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    mostUnpleasantDomains = self->_mostUnpleasantDomains;
    v7 = v5[1];
    v11 = (mostUnpleasantDomains == v7 || v7 && [(HKMHDomainSummary *)mostUnpleasantDomains isEqual:?]) && ((mostPleasantDomains = self->_mostPleasantDomains, v9 = v5[2], mostPleasantDomains == v9) || v9 && [(HKMHDomainSummary *)mostPleasantDomains isEqual:?]) && self->_dayIndexRange.start == v5[3] && self->_dayIndexRange.duration == v5[4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  start = self->_dayIndexRange.start;
  duration = self->_dayIndexRange.duration;
  v7 = NSStringFromHKDayIndexRange();
  v8 = [(HKMHDomainSummary *)self->_mostUnpleasantDomains description];
  v9 = [(HKMHDomainSummary *)self->_mostPleasantDomains description];
  v10 = [v3 stringWithFormat:@"<%@:%p Day Index Range:%@ Unpleasant:%@ Pleasant:%@>", v4, self, v7, v8, v9];

  return v10;
}

- (HKMHMostPrevalentDomains)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PleasantDomains"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UnpleasantDomains"];
  v7 = [v4 decodeIntegerForKey:@"DayIndexRangeStart"];
  v8 = [v4 decodeIntegerForKey:@"DayIndexRangeDuration"];

  v9 = [(HKMHMostPrevalentDomains *)self initWithMostUnpleasantDomains:v6 mostPleasantDomains:v5 dayIndexRange:v7, v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  start = self->_dayIndexRange.start;
  v5 = a3;
  [v5 encodeInteger:start forKey:@"DayIndexRangeStart"];
  [v5 encodeInteger:self->_dayIndexRange.duration forKey:@"DayIndexRangeDuration"];
  [v5 encodeObject:self->_mostUnpleasantDomains forKey:@"UnpleasantDomains"];
  [v5 encodeObject:self->_mostPleasantDomains forKey:@"PleasantDomains"];
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