@interface CHProcessHandle
+ (id)processHandle;
@end

@implementation CHProcessHandle

uint64_t __32__CHProcessHandle_processHandle__block_invoke(uint64_t a1)
{
  processHandle_sProcessHandle = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

+ (id)processHandle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CHProcessHandle_processHandle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (processHandle_onceToken != -1)
  {
    dispatch_once(&processHandle_onceToken, block);
  }

  v2 = processHandle_sProcessHandle;

  return v2;
}

@end