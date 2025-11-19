@interface NFPendingPromise
- (NFPendingPromise)init;
@end

@implementation NFPendingPromise

- (NFPendingPromise)init
{
  v10.receiver = self;
  v10.super_class = NFPendingPromise;
  v2 = [(NFPendingPromise *)&v10 init];
  if (v2)
  {
    v3 = [NFPromise alloc];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __24__NFPendingPromise_init__block_invoke;
    v8[3] = &unk_27997DA10;
    v4 = v2;
    v9 = v4;
    v5 = [(NFPromise *)v3 initWithResolver:v8];
    promise = v4->_promise;
    v4->_promise = v5;
  }

  return v2;
}

void __24__NFPendingPromise_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x25F880B10](a2);
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  v9 = MEMORY[0x25F880B10](v5);
  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  *(v10 + 24) = v9;
}

@end