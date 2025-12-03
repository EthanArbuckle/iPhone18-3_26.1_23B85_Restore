@interface PKAddPaymentPassController
+ (BOOL)canAddPaymentPass;
- (PKAddPaymentPassControllerDelegate)delegate;
- (void)dismissWithCompletion:(id)completion;
- (void)presentWithCompletion:(id)completion;
@end

@implementation PKAddPaymentPassController

+ (BOOL)canAddPaymentPass
{
  if ([objc_msgSend(self "_desiredClass")])
  {
    return 0;
  }

  _desiredClass = [self _desiredClass];

  return [_desiredClass canAddPaymentPass];
}

- (void)presentWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)dismissWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (PKAddPaymentPassControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end