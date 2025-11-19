@interface COClusterAssertion
+ (id)assertionForCluster:(id)a3 delegate:(id)a4;
- (COClusterAssertionDelegate)delegate;
- (id)_initWithCluster:(id)a3 delegate:(id)a4;
- (void)_notifyInvalidated;
- (void)dealloc;
@end

@implementation COClusterAssertion

- (id)_initWithCluster:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = COClusterAssertion;
  v9 = [(COClusterAssertion *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_cluster, a3);
    objc_storeWeak(p_isa + 1, v8);
  }

  return p_isa;
}

+ (id)assertionForCluster:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithCluster:v7 delegate:v6];

  return v8;
}

- (void)dealloc
{
  [(COClusterAssertion *)self _notifyInvalidated];
  v3.receiver = self;
  v3.super_class = COClusterAssertion;
  [(COClusterAssertion *)&v3 dealloc];
}

- (void)_notifyInvalidated
{
  v3 = [(COClusterAssertion *)self delegate];
  if (v3)
  {
    v5 = v3;
    v4 = [(COClusterAssertion *)self cluster];
    [v5 didInvalidateAssertionForCluster:v4];

    v3 = v5;
  }
}

- (COClusterAssertionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end