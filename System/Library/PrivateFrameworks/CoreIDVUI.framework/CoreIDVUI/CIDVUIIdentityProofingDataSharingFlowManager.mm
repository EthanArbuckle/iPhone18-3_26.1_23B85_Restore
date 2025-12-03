@interface CIDVUIIdentityProofingDataSharingFlowManager
- (CIDVUIIdentityProofingDataSharingFlowManager)init;
- (void)checkUserConsent:(id)consent;
- (void)didChangeUserConsent:(unint64_t)consent completion:(id)completion;
- (void)fetchUserConsent:(id)consent;
@end

@implementation CIDVUIIdentityProofingDataSharingFlowManager

- (CIDVUIIdentityProofingDataSharingFlowManager)init
{
  v5.receiver = self;
  v5.super_class = CIDVUIIdentityProofingDataSharingFlowManager;
  v2 = [(CIDVUIIdentityProofingDataSharingFlowManager *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC9CoreIDVUI52CIDVUIInternalIdentityProofingDataSharingFlowManager);
    [(CIDVUIIdentityProofingDataSharingFlowManager *)v2 setDataSharingManager:v3];
  }

  return v2;
}

- (void)checkUserConsent:(id)consent
{
  consentCopy = consent;
  dataSharingManager = [(CIDVUIIdentityProofingDataSharingFlowManager *)self dataSharingManager];
  [dataSharingManager checkUserConsentWithCompletionHandler:consentCopy];
}

- (void)fetchUserConsent:(id)consent
{
  consentCopy = consent;
  dataSharingManager = [(CIDVUIIdentityProofingDataSharingFlowManager *)self dataSharingManager];
  [dataSharingManager fetchUserConsentWithCompletionHandler:consentCopy];
}

- (void)didChangeUserConsent:(unint64_t)consent completion:(id)completion
{
  completionCopy = completion;
  dataSharingManager = [(CIDVUIIdentityProofingDataSharingFlowManager *)self dataSharingManager];
  [dataSharingManager didChangeUserConsentWithConsent:consent completionHandler:completionCopy];
}

@end