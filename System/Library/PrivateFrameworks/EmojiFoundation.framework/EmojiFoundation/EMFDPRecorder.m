@interface EMFDPRecorder
- (EMFDPRecorder)initWithEmoji:(id)a3;
- (EMFDPReportingDelegate)delegate;
- (void)setDelegate:(id)a3;
@end

@implementation EMFDPRecorder

- (EMFDPRecorder)initWithEmoji:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = EMFDPRecorder;
  v6 = [(EMFDPRecorder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_emoji, a3);
    v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
    delegateLock = v7->_delegateLock;
    v7->_delegateLock = v8;
  }

  return v7;
}

- (EMFDPReportingDelegate)delegate
{
  [(NSLock *)self->_delegateLock lock];
  v3 = self->_delegate;
  [(NSLock *)self->_delegateLock unlock];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_delegateLock lock];
  delegate = self->_delegate;
  self->_delegate = v4;
  v6 = v4;

  [(NSLock *)self->_delegateLock unlock];
}

@end