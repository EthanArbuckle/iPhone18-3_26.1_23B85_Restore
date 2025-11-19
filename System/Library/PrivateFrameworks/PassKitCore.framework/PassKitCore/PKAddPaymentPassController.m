@interface PKAddPaymentPassController
+ (BOOL)canAddPaymentPass;
- (PKAddPaymentPassControllerDelegate)delegate;
- (void)dismissWithCompletion:(id)a3;
- (void)presentWithCompletion:(id)a3;
@end

@implementation PKAddPaymentPassController

+ (BOOL)canAddPaymentPass
{
  if ([objc_msgSend(a1 "_desiredClass")])
  {
    return 0;
  }

  v4 = [a1 _desiredClass];

  return [v4 canAddPaymentPass];
}

- (void)presentWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)dismissWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (PKAddPaymentPassControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end