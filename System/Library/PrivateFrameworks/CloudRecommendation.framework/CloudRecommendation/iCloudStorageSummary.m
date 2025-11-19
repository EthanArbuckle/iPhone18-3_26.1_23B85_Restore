@interface iCloudStorageSummary
- (iCloudStorageSummary)initWithStorageSummary:(id)a3;
@end

@implementation iCloudStorageSummary

- (iCloudStorageSummary)initWithStorageSummary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = iCloudStorageSummary;
  v5 = [(iCloudStorageSummary *)&v12 init];
  if (v5)
  {
    v6 = [v4 totalStorage];
    totalStorage = v5->_totalStorage;
    v5->_totalStorage = v6;

    v8 = [v4 usedStorage];
    usedStorage = v5->_usedStorage;
    v5->_usedStorage = v8;

    v10 = [v4 subscriptionInfo];
    v5->_isiCloudPlusSubscriber = [v10 isiCloudPlusSubscriber];
  }

  return v5;
}

@end