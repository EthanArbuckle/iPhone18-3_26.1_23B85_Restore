@interface CAFTestAccRequestWithReqAndResParamsControl
+ (void)load;
- (BOOL)_didRequestWithValue:(id)a3 response:(id)a4;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTestAccRequestWithReqAndResParamsControl

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestAccRequestWithReqAndResParamsControl;
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
  v6.super_class = CAFTestAccRequestWithReqAndResParamsControl;
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
  v6.super_class = CAFTestAccRequestWithReqAndResParamsControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (BOOL)_didRequestWithValue:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAFTestAccRequestWithReqAndResParamsControl *)self handler];

  if (v8)
  {
    objc_opt_class();
    v9 = [v6 objectForKeyedSubscript:@"testInput5"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    objc_opt_class();
    v11 = [v6 objectForKeyedSubscript:@"testInput6"];
    if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10 | v12)
    {
      v13 = [(CAFTestAccRequestWithReqAndResParamsControl *)self handler];
      v14 = [v10 unsignedCharValue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __77__CAFTestAccRequestWithReqAndResParamsControl__didRequestWithValue_response___block_invoke;
      v17[3] = &unk_27890F1A8;
      v18 = v7;
      (v13)[2](v13, v14, v12, v17);
    }

    else if (v7)
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:8 userInfo:0];
      (*(v7 + 2))(v7, 0, v15);
    }
  }

  return v8 != 0;
}

void __77__CAFTestAccRequestWithReqAndResParamsControl__didRequestWithValue_response___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
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
      v14[0] = @"testOutput7";
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a2];
      v14[1] = @"testOutput8";
      v15[0] = v11;
      v15[1] = v7;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
      (*(v10 + 16))(v10, v12, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end