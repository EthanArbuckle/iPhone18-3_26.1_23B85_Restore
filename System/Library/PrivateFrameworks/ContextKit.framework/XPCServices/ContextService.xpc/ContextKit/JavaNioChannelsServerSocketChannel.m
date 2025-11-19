@interface JavaNioChannelsServerSocketChannel
+ (id)open;
@end

@implementation JavaNioChannelsServerSocketChannel

+ (id)open
{
  v2 = JavaNioChannelsSpiSelectorProvider_provider();
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return [v2 openServerSocketChannel];
}

@end