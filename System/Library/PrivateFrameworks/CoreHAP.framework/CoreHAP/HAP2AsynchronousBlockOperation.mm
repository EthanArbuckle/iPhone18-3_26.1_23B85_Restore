@interface HAP2AsynchronousBlockOperation
- (HAP2AsynchronousBlockOperation)init;
- (HAP2AsynchronousBlockOperation)initWithBlock:(id)block;
- (HAP2AsynchronousBlockOperation)initWithName:(id)name;
- (HAP2AsynchronousBlockOperation)initWithName:(id)name activity:(id)activity;
- (HAP2AsynchronousBlockOperation)initWithName:(id)name optionalActivity:(id)activity;
- (void)initWithName:(uint64_t)name optionalActivity:(void *)activity block:;
- (void)main;
@end

@implementation HAP2AsynchronousBlockOperation

- (void)main
{
  if (self)
  {
    v4 = self->_block;
    objc_setProperty_nonatomic_copy(self, v3, 0, 280);
  }

  else
  {
    v4 = 0;
  }

  v4[2]();
}

- (void)initWithName:(uint64_t)name optionalActivity:(void *)activity block:
{
  activityCopy = activity;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = HAP2AsynchronousBlockOperation;
    v8 = objc_msgSendSuper2(&v12, sel_initWithName_optionalActivity_, a2, name);
    if (v8)
    {
      v9 = MEMORY[0x231885210](activityCopy);
      v10 = v8[35];
      v8[35] = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HAP2AsynchronousBlockOperation)initWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(HAP2AsynchronousBlockOperation *)self initWithName:v6 block:blockCopy];

  return v7;
}

- (HAP2AsynchronousBlockOperation)initWithName:(id)name optionalActivity:(id)activity
{
  nameCopy = name;
  activityCopy = activity;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (HAP2AsynchronousBlockOperation)initWithName:(id)name activity:(id)activity
{
  nameCopy = name;
  activityCopy = activity;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (HAP2AsynchronousBlockOperation)initWithName:(id)name
{
  nameCopy = name;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HAP2AsynchronousBlockOperation)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end