@interface SFSiteIconView
@end

@implementation SFSiteIconView

void __37___SFSiteIconView_updateBookmarkData__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) url];
    v5 = [v4 host];

    if (WeakRetained[63] == *(a1 + 40))
    {
      if (!v5 || ([v9 url], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "host"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "isEqualToString:", v7), v7, v6, v8))
      {
        [WeakRetained _updateSiteIconViewWithTouchIconResponse:v9];
      }
    }
  }
}

void __60___SFSiteIconView__updateSiteIconViewWithTouchIconResponse___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 528));
  [WeakRetained siteIconViewDidUpdate:*(a1 + 32)];
}

void __85___SFSiteIconView_updateSiteIconViewWithLinkMetadata_requiredImageSize_fallbackIcon___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 528));
  [WeakRetained siteIconViewDidUpdate:*(a1 + 32)];
}

@end