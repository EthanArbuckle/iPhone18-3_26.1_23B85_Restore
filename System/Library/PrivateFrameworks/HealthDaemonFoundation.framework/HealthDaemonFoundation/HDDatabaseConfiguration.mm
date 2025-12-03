@interface HDDatabaseConfiguration
- (HDDatabaseConfiguration)initWithBehavior:(id)behavior concurrentReaderLimit:(unint64_t)limit contentProtectionManager:(id)manager;
@end

@implementation HDDatabaseConfiguration

- (HDDatabaseConfiguration)initWithBehavior:(id)behavior concurrentReaderLimit:(unint64_t)limit contentProtectionManager:(id)manager
{
  behaviorCopy = behavior;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = HDDatabaseConfiguration;
  v11 = [(HDDatabaseConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_behavior, behavior);
    v12->_concurrentReaderLimit = limit;
    objc_storeStrong(&v12->_contentProtectionManager, manager);
  }

  return v12;
}

@end