@interface HKMHMostPrevalentDomains
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (BOOL)isEqual:(id)equal;
- (HKMHMostPrevalentDomains)initWithCoder:(id)coder;
- (HKMHMostPrevalentDomains)initWithMostUnpleasantDomains:(id)domains mostPleasantDomains:(id)pleasantDomains dayIndexRange:(id)range;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMHMostPrevalentDomains

- (HKMHMostPrevalentDomains)initWithMostUnpleasantDomains:(id)domains mostPleasantDomains:(id)pleasantDomains dayIndexRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  domainsCopy = domains;
  pleasantDomainsCopy = pleasantDomains;
  v15.receiver = self;
  v15.super_class = HKMHMostPrevalentDomains;
  v12 = [(HKMHMostPrevalentDomains *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mostUnpleasantDomains, domains);
    objc_storeStrong(&v13->_mostPleasantDomains, pleasantDomains);
    v13->_dayIndexRange.start = var0;
    v13->_dayIndexRange.duration = var1;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (HKMHMostPrevalentDomains)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PleasantDomains"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnpleasantDomains"];
  v7 = [coderCopy decodeIntegerForKey:@"DayIndexRangeStart"];
  v8 = [coderCopy decodeIntegerForKey:@"DayIndexRangeDuration"];

  v9 = [(HKMHMostPrevalentDomains *)self initWithMostUnpleasantDomains:v6 mostPleasantDomains:v5 dayIndexRange:v7, v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  start = self->_dayIndexRange.start;
  coderCopy = coder;
  [coderCopy encodeInteger:start forKey:@"DayIndexRangeStart"];
  [coderCopy encodeInteger:self->_dayIndexRange.duration forKey:@"DayIndexRangeDuration"];
  [coderCopy encodeObject:self->_mostUnpleasantDomains forKey:@"UnpleasantDomains"];
  [coderCopy encodeObject:self->_mostPleasantDomains forKey:@"PleasantDomains"];
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