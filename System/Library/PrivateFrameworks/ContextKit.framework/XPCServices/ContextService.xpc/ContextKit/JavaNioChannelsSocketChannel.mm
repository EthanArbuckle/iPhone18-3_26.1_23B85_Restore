@interface JavaNioChannelsSocketChannel
+ (id)open;
+ (id)openWithJavaNetSocketAddress:(id)address;
- (int64_t)readWithJavaNioByteBufferArray:(id)array;
- (int64_t)writeWithJavaNioByteBufferArray:(id)array;
@end

@implementation JavaNioChannelsSocketChannel

+ (id)open
{
  v2 = JavaNioChannelsSpiSelectorProvider_provider();
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return [v2 openSocketChannel];
}

+ (id)openWithJavaNetSocketAddress:(id)address
{
  v4 = JavaNioChannelsSpiSelectorProvider_provider();
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  openSocketChannel = [v4 openSocketChannel];
  v6 = openSocketChannel;
  if (openSocketChannel)
  {
    [openSocketChannel connectWithJavaNetSocketAddress:address];
  }

  return v6;
}

- (int64_t)readWithJavaNioByteBufferArray:(id)array
{
  objc_sync_enter(self);
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaNioChannelsSocketChannel *)self readWithJavaNioByteBufferArray:array withInt:0 withInt:*(array + 2)];
  objc_sync_exit(self);
  return v5;
}

- (int64_t)writeWithJavaNioByteBufferArray:(id)array
{
  objc_sync_enter(self);
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaNioChannelsSocketChannel *)self writeWithJavaNioByteBufferArray:array withInt:0 withInt:*(array + 2)];
  objc_sync_exit(self);
  return v5;
}

@end