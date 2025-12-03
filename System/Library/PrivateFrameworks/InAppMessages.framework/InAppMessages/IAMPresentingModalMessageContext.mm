@interface IAMPresentingModalMessageContext
- (IAMPresentingModalMessageContext)initWithMessage:(id)message messageGroup:(id)group presentingViewController:(id)controller presentationExpirationTimer:(id)timer presentationHandler:(id)handler;
- (UIViewController)presentingViewController;
@end

@implementation IAMPresentingModalMessageContext

- (IAMPresentingModalMessageContext)initWithMessage:(id)message messageGroup:(id)group presentingViewController:(id)controller presentationExpirationTimer:(id)timer presentationHandler:(id)handler
{
  messageCopy = message;
  groupCopy = group;
  controllerCopy = controller;
  timerCopy = timer;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = IAMPresentingModalMessageContext;
  v18 = [(IAMPresentingModalMessageContext *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_message, message);
    objc_storeStrong(&v19->_messageGroup, group);
    objc_storeWeak(&v19->_presentingViewController, controllerCopy);
    objc_storeStrong(&v19->_presentationExpirationTimer, timer);
    v20 = MEMORY[0x259C23D00](handlerCopy);
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