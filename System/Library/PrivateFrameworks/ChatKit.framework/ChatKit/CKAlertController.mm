@interface CKAlertController
+ (CKAlertController)alertControllerWithTitle:(id)title message:(id)message preferredStyle:(int64_t)style;
- (CKAlertControllerDelegate)alertDelegate;
- (void)addAction:(id)action;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation CKAlertController

+ (CKAlertController)alertControllerWithTitle:(id)title message:(id)message preferredStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___CKAlertController;
  v5 = objc_msgSendSuper2(&v8, sel_alertControllerWithTitle_message_preferredStyle_, title, message, style);
  if (objc_opt_isKindOfClass())
  {
    [v5 setWantsWindowedPresentation:1];
    [v5 setPreserveModalPresentationStyle:0];
    [v5 setShouldHidePresentingWindow:0];
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CKAlertController;
  [(CKAlertController *)&v5 viewDidDisappear:disappear];
  alertDelegate = [(CKAlertController *)self alertDelegate];
  [alertDelegate alertControllerViewDidDisappear:self];
}

- (void)addAction:(id)action
{
  v3.receiver = self;
  v3.super_class = CKAlertController;
  [(CKAlertController *)&v3 addAction:action];
}

- (CKAlertControllerDelegate)alertDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alertDelegate);

  return WeakRetained;
}

@end