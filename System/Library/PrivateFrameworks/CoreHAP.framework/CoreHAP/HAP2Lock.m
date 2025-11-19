@interface HAP2Lock
+ (id)lockWithName:(id)a3;
+ (id)new;
- (HAP2Lock)init;
- (HAP2Lock)initWithLock:(id)a3 name:(id)a4;
- (NSString)name;
- (void)performBlock:(id)a3;
@end

@implementation HAP2Lock

- (void)performBlock:(id)a3
{
  v4 = a3;
  v5 = [(HAP2Lock *)self internalLock];
  [v5 lock];

  [(HAP2Lock *)self _performBlock:v4 allowRecursive:0];
  v6 = [(HAP2Lock *)self internalLock];
  [v6 unlock];
}

- (NSString)name
{
  v3 = [(HAP2Lock *)self internalLock];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HAP2Lock *)self internalLock];
    v6 = [v5 name];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HAP2Lock)initWithLock:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = HAP2Lock;
  v9 = [(HAP2Lock *)&v11 init];
  if (v9)
  {
    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v7 setName:v8];
    }

    objc_storeStrong(&v9->_internalLock, a3);
    atomic_store(0, &v9->_lockCount);
  }

  return v9;
}

- (HAP2Lock)init
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

+ (id)lockWithName:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [objc_alloc(objc_opt_class()) initWithLock:v4 name:v3];

  return v5;
}

+ (id)new
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