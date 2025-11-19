@interface BDSReadingHistoryServiceStatusInfo
- (BDSReadingHistoryServiceStatusInfo)initWithCoder:(id)a3;
- (BOOL)isLoaded;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSReadingHistoryServiceStatusInfo

- (BOOL)isLoaded
{
  v2 = [(BDSReadingHistoryServiceStatusInfo *)self status];
  v3 = [v2 isLoaded];

  return v3;
}

- (BDSReadingHistoryServiceStatusInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingHistoryServiceStatusInfo *)self init];
  if (v5)
  {
    v6 = [[BDSReadingHistoryServiceStatus alloc] initWithCoder:v4];
    status = v5->_status;
    v5->_status = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingHistoryServiceStatusInfo *)self status];
  [v5 encodeWithCoder:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BDSReadingHistoryServiceStatusInfo alloc];
  v5 = [(BDSReadingHistoryServiceStatusInfo *)self isLoaded];

  return [(BDSReadingHistoryServiceStatusInfo *)v4 initWithIsLoaded:v5];
}

- (id)description
{
  v2 = [(BDSReadingHistoryServiceStatusInfo *)self status];
  v3 = [v2 description];

  return v3;
}

@end