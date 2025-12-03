@interface HKMHDomainSummary
- (BOOL)isEqual:(id)equal;
- (HKMHDomainSummary)initWithCoder:(id)coder;
- (HKMHDomainSummary)initWithDomains:(id)domains count:(int64_t)count totalSampleCount:(int64_t)sampleCount;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMHDomainSummary

- (HKMHDomainSummary)initWithDomains:(id)domains count:(int64_t)count totalSampleCount:(int64_t)sampleCount
{
  domainsCopy = domains;
  v13.receiver = self;
  v13.super_class = HKMHDomainSummary;
  v10 = [(HKMHDomainSummary *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_domains, domains);
    v11->_count = count;
    v11->_totalSampleCount = sampleCount;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (HKMHDomainSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"Count"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"Domains"];
  v7 = [coderCopy decodeIntegerForKey:@"TotalSampleCount"];

  v8 = [(HKMHDomainSummary *)self initWithDomains:v6 count:v5 totalSampleCount:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  count = self->_count;
  coderCopy = coder;
  [coderCopy encodeInteger:count forKey:@"Count"];
  [coderCopy encodeObject:self->_domains forKey:@"Domains"];
  [coderCopy encodeInteger:self->_totalSampleCount forKey:@"TotalSampleCount"];
}

@end