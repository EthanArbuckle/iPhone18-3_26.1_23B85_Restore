@interface LNDialog(CATSupport)
- (void)defaultCATOptions;
- (void)getResultWithCompletionHandler:()CATSupport;
@end

@implementation LNDialog(CATSupport)

- (void)getResultWithCompletionHandler:()CATSupport
{
  v3 = a3;
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[LNDialog getResultWithCompletionHandler:] must be overridden"];
  __break(1u);
}

- (void)defaultCATOptions
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getCATDisableLoggingSymbolLoc_ptr;
  v8 = getCATDisableLoggingSymbolLoc_ptr;
  if (!getCATDisableLoggingSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getCATDisableLoggingSymbolLoc_block_invoke;
    v4[3] = &unk_1E74B26D0;
    v4[4] = &v5;
    __getCATDisableLoggingSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int getCATDisableLogging(void)"];
    [currentHandler handleFailureInFunction:v3 file:@"LNDialog+CATSupport.m" lineNumber:14 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

@end