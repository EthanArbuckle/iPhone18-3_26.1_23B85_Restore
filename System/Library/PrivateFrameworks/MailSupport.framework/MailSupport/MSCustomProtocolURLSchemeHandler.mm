@interface MSCustomProtocolURLSchemeHandler
+ (MSCustomProtocolURLSchemeHandler)sharedHandler;
- (void)webView:(id)view startURLSchemeTask:(id)task;
- (void)webView:(id)view stopURLSchemeTask:(id)task;
@end

@implementation MSCustomProtocolURLSchemeHandler

+ (MSCustomProtocolURLSchemeHandler)sharedHandler
{
  if (sharedHandler_onceToken != -1)
  {
    +[MSCustomProtocolURLSchemeHandler sharedHandler];
  }

  v3 = sharedHandler_handler;

  return v3;
}

void __49__MSCustomProtocolURLSchemeHandler_sharedHandler__block_invoke()
{
  v0 = objc_alloc_init(MSCustomProtocolURLSchemeHandler);
  v1 = sharedHandler_handler;
  sharedHandler_handler = v0;
}

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  taskCopy = task;
  mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
  request = [taskCopy request];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__MSCustomProtocolURLSchemeHandler_webView_startURLSchemeTask___block_invoke;
  v9[3] = &unk_27985B568;
  v7 = taskCopy;
  v10 = v7;
  v8 = [mEMORY[0x277CCAD30] dataTaskWithRequest:request completionHandler:v9];

  objc_setAssociatedObject(v7, taskKey, v8, 0x301);
  [v8 resume];
}

void __63__MSCustomProtocolURLSchemeHandler_webView_startURLSchemeTask___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__MSCustomProtocolURLSchemeHandler_webView_startURLSchemeTask___block_invoke_2;
  v13[3] = &unk_27985B540;
  v14 = *(a1 + 32);
  v15 = v8;
  v16 = v7;
  v17 = v9;
  v10 = v9;
  v11 = v7;
  v12 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

void __63__MSCustomProtocolURLSchemeHandler_webView_startURLSchemeTask___block_invoke_2(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), taskKey);

  if (v2)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 40))
    {
      [v3 didReceiveResponse:?];
      [*(a1 + 32) didReceiveData:*(a1 + 48)];
      v4 = *(a1 + 32);

      [v4 didFinish];
    }

    else
    {
      v5 = *(a1 + 56);

      [v3 didFailWithError:v5];
    }
  }
}

- (void)webView:(id)view stopURLSchemeTask:(id)task
{
  object = task;
  v4 = objc_getAssociatedObject(object, taskKey);
  objc_setAssociatedObject(object, taskKey, 0, 0x301);
  [v4 cancel];
}

@end