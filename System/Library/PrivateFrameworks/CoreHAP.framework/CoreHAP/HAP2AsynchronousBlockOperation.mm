@interface HAP2AsynchronousBlockOperation
- (HAP2AsynchronousBlockOperation)init;
- (HAP2AsynchronousBlockOperation)initWithBlock:(id)a3;
- (HAP2AsynchronousBlockOperation)initWithName:(id)a3;
- (HAP2AsynchronousBlockOperation)initWithName:(id)a3 activity:(id)a4;
- (HAP2AsynchronousBlockOperation)initWithName:(id)a3 optionalActivity:(id)a4;
- (void)initWithName:(uint64_t)a3 optionalActivity:(void *)a4 block:;
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

- (void)initWithName:(uint64_t)a3 optionalActivity:(void *)a4 block:
{
  v7 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = HAP2AsynchronousBlockOperation;
    v8 = objc_msgSendSuper2(&v12, sel_initWithName_optionalActivity_, a2, a3);
    if (v8)
    {
      v9 = MEMORY[0x231885210](v7);
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

- (HAP2AsynchronousBlockOperation)initWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(HAP2AsynchronousBlockOperation *)self initWithName:v6 block:v4];

  return v7;
}

- (HAP2AsynchronousBlockOperation)initWithName:(id)a3 optionalActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (HAP2AsynchronousBlockOperation)initWithName:(id)a3 activity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (HAP2AsynchronousBlockOperation)initWithName:(id)a3
{
  v4 = a3;
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