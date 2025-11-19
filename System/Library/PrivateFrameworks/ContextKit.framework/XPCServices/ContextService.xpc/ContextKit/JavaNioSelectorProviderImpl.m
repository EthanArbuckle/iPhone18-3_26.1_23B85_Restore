@interface JavaNioSelectorProviderImpl
- (id)openDatagramChannel;
- (id)openPipe;
- (id)openSelector;
- (id)openServerSocketChannel;
- (id)openSocketChannel;
@end

@implementation JavaNioSelectorProviderImpl

- (id)openDatagramChannel
{
  v2 = new_JavaNioDatagramChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_();

  return v2;
}

- (id)openPipe
{
  v2 = new_JavaNioPipeImpl_initWithJavaNioChannelsSpiSelectorProvider_(self);

  return v2;
}

- (id)openSelector
{
  v2 = new_JavaNioSelectorImpl_initWithJavaNioChannelsSpiSelectorProvider_(self);

  return v2;
}

- (id)openServerSocketChannel
{
  v2 = new_JavaNioServerSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_();

  return v2;
}

- (id)openSocketChannel
{
  v2 = new_JavaNioSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_(self);

  return v2;
}

@end