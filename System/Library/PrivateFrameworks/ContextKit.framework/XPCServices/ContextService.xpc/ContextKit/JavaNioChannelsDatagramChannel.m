@interface JavaNioChannelsDatagramChannel
+ (id)open;
- (int64_t)readWithJavaNioByteBufferArray:(id)a3;
- (int64_t)writeWithJavaNioByteBufferArray:(id)a3;
@end

@implementation JavaNioChannelsDatagramChannel

+ (id)open
{
  v2 = JavaNioChannelsSpiSelectorProvider_provider();
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return [v2 openDatagramChannel];
}

- (int64_t)readWithJavaNioByteBufferArray:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaNioChannelsDatagramChannel *)self readWithJavaNioByteBufferArray:a3 withInt:0 withInt:*(a3 + 2)];
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

  v5 = [(JavaNioChannelsDatagramChannel *)self writeWithJavaNioByteBufferArray:a3 withInt:0 withInt:*(a3 + 2)];
  objc_sync_exit(self);
  return v5;
}

@end