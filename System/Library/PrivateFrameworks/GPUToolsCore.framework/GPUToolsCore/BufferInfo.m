@interface BufferInfo
- (BufferInfo)initWithSize:(unint64_t)a3 usage:(unint64_t)a4;
@end

@implementation BufferInfo

- (BufferInfo)initWithSize:(unint64_t)a3 usage:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = BufferInfo;
  result = [(BufferInfo *)&v7 init];
  if (result)
  {
    result->_size = a3;
    result->_usage = a4;
  }

  return result;
}

@end