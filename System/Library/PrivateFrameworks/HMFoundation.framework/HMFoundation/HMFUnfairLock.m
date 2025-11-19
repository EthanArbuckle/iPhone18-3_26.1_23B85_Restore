@interface HMFUnfairLock
+ (id)lockWithOptions:(unint64_t)a3;
- (HMFUnfairLock)initWithOptions:(unint64_t)a3;
- (void)assertNotOwner;
- (void)assertOwner;
- (void)lock;
- (void)performBlock:(id)a3;
- (void)unlock;
@end

@implementation HMFUnfairLock

- (void)lock
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)unlock
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)assertOwner
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)assertNotOwner
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)lockWithOptions:(unint64_t)a3
{
  v3 = off_2786E6508;
  if ((a3 & 2) != 0)
  {
    v3 = &off_2786E6510;
  }

  v4 = [objc_alloc(*v3) initWithOptions:a3];

  return v4;
}

- (HMFUnfairLock)initWithOptions:(unint64_t)a3
{
  v4 = self;
  if ([(HMFUnfairLock *)self isMemberOfClass:objc_opt_class()])
  {
    v5 = [HMFUnfairLock lockWithOptions:a3];
  }

  else
  {
    v9.receiver = v4;
    v9.super_class = HMFUnfairLock;
    v6 = [(HMFUnfairLock *)&v9 init];
    if (v6)
    {
      v6->_options = a3;
    }

    v5 = v6;
    v4 = v5;
  }

  v7 = v5;

  return v7;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self;
    [(HMFUnfairLock *)v5 lock];
    v6[2](v6);
    [(HMFUnfairLock *)v5 unlock];

    v4 = v6;
  }
}

@end