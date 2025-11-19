@interface CRFDRRetryController
+ (id)sharedInstance;
- (CRFDRRetryController)init;
- (void)disableRetry;
- (void)enableRetry;
@end

@implementation CRFDRRetryController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CRFDRRetryController sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __38__CRFDRRetryController_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (CRFDRRetryController)init
{
  v6.receiver = self;
  v6.super_class = CRFDRRetryController;
  v2 = [(CRFDRRetryController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v2->_lock;
    v2->_lock = v3;

    v2->_refCount = 0;
  }

  return v2;
}

- (void)disableRetry
{
  [(NSLock *)self->_lock lock];
  refCount = self->_refCount;
  if (!refCount)
  {
    v4 = handleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CRFDRRetryController disableRetry];
    }

    AMFDRSealingMapSetKeyQueryRetry();
    refCount = self->_refCount;
  }

  self->_refCount = refCount + 1;
  [(NSLock *)self->_lock unlock];
}

- (void)enableRetry
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end