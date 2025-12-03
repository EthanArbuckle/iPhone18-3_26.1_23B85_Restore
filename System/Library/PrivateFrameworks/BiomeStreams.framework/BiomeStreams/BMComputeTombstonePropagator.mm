@interface BMComputeTombstonePropagator
- (BMComputeTombstonePropagator)initWithStreamIdentifier:(id)identifier domain:(unint64_t)domain user:(unsigned int)user;
- (id)computeSource;
- (void)didWriteTombstone:(id)tombstone timestamp:(double)timestamp account:(id)account remoteName:(id)name;
@end

@implementation BMComputeTombstonePropagator

- (id)computeSource
{
  computeSource = self->_computeSource;
  if (!computeSource)
  {
    v4 = [BMComputeSourceClient alloc];
    v5 = [(BMComputeSourceClient *)v4 initWithStreamIdentifier:self->_streamIdentifier domain:self->_domain useCase:*MEMORY[0x1E698E950] user:self->_user];
    v6 = self->_computeSource;
    self->_computeSource = v5;

    computeSource = self->_computeSource;
  }

  return computeSource;
}

- (BMComputeTombstonePropagator)initWithStreamIdentifier:(id)identifier domain:(unint64_t)domain user:(unsigned int)user
{
  identifierCopy = identifier;
  if (([identifierCopy hasSuffix:@":tombstones"] & 1) == 0)
  {
    v9 = [identifierCopy stringByAppendingString:@":tombstones"];

    identifierCopy = v9;
  }

  v13.receiver = self;
  v13.super_class = BMComputeTombstonePropagator;
  v10 = [(BMComputeTombstonePropagator *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_streamIdentifier, identifierCopy);
    v11->_domain = domain;
    v11->_user = user;
  }

  return v11;
}

- (void)didWriteTombstone:(id)tombstone timestamp:(double)timestamp account:(id)account remoteName:(id)name
{
  nameCopy = name;
  accountCopy = account;
  tombstoneCopy = tombstone;
  computeSource = [(BMComputeTombstonePropagator *)self computeSource];
  [computeSource sendEvent:tombstoneCopy account:accountCopy remoteName:nameCopy timestamp:0 signpostID:0 sendFullEvent:timestamp];
}

@end