@interface CIDVUIIdentityProofingDataSharingFlowManager
- (CIDVUIIdentityProofingDataSharingFlowManager)init;
- (void)checkUserConsent:(id)a3;
- (void)didChangeUserConsent:(unint64_t)a3 completion:(id)a4;
- (void)fetchUserConsent:(id)a3;
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

- (void)checkUserConsent:(id)a3
{
  v4 = a3;
  v5 = [(CIDVUIIdentityProofingDataSharingFlowManager *)self dataSharingManager];
  [v5 checkUserConsentWithCompletionHandler:v4];
}

- (void)fetchUserConsent:(id)a3
{
  v4 = a3;
  v5 = [(CIDVUIIdentityProofingDataSharingFlowManager *)self dataSharingManager];
  [v5 fetchUserConsentWithCompletionHandler:v4];
}

- (void)didChangeUserConsent:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(CIDVUIIdentityProofingDataSharingFlowManager *)self dataSharingManager];
  [v7 didChangeUserConsentWithConsent:a3 completionHandler:v6];
}

@end