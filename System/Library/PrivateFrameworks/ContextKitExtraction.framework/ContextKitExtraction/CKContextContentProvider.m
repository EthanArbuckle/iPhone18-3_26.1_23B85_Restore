@interface CKContextContentProvider
+ (id)handlePDFView:(id)a3 withExecutor:(id)a4;
+ (unsigned)controlCodeForExecutor:(id)a3;
+ (void)extractContentFromWebViewPDFData:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation CKContextContentProvider

+ (unsigned)controlCodeForExecutor:(id)a3
{
  v3 = [a3 context];
  v4 = +[CKContextContentProviderManager controlCodeForNonce:](CKContextContentProviderManager, "controlCodeForNonce:", [v3 nonce]);

  return v4;
}

+ (id)handlePDFView:(id)a3 withExecutor:(id)a4
{
  v4 = a3;
  v5 = [v4 currentSelection];
  v6 = [v5 string];

  if (![v6 length])
  {
    v7 = [v4 currentPage];
    v8 = [v7 string];

    v6 = v8;
  }

  return v6;
}

+ (void)extractContentFromWebViewPDFData:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = dispatch_queue_create("CKContextContentProviderUIScene WebView PDF Queue", 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__CKContextContentProvider_extractContentFromWebViewPDFData_withCompletionHandler___block_invoke;
    v9[3] = &unk_1E7CEE568;
    v10 = v5;
    v11 = v7;
    dispatch_async(v8, v9);
  }

  else
  {
    (*(v6 + 2))(v6, 0);
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