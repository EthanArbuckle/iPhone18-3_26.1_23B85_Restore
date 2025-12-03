@interface BDSReadingHistoryServiceStatusInfo
- (BDSReadingHistoryServiceStatusInfo)initWithCoder:(id)coder;
- (BOOL)isLoaded;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSReadingHistoryServiceStatusInfo

- (BOOL)isLoaded
{
  status = [(BDSReadingHistoryServiceStatusInfo *)self status];
  isLoaded = [status isLoaded];

  return isLoaded;
}

- (BDSReadingHistoryServiceStatusInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSReadingHistoryServiceStatusInfo *)self init];
  if (v5)
  {
    v6 = [[BDSReadingHistoryServiceStatus alloc] initWithCoder:coderCopy];
    status = v5->_status;
    v5->_status = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  status = [(BDSReadingHistoryServiceStatusInfo *)self status];
  [status encodeWithCoder:coderCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BDSReadingHistoryServiceStatusInfo alloc];
  isLoaded = [(BDSReadingHistoryServiceStatusInfo *)self isLoaded];

  return [(BDSReadingHistoryServiceStatusInfo *)v4 initWithIsLoaded:isLoaded];
}

- (id)description
{
  status = [(BDSReadingHistoryServiceStatusInfo *)self status];
  v3 = [status description];

  return v3;
}

@end