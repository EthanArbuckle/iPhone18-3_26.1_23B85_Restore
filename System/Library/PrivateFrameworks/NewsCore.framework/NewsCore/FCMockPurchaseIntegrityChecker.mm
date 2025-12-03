@interface FCMockPurchaseIntegrityChecker
+ (id)mockPurchaseIntegrityCheckForFailure;
+ (id)mockPurchaseIntegrityCheckForSuccess;
- (void)isUserEntitledToSubscriptionForPurchaseID:(id)d completion:(id)completion;
@end

@implementation FCMockPurchaseIntegrityChecker

+ (id)mockPurchaseIntegrityCheckForSuccess
{
  v2 = objc_alloc_init(FCMockPurchaseIntegrityChecker);
  [(FCMockPurchaseIntegrityChecker *)v2 setMockedCheckResult:0];

  return v2;
}

+ (id)mockPurchaseIntegrityCheckForFailure
{
  v2 = objc_alloc_init(FCMockPurchaseIntegrityChecker);
  [(FCMockPurchaseIntegrityChecker *)v2 setMockedCheckResult:1];

  return v2;
}

- (void)isUserEntitledToSubscriptionForPurchaseID:(id)d completion:(id)completion
{
  completionCopy = completion;
  if ([(FCMockPurchaseIntegrityChecker *)self mockedCheckResult])
  {
    [(FCMockPurchaseIntegrityChecker *)self mockedCheckResult];
    v5 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_8;
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
    v6 = [FCSubscriptionEntitlement alloc];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:1];
    v8 = [MEMORY[0x1E696AD98] numberWithInt:2];
    date = [MEMORY[0x1E695DF00] date];
    date2 = [MEMORY[0x1E695DF00] date];
    LOBYTE(v12) = 0;
    v11 = [(FCSubscriptionEntitlement *)v6 initWithAppAdamID:v7 inAppAdamID:v8 chargeCurrencyCode:@"mockchargeCurrencyCode" newsAppPurchase:1 isTrialPeriod:0 isPurchaser:0 servicesBundleAdamID:0 isAmplifyUser:v12 startDate:date expiryDate:date2 initialPurchaseTimestamp:0 serviceBeginsTimestamp:0 vendorAdHocOfferID:0];

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v11);
    }
  }

  v5 = completionCopy;
LABEL_8:
}

@end