@interface HMMRTCSessionManager
+ (id)sharedManager;
- (void)addCommonField:(id)a3 withValue:(id)a4;
- (void)removeCommonField:(id)a3;
- (void)setSessionFactory:(id)a3;
@end

@implementation HMMRTCSessionManager

- (void)removeCommonField:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_commonFields];
  [v4 removeObjectForKey:v7];
  v5 = [v4 copy];
  commonFields = self->_commonFields;
  self->_commonFields = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addCommonField:(id)a3 withValue:(id)a4
{
  v10 = a3;
  v6 = a4;
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
  [v7 setObject:v6 forKey:v10];
  v8 = [v7 copy];
  commonFields = self->_commonFields;
  self->_commonFields = v8;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSessionFactory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  sessionFactory = self->_sessionFactory;
  self->_sessionFactory = v4;

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