@interface UINavigationItem
@end

@implementation UINavigationItem

void __63__UINavigationItem_DOCExtensions__doc_safeSetSearchController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) doc_pendingSearchControllerUpdateRequest];
  if (v2)
  {
    v5 = v2;
    [*(a1 + 32) doc_setPendingSearchControllerUpdateRequest:0];
    v3 = *(a1 + 32);
    v4 = [v5 searchController];
    [v3 setSearchController:v4];

    v2 = v5;
  }
}

@end