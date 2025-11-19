@interface BMComputeTombstonePropagator
- (BMComputeTombstonePropagator)initWithStreamIdentifier:(id)a3 domain:(unint64_t)a4 user:(unsigned int)a5;
- (id)computeSource;
- (void)didWriteTombstone:(id)a3 timestamp:(double)a4 account:(id)a5 remoteName:(id)a6;
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

- (BMComputeTombstonePropagator)initWithStreamIdentifier:(id)a3 domain:(unint64_t)a4 user:(unsigned int)a5
{
  v8 = a3;
  if (([v8 hasSuffix:@":tombstones"] & 1) == 0)
  {
    v9 = [v8 stringByAppendingString:@":tombstones"];

    v8 = v9;
  }

  v13.receiver = self;
  v13.super_class = BMComputeTombstonePropagator;
  v10 = [(BMComputeTombstonePropagator *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_streamIdentifier, v8);
    v11->_domain = a4;
    v11->_user = a5;
  }

  return v11;
}

- (void)didWriteTombstone:(id)a3 timestamp:(double)a4 account:(id)a5 remoteName:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(BMComputeTombstonePropagator *)self computeSource];
  [v13 sendEvent:v12 account:v11 remoteName:v10 timestamp:0 signpostID:0 sendFullEvent:a4];
}

@end