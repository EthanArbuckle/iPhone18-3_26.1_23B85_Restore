@interface CAFGetImageArchiveControl
+ (void)load;
- (void)getImageArchiveWithCompletion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFGetImageArchiveControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFGetImageArchiveControl;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABC08])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFGetImageArchiveControl;
  [(CAFControl *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABC08])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFGetImageArchiveControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)getImageArchiveWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__CAFGetImageArchiveControl_getImageArchiveWithCompletion___block_invoke;
  v6[3] = &unk_27890EFF8;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CAFControl *)self requestWithValue:0 response:v6];
}

void __59__CAFGetImageArchiveControl_getImageArchiveWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5)
    {
      v8 = [MEMORY[0x277CBEA90] data];
      (*(v7 + 16))(v7, v8, v6);
    }

    else if (v14)
    {
      objc_opt_class();
      v9 = [v14 objectForKeyedSubscript:@"imageArchive"];
      if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = 0;
      }

      if (!v8)
      {
        v10 = *(a1 + 32);
        v11 = [MEMORY[0x277CBEA90] data];
        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:8 userInfo:0];
        (*(v10 + 16))(v10, v11, v12);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), v8, 0);
    }

    else
    {
      v8 = [MEMORY[0x277CBEA90] data];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:7 userInfo:0];
      (*(v7 + 16))(v7, v8, v13);
    }
  }
}

@end