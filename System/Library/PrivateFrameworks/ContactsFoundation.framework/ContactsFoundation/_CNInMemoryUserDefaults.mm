@interface _CNInMemoryUserDefaults
- (_CNInMemoryUserDefaults)init;
- (unint64_t)synchronizeCount;
@end

@implementation _CNInMemoryUserDefaults

- (_CNInMemoryUserDefaults)init
{
  v3 = objc_alloc_init(CNDictionaryPrimitiveUserDefaults);
  v6.receiver = self;
  v6.super_class = _CNInMemoryUserDefaults;
  v4 = [(CNUserDefaults *)&v6 initWithPrimitiveDefaults:v3];

  return v4;
}

- (unint64_t)synchronizeCount
{
  primitiveDefaults = [(CNUserDefaults *)self primitiveDefaults];
  synchronizeCount = [primitiveDefaults synchronizeCount];

  return synchronizeCount;
}

@end