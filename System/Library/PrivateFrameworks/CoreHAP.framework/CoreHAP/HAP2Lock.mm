@interface HAP2Lock
+ (id)lockWithName:(id)name;
+ (id)new;
- (HAP2Lock)init;
- (HAP2Lock)initWithLock:(id)lock name:(id)name;
- (NSString)name;
- (void)performBlock:(id)block;
@end

@implementation HAP2Lock

- (void)performBlock:(id)block
{
  blockCopy = block;
  internalLock = [(HAP2Lock *)self internalLock];
  [internalLock lock];

  [(HAP2Lock *)self _performBlock:blockCopy allowRecursive:0];
  internalLock2 = [(HAP2Lock *)self internalLock];
  [internalLock2 unlock];
}

- (NSString)name
{
  internalLock = [(HAP2Lock *)self internalLock];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    internalLock2 = [(HAP2Lock *)self internalLock];
    name = [internalLock2 name];
  }

  else
  {
    name = 0;
  }

  return name;
}

- (HAP2Lock)initWithLock:(id)lock name:(id)name
{
  lockCopy = lock;
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = HAP2Lock;
  v9 = [(HAP2Lock *)&v11 init];
  if (v9)
  {
    if (nameCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [lockCopy setName:nameCopy];
    }

    objc_storeStrong(&v9->_internalLock, lock);
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

+ (id)lockWithName:(id)name
{
  nameCopy = name;
  v4 = objc_opt_new();
  v5 = [objc_alloc(objc_opt_class()) initWithLock:v4 name:nameCopy];

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