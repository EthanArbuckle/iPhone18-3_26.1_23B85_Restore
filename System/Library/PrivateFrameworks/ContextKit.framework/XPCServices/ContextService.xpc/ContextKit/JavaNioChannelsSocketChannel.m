@interface JavaNioChannelsSocketChannel
+ (id)open;
+ (id)openWithJavaNetSocketAddress:(id)a3;
- (int64_t)readWithJavaNioByteBufferArray:(id)a3;
- (int64_t)writeWithJavaNioByteBufferArray:(id)a3;
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

+ (id)openWithJavaNetSocketAddress:(id)a3
{
  v4 = JavaNioChannelsSpiSelectorProvider_provider();
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 openSocketChannel];
  v6 = v5;
  if (v5)
  {
    [v5 connectWithJavaNetSocketAddress:a3];
  }

  return v6;
}

- (int64_t)readWithJavaNioByteBufferArray:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaNioChannelsSocketChannel *)self readWithJavaNioByteBufferArray:a3 withInt:0 withInt:*(a3 + 2)];
  objc_sync_exit(self);
  return v5;
}

- (int64_t)writeWithJavaNioByteBufferArray:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaNioChannelsSocketChannel *)self writeWithJavaNioByteBufferArray:a3 withInt:0 withInt:*(a3 + 2)];
  objc_sync_exit(self);
  return v5;
}

@end