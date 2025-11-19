@interface DOCPostLaunchBuffer
+ (DOCPostLaunchBuffer)shared;
- (DOCPostLaunchBuffer)initWithLabel:(id)a3 targetQueue:(id)a4;
- (void)performAfterLaunchAlwaysAsync:(BOOL)a3 block:(id)a4;
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

- (DOCPostLaunchBuffer)initWithLabel:(id)a3 targetQueue:(id)a4
{
  v9.receiver = self;
  v9.super_class = DOCPostLaunchBuffer;
  v4 = [(DOCOperationBuffer *)&v9 initWithLabel:a3 targetQueue:a4];
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

- (void)performAfterLaunchAlwaysAsync:(BOOL)a3 block:(id)a4
{
  v6 = a4;
  v9 = v6;
  if (a3 || (v7 = -[DOCOperationBuffer locked](self, "locked"), v6 = v9, v7) || (v8 = [MEMORY[0x277CCACC8] isMainThread], v6 = v9, !v8))
  {
    [(DOCOperationBuffer *)self buffer:v6];
  }

  else
  {
    v9[2](v9);
  }
}

@end