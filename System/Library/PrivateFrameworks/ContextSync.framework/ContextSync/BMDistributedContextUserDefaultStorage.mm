@interface BMDistributedContextUserDefaultStorage
- (BMDistributedContextUserDefaultStorage)initWithUserDefault:(id)default;
@end

@implementation BMDistributedContextUserDefaultStorage

- (BMDistributedContextUserDefaultStorage)initWithUserDefault:(id)default
{
  defaultCopy = default;
  v9.receiver = self;
  v9.super_class = BMDistributedContextUserDefaultStorage;
  v6 = [(BMDistributedContextUserDefaultStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, default);
  }

  return v7;
}

@end