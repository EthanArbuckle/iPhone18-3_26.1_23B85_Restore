@interface CKContextContentProvider
+ (id)handlePDFView:(id)view withExecutor:(id)executor;
+ (unsigned)controlCodeForExecutor:(id)executor;
+ (void)extractContentFromWebViewPDFData:(id)data withCompletionHandler:(id)handler;
@end

@implementation CKContextContentProvider

+ (unsigned)controlCodeForExecutor:(id)executor
{
  context = [executor context];
  v4 = +[CKContextContentProviderManager controlCodeForNonce:](CKContextContentProviderManager, "controlCodeForNonce:", [context nonce]);

  return v4;
}

+ (id)handlePDFView:(id)view withExecutor:(id)executor
{
  viewCopy = view;
  currentSelection = [viewCopy currentSelection];
  string = [currentSelection string];

  if (![string length])
  {
    currentPage = [viewCopy currentPage];
    string2 = [currentPage string];

    string = string2;
  }

  return string;
}

+ (void)extractContentFromWebViewPDFData:(id)data withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (dataCopy)
  {
    v8 = dispatch_queue_create("CKContextContentProviderUIScene WebView PDF Queue", 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__CKContextContentProvider_extractContentFromWebViewPDFData_withCompletionHandler___block_invoke;
    v9[3] = &unk_1E7CEE568;
    v10 = dataCopy;
    v11 = v7;
    dispatch_async(v8, v9);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __83__CKContextContentProvider_extractContentFromWebViewPDFData_withCompletionHandler___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "The web view is displaying an encrypted PDF.", v14, 2u);
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v2 = getPDFDocumentClass_softClass;
  v18 = getPDFDocumentClass_softClass;
  if (!getPDFDocumentClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getPDFDocumentClass_block_invoke;
    v14[3] = &unk_1E7CEE4D8;
    v14[4] = &v15;
    __getPDFDocumentClass_block_invoke(v14);
    v2 = v16[3];
  }

  v3 = v2;
  _Block_object_dispose(&v15, 8);
  v4 = [[v2 alloc] initWithData:*(a1 + 32)];
  v5 = [v4 pageCount];
  if (v5 >= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  if (v5)
  {
    v7 = 0;
    v8 = &stru_1F305A6D8;
    do
    {
      v9 = [v4 pageAtIndex:v7];
      v10 = [v9 string];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = &stru_1F305A6D8;
      }

      v13 = [(__CFString *)v8 stringByAppendingString:v12];

      v8 = [v13 stringByAppendingString:@"\n\n"];

      ++v7;
    }

    while (v6 != v7);
  }

  else
  {
    v8 = &stru_1F305A6D8;
  }

  (*(*(a1 + 40) + 16))();
}

@end