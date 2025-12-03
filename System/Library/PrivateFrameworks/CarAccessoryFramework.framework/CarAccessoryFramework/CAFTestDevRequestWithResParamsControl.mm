@interface CAFTestDevRequestWithResParamsControl
+ (void)load;
- (void)registerObserver:(id)observer;
- (void)testDevRequestWithResParamsWithCompletion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTestDevRequestWithResParamsControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestDevRequestWithResParamsControl;
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
  v6.super_class = CAFTestDevRequestWithResParamsControl;
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
  v6.super_class = CAFTestDevRequestWithResParamsControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)testDevRequestWithResParamsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__CAFTestDevRequestWithResParamsControl_testDevRequestWithResParamsWithCompletion___block_invoke;
  v6[3] = &unk_27890EFF8;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CAFControl *)self requestWithValue:0 response:v6];
}

void __83__CAFTestDevRequestWithResParamsControl_testDevRequestWithResParamsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5)
    {
      (*(v7 + 16))(*(a1 + 32), 0, MEMORY[0x277CBEBF8], v5);
    }

    else if (v15)
    {
      objc_opt_class();
      v8 = [v15 objectForKeyedSubscript:@"testOutput3"];
      if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      objc_opt_class();
      v10 = [v15 objectForKeyedSubscript:@"testOutput4"];
      if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (!(v9 | v11))
      {
        v12 = *(a1 + 32);
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:8 userInfo:0];
        (*(v12 + 16))(v12, 0, MEMORY[0x277CBEBF8], v13);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), [v9 unsignedCharValue], v11, 0);
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:7 userInfo:0];
      (*(v7 + 16))(v7, 0, MEMORY[0x277CBEBF8], v14);
    }
  }
}

@end