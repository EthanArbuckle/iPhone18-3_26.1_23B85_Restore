@interface BufferInfo
- (BufferInfo)initWithSize:(unint64_t)size usage:(unint64_t)usage;
@end

@implementation BufferInfo

- (BufferInfo)initWithSize:(unint64_t)size usage:(unint64_t)usage
{
  v7.receiver = self;
  v7.super_class = BufferInfo;
  result = [(BufferInfo *)&v7 init];
  if (result)
  {
    result->_size = size;
    result->_usage = usage;
  }

  return result;
}

@end