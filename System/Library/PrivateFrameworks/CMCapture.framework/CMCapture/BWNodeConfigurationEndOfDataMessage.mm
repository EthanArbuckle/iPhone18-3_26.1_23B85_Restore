@interface BWNodeConfigurationEndOfDataMessage
+ (id)newMessageWithConfigurationID:(int64_t)a3;
@end

@implementation BWNodeConfigurationEndOfDataMessage

+ (id)newMessageWithConfigurationID:(int64_t)a3
{
  result = [BWNodeConfigurationEndOfDataMessage alloc];
  if (result)
  {
    v5.receiver = result;
    v5.super_class = BWNodeConfigurationEndOfDataMessage;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      *(result + 1) = 0x900000001;
      *(result + 2) = a3;
    }
  }

  return result;
}

@end