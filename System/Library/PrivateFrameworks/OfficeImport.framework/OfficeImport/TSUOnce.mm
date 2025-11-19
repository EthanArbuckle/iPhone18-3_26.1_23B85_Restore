@interface TSUOnce
- (TSUOnce)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)performBlockOnce:(id)a3;
@end

@implementation TSUOnce

- (TSUOnce)init
{
  v6.receiver = self;
  v6.super_class = TSUOnce;
  v2 = [(TSUOnce *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iwork.TSUOnce", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TSUOnce);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __24__TSUOnce_copyWithZone___block_invoke;
  v9[3] = &unk_2799C68A8;
  v6 = v4;
  v10 = v6;
  v11 = self;
  dispatch_sync(queue, v9);
  v7 = v6;

  return v7;
}

- (void)performBlockOnce:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__TSUOnce_performBlockOnce___block_invoke;
  v7[3] = &unk_2799C6EB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __28__TSUOnce_performBlockOnce___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 16) & 1) == 0)
  {
    *(v1 + 16) = 1;
    return (*(*(result + 40) + 16))();
  }

  return result;
}

@end