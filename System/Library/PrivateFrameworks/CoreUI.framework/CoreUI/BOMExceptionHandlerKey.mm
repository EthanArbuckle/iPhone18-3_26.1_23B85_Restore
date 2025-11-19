@interface BOMExceptionHandlerKey
@end

@implementation BOMExceptionHandlerKey

void ____BOMExceptionHandlerKey_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (pthread_key_create(&__BOMExceptionHandlerKey___key, 0))
  {

    _CUILog(4, "__BOMExceptionHandlerKey couldn't pthread_key_create", v9, v10, v11, v12, v13, v14, a9);
  }
}

@end