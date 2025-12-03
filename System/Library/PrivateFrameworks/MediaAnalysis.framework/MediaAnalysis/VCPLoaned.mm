@interface VCPLoaned
- (VCPLoaned)initWithObject:(id)object fromPool:(id)pool;
- (void)dealloc;
@end

@implementation VCPLoaned

- (VCPLoaned)initWithObject:(id)object fromPool:(id)pool
{
  objectCopy = object;
  poolCopy = pool;
  v12.receiver = self;
  v12.super_class = VCPLoaned;
  v9 = [(VCPLoaned *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_object, object);
    objc_storeWeak(&v10->_pool, poolCopy);
  }

  return v10;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_pool);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained returnObject:self->_object];
  }

  v5.receiver = self;
  v5.super_class = VCPLoaned;
  [(VCPLoaned *)&v5 dealloc];
}

@end