@interface CKSendMenuPresentationRequest
+ (id)requestWithPresentationContext:(id)context appCardContentViewController:(id)controller resolvedAppCardPresentationStyle:(unint64_t)style completion:(id)completion;
+ (id)requestWithPresentationContext:(id)context sendMenuViewController:(id)controller completion:(id)completion;
- (CKSendMenuPresentationRequest)initWithPresentationContext:(id)context sendMenuViewController:(id)controller appCardContentViewController:(id)viewController resolvedAppCardPresentationStyle:(unint64_t)style completion:(id)completion;
- (id)newSendMenuPresentationWithPresentingViewController:(id)controller delegate:(id)delegate;
- (void)didFinishPresentTransition;
@end

@implementation CKSendMenuPresentationRequest

- (CKSendMenuPresentationRequest)initWithPresentationContext:(id)context sendMenuViewController:(id)controller appCardContentViewController:(id)viewController resolvedAppCardPresentationStyle:(unint64_t)style completion:(id)completion
{
  contextCopy = context;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  completionCopy = completion;
  v20.receiver = self;
  v20.super_class = CKSendMenuPresentationRequest;
  v17 = [(CKSendMenuPresentationRequest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_presentationContext, context);
    objc_storeStrong(&v18->_sendMenuViewController, controller);
    objc_storeStrong(&v18->_appCardContentViewController, viewController);
    v18->_resolvedAppCardPresentationStyle = style;
    [(CKSendMenuPresentationRequest *)v18 setCompletionHandler:completionCopy];
  }

  return v18;
}

+ (id)requestWithPresentationContext:(id)context sendMenuViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  contextCopy = context;
  v11 = [[self alloc] initWithPresentationContext:contextCopy sendMenuViewController:controllerCopy appCardContentViewController:0 resolvedAppCardPresentationStyle:0 completion:completionCopy];

  return v11;
}

+ (id)requestWithPresentationContext:(id)context appCardContentViewController:(id)controller resolvedAppCardPresentationStyle:(unint64_t)style completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  contextCopy = context;
  v13 = [[self alloc] initWithPresentationContext:contextCopy sendMenuViewController:0 appCardContentViewController:controllerCopy resolvedAppCardPresentationStyle:style completion:completionCopy];

  return v13;
}

- (id)newSendMenuPresentationWithPresentingViewController:(id)controller delegate:(id)delegate
{
  sendMenuViewController = self->_sendMenuViewController;
  delegateCopy = delegate;
  controllerCopy = controller;
  v9 = [CKSendMenuPresentation alloc];
  presentationContext = self->_presentationContext;
  if (sendMenuViewController)
  {
    v11 = [(CKSendMenuPresentation *)v9 initWithOverlayPresentationContext:presentationContext presentingViewController:controllerCopy sendMenuViewController:self->_sendMenuViewController delegate:delegateCopy];
  }

  else
  {
    v11 = [(CKSendMenuPresentation *)v9 initWithOverlayPresentationContext:presentationContext presentingViewController:controllerCopy appCardContentViewController:self->_appCardContentViewController appCardPresentationStyle:self->_resolvedAppCardPresentationStyle delegate:delegateCopy];
  }

  v12 = v11;

  return v12;
}

- (void)didFinishPresentTransition
{
  completionHandler = [(CKSendMenuPresentationRequest *)self completionHandler];
  completionHandler[2]();
}

@end