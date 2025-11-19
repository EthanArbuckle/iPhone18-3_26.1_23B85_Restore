@interface CAFTestAccRequestWithReqParamsControl
+ (void)load;
- (BOOL)_didRequestWithValue:(id)a3 response:(id)a4;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTestAccRequestWithReqParamsControl

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestAccRequestWithReqParamsControl;
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
  v6.super_class = CAFTestAccRequestWithReqParamsControl;
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
  v6.super_class = CAFTestAccRequestWithReqParamsControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (BOOL)_didRequestWithValue:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAFTestAccRequestWithReqParamsControl *)self handler];

  if (v8)
  {
    objc_opt_class();
    v9 = [v6 objectForKeyedSubscript:@"testInput1"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    objc_opt_class();
    v11 = [v6 objectForKeyedSubscript:@"testInput2"];
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
      v13 = [(CAFTestAccRequestWithReqParamsControl *)self handler];
      v14 = [v10 unsignedCharValue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __71__CAFTestAccRequestWithReqParamsControl__didRequestWithValue_response___block_invoke;
      v17[3] = &unk_27890F160;
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

uint64_t __71__CAFTestAccRequestWithReqParamsControl__didRequestWithValue_response___block_invoke(uint64_t a1, void *a2)
{
  a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x2821F9730]();
}

@end