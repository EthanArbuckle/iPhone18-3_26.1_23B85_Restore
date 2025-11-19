@interface DYMTLIndirectCommandBufferInfo
- (DYMTLIndirectCommandBufferInfo)initWithMaxCommandCount:(unint64_t)a3 options:(unint64_t)a4 maxKernelThreadgroupMemoryBindCount:(unint64_t)a5;
@end

@implementation DYMTLIndirectCommandBufferInfo

- (DYMTLIndirectCommandBufferInfo)initWithMaxCommandCount:(unint64_t)a3 options:(unint64_t)a4 maxKernelThreadgroupMemoryBindCount:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = DYMTLIndirectCommandBufferInfo;
  result = [(DYMTLIndirectCommandBufferInfo *)&v9 init];
  if (result)
  {
    result->_maxCommandCount = a3;
    result->_options = a4;
    result->_maxKernelThreadgroupMemoryBindCount = a5;
  }

  return result;
}

@end