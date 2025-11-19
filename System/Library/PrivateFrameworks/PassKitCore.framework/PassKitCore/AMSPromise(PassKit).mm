@interface AMSPromise(PassKit)
- (void)pk_addQueue:()PassKit finishBlock:;
@end

@implementation AMSPromise(PassKit)

- (void)pk_addQueue:()PassKit finishBlock:
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__AMSPromise_PassKit__pk_addQueue_finishBlock___block_invoke;
  v10[3] = &unk_1E79D2640;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [a1 addFinishBlock:v10];
}

@end