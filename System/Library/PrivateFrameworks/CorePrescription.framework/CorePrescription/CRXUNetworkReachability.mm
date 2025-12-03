@interface CRXUNetworkReachability
+ (CRXUNetworkReachability)sharedInstance;
- (CRXUNetworkReachability)init;
- (void)dealloc;
- (void)noteReachabilityChange;
- (void)registerNetworkReachabilityCallback;
@end

@implementation CRXUNetworkReachability

+ (CRXUNetworkReachability)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CRXUNetworkReachability_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance___once__LINE___0 != -1)
  {
    dispatch_once(&sharedInstance___once__LINE___0, block);
  }

  v2 = sharedInstance_instance_0;

  return v2;
}

uint64_t __41__CRXUNetworkReachability_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (CRXUNetworkReachability)init
{
  v11.receiver = self;
  v11.super_class = CRXUNetworkReachability;
  v2 = [(CRXUNetworkReachability *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 2) = 0;
    *(v2 + 3) = 0;
    *(v2 + 8) = 528;
    *(v2 + 1) = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], v2 + 1);
    v4 = [CRXUDispatchQueue serialQueueWithName:@"com.apple.CorePrescription.NetworkQueue"];
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v4;

    [(CRXUNetworkReachability *)v3 registerNetworkReachabilityCallback];
    v6 = objc_alloc_init(CRXUWeakObserverList);
    observers = v3->_observers;
    v3->_observers = v6;

    v8 = os_log_create(CRXULoggingSubsystem, CRXULoggingCategory);
    log = v3->_log;
    v3->_log = v8;
  }

  return v3;
}

- (void)dealloc
{
  CFRelease(self->_reachabilityRef);
  v3.receiver = self;
  v3.super_class = CRXUNetworkReachability;
  [(CRXUNetworkReachability *)&v3 dealloc];
}

- (void)registerNetworkReachabilityCallback
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 86;
  _os_log_error_impl(&dword_24732C000, v0, OS_LOG_TYPE_ERROR, "%s @%d: Error in observing network calls", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)noteReachabilityChange
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 92;
  _os_log_debug_impl(&dword_24732C000, v0, OS_LOG_TYPE_DEBUG, "%s @%d: (notify) internet is Connected", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end