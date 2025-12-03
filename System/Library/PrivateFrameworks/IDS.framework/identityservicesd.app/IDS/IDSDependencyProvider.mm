@interface IDSDependencyProvider
+ (id)messageDeliveryFactory;
@end

@implementation IDSDependencyProvider

+ (id)messageDeliveryFactory
{
  v2 = [self registeredObjectForProtocol:&OBJC_PROTOCOL___IDSMessageDeliveryFactory];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[IDSMessageDeliveryFactory sharedFactory];
  }

  v5 = v4;

  return v5;
}

@end