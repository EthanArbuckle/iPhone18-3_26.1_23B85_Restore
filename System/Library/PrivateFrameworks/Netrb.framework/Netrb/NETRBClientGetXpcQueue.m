@interface NETRBClientGetXpcQueue
@end

@implementation NETRBClientGetXpcQueue

uint64_t ____NETRBClientGetXpcQueue_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x31uLL, "com.apple.framework.netrb.xpc.%p", &__netrbClientTypeID);
  __str[48] = 0;
  result = dispatch_queue_create(__str, 0);
  __NETRBClientGetXpcQueue___netrbXpcQueue = result;
  if (!result)
  {
    v1 = __error();
    strerror(*v1);
    result = NETRBErrorLog();
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

@end