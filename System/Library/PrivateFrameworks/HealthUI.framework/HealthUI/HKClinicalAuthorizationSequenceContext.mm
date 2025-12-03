@interface HKClinicalAuthorizationSequenceContext
+ (HKClinicalAuthorizationSequenceContext)contextWithHealthStore:(id)store request:(id)request source:(id)source;
- (HKClinicalAuthorizationSequenceContext)initWithHealthStore:(id)store healthRecordsStore:(id)recordsStore authorizationController:(id)controller readUsageDescription:(id)description source:(id)source;
@end

@implementation HKClinicalAuthorizationSequenceContext

+ (HKClinicalAuthorizationSequenceContext)contextWithHealthStore:(id)store request:(id)request source:(id)source
{
  v8 = MEMORY[0x1E696C1A8];
  sourceCopy = source;
  requestCopy = request;
  storeCopy = store;
  v12 = [[v8 alloc] initWithHealthStore:storeCopy];
  v13 = [HKClinicalSourceAuthorizationController alloc];
  typesRequiringReadAuthorization = [requestCopy typesRequiringReadAuthorization];
  v15 = [(HKClinicalSourceAuthorizationController *)v13 initWithHealthStore:storeCopy healthRecordsStore:v12 source:sourceCopy typesRequestedForReading:typesRequiringReadAuthorization];

  v16 = [self alloc];
  readUsageDescription = [requestCopy readUsageDescription];

  v18 = [v16 initWithHealthStore:storeCopy healthRecordsStore:v12 authorizationController:v15 readUsageDescription:readUsageDescription source:sourceCopy];

  return v18;
}

- (HKClinicalAuthorizationSequenceContext)initWithHealthStore:(id)store healthRecordsStore:(id)recordsStore authorizationController:(id)controller readUsageDescription:(id)description source:(id)source
{
  storeCopy = store;
  recordsStoreCopy = recordsStore;
  controllerCopy = controller;
  descriptionCopy = description;
  sourceCopy = source;
  v26.receiver = self;
  v26.super_class = HKClinicalAuthorizationSequenceContext;
  v17 = [(HKClinicalAuthorizationSequenceContext *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_authorizationController, controller);
    v19 = [descriptionCopy copy];
    readUsageDescription = v18->_readUsageDescription;
    v18->_readUsageDescription = v19;

    v21 = [sourceCopy copy];
    source = v18->_source;
    v18->_source = v21;

    v23 = [[HKClinicalAuthorizationFlowManager alloc] initWithHealthStore:storeCopy healthRecordsStore:recordsStoreCopy];
    authFlowManager = v18->_authFlowManager;
    v18->_authFlowManager = v23;

    objc_storeStrong(&v18->_wrappedFlowManager, v18->_authFlowManager);
  }

  return v18;
}

@end