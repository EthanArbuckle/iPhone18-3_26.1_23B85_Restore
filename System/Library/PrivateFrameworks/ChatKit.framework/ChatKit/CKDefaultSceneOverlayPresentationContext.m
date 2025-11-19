@interface CKDefaultSceneOverlayPresentationContext
- (CGRect)anchorRect;
- (CKChatInputController)inputController;
- (CKDefaultSceneOverlayPresentationContext)initWithChatInputController:(id)a3 initialTraitCollection:(id)a4;
- (UIView)anchorView;
- (id)_determineViewToPortal;
- (void)_endSendMenuPresentation;
- (void)appCardDidAppearInPopover;
- (void)didChangePopoverMetrics:(id)a3;
- (void)willDismissSendMenuPresentation;
- (void)willPresentAppCard;
@end

@implementation CKDefaultSceneOverlayPresentationContext

- (CKDefaultSceneOverlayPresentationContext)initWithChatInputController:(id)a3 initialTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CKDefaultSceneOverlayPresentationContext;
  v8 = [(CKDefaultSceneOverlayPresentationContext *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_inputController, v6);
    v9->_presentationStyle = [v6 determineSendMenuPresentationStyleCompatibleWithTraitCollection:v7];
    v10 = [(CKDefaultSceneOverlayPresentationContext *)v9 _determineViewToPortal];
    viewToPortal = v9->_viewToPortal;
    v9->_viewToPortal = v10;
  }

  return v9;
}

- (UIView)anchorView
{
  v2 = [(CKDefaultSceneOverlayPresentationContext *)self inputController];
  v3 = [v2 entryView];
  v4 = [v3 sendMenuSourceView];

  return v4;
}

- (CGRect)anchorRect
{
  v2 = [(CKDefaultSceneOverlayPresentationContext *)self inputController];
  v3 = [v2 entryView];
  v4 = [v3 sendMenuSourceView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)_determineViewToPortal
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isPopoverSendMenuEnabled];

  if ((v4 & 1) != 0 || self->_presentationStyle)
  {
    v5 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    v8 = [WeakRetained entryView];
    v9 = [v8 sendMenuSourceView];
    v5 = [v9 superview];
  }

  return v5;
}

- (void)willDismissSendMenuPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained setIsAppCardUsingPopoverPresentation:0];

  [(CKDefaultSceneOverlayPresentationContext *)self _endSendMenuPresentation];
}

- (void)_endSendMenuPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v2 = [WeakRetained entryView];
  [v2 endSendMenuPresentation];
}

- (void)didChangePopoverMetrics:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v5 = [WeakRetained entryView];
  [v5 sendMenuPopoverMetricsDidChange:v4];
}

- (void)appCardDidAppearInPopover
{
  v3 = [(CKDefaultSceneOverlayPresentationContext *)self inputController];
  v2 = [v3 entryView];
  [v2 beginSendMenuPopoverPresentation];
}

- (void)willPresentAppCard
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isPopoverSendMenuEnabled];

  if (v4)
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    presentationStyle = v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    presentationStyle = self->_presentationStyle;
  }

  if (presentationStyle == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    [WeakRetained setIsAppCardUsingPopoverPresentation:1];
  }
}

- (CKChatInputController)inputController
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);

  return WeakRetained;
}

@end