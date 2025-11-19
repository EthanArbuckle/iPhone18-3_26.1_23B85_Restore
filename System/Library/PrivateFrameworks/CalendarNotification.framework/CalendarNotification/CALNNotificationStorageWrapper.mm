@interface CALNNotificationStorageWrapper
- (CALNNotificationStorageWrapper)initWithWrappedStorage:(id)a3;
- (id)notificationRecords;
- (void)addNotificationRecord:(id)a3;
- (void)addNotificationRecords:(id)a3;
- (void)removeAllNotificationRecords;
- (void)removeNotificationRecordsPassingTest:(id)a3;
@end

@implementation CALNNotificationStorageWrapper

- (CALNNotificationStorageWrapper)initWithWrappedStorage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CALNNotificationStorageWrapper;
  v6 = [(CALNNotificationStorageWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedStorage, a3);
  }

  return v7;
}

- (void)addNotificationRecord:(id)a3
{
  v4 = a3;
  v5 = [(CALNNotificationStorageWrapper *)self wrappedStorage];
  [v5 addNotificationRecord:v4];
}

- (id)notificationRecords
{
  v2 = [(CALNNotificationStorageWrapper *)self wrappedStorage];
  v3 = [v2 notificationRecords];

  return v3;
}

- (void)removeNotificationRecordsPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(CALNNotificationStorageWrapper *)self wrappedStorage];
  [v5 removeNotificationRecordsPassingTest:v4];
}

- (void)addNotificationRecords:(id)a3
{
  v4 = a3;
  v5 = [(CALNNotificationStorageWrapper *)self wrappedStorage];
  [v5 addNotificationRecords:v4];
}

- (void)removeAllNotificationRecords
{
  v2 = [(CALNNotificationStorageWrapper *)self wrappedStorage];
  [v2 removeAllNotificationRecords];
}

@end