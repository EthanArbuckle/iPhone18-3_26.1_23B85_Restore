@interface HAP2Cancelable
+ (HAP2Cancelable)cancelableWithBlock:(id)a3;
+ (HAP2Cancelable)new;
+ (id)ignore;
- (HAP2Cancelable)init;
- (HAP2Cancelable)initWithBlock:(id)a3;
- (void)cancelWithError:(id)a3;
@end

@implementation HAP2Cancelable

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  if ((atomic_exchange(&self->_called, 1u) & 1) == 0)
  {
    v6 = v4;
    v5 = [(HAP2Cancelable *)self block];
    if (v5)
    {
      [(HAP2Cancelable *)self setBlock:0];
      (v5)[2](v5, v6);
    }

    v4 = v6;
  }
}

- (HAP2Cancelable)initWithBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HAP2Cancelable;
  v5 = [(HAP2Cancelable *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_called = 0;
    v7 = MEMORY[0x231885210](v4);
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
  block[4] = a1;
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

+ (HAP2Cancelable)cancelableWithBlock:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBlock:v3];

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