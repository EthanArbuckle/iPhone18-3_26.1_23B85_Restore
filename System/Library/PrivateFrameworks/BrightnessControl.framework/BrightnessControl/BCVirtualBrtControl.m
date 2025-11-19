@interface BCVirtualBrtControl
+ (id)newMonitorWithHandler:(id)a3 error:(id *)a4;
+ (void)failToCreateDisplaysFor:(double)a3;
- (BCVirtualBrtControl)init;
- (BOOL)setNits:(double)a3 error:(id *)a4;
- (double)getNitsWithError:(id *)a3;
@end

@implementation BCVirtualBrtControl

+ (id)newMonitorWithHandler:(id)a3 error:(id *)a4
{
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CBEAA8] date];
  if (_failFrom)
  {
    v7 = _failUntil == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && (v8 = v6, [v6 laterDate:?] == v6) && objc_msgSend(v8, "earlierDate:", _failUntil) == v8)
  {
    v12 = MEMORY[0x277CBEBB8];
    [_failUntil timeIntervalSinceDate:v8];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__BCVirtualBrtControl_newMonitorWithHandler_error___block_invoke;
    v16[3] = &unk_2784F8FC0;
    v16[4] = a3;
    v13 = [v12 scheduledTimerWithTimeInterval:0 repeats:v16 block:?];
    v14 = v13;
    v10 = objc_alloc_init(BCBrtMonitor);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__BCVirtualBrtControl_newMonitorWithHandler_error___block_invoke_2;
    v15[3] = &unk_2784F8E40;
    v15[4] = v13;
    [(BCBrtMonitor *)v10 setCancelHandler:v15];
  }

  else
  {
    v9 = objc_alloc_init(BCVirtualBrtControl);
    (*(a3 + 2))(a3, v9);

    v10 = objc_alloc_init(BCBrtMonitor);
  }

  objc_autoreleasePoolPop(v5);
  return v10;
}

void __51__BCVirtualBrtControl_newMonitorWithHandler_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(BCVirtualBrtControl);
  (*(*(a1 + 32) + 16))();
}

void __51__BCVirtualBrtControl_newMonitorWithHandler_error___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
}

+ (void)failToCreateDisplaysFor:(double)a3
{
  _failFrom = 0;

  _failUntil = 0;
  _failFrom = objc_alloc_init(MEMORY[0x277CBEAA8]);
  _failUntil = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:a3];
}

- (BCVirtualBrtControl)init
{
  v8.receiver = self;
  v8.super_class = BCVirtualBrtControl;
  v2 = [(BCBrtControl *)&v8 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [MEMORY[0x277CBEAA8] date];
    if (_failFrom)
    {
      v5 = _failUntil == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && (v6 = v4, [v4 laterDate:?] == v4) && objc_msgSend(v6, "earlierDate:", _failUntil) == v6)
    {

      v2 = 0;
    }

    else
    {
      v2->_nits = 0.0;
    }

    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

- (BOOL)setNits:(double)a3 error:(id *)a4
{
  v6 = [(BCBrtControl *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__BCVirtualBrtControl_setNits_error___block_invoke;
  v8[3] = &unk_2784F8E68;
  v8[4] = self;
  *&v8[5] = a3;
  dispatch_async(v6, v8);
  return 1;
}

double __37__BCVirtualBrtControl_setNits_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 112) = result;
  return result;
}

- (double)getNitsWithError:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(BCBrtControl *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__BCVirtualBrtControl_getNitsWithError___block_invoke;
  v7[3] = &unk_2784F8FE8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

double __40__BCVirtualBrtControl_getNitsWithError___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 112);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end