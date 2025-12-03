@interface iCloudStorageSummary
- (iCloudStorageSummary)initWithStorageSummary:(id)summary;
@end

@implementation iCloudStorageSummary

- (iCloudStorageSummary)initWithStorageSummary:(id)summary
{
  summaryCopy = summary;
  v12.receiver = self;
  v12.super_class = iCloudStorageSummary;
  v5 = [(iCloudStorageSummary *)&v12 init];
  if (v5)
  {
    totalStorage = [summaryCopy totalStorage];
    totalStorage = v5->_totalStorage;
    v5->_totalStorage = totalStorage;

    usedStorage = [summaryCopy usedStorage];
    usedStorage = v5->_usedStorage;
    v5->_usedStorage = usedStorage;

    subscriptionInfo = [summaryCopy subscriptionInfo];
    v5->_isiCloudPlusSubscriber = [subscriptionInfo isiCloudPlusSubscriber];
  }

  return v5;
}

@end