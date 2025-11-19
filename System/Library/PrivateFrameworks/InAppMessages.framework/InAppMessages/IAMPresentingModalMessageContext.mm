@interface IAMPresentingModalMessageContext
- (IAMPresentingModalMessageContext)initWithMessage:(id)a3 messageGroup:(id)a4 presentingViewController:(id)a5 presentationExpirationTimer:(id)a6 presentationHandler:(id)a7;
- (UIViewController)presentingViewController;
@end

@implementation IAMPresentingModalMessageContext

- (IAMPresentingModalMessageContext)initWithMessage:(id)a3 messageGroup:(id)a4 presentingViewController:(id)a5 presentationExpirationTimer:(id)a6 presentationHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = IAMPresentingModalMessageContext;
  v18 = [(IAMPresentingModalMessageContext *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_message, a3);
    objc_storeStrong(&v19->_messageGroup, a4);
    objc_storeWeak(&v19->_presentingViewController, v15);
    objc_storeStrong(&v19->_presentationExpirationTimer, a6);
    v20 = MEMORY[0x259C23D00](v17);
    presentationHandler = v19->_presentationHandler;
    v19->_presentationHandler = v20;
  }

  return v19;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end