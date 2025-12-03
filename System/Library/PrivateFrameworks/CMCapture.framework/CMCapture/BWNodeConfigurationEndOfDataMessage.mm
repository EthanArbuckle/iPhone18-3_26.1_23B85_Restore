@interface BWNodeConfigurationEndOfDataMessage
+ (id)newMessageWithConfigurationID:(int64_t)d;
@end

@implementation BWNodeConfigurationEndOfDataMessage

+ (id)newMessageWithConfigurationID:(int64_t)d
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
      *(result + 2) = d;
    }
  }

  return result;
}

@end