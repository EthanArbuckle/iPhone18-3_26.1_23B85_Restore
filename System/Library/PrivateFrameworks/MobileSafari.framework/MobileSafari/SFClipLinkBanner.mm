@interface SFClipLinkBanner
+ (void)getClipLinkBannerForClipLink:(id)link openActionHandler:(id)handler completionHandler:(id)completionHandler;
- (SFAppSuggestionBannerDelegate)delegate;
- (id)_initWithClipLink:(id)link openActionHandler:(id)handler;
- (id)overlayProvider;
@end

@implementation SFClipLinkBanner

+ (void)getClipLinkBannerForClipLink:(id)link openActionHandler:(id)handler completionHandler:(id)completionHandler
{
  linkCopy = link;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__SFClipLinkBanner_getClipLinkBannerForClipLink_openActionHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E721DE60;
  v14 = linkCopy;
  v15 = completionHandlerCopy;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = completionHandlerCopy;
  v12 = linkCopy;
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

- (id)_initWithClipLink:(id)link openActionHandler:(id)handler
{
  linkCopy = link;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = SFClipLinkBanner;
  v9 = [(SFLinkBanner *)&v19 init];
  p_isa = &v9->super.super.super.super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_clipLink, link);
    [p_isa setOpenActionHandler:handlerCopy];
    clipName = [linkCopy clipName];
    titleLabel = [p_isa titleLabel];
    [titleLabel setText:clipName];

    icon = [linkCopy icon];
    icon2 = [p_isa icon];
    [icon2 setImage:icon];

    actionCaption = [p_isa[77] actionCaption];
    [p_isa setMessageLabelText:actionCaption];

    actionTitle = [linkCopy actionTitle];
    [p_isa setOpenButtonTitle:actionTitle];

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
      bundleIdentifier = [(SFClipLink *)self->_clipLink bundleIdentifier];
      v7 = [(SFOverlayProvider *)v4 initWithURL:v5 bundleIdentifier:bundleIdentifier];
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