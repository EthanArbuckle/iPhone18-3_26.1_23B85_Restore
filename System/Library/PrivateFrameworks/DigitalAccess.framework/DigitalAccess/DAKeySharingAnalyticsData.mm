@interface DAKeySharingAnalyticsData
- (DAKeySharingAnalyticsData)initWithCoder:(id)coder;
- (DAKeySharingAnalyticsData)initWithSharingFlow:(int64_t)flow;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation DAKeySharingAnalyticsData

- (DAKeySharingAnalyticsData)initWithSharingFlow:(int64_t)flow
{
  v5.receiver = self;
  v5.super_class = DAKeySharingAnalyticsData;
  result = [(DAKeySharingAnalyticsData *)&v5 init];
  if (result)
  {
    result->_sharingFlow = flow;
  }

  return result;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DAKeySharingAnalyticsData:\n"];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tSharing Flow         : 0x%02X\n", self->_sharingFlow];
  [string appendString:v5];

  return string;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[DAKeySharingAnalyticsData allocWithZone:?]];
  if (result)
  {
    *(result + 1) = self->_sharingFlow;
  }

  return result;
}

- (DAKeySharingAnalyticsData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = DAKeySharingAnalyticsData;
  v5 = [(DAKeySharingAnalyticsData *)&v7 init];
  if (v5)
  {
    v5->_sharingFlow = [coderCopy decodeIntegerForKey:@"sharingFlow"];
  }

  return v5;
}

@end