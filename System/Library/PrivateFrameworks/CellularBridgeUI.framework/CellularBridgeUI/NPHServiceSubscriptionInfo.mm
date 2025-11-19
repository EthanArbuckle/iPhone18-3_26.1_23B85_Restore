@interface NPHServiceSubscriptionInfo
- (id)description;
@end

@implementation NPHServiceSubscriptionInfo

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = NPHServiceSubscriptionInfo;
  v3 = [(NPHServiceSubscriptionInfo *)&v16 description];
  v4 = [(NPHServiceSubscriptionInfo *)self serviceSubscriptionContext];
  v5 = [(NPHServiceSubscriptionInfo *)self shouldShowAddNewRemotePlan];
  v6 = [(NPHServiceSubscriptionInfo *)self shouldOfferRemotePlan];
  v7 = [(NPHServiceSubscriptionInfo *)self shouldOfferTrialPlan];
  v8 = [(NPHServiceSubscriptionInfo *)self shouldOfferSignupCompletion];
  v9 = [(NPHServiceSubscriptionInfo *)self trialPlanType];
  v10 = [(NPHServiceSubscriptionInfo *)self SIMStatus];
  v11 = [(NPHServiceSubscriptionInfo *)self planFlows];
  v12 = [(NPHServiceSubscriptionInfo *)self persistentError];
  v13 = [v15 stringWithFormat:@"%@ serviceSubscriptionContext: %@ shouldShowAddNewRemotePlan: %d shouldOfferRemotePlan: %d shouldOfferTrialPlan: %d shouldOfferSignupCompletion: %d trialPlanType: %@ SIMStatus: %@ planFlows: %lx persistentError: %@", v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end