@interface HDUserTrackedConceptQueryServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
- (HDUserTrackedConceptQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
@end

@implementation HDUserTrackedConceptQueryServer

- (HDUserTrackedConceptQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDUserTrackedConceptQueryServer;
  v11 = [(HDQueryServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    sortDescriptors = [configurationCopy sortDescriptors];
    sortDescriptors = v11->_sortDescriptors;
    v11->_sortDescriptors = sortDescriptors;
  }

  return v11;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  clientCopy = client;
  entitlements = [clientCopy entitlements];
  v8 = [entitlements hasEntitlement:*MEMORY[0x277CCC8B0]];

  if (v8 & 1) != 0 || ([clientCopy entitlements], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hasPrivateAccessEntitlementWithIdentifier:", *MEMORY[0x277CCC8A8]), v9, (v10))
  {
    v11 = 1;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:4 format:@"Missing required entitlement. Please reach out to the HealthKit team (Potentially in #help-healthkit-disclosed Slack channel) for further instructions."];
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
  queryUUID = [(HDQueryServer *)self queryUUID];
  clientProxy = [(HDQueryServer *)self clientProxy];
  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  clientHasAuthorizationForAllTypes = [authorizationOracle clientHasAuthorizationForAllTypes];

  if ((clientHasAuthorizationForAllTypes & 1) == 0)
  {
    objectType = [(HDQueryServer *)self objectType];
    v19 = 0;
    v9 = [(HDQueryServer *)self authorizationStatusRecordForType:objectType error:&v19];
    v10 = v19;

    if (!v9)
    {
      [clientProxy client_deliverError:v10 forQuery:queryUUID];
      goto LABEL_13;
    }

    if (([v9 canRead] & 1) == 0)
    {
      v14 = MEMORY[0x277CBEBF8];
      v13 = clientProxy;
      goto LABEL_12;
    }
  }

  profile = [(HDQueryServer *)self profile];
  v18 = 0;
  v12 = [HDUserDomainConceptAPIObjectManager allAPIObjectsFromUserDomainConceptsWithProfile:profile error:&v18];
  v10 = v18;

  v9 = [v12 hk_filter:&__block_literal_global_134];

  if (v9)
  {
    v13 = clientProxy;
    v14 = v9;
LABEL_12:
    [v13 client_deliverUserTrackedConcepts:v14 queryUUID:queryUUID];
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
    selfCopy = self;
    _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Error while fetching concepts: %{public}@", buf, 0x16u);
  }

  [clientProxy client_deliverError:v10 forQuery:queryUUID];
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