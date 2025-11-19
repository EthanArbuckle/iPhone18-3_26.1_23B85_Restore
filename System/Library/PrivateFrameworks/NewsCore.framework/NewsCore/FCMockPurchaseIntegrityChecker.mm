@interface FCMockPurchaseIntegrityChecker
+ (id)mockPurchaseIntegrityCheckForFailure;
+ (id)mockPurchaseIntegrityCheckForSuccess;
- (void)isUserEntitledToSubscriptionForPurchaseID:(id)a3 completion:(id)a4;
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

- (void)isUserEntitledToSubscriptionForPurchaseID:(id)a3 completion:(id)a4
{
  v13 = a4;
  if ([(FCMockPurchaseIntegrityChecker *)self mockedCheckResult])
  {
    [(FCMockPurchaseIntegrityChecker *)self mockedCheckResult];
    v5 = v13;
    if (!v13)
    {
      goto LABEL_8;
    }

    (*(v13 + 2))(v13, 0);
  }

  else
  {
    v6 = [FCSubscriptionEntitlement alloc];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:1];
    v8 = [MEMORY[0x1E696AD98] numberWithInt:2];
    v9 = [MEMORY[0x1E695DF00] date];
    v10 = [MEMORY[0x1E695DF00] date];
    LOBYTE(v12) = 0;
    v11 = [(FCSubscriptionEntitlement *)v6 initWithAppAdamID:v7 inAppAdamID:v8 chargeCurrencyCode:@"mockchargeCurrencyCode" newsAppPurchase:1 isTrialPeriod:0 isPurchaser:0 servicesBundleAdamID:0 isAmplifyUser:v12 startDate:v9 expiryDate:v10 initialPurchaseTimestamp:0 serviceBeginsTimestamp:0 vendorAdHocOfferID:0];

    if (v13)
    {
      (*(v13 + 2))(v13, v11);
    }
  }

  v5 = v13;
LABEL_8:
}

@end