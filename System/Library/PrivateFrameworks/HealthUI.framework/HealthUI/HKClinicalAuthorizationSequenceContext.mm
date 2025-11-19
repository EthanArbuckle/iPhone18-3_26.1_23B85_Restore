@interface HKClinicalAuthorizationSequenceContext
+ (HKClinicalAuthorizationSequenceContext)contextWithHealthStore:(id)a3 request:(id)a4 source:(id)a5;
- (HKClinicalAuthorizationSequenceContext)initWithHealthStore:(id)a3 healthRecordsStore:(id)a4 authorizationController:(id)a5 readUsageDescription:(id)a6 source:(id)a7;
@end

@implementation HKClinicalAuthorizationSequenceContext

+ (HKClinicalAuthorizationSequenceContext)contextWithHealthStore:(id)a3 request:(id)a4 source:(id)a5
{
  v8 = MEMORY[0x1E696C1A8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithHealthStore:v11];
  v13 = [HKClinicalSourceAuthorizationController alloc];
  v14 = [v10 typesRequiringReadAuthorization];
  v15 = [(HKClinicalSourceAuthorizationController *)v13 initWithHealthStore:v11 healthRecordsStore:v12 source:v9 typesRequestedForReading:v14];

  v16 = [a1 alloc];
  v17 = [v10 readUsageDescription];

  v18 = [v16 initWithHealthStore:v11 healthRecordsStore:v12 authorizationController:v15 readUsageDescription:v17 source:v9];

  return v18;
}

- (HKClinicalAuthorizationSequenceContext)initWithHealthStore:(id)a3 healthRecordsStore:(id)a4 authorizationController:(id)a5 readUsageDescription:(id)a6 source:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = HKClinicalAuthorizationSequenceContext;
  v17 = [(HKClinicalAuthorizationSequenceContext *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_authorizationController, a5);
    v19 = [v15 copy];
    readUsageDescription = v18->_readUsageDescription;
    v18->_readUsageDescription = v19;

    v21 = [v16 copy];
    source = v18->_source;
    v18->_source = v21;

    v23 = [[HKClinicalAuthorizationFlowManager alloc] initWithHealthStore:v12 healthRecordsStore:v13];
    authFlowManager = v18->_authFlowManager;
    v18->_authFlowManager = v23;

    objc_storeStrong(&v18->_wrappedFlowManager, v18->_authFlowManager);
  }

  return v18;
}

@end