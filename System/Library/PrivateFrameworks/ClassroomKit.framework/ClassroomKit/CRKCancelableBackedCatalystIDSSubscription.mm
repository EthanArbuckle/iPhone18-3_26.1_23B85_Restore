@interface CRKCancelableBackedCatalystIDSSubscription
- (CRKCancelableBackedCatalystIDSSubscription)initWithCancelable:(id)cancelable;
- (void)cancel;
@end

@implementation CRKCancelableBackedCatalystIDSSubscription

- (CRKCancelableBackedCatalystIDSSubscription)initWithCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  v9.receiver = self;
  v9.super_class = CRKCancelableBackedCatalystIDSSubscription;
  v6 = [(CRKCancelableBackedCatalystIDSSubscription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cancelable, cancelable);
  }

  return v7;
}

- (void)cancel
{
  cancelable = [(CRKCancelableBackedCatalystIDSSubscription *)self cancelable];
  [cancelable cancel];
}

@end