@interface MKAnalytics
+ (MKAnalytics)sharedInstance;
- (MKAnalytics)init;
- (void)createPayload;
- (void)send;
- (void)send:(id)a3 payload:(id)a4;
@end

@implementation MKAnalytics

+ (MKAnalytics)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__MKAnalytics_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __29__MKAnalytics_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (MKAnalytics)init
{
  v5.receiver = self;
  v5.super_class = MKAnalytics;
  v2 = [(MKAnalytics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MKAnalytics *)v2 createPayload];
  }

  return v3;
}

- (void)createPayload
{
  v3 = objc_alloc_init(MKPayload);
  [(MKAnalytics *)self setPayload:v3];
}

- (void)send
{
  v3 = [(MKPayload *)self->_payload dictionary];
  [(MKAnalytics *)self send:@"com.apple.welcomemat" payload:v3];
}

- (void)send:(id)a3 payload:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

@end