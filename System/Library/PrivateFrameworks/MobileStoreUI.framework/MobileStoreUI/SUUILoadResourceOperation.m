@interface SUUILoadResourceOperation
- (SUUIClientContext)clientContext;
- (SUUILoadResourceOperation)initWithResourceRequest:(id)a3;
- (id)_initSUUILoadResourceOperation;
- (id)outputBlock;
- (void)cancel;
- (void)main;
- (void)setClientContext:(id)a3;
- (void)setOutputBlock:(id)a3;
@end

@implementation SUUILoadResourceOperation

- (id)_initSUUILoadResourceOperation
{
  v6.receiver = self;
  v6.super_class = SUUILoadResourceOperation;
  v2 = [(SUUILoadResourceOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v2->_lock;
    v2->_lock = v3;
  }

  return v2;
}

- (SUUILoadResourceOperation)initWithResourceRequest:(id)a3
{
  v4 = a3;
  v5 = [(SUUILoadResourceOperation *)self _initSUUILoadResourceOperation];
  if (v5)
  {
    v6 = [v4 copy];
    request = v5->_request;
    v5->_request = v6;
  }

  return v5;
}

- (SUUIClientContext)clientContext
{
  [(NSLock *)self->_lock lock];
  v3 = self->_clientContext;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (id)outputBlock
{
  [(NSLock *)self->_lock lock];
  v3 = [self->_outputBlock copy];
  [(NSLock *)self->_lock unlock];
  v4 = _Block_copy(v3);

  return v4;
}

- (void)setClientContext:(id)a3
{
  v5 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_clientContext != v5)
  {
    objc_storeStrong(&self->_clientContext, a3);
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setOutputBlock:(id)a3
{
  v6 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_outputBlock != v6)
  {
    v4 = [v6 copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)main
{
  v2 = [(SUUILoadResourceOperation *)self outputBlock];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, 0, 0);
    v2 = v3;
  }
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = SUUILoadResourceOperation;
  [(SUUILoadResourceOperation *)&v2 cancel];
}

@end