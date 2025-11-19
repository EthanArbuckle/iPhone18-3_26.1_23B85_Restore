@interface CLMicroLocationEnvironment
+ (id)shared;
- (BOOL)isTestingEnvironment;
- (CLMicroLocationEnvironment)init;
@end

@implementation CLMicroLocationEnvironment

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CLMicroLocationEnvironment_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[CLMicroLocationEnvironment shared]::ul_once_token_0 != -1)
  {
    dispatch_once(&+[CLMicroLocationEnvironment shared]::ul_once_token_0, block);
  }

  v2 = +[CLMicroLocationEnvironment shared]::ul_once_object_0;

  return v2;
}

void __36__CLMicroLocationEnvironment_shared__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = +[CLMicroLocationEnvironment shared]::ul_once_object_0;
  +[CLMicroLocationEnvironment shared]::ul_once_object_0 = v1;
}

- (CLMicroLocationEnvironment)init
{
  v3.receiver = self;
  v3.super_class = CLMicroLocationEnvironment;
  result = [(CLMicroLocationEnvironment *)&v3 init];
  if (result)
  {
    result->_isTestingEnvironment = 0;
  }

  return result;
}

- (BOOL)isTestingEnvironment
{
  if (self->_isTestingEnvironment)
  {
    return [MEMORY[0x277D28868] isInternalInstall];
  }

  else
  {
    return 0;
  }
}

@end