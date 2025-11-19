@interface BMDistributedContextUserDefaultStorage
- (BMDistributedContextUserDefaultStorage)initWithUserDefault:(id)a3;
@end

@implementation BMDistributedContextUserDefaultStorage

- (BMDistributedContextUserDefaultStorage)initWithUserDefault:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BMDistributedContextUserDefaultStorage;
  v6 = [(BMDistributedContextUserDefaultStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, a3);
  }

  return v7;
}

@end