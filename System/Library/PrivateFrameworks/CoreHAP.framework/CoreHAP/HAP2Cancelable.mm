@interface HAP2Cancelable
+ (HAP2Cancelable)cancelableWithBlock:(id)block;
+ (HAP2Cancelable)new;
+ (id)ignore;
- (HAP2Cancelable)init;
- (HAP2Cancelable)initWithBlock:(id)block;
- (void)cancelWithError:(id)error;
@end

@implementation HAP2Cancelable

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  if ((atomic_exchange(&self->_called, 1u) & 1) == 0)
  {
    v6 = errorCopy;
    block = [(HAP2Cancelable *)self block];
    if (block)
    {
      [(HAP2Cancelable *)self setBlock:0];
      (block)[2](block, v6);
    }

    errorCopy = v6;
  }
}

- (HAP2Cancelable)initWithBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = HAP2Cancelable;
  v5 = [(HAP2Cancelable *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_called = 0;
    v7 = MEMORY[0x231885210](blockCopy);
    block = v6->_block;
    v6->_block = v7;
  }

  return v6;
}

- (HAP2Cancelable)init
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

+ (id)ignore
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__HAP2Cancelable_ignore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (ignore_onceToken != -1)
  {
    dispatch_once(&ignore_onceToken, block);
  }

  v2 = ignore_cancelable;

  return v2;
}

uint64_t __24__HAP2Cancelable_ignore__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  ignore_cancelable = [objc_alloc(objc_opt_class()) initWithBlock:0];

  return MEMORY[0x2821F96F8]();
}

+ (HAP2Cancelable)cancelableWithBlock:(id)block
{
  blockCopy = block;
  v4 = [objc_alloc(objc_opt_class()) initWithBlock:blockCopy];

  return v4;
}

+ (HAP2Cancelable)new
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