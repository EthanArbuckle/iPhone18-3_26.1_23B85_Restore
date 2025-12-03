@interface CALNFilteredNotificationManager
- (BOOL)isProtectedDataAvailable;
- (CALNFilteredNotificationManager)initWithWrappedNotificationManager:(id)manager predicate:(id)predicate;
- (id)fetchRecordsWithSourceIdentifier:(id)identifier;
- (void)addRecord:(id)record;
- (void)removeRecordWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier;
- (void)updateRecord:(id)record;
@end

@implementation CALNFilteredNotificationManager

- (CALNFilteredNotificationManager)initWithWrappedNotificationManager:(id)manager predicate:(id)predicate
{
  managerCopy = manager;
  predicateCopy = predicate;
  v14.receiver = self;
  v14.super_class = CALNFilteredNotificationManager;
  v9 = [(CALNFilteredNotificationManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_wrappedNotificationManager, manager);
    v11 = [predicateCopy copy];
    predicate = v10->_predicate;
    v10->_predicate = v11;
  }

  return v10;
}

- (BOOL)isProtectedDataAvailable
{
  wrappedNotificationManager = [(CALNFilteredNotificationManager *)self wrappedNotificationManager];
  isProtectedDataAvailable = [wrappedNotificationManager isProtectedDataAvailable];

  return isProtectedDataAvailable;
}

- (void)addRecord:(id)record
{
  recordCopy = record;
  predicate = [(CALNFilteredNotificationManager *)self predicate];
  v5 = predicate[2]();

  if (v5)
  {
    wrappedNotificationManager = [(CALNFilteredNotificationManager *)self wrappedNotificationManager];
    [wrappedNotificationManager addRecord:recordCopy];
  }
}

- (id)fetchRecordsWithSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  predicate = [(CALNFilteredNotificationManager *)self predicate];
  v6 = predicate[2]();

  if (v6)
  {
    wrappedNotificationManager = [(CALNFilteredNotificationManager *)self wrappedNotificationManager];
    v8 = [wrappedNotificationManager fetchRecordsWithSourceIdentifier:identifierCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)removeRecordWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  predicate = [(CALNFilteredNotificationManager *)self predicate];
  v8 = predicate[2]();

  if (v8)
  {
    wrappedNotificationManager = [(CALNFilteredNotificationManager *)self wrappedNotificationManager];
    [wrappedNotificationManager removeRecordWithSourceIdentifier:identifierCopy sourceClientIdentifier:clientIdentifierCopy];
  }
}

- (void)updateRecord:(id)record
{
  recordCopy = record;
  predicate = [(CALNFilteredNotificationManager *)self predicate];
  v5 = predicate[2]();

  if (v5)
  {
    wrappedNotificationManager = [(CALNFilteredNotificationManager *)self wrappedNotificationManager];
    [wrappedNotificationManager updateRecord:recordCopy];
  }
}

@end