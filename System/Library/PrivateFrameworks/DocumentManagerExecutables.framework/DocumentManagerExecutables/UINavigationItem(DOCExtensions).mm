@interface UINavigationItem(DOCExtensions)
- (void)doc_safeSetSearchController:()DOCExtensions;
@end

@implementation UINavigationItem(DOCExtensions)

- (void)doc_safeSetSearchController:()DOCExtensions
{
  v4 = a3;
  searchController = [self searchController];
  transitionCoordinator = [searchController transitionCoordinator];
  if (transitionCoordinator)
  {
    doc_pendingSearchControllerUpdateRequest = [self doc_pendingSearchControllerUpdateRequest];

    v8 = objc_opt_new();
    [v8 setSearchController:v4];

    [self doc_setPendingSearchControllerUpdateRequest:v8];
    if (!doc_pendingSearchControllerUpdateRequest)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __63__UINavigationItem_DOCExtensions__doc_safeSetSearchController___block_invoke;
      v9[3] = &unk_278FA23F8;
      v9[4] = self;
      [transitionCoordinator animateAlongsideTransition:0 completion:v9];
    }
  }

  else
  {
    [self doc_setPendingSearchControllerUpdateRequest:0];
    [self setSearchController:v4];
    v8 = v4;
  }
}

@end