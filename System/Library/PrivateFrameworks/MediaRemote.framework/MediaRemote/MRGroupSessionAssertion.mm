@interface MRGroupSessionAssertion
- (MRGroupSessionAssertion)initWithCancellationHandler:(id)a3;
- (void)cancel;
- (void)dealloc;
@end

@implementation MRGroupSessionAssertion

- (MRGroupSessionAssertion)initWithCancellationHandler:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MRGroupSessionAssertion;
  v5 = [(MRGroupSessionAssertion *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = MEMORY[0x1A58E3570](v4);
    handler = v6->_handler;
    v6->_handler = v7;
  }

  return v6;
}

- (void)dealloc
{
  [(MRGroupSessionAssertion *)self cancel];
  v3.receiver = self;
  v3.super_class = MRGroupSessionAssertion;
  [(MRGroupSessionAssertion *)&v3 dealloc];
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  cancelled = self->_cancelled;
  self->_cancelled = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (!cancelled)
  {
    v4 = *(self->_handler + 2);

    v4();
  }
}

@end