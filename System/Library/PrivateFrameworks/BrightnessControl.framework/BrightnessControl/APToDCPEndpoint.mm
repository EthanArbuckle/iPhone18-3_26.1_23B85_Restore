@interface APToDCPEndpoint
+ (id)sharedInstance;
- (APToDCPEndpoint)init;
- (id)copyProperty:(id)property;
@end

@implementation APToDCPEndpoint

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__APToDCPEndpoint_sharedInstance__block_invoke;
  block[3] = &unk_2784F8E40;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  return sharedInstance_sharedObj;
}

id __33__APToDCPEndpoint_sharedInstance__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  sharedInstance_sharedObj = result;
  return result;
}

- (APToDCPEndpoint)init
{
  v4.receiver = self;
  v4.super_class = APToDCPEndpoint;
  v2 = [(APToDCPEndpoint *)&v4 init];
  if (v2)
  {
    v2->_endpoint = [[CBAPEndpoint alloc] initWithServiceName:@"CBAPToDCPService" role:@"DCP"];
  }

  return v2;
}

- (id)copyProperty:(id)property
{
  objc_sync_enter(self);
  v5 = [(CBAPEndpoint *)self->_endpoint copyProperty:property];
  objc_sync_exit(self);
  return v5;
}

@end