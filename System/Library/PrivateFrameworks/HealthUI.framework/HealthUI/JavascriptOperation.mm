@interface JavascriptOperation
@end

@implementation JavascriptOperation

void __53___JavascriptOperation_submitJavascript_finishBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53___JavascriptOperation_submitJavascript_finishBlock___block_invoke_2;
  v10[3] = &unk_1E81B5FD0;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

uint64_t __53___JavascriptOperation_submitJavascript_finishBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), *(a1 + 48));
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66C30]();
}

@end