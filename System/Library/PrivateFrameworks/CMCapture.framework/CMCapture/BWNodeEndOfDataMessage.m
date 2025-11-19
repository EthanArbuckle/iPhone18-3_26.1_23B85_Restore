@interface BWNodeEndOfDataMessage
+ (id)newMessage;
@end

@implementation BWNodeEndOfDataMessage

+ (id)newMessage
{
  result = [BWNodeEndOfDataMessage alloc];
  if (result)
  {
    v3.receiver = result;
    v3.super_class = BWNodeEndOfDataMessage;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      *(result + 1) = 0x400000001;
    }
  }

  return result;
}

@end