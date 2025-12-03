@interface MAAutoAssetInfoListen
- (MAAutoAssetInfoListen)initWithCoder:(id)coder;
- (MAAutoAssetInfoListen)initWithNotifications:(id)notifications;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetInfoListen

- (MAAutoAssetInfoListen)initWithNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v9.receiver = self;
  v9.super_class = MAAutoAssetInfoListen;
  v6 = [(MAAutoAssetInfoListen *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activeNotifications, notifications);
  }

  return v7;
}

- (MAAutoAssetInfoListen)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MAAutoAssetInfoListen;
  v5 = [(MAAutoAssetInfoListen *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeNotifications"];
    activeNotifications = v5->_activeNotifications;
    v5->_activeNotifications = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activeNotifications = [(MAAutoAssetInfoListen *)self activeNotifications];
  [coderCopy encodeObject:activeNotifications forKey:@"activeNotifications"];
}

- (id)summary
{
  activeNotifications = [(MAAutoAssetInfoListen *)self activeNotifications];
  summary = [activeNotifications summary];

  return summary;
}

@end