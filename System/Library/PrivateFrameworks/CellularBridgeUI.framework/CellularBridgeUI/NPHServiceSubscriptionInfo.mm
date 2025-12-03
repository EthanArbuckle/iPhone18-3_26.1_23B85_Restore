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
  serviceSubscriptionContext = [(NPHServiceSubscriptionInfo *)self serviceSubscriptionContext];
  shouldShowAddNewRemotePlan = [(NPHServiceSubscriptionInfo *)self shouldShowAddNewRemotePlan];
  shouldOfferRemotePlan = [(NPHServiceSubscriptionInfo *)self shouldOfferRemotePlan];
  shouldOfferTrialPlan = [(NPHServiceSubscriptionInfo *)self shouldOfferTrialPlan];
  shouldOfferSignupCompletion = [(NPHServiceSubscriptionInfo *)self shouldOfferSignupCompletion];
  trialPlanType = [(NPHServiceSubscriptionInfo *)self trialPlanType];
  sIMStatus = [(NPHServiceSubscriptionInfo *)self SIMStatus];
  planFlows = [(NPHServiceSubscriptionInfo *)self planFlows];
  persistentError = [(NPHServiceSubscriptionInfo *)self persistentError];
  v13 = [v15 stringWithFormat:@"%@ serviceSubscriptionContext: %@ shouldShowAddNewRemotePlan: %d shouldOfferRemotePlan: %d shouldOfferTrialPlan: %d shouldOfferSignupCompletion: %d trialPlanType: %@ SIMStatus: %@ planFlows: %lx persistentError: %@", v3, serviceSubscriptionContext, shouldShowAddNewRemotePlan, shouldOfferRemotePlan, shouldOfferTrialPlan, shouldOfferSignupCompletion, trialPlanType, sIMStatus, planFlows, persistentError];

  return v13;
}

@end