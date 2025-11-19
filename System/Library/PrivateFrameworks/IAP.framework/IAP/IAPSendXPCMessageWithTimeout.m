@interface IAPSendXPCMessageWithTimeout
@end

@implementation IAPSendXPCMessageWithTimeout

xpc_object_t ___IAPSendXPCMessageWithTimeout_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    return xpc_retain(result);
  }

  return result;
}

@end