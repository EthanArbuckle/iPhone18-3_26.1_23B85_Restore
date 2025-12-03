@interface DOCPostLaunchBuffer
+ (DOCPostLaunchBuffer)shared;
- (DOCPostLaunchBuffer)initWithLabel:(id)label targetQueue:(id)queue;
- (void)performAfterLaunchAlwaysAsync:(BOOL)async block:(id)block;
@end

@implementation DOCPostLaunchBuffer

+ (DOCPostLaunchBuffer)shared
{
  if (shared_onceToken != -1)
  {
    +[DOCPostLaunchBuffer shared];
  }

  v3 = shared_sharedInstance;

  return v3;
}

uint64_t __29__DOCPostLaunchBuffer_shared__block_invoke()
{
  shared_sharedInstance = [(DOCOperationBuffer *)[DOCPostLaunchBuffer alloc] initWithLabel:@"postLaunch"];

  return MEMORY[0x2821F96F8]();
}

- (DOCPostLaunchBuffer)initWithLabel:(id)label targetQueue:(id)queue
{
  v9.receiver = self;
  v9.super_class = DOCPostLaunchBuffer;
  v4 = [(DOCOperationBuffer *)&v9 initWithLabel:label targetQueue:queue];
  if (v4)
  {
    v5 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__DOCPostLaunchBuffer_initWithLabel_targetQueue___block_invoke;
    block[3] = &unk_278F9B408;
    v8 = v4;
    dispatch_after(v5, MEMORY[0x277D85CD0], block);
  }

  return v4;
}

- (void)performAfterLaunchAlwaysAsync:(BOOL)async block:(id)block
{
  blockCopy = block;
  v9 = blockCopy;
  if (async || (v7 = -[DOCOperationBuffer locked](self, "locked"), blockCopy = v9, v7) || (v8 = [MEMORY[0x277CCACC8] isMainThread], blockCopy = v9, !v8))
  {
    [(DOCOperationBuffer *)self buffer:blockCopy];
  }

  else
  {
    v9[2](v9);
  }
}

@end