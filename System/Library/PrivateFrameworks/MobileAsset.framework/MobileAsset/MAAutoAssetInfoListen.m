@interface MAAutoAssetInfoListen
- (MAAutoAssetInfoListen)initWithCoder:(id)a3;
- (MAAutoAssetInfoListen)initWithNotifications:(id)a3;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetInfoListen

- (MAAutoAssetInfoListen)initWithNotifications:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MAAutoAssetInfoListen;
  v6 = [(MAAutoAssetInfoListen *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activeNotifications, a3);
  }

  return v7;
}

- (MAAutoAssetInfoListen)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MAAutoAssetInfoListen;
  v5 = [(MAAutoAssetInfoListen *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeNotifications"];
    activeNotifications = v5->_activeNotifications;
    v5->_activeNotifications = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetInfoListen *)self activeNotifications];
  [v4 encodeObject:v5 forKey:@"activeNotifications"];
}

- (id)summary
{
  v2 = [(MAAutoAssetInfoListen *)self activeNotifications];
  v3 = [v2 summary];

  return v3;
}

@end