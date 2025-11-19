@interface HDDatabaseConfiguration
- (HDDatabaseConfiguration)initWithBehavior:(id)a3 concurrentReaderLimit:(unint64_t)a4 contentProtectionManager:(id)a5;
@end

@implementation HDDatabaseConfiguration

- (HDDatabaseConfiguration)initWithBehavior:(id)a3 concurrentReaderLimit:(unint64_t)a4 contentProtectionManager:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HDDatabaseConfiguration;
  v11 = [(HDDatabaseConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_behavior, a3);
    v12->_concurrentReaderLimit = a4;
    objc_storeStrong(&v12->_contentProtectionManager, a5);
  }

  return v12;
}

@end