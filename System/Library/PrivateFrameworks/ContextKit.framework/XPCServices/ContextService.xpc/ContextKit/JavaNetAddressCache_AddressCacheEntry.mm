@interface JavaNetAddressCache_AddressCacheEntry
- (JavaNetAddressCache_AddressCacheEntry)initWithId:(id)id;
- (void)dealloc;
@end

@implementation JavaNetAddressCache_AddressCacheEntry

- (JavaNetAddressCache_AddressCacheEntry)initWithId:(id)id
{
  JreStrongAssign(&self->value_, id);
  self->expiryNanos_ = JavaLangSystem_nanoTime() + 2000000000;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetAddressCache_AddressCacheEntry;
  [(JavaNetAddressCache_AddressCacheEntry *)&v3 dealloc];
}

@end