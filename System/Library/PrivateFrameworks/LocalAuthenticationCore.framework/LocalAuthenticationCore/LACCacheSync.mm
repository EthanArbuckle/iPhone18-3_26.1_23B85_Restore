@interface LACCacheSync
- (LACCacheSync)initWithTimeout:(double)timeout block:(id)block;
- (id)valueWithParameter:(id)parameter error:(id *)error;
@end

@implementation LACCacheSync

- (LACCacheSync)initWithTimeout:(double)timeout block:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = LACCacheSync;
  v7 = [(LACCache *)&v11 initWithTimeout:timeout];
  if (v7)
  {
    v8 = _Block_copy(blockCopy);
    block = v7->_block;
    v7->_block = v8;
  }

  return v7;
}

- (id)valueWithParameter:(id)parameter error:(id *)error
{
  parameterCopy = parameter;
  v6 = [(LACCache *)self cachedValueWithParameter:parameterCopy];
  if (!v6)
  {
    v6 = (*(self->_block + 2))();
    [(LACCache *)self setCachedValue:v6 withParameter:parameterCopy];
  }

  v7 = v6;

  return v7;
}

@end