@interface HAP2AccessoryServerSecureTransportPairSetup
+ (id)defaultEncryptedSession;
- (HAP2AccessoryServerSecureTransportPairSetup)initWithTransport:(id)transport operationQueue:(id)queue encryptedSession:(id)session;
- (void)transport:(id)transport didReceiveEvent:(id)event;
@end

@implementation HAP2AccessoryServerSecureTransportPairSetup

- (void)transport:(id)transport didReceiveEvent:(id)event
{
  v9 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_error_impl(&dword_22AADC000, v5, OS_LOG_TYPE_ERROR, "%@ Unexpected event received", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (HAP2AccessoryServerSecureTransportPairSetup)initWithTransport:(id)transport operationQueue:(id)queue encryptedSession:(id)session
{
  transportCopy = transport;
  sessionCopy = session;
  queueCopy = queue;
  v11 = HAPDispatchQueueName(self, @"delegateQueue");
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create(v11, v12);

  v16.receiver = self;
  v16.super_class = HAP2AccessoryServerSecureTransportPairSetup;
  v14 = [(HAP2AccessoryServerSecureTransportBase *)&v16 initWithOperationQueue:queueCopy delegateQueue:v13 transport:transportCopy encryptedSession:sessionCopy];

  if (v14)
  {
    [transportCopy setDelegate:v14];
  }

  return v14;
}

+ (id)defaultEncryptedSession
{
  v2 = objc_opt_new();

  return v2;
}

@end