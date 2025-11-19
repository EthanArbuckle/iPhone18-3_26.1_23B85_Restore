@interface CRXUDispatchSemaphore
- (BOOL)waitFor:(double)a3;
- (CRXUDispatchSemaphore)initWithValue:(unint64_t)a3;
@end

@implementation CRXUDispatchSemaphore

- (CRXUDispatchSemaphore)initWithValue:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = CRXUDispatchSemaphore;
  v4 = [(CRXUDispatchSemaphore *)&v8 init];
  if (v4)
  {
    v5 = dispatch_semaphore_create(a3);
    sem = v4->_sem;
    v4->_sem = v5;
  }

  return v4;
}

- (BOOL)waitFor:(double)a3
{
  sem = self->_sem;
  v4 = dispatch_time(0, (a3 * 1000000000.0));
  return dispatch_semaphore_wait(sem, v4) == 0;
}

@end