@interface CKSendMenuPresentationRequest
+ (id)requestWithPresentationContext:(id)a3 appCardContentViewController:(id)a4 resolvedAppCardPresentationStyle:(unint64_t)a5 completion:(id)a6;
+ (id)requestWithPresentationContext:(id)a3 sendMenuViewController:(id)a4 completion:(id)a5;
- (CKSendMenuPresentationRequest)initWithPresentationContext:(id)a3 sendMenuViewController:(id)a4 appCardContentViewController:(id)a5 resolvedAppCardPresentationStyle:(unint64_t)a6 completion:(id)a7;
- (id)newSendMenuPresentationWithPresentingViewController:(id)a3 delegate:(id)a4;
- (void)didFinishPresentTransition;
@end

@implementation CKSendMenuPresentationRequest

- (CKSendMenuPresentationRequest)initWithPresentationContext:(id)a3 sendMenuViewController:(id)a4 appCardContentViewController:(id)a5 resolvedAppCardPresentationStyle:(unint64_t)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = CKSendMenuPresentationRequest;
  v17 = [(CKSendMenuPresentationRequest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_presentationContext, a3);
    objc_storeStrong(&v18->_sendMenuViewController, a4);
    objc_storeStrong(&v18->_appCardContentViewController, a5);
    v18->_resolvedAppCardPresentationStyle = a6;
    [(CKSendMenuPresentationRequest *)v18 setCompletionHandler:v16];
  }

  return v18;
}

+ (id)requestWithPresentationContext:(id)a3 sendMenuViewController:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithPresentationContext:v10 sendMenuViewController:v9 appCardContentViewController:0 resolvedAppCardPresentationStyle:0 completion:v8];

  return v11;
}

+ (id)requestWithPresentationContext:(id)a3 appCardContentViewController:(id)a4 resolvedAppCardPresentationStyle:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithPresentationContext:v12 sendMenuViewController:0 appCardContentViewController:v11 resolvedAppCardPresentationStyle:a5 completion:v10];

  return v13;
}

- (id)newSendMenuPresentationWithPresentingViewController:(id)a3 delegate:(id)a4
{
  sendMenuViewController = self->_sendMenuViewController;
  v7 = a4;
  v8 = a3;
  v9 = [CKSendMenuPresentation alloc];
  presentationContext = self->_presentationContext;
  if (sendMenuViewController)
  {
    v11 = [(CKSendMenuPresentation *)v9 initWithOverlayPresentationContext:presentationContext presentingViewController:v8 sendMenuViewController:self->_sendMenuViewController delegate:v7];
  }

  else
  {
    v11 = [(CKSendMenuPresentation *)v9 initWithOverlayPresentationContext:presentationContext presentingViewController:v8 appCardContentViewController:self->_appCardContentViewController appCardPresentationStyle:self->_resolvedAppCardPresentationStyle delegate:v7];
  }

  v12 = v11;

  return v12;
}

- (void)didFinishPresentTransition
{
  v2 = [(CKSendMenuPresentationRequest *)self completionHandler];
  v2[2]();
}

@end