@interface JavaNioChannelsDatagramChannel
+ (id)open;
- (int64_t)readWithJavaNioByteBufferArray:(id)array;
- (int64_t)writeWithJavaNioByteBufferArray:(id)array;
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

- (int64_t)readWithJavaNioByteBufferArray:(id)array
{
  objc_sync_enter(self);
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaNioChannelsDatagramChannel *)self readWithJavaNioByteBufferArray:array withInt:0 withInt:*(array + 2)];
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

  v5 = [(JavaNioChannelsDatagramChannel *)self writeWithJavaNioByteBufferArray:array withInt:0 withInt:*(array + 2)];
  objc_sync_exit(self);
  return v5;
}

@end