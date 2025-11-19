@interface CAFTestAccRequestWithResParamsControl
+ (void)load;
- (BOOL)_didRequestWithValue:(id)a3 response:(id)a4;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTestAccRequestWithResParamsControl

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestAccRequestWithResParamsControl;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846ABC08])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFTestAccRequestWithResParamsControl;
  [(CAFControl *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846ABC08])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFTestAccRequestWithResParamsControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (BOOL)_didRequestWithValue:(id)a3 response:(id)a4
{
  v5 = a4;
  v6 = [(CAFTestAccRequestWithResParamsControl *)self handler];

  if (v6)
  {
    v7 = [(CAFTestAccRequestWithResParamsControl *)self handler];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__CAFTestAccRequestWithResParamsControl__didRequestWithValue_response___block_invoke;
    v9[3] = &unk_27890F1A8;
    v10 = v5;
    (v7)[2](v7, v9);
  }

  return v6 != 0;
}

void __71__CAFTestAccRequestWithResParamsControl__didRequestWithValue_response___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = *(a1 + 32);
  if (v10)
  {
    if (v8)
    {
      (*(v10 + 16))(v10, 0, v8);
    }

    else
    {
      v14[0] = @"testOutput3";
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a2];
      v14[1] = @"testOutput4";
      v15[0] = v11;
      v15[1] = v7;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
      (*(v10 + 16))(v10, v12, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end