@interface HDUserTrackedConceptQueryServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
- (HDUserTrackedConceptQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
@end

@implementation HDUserTrackedConceptQueryServer

- (HDUserTrackedConceptQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HDUserTrackedConceptQueryServer;
  v11 = [(HDQueryServer *)&v15 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 sortDescriptors];
    sortDescriptors = v11->_sortDescriptors;
    v11->_sortDescriptors = v12;
  }

  return v11;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [v6 entitlements];
  v8 = [v7 hasEntitlement:*MEMORY[0x277CCC8B0]];

  if (v8 & 1) != 0 || ([v6 entitlements], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hasPrivateAccessEntitlementWithIdentifier:", *MEMORY[0x277CCC8A8]), v9, (v10))
  {
    v11 = 1;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:4 format:@"Missing required entitlement. Please reach out to the HealthKit team (Potentially in #help-healthkit-disclosed Slack channel) for further instructions."];
    v11 = 0;
  }

  return v11;
}

- (void)_queue_start
{
  v25 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = HDUserTrackedConceptQueryServer;
  [(HDQueryServer *)&v20 _queue_start];
  v3 = [(HDQueryServer *)self queryUUID];
  v4 = [(HDQueryServer *)self clientProxy];
  v5 = [(HDQueryServer *)self client];
  v6 = [v5 authorizationOracle];
  v7 = [v6 clientHasAuthorizationForAllTypes];

  if ((v7 & 1) == 0)
  {
    v8 = [(HDQueryServer *)self objectType];
    v19 = 0;
    v9 = [(HDQueryServer *)self authorizationStatusRecordForType:v8 error:&v19];
    v10 = v19;

    if (!v9)
    {
      [v4 client_deliverError:v10 forQuery:v3];
      goto LABEL_13;
    }

    if (([v9 canRead] & 1) == 0)
    {
      v14 = MEMORY[0x277CBEBF8];
      v13 = v4;
      goto LABEL_12;
    }
  }

  v11 = [(HDQueryServer *)self profile];
  v18 = 0;
  v12 = [HDUserDomainConceptAPIObjectManager allAPIObjectsFromUserDomainConceptsWithProfile:v11 error:&v18];
  v10 = v18;

  v9 = [v12 hk_filter:&__block_literal_global_134];

  if (v9)
  {
    v13 = v4;
    v14 = v9;
LABEL_12:
    [v13 client_deliverUserTrackedConcepts:v14 queryUUID:v3];
    goto LABEL_13;
  }

  _HKInitializeLogging();
  v15 = HKLogHealthOntology();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v17 = HKSensitiveLogItem();
    *buf = 138543618;
    v22 = v17;
    v23 = 2114;
    v24 = self;
    _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Error while fetching concepts: %{public}@", buf, 0x16u);
  }

  [v4 client_deliverError:v10 forQuery:v3];
  v9 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __47__HDUserTrackedConceptQueryServer__queue_start__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userTrackedConceptType];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCCE88]];

  return v4;
}

@end