@interface SUUIURLConnectionRequest
- (void)startWithConnectionResponseBlock:(id)a3;
@end

@implementation SUUIURLConnectionRequest

- (void)startWithConnectionResponseBlock:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  dispatch_async(v5, &__block_literal_global_47);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SUUIURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_2;
  v9[3] = &unk_2798FC2F0;
  v10 = v5;
  v11 = v4;
  v8.receiver = self;
  v8.super_class = SUUIURLConnectionRequest;
  v6 = v4;
  v7 = v5;
  [(SSURLConnectionRequest *)&v8 startWithConnectionResponseBlock:v9];
}

void __61__SUUIURLConnectionRequest_startWithConnectionResponseBlock___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D6A608] object:0];
}

void __61__SUUIURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  dispatch_async(*(a1 + 32), &__block_literal_global_2);
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void __61__SUUIURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_3()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D6A610] object:0];
}

@end