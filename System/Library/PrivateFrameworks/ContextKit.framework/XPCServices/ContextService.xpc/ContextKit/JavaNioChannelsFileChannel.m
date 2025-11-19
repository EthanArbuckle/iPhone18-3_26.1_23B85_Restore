@interface JavaNioChannelsFileChannel
- (int64_t)readWithJavaNioByteBufferArray:(id)a3;
- (int64_t)writeWithJavaNioByteBufferArray:(id)a3;
@end

@implementation JavaNioChannelsFileChannel

- (int64_t)readWithJavaNioByteBufferArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaNioChannelsFileChannel *)self readWithJavaNioByteBufferArray:a3 withInt:0 withInt:v4];
}

- (int64_t)writeWithJavaNioByteBufferArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaNioChannelsFileChannel *)self writeWithJavaNioByteBufferArray:a3 withInt:0 withInt:v4];
}

@end