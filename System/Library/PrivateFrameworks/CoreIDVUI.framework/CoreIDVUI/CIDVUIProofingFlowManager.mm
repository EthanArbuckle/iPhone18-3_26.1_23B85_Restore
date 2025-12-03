@interface CIDVUIProofingFlowManager
- (CIDVUIProofingFlowManager)initWithDelegate:(id)delegate;
- (id)proofingFlowViewController;
- (unint64_t)currentProofingEligibilityStatus;
- (void)proofingFlowAvailability:(id)availability;
- (void)proofingStatus:(id)status country:(id)country completion:(id)completion;
- (void)startProofing:(id)proofing completion:(id)completion;
@end

@implementation CIDVUIProofingFlowManager

- (CIDVUIProofingFlowManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = CIDVUIProofingFlowManager;
  v5 = [(CIDVUIProofingFlowManager *)&v8 init];
  if (v5)
  {
    v6 = [[_TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager alloc] initWithDelegate:delegateCopy externalProofingFlowManager:v5];
    [(CIDVUIProofingFlowManager *)v5 setProofingFlowManager:v6];
  }

  return v5;
}

- (unint64_t)currentProofingEligibilityStatus
{
  proofingFlowManager = [(CIDVUIProofingFlowManager *)self proofingFlowManager];
  proofingEligibilityStatus = [proofingFlowManager proofingEligibilityStatus];

  return proofingEligibilityStatus;
}

- (void)startProofing:(id)proofing completion:(id)completion
{
  completionCopy = completion;
  proofingCopy = proofing;
  proofingFlowManager = [(CIDVUIProofingFlowManager *)self proofingFlowManager];
  [proofingFlowManager startProofingWithConfiguration:proofingCopy completionHandler:completionCopy];
}

- (id)proofingFlowViewController
{
  proofingFlowManager = [(CIDVUIProofingFlowManager *)self proofingFlowManager];
  proofingFlowViewController = [proofingFlowManager proofingFlowViewController];

  return proofingFlowViewController;
}

- (void)proofingFlowAvailability:(id)availability
{
  availabilityCopy = availability;
  proofingFlowManager = [(CIDVUIProofingFlowManager *)self proofingFlowManager];
  [proofingFlowManager proofingFlowAvailabilityWithCompletionHandler:availabilityCopy];
}

- (void)proofingStatus:(id)status country:(id)country completion:(id)completion
{
  completionCopy = completion;
  countryCopy = country;
  statusCopy = status;
  proofingFlowManager = [(CIDVUIProofingFlowManager *)self proofingFlowManager];
  [proofingFlowManager proofingStatusFor:statusCopy country:countryCopy completionHandler:completionCopy];
}

@end