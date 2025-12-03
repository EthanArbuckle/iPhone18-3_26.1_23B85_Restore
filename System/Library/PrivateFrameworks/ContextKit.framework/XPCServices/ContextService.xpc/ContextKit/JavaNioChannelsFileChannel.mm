@interface JavaNioChannelsFileChannel
- (int64_t)readWithJavaNioByteBufferArray:(id)array;
- (int64_t)writeWithJavaNioByteBufferArray:(id)array;
@end

@implementation JavaNioChannelsFileChannel

- (int64_t)readWithJavaNioByteBufferArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaNioChannelsFileChannel *)self readWithJavaNioByteBufferArray:array withInt:0 withInt:v4];
}

- (int64_t)writeWithJavaNioByteBufferArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaNioChannelsFileChannel *)self writeWithJavaNioByteBufferArray:array withInt:0 withInt:v4];
}

@end