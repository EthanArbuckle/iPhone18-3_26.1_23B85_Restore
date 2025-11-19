@interface AMSPromise
@end

@implementation AMSPromise

void __47__AMSPromise_PassKit__pk_addQueue_finishBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AMSPromise_PassKit__pk_addQueue_finishBlock___block_invoke_2;
  block[3] = &unk_1E79C44F0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

@end