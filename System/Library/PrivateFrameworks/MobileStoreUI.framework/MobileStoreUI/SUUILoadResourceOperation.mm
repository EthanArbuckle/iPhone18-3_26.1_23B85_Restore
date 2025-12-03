@interface SUUILoadResourceOperation
- (SUUIClientContext)clientContext;
- (SUUILoadResourceOperation)initWithResourceRequest:(id)request;
- (id)_initSUUILoadResourceOperation;
- (id)outputBlock;
- (void)cancel;
- (void)main;
- (void)setClientContext:(id)context;
- (void)setOutputBlock:(id)block;
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

- (SUUILoadResourceOperation)initWithResourceRequest:(id)request
{
  requestCopy = request;
  _initSUUILoadResourceOperation = [(SUUILoadResourceOperation *)self _initSUUILoadResourceOperation];
  if (_initSUUILoadResourceOperation)
  {
    v6 = [requestCopy copy];
    request = _initSUUILoadResourceOperation->_request;
    _initSUUILoadResourceOperation->_request = v6;
  }

  return _initSUUILoadResourceOperation;
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

- (void)setClientContext:(id)context
{
  contextCopy = context;
  [(NSLock *)self->_lock lock];
  if (self->_clientContext != contextCopy)
  {
    objc_storeStrong(&self->_clientContext, context);
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  [(NSLock *)self->_lock lock];
  if (self->_outputBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)main
{
  outputBlock = [(SUUILoadResourceOperation *)self outputBlock];
  if (outputBlock)
  {
    v3 = outputBlock;
    outputBlock[2](outputBlock, 0, 0);
    outputBlock = v3;
  }
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = SUUILoadResourceOperation;
  [(SUUILoadResourceOperation *)&v2 cancel];
}

@end