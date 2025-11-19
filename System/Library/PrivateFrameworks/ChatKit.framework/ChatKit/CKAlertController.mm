@interface CKAlertController
+ (CKAlertController)alertControllerWithTitle:(id)a3 message:(id)a4 preferredStyle:(int64_t)a5;
- (CKAlertControllerDelegate)alertDelegate;
- (void)addAction:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation CKAlertController

+ (CKAlertController)alertControllerWithTitle:(id)a3 message:(id)a4 preferredStyle:(int64_t)a5
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___CKAlertController;
  v5 = objc_msgSendSuper2(&v8, sel_alertControllerWithTitle_message_preferredStyle_, a3, a4, a5);
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

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKAlertController;
  [(CKAlertController *)&v5 viewDidDisappear:a3];
  v4 = [(CKAlertController *)self alertDelegate];
  [v4 alertControllerViewDidDisappear:self];
}

- (void)addAction:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKAlertController;
  [(CKAlertController *)&v3 addAction:a3];
}

- (CKAlertControllerDelegate)alertDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alertDelegate);

  return WeakRetained;
}

@end