@interface CRKCancelableServer
- (CRKCancelableServer)initWithCancelableGenerator:(id)generator;
- (id)makeCountedCancelable;
- (void)decrementClientCount;
- (void)makeCountedCancelable;
- (void)performBlockOnMainThreadIfNeeded:(id)needed;
@end

@implementation CRKCancelableServer

- (CRKCancelableServer)initWithCancelableGenerator:(id)generator
{
  generatorCopy = generator;
  v9.receiver = self;
  v9.super_class = CRKCancelableServer;
  v5 = [(CRKCancelableServer *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D3AAD0](generatorCopy);
    generator = v5->_generator;
    v5->_generator = v6;
  }

  return v5;
}

- (id)makeCountedCancelable
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKCancelableServer *)a2 makeCountedCancelable];
  }

  cachedCancelable = [(CRKCancelableServer *)self cachedCancelable];

  if (!cachedCancelable)
  {
    generator = [(CRKCancelableServer *)self generator];
    v6 = generator[2]();
    [(CRKCancelableServer *)self setCachedCancelable:v6];
  }

  [(CRKCancelableServer *)self setClientCount:[(CRKCancelableServer *)self clientCount]+ 1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__CRKCancelableServer_makeCountedCancelable__block_invoke;
  v9[3] = &unk_278DC10F0;
  v9[4] = self;
  v7 = [CRKBlockCancelable cancelableWithBlock:v9];

  return v7;
}

uint64_t __44__CRKCancelableServer_makeCountedCancelable__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__CRKCancelableServer_makeCountedCancelable__block_invoke_2;
  v3[3] = &unk_278DC10F0;
  v3[4] = v1;
  return [v1 performBlockOnMainThreadIfNeeded:v3];
}

- (void)performBlockOnMainThreadIfNeeded:(id)needed
{
  v3 = MEMORY[0x277CCACC8];
  block = needed;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)decrementClientCount
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CRKCancelableServer.m" lineNumber:66 description:{@"Invalid client count: %ld", objc_msgSend(self, "clientCount")}];
}

- (void)makeCountedCancelable
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(self);
  [currentHandler handleFailureInMethod:self object:a2 file:@"CRKCancelableServer.m" lineNumber:35 description:{@"%@ must be called from the main thread", v4}];
}

@end