@interface ScrollColorBlockTestProcessor
- (BOOL)performActionForPage:(id)a3;
- (BOOL)startPageAction:(id)a3;
- (ScrollColorBlockTestProcessor)initWithTestName:(id)a3 browserController:(id)a4;
- (id)_createTestPageIfNeeded;
@end

@implementation ScrollColorBlockTestProcessor

- (id)_createTestPageIfNeeded
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(PageLoadTestRunner *)self testName];
  v4 = [v3 stringByAppendingPathExtension:@"html"];

  v5 = NSTemporaryDirectory();
  v17 = v4;
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__ScrollColorBlockTestProcessor__createTestPageIfNeeded__block_invoke;
  v22[3] = &unk_2781D7598;
  v22[4] = self;
  v8 = __56__ScrollColorBlockTestProcessor__createTestPageIfNeeded__block_invoke(v22);
  v9 = [MEMORY[0x277CCAB68] string];
  [v9 appendString:@"<!doctype html><html><head><meta charset='utf-8'><title>ScrollColorBlockTest</title><style>.box{width:100%;aspect-ratio:2/1;}</style></head><body>"];
  for (i = 0; i != 4; ++i)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v9 appendFormat:@"<div class='box' style='background-color:%@;'></div>", *(*(&v18 + 1) + 8 * j)];
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v13);
    }
  }

  [v9 appendString:@"</body></html>"];
  [v9 writeToURL:v7 atomically:1 encoding:4 error:0];

  return v7;
}

void *__56__ScrollColorBlockTestProcessor__createTestPageIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) testName];
  v3 = [v2 hasSuffix:@"Light"];

  if (v3)
  {
    return &unk_2827FC4F0;
  }

  v5 = [*(a1 + 32) testName];
  v6 = [v5 hasSuffix:@"Dark"];

  if (v6)
  {
    return &unk_2827FC508;
  }

  else
  {
    return &unk_2827FC520;
  }
}

- (ScrollColorBlockTestProcessor)initWithTestName:(id)a3 browserController:(id)a4
{
  v9.receiver = self;
  v9.super_class = ScrollColorBlockTestProcessor;
  v4 = [(ContentInteractionTestRunner *)&v9 initWithTestName:a3 browserController:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(ScrollColorBlockTestProcessor *)v4 _createTestPageIfNeeded];
    [(PageLoadTestRunner *)v5 addPageURL:v6 withProcessSwap:1];

    v7 = v5;
  }

  return v5;
}

- (BOOL)startPageAction:(id)a3
{
  v4 = a3;
  [(ScrollColorBlockTestProcessor *)self setStartedScrollColorBlockTest:0];
  [(ScrollColorBlockTestProcessor *)self setEndedScrollColorBlockTest:0];
  v6.receiver = self;
  v6.super_class = ScrollColorBlockTestProcessor;
  LOBYTE(self) = [(ContentInteractionTestRunner *)&v6 startPageAction:v4];

  return self;
}

- (BOOL)performActionForPage:(id)a3
{
  v4 = a3;
  v5 = [(ContentInteractionTestRunner *)self pageWebView];
  v6 = [v5 scrollView];

  if (![(ScrollColorBlockTestProcessor *)self startedScrollColorBlockTest])
  {
    [(ContentInteractionTestRunner *)self startTrackingFrameRate];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v7 = getRPTDirectionalSwipeTestParametersClass_softClass;
    v24 = getRPTDirectionalSwipeTestParametersClass_softClass;
    if (!getRPTDirectionalSwipeTestParametersClass_softClass)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __getRPTDirectionalSwipeTestParametersClass_block_invoke;
      v19 = &unk_2781D4BD8;
      v20 = &v21;
      __getRPTDirectionalSwipeTestParametersClass_block_invoke(&v16);
      v7 = v22[3];
    }

    v8 = v7;
    _Block_object_dispose(&v21, 8);
    v9 = [v7 alloc];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__ScrollColorBlockTestProcessor_performActionForPage___block_invoke;
    v15[3] = &unk_2781D4D40;
    v15[4] = self;
    v10 = [v9 initWithTestName:0 testType:2 scrollView:v6 completionHandler:v15];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v11 = getRPTTestRunnerClass_softClass_0;
    v24 = getRPTTestRunnerClass_softClass_0;
    if (!getRPTTestRunnerClass_softClass_0)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __getRPTTestRunnerClass_block_invoke_0;
      v19 = &unk_2781D4BD8;
      v20 = &v21;
      __getRPTTestRunnerClass_block_invoke_0(&v16);
      v11 = v22[3];
    }

    v12 = v11;
    _Block_object_dispose(&v21, 8);
    [v11 runTestWithParameters:v10];
    [(ScrollColorBlockTestProcessor *)self setStartedScrollColorBlockTest:1];
  }

  v13 = [(ScrollColorBlockTestProcessor *)self endedScrollColorBlockTest];
  if (v13)
  {
    [(ContentInteractionTestRunner *)self endTrackingFrameRate];
  }

  return !v13;
}

@end