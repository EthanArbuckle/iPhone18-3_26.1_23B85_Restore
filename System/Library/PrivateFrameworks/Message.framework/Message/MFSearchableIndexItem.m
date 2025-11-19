@interface MFSearchableIndexItem
@end

@implementation MFSearchableIndexItem

void __32__MFSearchableIndexItem_iOS_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_31;
  log_log_31 = v1;
}

MFSearchableIndexItem_iOS *__67__MFSearchableIndexItem_iOS_searchableIndexItemsFromMessages_type___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _bodyDataForMessage:v3];
  v5 = [(EDSearchableIndexItem *)[MFSearchableIndexItem_iOS alloc] initWithMessage:v3 bodyData:v4 fetchBody:1];
  [(EDSearchableIndexItem *)v5 setIndexingType:*(a1 + 40)];

  return v5;
}

void __54__MFSearchableIndexItem_iOS_fetchIndexableAttachments__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  [*(a1 + 32) finishWithResult:v9 error:v8];
}

id __54__MFSearchableIndexItem_iOS_fetchIndexableAttachments__block_invoke_2()
{
  v0 = [MEMORY[0x1E699B7C8] nullFuture];

  return v0;
}

@end