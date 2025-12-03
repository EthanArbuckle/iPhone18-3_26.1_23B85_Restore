@interface DNDSXPCEventInterface
+ (id)sharedInstance;
- (void)registerForStream:(id)stream queue:(id)queue handler:(id)handler;
- (void)setEvent:(id)event forKey:(id)key onStream:(id)stream;
@end

@implementation DNDSXPCEventInterface

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__DNDSXPCEventInterface_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __39__DNDSXPCEventInterface_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)setEvent:(id)event forKey:(id)key onStream:(id)stream
{
  streamCopy = stream;
  keyCopy = key;
  eventCopy = event;
  [stream UTF8String];
  [keyCopy UTF8String];

  xpc_set_event();
}

- (void)registerForStream:(id)stream queue:(id)queue handler:(id)handler
{
  streamCopy = stream;
  handlerCopy = handler;
  targetq = queue;
  xpc_set_event_stream_handler([stream UTF8String], targetq, handlerCopy);
}

@end