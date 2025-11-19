@interface BCBrtMonitor
- (BCBrtMonitor)init;
- (void)cancel;
- (void)dealloc;
@end

@implementation BCBrtMonitor

- (BCBrtMonitor)init
{
  v3.receiver = self;
  v3.super_class = BCBrtMonitor;
  result = [(BCBrtMonitor *)&v3 init];
  if (result)
  {
    result->_cancel = 0;
  }

  return result;
}

- (void)dealloc
{
  [(BCBrtMonitor *)self cancel];
  v3.receiver = self;
  v3.super_class = BCBrtMonitor;
  [(BCBrtMonitor *)&v3 dealloc];
}

- (void)cancel
{
  cancel = self->_cancel;
  if (cancel)
  {
    cancel[2](cancel, a2);

    self->_cancel = 0;
  }
}

@end