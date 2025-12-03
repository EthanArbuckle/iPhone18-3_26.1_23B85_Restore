@interface CALNNotificationStorageWrapper
- (CALNNotificationStorageWrapper)initWithWrappedStorage:(id)storage;
- (id)notificationRecords;
- (void)addNotificationRecord:(id)record;
- (void)addNotificationRecords:(id)records;
- (void)removeAllNotificationRecords;
- (void)removeNotificationRecordsPassingTest:(id)test;
@end

@implementation CALNNotificationStorageWrapper

- (CALNNotificationStorageWrapper)initWithWrappedStorage:(id)storage
{
  storageCopy = storage;
  v9.receiver = self;
  v9.super_class = CALNNotificationStorageWrapper;
  v6 = [(CALNNotificationStorageWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedStorage, storage);
  }

  return v7;
}

- (void)addNotificationRecord:(id)record
{
  recordCopy = record;
  wrappedStorage = [(CALNNotificationStorageWrapper *)self wrappedStorage];
  [wrappedStorage addNotificationRecord:recordCopy];
}

- (id)notificationRecords
{
  wrappedStorage = [(CALNNotificationStorageWrapper *)self wrappedStorage];
  notificationRecords = [wrappedStorage notificationRecords];

  return notificationRecords;
}

- (void)removeNotificationRecordsPassingTest:(id)test
{
  testCopy = test;
  wrappedStorage = [(CALNNotificationStorageWrapper *)self wrappedStorage];
  [wrappedStorage removeNotificationRecordsPassingTest:testCopy];
}

- (void)addNotificationRecords:(id)records
{
  recordsCopy = records;
  wrappedStorage = [(CALNNotificationStorageWrapper *)self wrappedStorage];
  [wrappedStorage addNotificationRecords:recordsCopy];
}

- (void)removeAllNotificationRecords
{
  wrappedStorage = [(CALNNotificationStorageWrapper *)self wrappedStorage];
  [wrappedStorage removeAllNotificationRecords];
}

@end