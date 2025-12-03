@interface NRMockXPCStuff
+ (id)sharedInstance;
- (NRMockXPCStuff)init;
@end

@implementation NRMockXPCStuff

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__NRMockXPCStuff_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ECE77A10 != -1)
  {
    dispatch_once(&qword_1ECE77A10, block);
  }

  v2 = _MergedGlobals_1;

  return v2;
}

uint64_t __32__NRMockXPCStuff_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  v2 = objc_opt_new();
  v3 = _MergedGlobals_1;
  _MergedGlobals_1 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (NRMockXPCStuff)init
{
  v8.receiver = self;
  v8.super_class = NRMockXPCStuff;
  v2 = [(NRMockXPCStuff *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    mockListeners = v2->_mockListeners;
    v2->_mockListeners = dictionary;

    v5 = dispatch_queue_create("com.apple.nanoregistry.mockxpc.stuff", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

@end