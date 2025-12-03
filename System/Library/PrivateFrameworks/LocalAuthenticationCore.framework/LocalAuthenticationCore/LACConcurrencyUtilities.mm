@interface LACConcurrencyUtilities
+ (OS_dispatch_queue)daemonQueue;
+ (id)createDefaultQueueWithIdentifier:(id)identifier concurrencyAttribute:(id)attribute;
+ (id)createQueueWithIdentifier:(id)identifier concurrencyAttribute:(id)attribute qos:(unsigned int)qos;
@end

@implementation LACConcurrencyUtilities

+ (OS_dispatch_queue)daemonQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__LACConcurrencyUtilities_daemonQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (daemonQueue_onceToken != -1)
  {
    dispatch_once(&daemonQueue_onceToken, block);
  }

  v2 = daemonQueue__queue;

  return v2;
}

uint64_t __38__LACConcurrencyUtilities_daemonQueue__block_invoke(uint64_t a1)
{
  daemonQueue__queue = [*(a1 + 32) createUserInitiatedSerialQueueWithIdentifier:@"daemon-serial-queue"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)createDefaultQueueWithIdentifier:(id)identifier concurrencyAttribute:(id)attribute
{
  identifierCopy = identifier;
  attributeCopy = attribute;
  v8 = dispatch_queue_create([identifier UTF8String], attributeCopy);

  return v8;
}

+ (id)createQueueWithIdentifier:(id)identifier concurrencyAttribute:(id)attribute qos:(unsigned int)qos
{
  v6 = dispatch_queue_attr_make_with_qos_class(attribute, qos, 0);
  v7 = dispatch_queue_create([identifier UTF8String], v6);

  return v7;
}

@end