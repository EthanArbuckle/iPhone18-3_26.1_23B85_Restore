@interface HKMHDomainSummary
- (BOOL)isEqual:(id)a3;
- (HKMHDomainSummary)initWithCoder:(id)a3;
- (HKMHDomainSummary)initWithDomains:(id)a3 count:(int64_t)a4 totalSampleCount:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMHDomainSummary

- (HKMHDomainSummary)initWithDomains:(id)a3 count:(int64_t)a4 totalSampleCount:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HKMHDomainSummary;
  v10 = [(HKMHDomainSummary *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_domains, a3);
    v11->_count = a4;
    v11->_totalSampleCount = a5;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NSArray *)self->_domains isEqualToArray:v5[1]]&& self->_count == v5[2] && self->_totalSampleCount == v5[3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NSArray *)self->_domains description];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_count];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_totalSampleCount];
  v8 = [v3 stringWithFormat:@"<%@:%p Domains:%@ count:%@ total:%@>", v4, self, v5, v6, v7];

  return v8;
}

- (HKMHDomainSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"Count"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"Domains"];
  v7 = [v4 decodeIntegerForKey:@"TotalSampleCount"];

  v8 = [(HKMHDomainSummary *)self initWithDomains:v6 count:v5 totalSampleCount:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  count = self->_count;
  v5 = a3;
  [v5 encodeInteger:count forKey:@"Count"];
  [v5 encodeObject:self->_domains forKey:@"Domains"];
  [v5 encodeInteger:self->_totalSampleCount forKey:@"TotalSampleCount"];
}

@end