@interface SFClipLinkBanner
+ (void)getClipLinkBannerForClipLink:(id)a3 openActionHandler:(id)a4 completionHandler:(id)a5;
- (SFAppSuggestionBannerDelegate)delegate;
- (id)_initWithClipLink:(id)a3 openActionHandler:(id)a4;
- (id)overlayProvider;
@end

@implementation SFClipLinkBanner

+ (void)getClipLinkBannerForClipLink:(id)a3 openActionHandler:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__SFClipLinkBanner_getClipLinkBannerForClipLink_openActionHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E721DE60;
  v14 = v7;
  v15 = v9;
  v16 = v8;
  v10 = v8;
  v11 = v9;
  v12 = v7;
  [v12 getClipAttributesWithCompletionHandler:v13];
}

void __85__SFClipLinkBanner_getClipLinkBannerForClipLink_openActionHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clipName];
  v3 = [v2 length];

  if (v3)
  {
    v5 = [[SFClipLinkBanner alloc] _initWithClipLink:*(a1 + 32) openActionHandler:*(a1 + 48)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (id)_initWithClipLink:(id)a3 openActionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = SFClipLinkBanner;
  v9 = [(SFLinkBanner *)&v19 init];
  p_isa = &v9->super.super.super.super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_clipLink, a3);
    [p_isa setOpenActionHandler:v8];
    v11 = [v7 clipName];
    v12 = [p_isa titleLabel];
    [v12 setText:v11];

    v13 = [v7 icon];
    v14 = [p_isa icon];
    [v14 setImage:v13];

    v15 = [p_isa[77] actionCaption];
    [p_isa setMessageLabelText:v15];

    v16 = [v7 actionTitle];
    [p_isa setOpenButtonTitle:v16];

    v17 = p_isa;
  }

  return p_isa;
}

- (id)overlayProvider
{
  if ([(SFClipLink *)self->_clipLink siteRequestsShowCard]|| +[SFOverlayProvider alwaysShowOverlayForDebug])
  {
    overlayProvider = self->_overlayProvider;
    if (!overlayProvider)
    {
      v4 = [SFOverlayProvider alloc];
      v5 = [(SFClipLink *)self->_clipLink url];
      v6 = [(SFClipLink *)self->_clipLink bundleIdentifier];
      v7 = [(SFOverlayProvider *)v4 initWithURL:v5 bundleIdentifier:v6];
      v8 = self->_overlayProvider;
      self->_overlayProvider = v7;

      overlayProvider = self->_overlayProvider;
    }

    v9 = overlayProvider;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (SFAppSuggestionBannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end