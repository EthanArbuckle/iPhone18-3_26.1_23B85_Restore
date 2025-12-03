@interface COClusterAssertion
+ (id)assertionForCluster:(id)cluster delegate:(id)delegate;
- (COClusterAssertionDelegate)delegate;
- (id)_initWithCluster:(id)cluster delegate:(id)delegate;
- (void)_notifyInvalidated;
- (void)dealloc;
@end

@implementation COClusterAssertion

- (id)_initWithCluster:(id)cluster delegate:(id)delegate
{
  clusterCopy = cluster;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = COClusterAssertion;
  v9 = [(COClusterAssertion *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_cluster, cluster);
    objc_storeWeak(p_isa + 1, delegateCopy);
  }

  return p_isa;
}

+ (id)assertionForCluster:(id)cluster delegate:(id)delegate
{
  delegateCopy = delegate;
  clusterCopy = cluster;
  v8 = [[self alloc] _initWithCluster:clusterCopy delegate:delegateCopy];

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
  delegate = [(COClusterAssertion *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    cluster = [(COClusterAssertion *)self cluster];
    [v5 didInvalidateAssertionForCluster:cluster];

    delegate = v5;
  }
}

- (COClusterAssertionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end