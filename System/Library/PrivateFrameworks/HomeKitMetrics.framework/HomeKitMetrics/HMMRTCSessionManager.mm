@interface HMMRTCSessionManager
+ (id)sharedManager;
- (void)addCommonField:(id)field withValue:(id)value;
- (void)removeCommonField:(id)field;
- (void)setSessionFactory:(id)factory;
@end

@implementation HMMRTCSessionManager

- (void)removeCommonField:(id)field
{
  fieldCopy = field;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_commonFields];
  [v4 removeObjectForKey:fieldCopy];
  v5 = [v4 copy];
  commonFields = self->_commonFields;
  self->_commonFields = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addCommonField:(id)field withValue:(id)value
{
  fieldCopy = field;
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  if (self->_commonFields)
  {
    [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
  }

  else
  {
    [MEMORY[0x277CBEB38] dictionary];
  }
  v7 = ;
  [v7 setObject:valueCopy forKey:fieldCopy];
  v8 = [v7 copy];
  commonFields = self->_commonFields;
  self->_commonFields = v8;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSessionFactory:(id)factory
{
  factoryCopy = factory;
  os_unfair_lock_lock_with_options();
  sessionFactory = self->_sessionFactory;
  self->_sessionFactory = factoryCopy;

  os_unfair_lock_unlock(&self->_lock);
}

+ (id)sharedManager
{
  if (sharedManager__hmf_once_t0 != -1)
  {
    dispatch_once(&sharedManager__hmf_once_t0, &__block_literal_global_591);
  }

  v3 = sharedManager__hmf_once_v1;

  return v3;
}

uint64_t __37__HMMRTCSessionManager_sharedManager__block_invoke()
{
  sharedManager__hmf_once_v1 = objc_alloc_init(HMMRTCSessionManager);

  return MEMORY[0x2821F96F8]();
}

@end