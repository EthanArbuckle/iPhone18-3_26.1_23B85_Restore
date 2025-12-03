@interface CKDefaultSceneOverlayPresentationContext
- (CGRect)anchorRect;
- (CKChatInputController)inputController;
- (CKDefaultSceneOverlayPresentationContext)initWithChatInputController:(id)controller initialTraitCollection:(id)collection;
- (UIView)anchorView;
- (id)_determineViewToPortal;
- (void)_endSendMenuPresentation;
- (void)appCardDidAppearInPopover;
- (void)didChangePopoverMetrics:(id)metrics;
- (void)willDismissSendMenuPresentation;
- (void)willPresentAppCard;
@end

@implementation CKDefaultSceneOverlayPresentationContext

- (CKDefaultSceneOverlayPresentationContext)initWithChatInputController:(id)controller initialTraitCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  v13.receiver = self;
  v13.super_class = CKDefaultSceneOverlayPresentationContext;
  v8 = [(CKDefaultSceneOverlayPresentationContext *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_inputController, controllerCopy);
    v9->_presentationStyle = [controllerCopy determineSendMenuPresentationStyleCompatibleWithTraitCollection:collectionCopy];
    _determineViewToPortal = [(CKDefaultSceneOverlayPresentationContext *)v9 _determineViewToPortal];
    viewToPortal = v9->_viewToPortal;
    v9->_viewToPortal = _determineViewToPortal;
  }

  return v9;
}

- (UIView)anchorView
{
  inputController = [(CKDefaultSceneOverlayPresentationContext *)self inputController];
  entryView = [inputController entryView];
  sendMenuSourceView = [entryView sendMenuSourceView];

  return sendMenuSourceView;
}

- (CGRect)anchorRect
{
  inputController = [(CKDefaultSceneOverlayPresentationContext *)self inputController];
  entryView = [inputController entryView];
  sendMenuSourceView = [entryView sendMenuSourceView];
  [sendMenuSourceView bounds];
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if ((isPopoverSendMenuEnabled & 1) != 0 || self->_presentationStyle)
  {
    superview = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputController);
    entryView = [WeakRetained entryView];
    sendMenuSourceView = [entryView sendMenuSourceView];
    superview = [sendMenuSourceView superview];
  }

  return superview;
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
  entryView = [WeakRetained entryView];
  [entryView endSendMenuPresentation];
}

- (void)didChangePopoverMetrics:(id)metrics
{
  metricsCopy = metrics;
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  entryView = [WeakRetained entryView];
  [entryView sendMenuPopoverMetricsDidChange:metricsCopy];
}

- (void)appCardDidAppearInPopover
{
  inputController = [(CKDefaultSceneOverlayPresentationContext *)self inputController];
  entryView = [inputController entryView];
  [entryView beginSendMenuPopoverPresentation];
}

- (void)willPresentAppCard
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    presentationStyle = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
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