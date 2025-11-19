@interface CRKCancelableBackedCatalystIDSSubscription
- (CRKCancelableBackedCatalystIDSSubscription)initWithCancelable:(id)a3;
- (void)cancel;
@end

@implementation CRKCancelableBackedCatalystIDSSubscription

- (CRKCancelableBackedCatalystIDSSubscription)initWithCancelable:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKCancelableBackedCatalystIDSSubscription;
  v6 = [(CRKCancelableBackedCatalystIDSSubscription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cancelable, a3);
  }

  return v7;
}

- (void)cancel
{
  v2 = [(CRKCancelableBackedCatalystIDSSubscription *)self cancelable];
  [v2 cancel];
}

@end