@interface LACCacheSync
- (LACCacheSync)initWithTimeout:(double)a3 block:(id)a4;
- (id)valueWithParameter:(id)a3 error:(id *)a4;
@end

@implementation LACCacheSync

- (LACCacheSync)initWithTimeout:(double)a3 block:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = LACCacheSync;
  v7 = [(LACCache *)&v11 initWithTimeout:a3];
  if (v7)
  {
    v8 = _Block_copy(v6);
    block = v7->_block;
    v7->_block = v8;
  }

  return v7;
}

- (id)valueWithParameter:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(LACCache *)self cachedValueWithParameter:v5];
  if (!v6)
  {
    v6 = (*(self->_block + 2))();
    [(LACCache *)self setCachedValue:v6 withParameter:v5];
  }

  v7 = v6;

  return v7;
}

@end