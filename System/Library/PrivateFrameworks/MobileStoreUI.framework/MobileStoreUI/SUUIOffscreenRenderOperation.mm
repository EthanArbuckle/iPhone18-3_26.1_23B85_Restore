@interface SUUIOffscreenRenderOperation
+ (void)preheatOffscreenRenderOperations;
- (SUUIOffscreenRenderOperation)init;
- (UIImage)outputImage;
- (id)createLayerBlock;
- (void)main;
- (void)setCreateLayerBlock:(id)block;
@end

@implementation SUUIOffscreenRenderOperation

- (SUUIOffscreenRenderOperation)init
{
  v6.receiver = self;
  v6.super_class = SUUIOffscreenRenderOperation;
  v2 = [(SUUIOffscreenRenderOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIOffscreenRenderOperation.accessQueu", MEMORY[0x277D85CD8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

- (void)main
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkIOSurfaceWidth(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"SUUIOffscreenRenderOperation.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

- (id)createLayerBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__49;
  v10 = __Block_byref_object_dispose__49;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SUUIOffscreenRenderOperation_createLayerBlock__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__SUUIOffscreenRenderOperation_createLayerBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 256) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (UIImage)outputImage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__15;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SUUIOffscreenRenderOperation_outputImage__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setCreateLayerBlock:(id)block
{
  blockCopy = block;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SUUIOffscreenRenderOperation_setCreateLayerBlock___block_invoke;
  v7[3] = &unk_2798F6030;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_barrier_async(accessQueue, v7);
}

uint64_t __52__SUUIOffscreenRenderOperation_setCreateLayerBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

+ (void)preheatOffscreenRenderOperations
{
  v2 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v2, &__block_literal_global_34);
}

void __64__SUUIOffscreenRenderOperation_preheatOffscreenRenderOperations__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  NSLog(&cfstr_Suuioffscreenr_2.isa, 2);
  v1 = 1;
  v2 = CACurrentMediaTime();
  do
  {
    v3 = v1;
    v14 = 0;
    v15 = 0;
    _SUUIOffscreenRenderOperationPopRenderingContext(&v15, &v14);
    v4 = v15;
    v5 = v14;
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      [v0 addObject:v4];
      [v0 addObject:v5];
    }

    v1 = 0;
  }

  while ((v3 & 1) != 0);
  if ([v0 count] >= 2)
  {
    v7 = 0;
    do
    {
      v8 = [v0 objectAtIndex:v7];
      v9 = [v0 objectAtIndex:v7 + 1];
      _SUUIOffscreenRenderOperationPushRenderingContext(v8, v9);

      v10 = [v0 count];
      v11 = v7 + 3;
      v7 += 2;
    }

    while (v11 < v10);
  }

  v12 = CACurrentMediaTime();
  NSLog(&cfstr_Suuioffscreenr_3.isa, 2, v12 - v2);
  v13 = dispatch_get_global_queue(0, 0);
  dispatch_async(v13, &__block_literal_global_24_0);
}

void __64__SUUIOffscreenRenderOperation_preheatOffscreenRenderOperations__block_invoke_2()
{
  NSLog(&cfstr_Suuioffscreenr_4.isa);
  v0 = CACurrentMediaTime();
  IOSurfaceLibrary();
  OpenGLESLibrary();
  v1 = CACurrentMediaTime();
  NSLog(&cfstr_Suuioffscreenr_5.isa, v1 - v0);
}

@end