@interface DYMTLIndirectCommandBufferInfo
- (DYMTLIndirectCommandBufferInfo)initWithMaxCommandCount:(unint64_t)count options:(unint64_t)options maxKernelThreadgroupMemoryBindCount:(unint64_t)bindCount;
@end

@implementation DYMTLIndirectCommandBufferInfo

- (DYMTLIndirectCommandBufferInfo)initWithMaxCommandCount:(unint64_t)count options:(unint64_t)options maxKernelThreadgroupMemoryBindCount:(unint64_t)bindCount
{
  v9.receiver = self;
  v9.super_class = DYMTLIndirectCommandBufferInfo;
  result = [(DYMTLIndirectCommandBufferInfo *)&v9 init];
  if (result)
  {
    result->_maxCommandCount = count;
    result->_options = options;
    result->_maxKernelThreadgroupMemoryBindCount = bindCount;
  }

  return result;
}

@end