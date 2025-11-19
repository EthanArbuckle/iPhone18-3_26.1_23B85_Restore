@interface DAKeySharingAnalyticsData
- (DAKeySharingAnalyticsData)initWithCoder:(id)a3;
- (DAKeySharingAnalyticsData)initWithSharingFlow:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation DAKeySharingAnalyticsData

- (DAKeySharingAnalyticsData)initWithSharingFlow:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = DAKeySharingAnalyticsData;
  result = [(DAKeySharingAnalyticsData *)&v5 init];
  if (result)
  {
    result->_sharingFlow = a3;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DAKeySharingAnalyticsData:\n"];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tSharing Flow         : 0x%02X\n", self->_sharingFlow];
  [v3 appendString:v5];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[DAKeySharingAnalyticsData allocWithZone:?]];
  if (result)
  {
    *(result + 1) = self->_sharingFlow;
  }

  return result;
}

- (DAKeySharingAnalyticsData)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DAKeySharingAnalyticsData;
  v5 = [(DAKeySharingAnalyticsData *)&v7 init];
  if (v5)
  {
    v5->_sharingFlow = [v4 decodeIntegerForKey:@"sharingFlow"];
  }

  return v5;
}

@end