@interface CRXUDispatchSemaphore
- (BOOL)waitFor:(double)for;
- (CRXUDispatchSemaphore)initWithValue:(unint64_t)value;
@end

@implementation CRXUDispatchSemaphore

- (CRXUDispatchSemaphore)initWithValue:(unint64_t)value
{
  v8.receiver = self;
  v8.super_class = CRXUDispatchSemaphore;
  v4 = [(CRXUDispatchSemaphore *)&v8 init];
  if (v4)
  {
    v5 = dispatch_semaphore_create(value);
    sem = v4->_sem;
    v4->_sem = v5;
  }

  return v4;
}

- (BOOL)waitFor:(double)for
{
  sem = self->_sem;
  v4 = dispatch_time(0, (for * 1000000000.0));
  return dispatch_semaphore_wait(sem, v4) == 0;
}

@end