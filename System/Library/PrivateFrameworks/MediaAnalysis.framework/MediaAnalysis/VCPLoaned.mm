@interface VCPLoaned
- (VCPLoaned)initWithObject:(id)a3 fromPool:(id)a4;
- (void)dealloc;
@end

@implementation VCPLoaned

- (VCPLoaned)initWithObject:(id)a3 fromPool:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VCPLoaned;
  v9 = [(VCPLoaned *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_object, a3);
    objc_storeWeak(&v10->_pool, v8);
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