@interface NSOutputStream
- (int)vcp_writeBuffer:(const void *)buffer ofLength:(unint64_t)length;
@end

@implementation NSOutputStream

- (int)vcp_writeBuffer:(const void *)buffer ofLength:(unint64_t)length
{
  if ([(NSOutputStream *)self write:buffer maxLength:?]== length)
  {
    return 0;
  }

  else
  {
    return -20;
  }
}

@end