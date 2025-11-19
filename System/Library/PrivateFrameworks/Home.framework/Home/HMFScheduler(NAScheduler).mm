@interface HMFScheduler(NAScheduler)
- (id)afterDelay:()NAScheduler performBlock:;
- (id)performCancelableBlock:()NAScheduler;
@end

@implementation HMFScheduler(NAScheduler)

- (id)afterDelay:()NAScheduler performBlock:
{
  v6 = a4;
  objc_initWeak(&location, a1);
  v7 = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HMFScheduler_NAScheduler__afterDelay_performBlock___block_invoke;
  v11[3] = &unk_277DF9610;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v12 = v8;
  v9 = [v7 afterDelay:v11 performBlock:a2];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

- (id)performCancelableBlock:()NAScheduler
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D2C8C8]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HMFScheduler_NAScheduler__performCancelableBlock___block_invoke;
  v15[3] = &unk_277DF2AD8;
  v17 = v4;
  v6 = v5;
  v16 = v6;
  v7 = v4;
  v8 = [a1 performBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HMFScheduler_NAScheduler__performCancelableBlock___block_invoke_2;
  v13[3] = &unk_277DF3D38;
  v14 = v8;
  v9 = v8;
  [v6 addCancelationBlock:v13];
  v10 = v14;
  v11 = v6;

  return v6;
}

@end