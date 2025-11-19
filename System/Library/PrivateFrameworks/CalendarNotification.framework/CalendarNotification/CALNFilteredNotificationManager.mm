@interface CALNFilteredNotificationManager
- (BOOL)isProtectedDataAvailable;
- (CALNFilteredNotificationManager)initWithWrappedNotificationManager:(id)a3 predicate:(id)a4;
- (id)fetchRecordsWithSourceIdentifier:(id)a3;
- (void)addRecord:(id)a3;
- (void)removeRecordWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4;
- (void)updateRecord:(id)a3;
@end

@implementation CALNFilteredNotificationManager

- (CALNFilteredNotificationManager)initWithWrappedNotificationManager:(id)a3 predicate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CALNFilteredNotificationManager;
  v9 = [(CALNFilteredNotificationManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_wrappedNotificationManager, a3);
    v11 = [v8 copy];
    predicate = v10->_predicate;
    v10->_predicate = v11;
  }

  return v10;
}

- (BOOL)isProtectedDataAvailable
{
  v2 = [(CALNFilteredNotificationManager *)self wrappedNotificationManager];
  v3 = [v2 isProtectedDataAvailable];

  return v3;
}

- (void)addRecord:(id)a3
{
  v7 = a3;
  v4 = [(CALNFilteredNotificationManager *)self predicate];
  v5 = v4[2]();

  if (v5)
  {
    v6 = [(CALNFilteredNotificationManager *)self wrappedNotificationManager];
    [v6 addRecord:v7];
  }
}

- (id)fetchRecordsWithSourceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNFilteredNotificationManager *)self predicate];
  v6 = v5[2]();

  if (v6)
  {
    v7 = [(CALNFilteredNotificationManager *)self wrappedNotificationManager];
    v8 = [v7 fetchRecordsWithSourceIdentifier:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)removeRecordWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CALNFilteredNotificationManager *)self predicate];
  v8 = v7[2]();

  if (v8)
  {
    v9 = [(CALNFilteredNotificationManager *)self wrappedNotificationManager];
    [v9 removeRecordWithSourceIdentifier:v10 sourceClientIdentifier:v6];
  }
}

- (void)updateRecord:(id)a3
{
  v7 = a3;
  v4 = [(CALNFilteredNotificationManager *)self predicate];
  v5 = v4[2]();

  if (v5)
  {
    v6 = [(CALNFilteredNotificationManager *)self wrappedNotificationManager];
    [v6 updateRecord:v7];
  }
}

@end