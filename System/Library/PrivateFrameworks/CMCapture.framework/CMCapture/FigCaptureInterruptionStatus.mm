@interface FigCaptureInterruptionStatus
- (FigCaptureInterruptionStatus)initWithReason:(int)reason systemWide:(BOOL)wide delegate:(id)delegate context:(id)context;
- (id)description;
- (void)dealloc;
- (void)resolve;
- (void)setDelegate:(id)delegate;
@end

@implementation FigCaptureInterruptionStatus

- (FigCaptureInterruptionStatus)initWithReason:(int)reason systemWide:(BOOL)wide delegate:(id)delegate context:(id)context
{
  v13.receiver = self;
  v13.super_class = FigCaptureInterruptionStatus;
  v10 = [(FigCaptureInterruptionStatus *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_reason = reason;
    v10->_systemWide = wide;
    objc_storeWeak(&v10->_delegate, delegate);
    v11->_context = context;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureInterruptionStatus;
  [(FigCaptureInterruptionStatus *)&v3 dealloc];
}

- (id)description
{
  if (self->_resolved)
  {
    v2 = " RESOLVED";
  }

  else
  {
    v2 = "";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"[Interrupt %p:%s reason=%d systemWide=%d delegate=%p context=%@]", self, v2, self->_reason, self->_systemWide, objc_loadWeak(&self->_delegate), self->_context];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  if (!delegate)
  {

    self->_context = 0;
  }
}

- (void)resolve
{
  self->_resolved = 1;
  Weak = objc_loadWeak(&self->_delegate);

  [Weak interruptionResolved:self];
}

@end