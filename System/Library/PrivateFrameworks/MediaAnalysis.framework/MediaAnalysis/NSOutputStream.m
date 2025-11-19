@interface NSOutputStream
- (int)vcp_writeBuffer:(const void *)a3 ofLength:(unint64_t)a4;
@end

@implementation NSOutputStream

- (int)vcp_writeBuffer:(const void *)a3 ofLength:(unint64_t)a4
{
  if ([(NSOutputStream *)self write:a3 maxLength:?]== a4)
  {
    return 0;
  }

  else
  {
    return -20;
  }
}

@end