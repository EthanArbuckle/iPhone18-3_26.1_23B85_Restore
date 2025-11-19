@interface JavaNioChannelsSelector
+ (id)open;
@end

@implementation JavaNioChannelsSelector

+ (id)open
{
  v2 = JavaNioChannelsSpiSelectorProvider_provider();
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return [v2 openSelector];
}

@end