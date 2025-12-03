@interface CKRCSMultipleCTSubscriptionsController
- (CKRCSMultipleCTSubscriptionsController)init;
- (id)isEnabledForSubscription:(id)subscription;
- (void)setEnabledForSubscription:(id)subscription specifier:(id)specifier;
@end

@implementation CKRCSMultipleCTSubscriptionsController

- (CKRCSMultipleCTSubscriptionsController)init
{
  v6.receiver = self;
  v6.super_class = CKRCSMultipleCTSubscriptionsController;
  v2 = [(CKRCSMultipleCTSubscriptionsController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CKLazuliEnablementManager);
    lazuliEnablementManager = v2->_lazuliEnablementManager;
    v2->_lazuliEnablementManager = v3;
  }

  return v2;
}

- (id)isEnabledForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  lazuliEnablementManager = [(CKRCSMultipleCTSubscriptionsController *)self lazuliEnablementManager];
  v6 = [lazuliEnablementManager isRCSEnabled:subscriptionCopy];

  return v6;
}

- (void)setEnabledForSubscription:(id)subscription specifier:(id)specifier
{
  subscriptionCopy = subscription;
  specifierCopy = specifier;
  if (subscriptionCopy)
  {
    lazuliEnablementManager = [(CKRCSMultipleCTSubscriptionsController *)self lazuliEnablementManager];
    [lazuliEnablementManager setRCSEnabled:subscriptionCopy specifier:specifierCopy];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_4;
    }

    lazuliEnablementManager = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(lazuliEnablementManager, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_243BE5000, lazuliEnablementManager, OS_LOG_TYPE_INFO, "Ignoring attempt to set RCS enablement to NULL", v9, 2u);
    }
  }

LABEL_4:
}

@end