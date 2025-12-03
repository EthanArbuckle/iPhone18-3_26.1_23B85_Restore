@interface HDMedicationClusterQueryServer
- (HDMedicationClusterQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_queryMedicationsWithConfiguration:(uint64_t)configuration errorOut:;
- (id)_queryMedicationsWithExistingMedications:(void *)medications errorOut:(void *)out;
- (id)_queryMedicationsWithMachineReadableCode:(uint64_t)code errorOut:;
- (id)_queryMedicationsWithScanResult:(void *)result errorOut:(void *)out;
- (id)_queryMedicationsWithSearchTokens:(void *)tokens errorOut:(void *)out;
- (void)_queue_start;
@end

@implementation HDMedicationClusterQueryServer

- (HDMedicationClusterQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = HDMedicationClusterQueryServer;
  return [(HDQueryServer *)&v7 initWithUUID:d configuration:configuration client:client delegate:delegate];
}

- (void)_queue_start
{
  v9.receiver = self;
  v9.super_class = HDMedicationClusterQueryServer;
  [(HDQueryServer *)&v9 _queue_start];
  queryUUID = [(HDQueryServer *)self queryUUID];
  clientProxy = [(HDQueryServer *)self clientProxy];
  configuration = [(HDQueryServer *)self configuration];
  v8 = 0;
  v6 = [(HDMedicationClusterQueryServer *)self _queryMedicationsWithConfiguration:configuration errorOut:&v8];
  v7 = v8;

  if (v6)
  {
    [clientProxy client_deliverResults:v6 queryUUID:queryUUID];
  }

  else
  {
    if (!v7)
    {
      v7 = [MEMORY[0x277CCA9B8] hk_error:122 format:{@"Query operation returned nil without an error. queryUUID=[%@]", queryUUID}];
    }

    [clientProxy client_deliverError:v7 forQuery:queryUUID];
  }
}

- (id)_queryMedicationsWithConfiguration:(uint64_t)configuration errorOut:
{
  v6 = a2;
  v7 = v6;
  if (self)
  {
    switch([v6 queryType])
    {
      case 0:
        [MEMORY[0x277CCA9B8] hk_assignError:configuration code:3 format:@"Received queryType none"];
        goto LABEL_4;
      case 1:
        v14 = OUTLINED_FUNCTION_0_9();
        v11 = [HDMedicationClusterQueryServer _queryMedicationsWithScanResult:v14 errorOut:v15];
        goto LABEL_12;
      case 2:
        v16 = OUTLINED_FUNCTION_0_9();
        v11 = [(HDMedicationClusterQueryServer *)v16 _queryMedicationsWithMachineReadableCode:v17 errorOut:v18];
        goto LABEL_12;
      case 3:
        v12 = OUTLINED_FUNCTION_0_9();
        v11 = [HDMedicationClusterQueryServer _queryMedicationsWithSearchTokens:v12 errorOut:v13];
        goto LABEL_12;
      case 4:
        v9 = OUTLINED_FUNCTION_0_9();
        v11 = [HDMedicationClusterQueryServer _queryMedicationsWithExistingMedications:v9 errorOut:v10];
LABEL_12:
        v3 = v11;
        break;
      default:
        break;
    }
  }

  else
  {
LABEL_4:
    v3 = 0;
  }

  return v3;
}

- (id)_queryMedicationsWithScanResult:(void *)result errorOut:(void *)out
{
  if (result)
  {
    outCopy = out;
    [outCopy scanResult];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_3() limit];

    [result profile];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_1_9() medicationClustersFromScanResult:? limit:? profile:? errorOut:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_queryMedicationsWithMachineReadableCode:(uint64_t)code errorOut:
{
  selfCopy = self;
  v14[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v13 = 0;
    v6 = a2;
    [v6 machineReadableCode];
    objc_claimAutoreleasedReturnValue();
    codeAttributeType = [OUTLINED_FUNCTION_2_3() codeAttributeType];

    profile = [selfCopy profile];
    v9 = [HDMedicationSearchEngine medicationCluster:&v13 machineReadableCode:v3 codeAttributeType:codeAttributeType profile:profile errorOut:code];
    v10 = v13;

    selfCopy = 0;
    if (v9)
    {
      if (v10)
      {
        v14[0] = v10;
        selfCopy = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      }

      else
      {
        selfCopy = MEMORY[0x277CBEBF8];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (id)_queryMedicationsWithSearchTokens:(void *)tokens errorOut:(void *)out
{
  if (tokens)
  {
    outCopy = out;
    [outCopy textSearchTokens];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_3() limit];

    [tokens profile];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_1_9() medicationClustersFromTextSearchTokens:? limit:? profile:? errorOut:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_queryMedicationsWithExistingMedications:(void *)medications errorOut:(void *)out
{
  if (medications)
  {
    outCopy = out;
    [outCopy existingMedications];
    objc_claimAutoreleasedReturnValue();
    sinceDate = [OUTLINED_FUNCTION_2_3() sinceDate];
    [outCopy limit];

    [medications profile];
    objc_claimAutoreleasedReturnValue();
    v6 = [OUTLINED_FUNCTION_1_9() medicationClustersForCHRImportWithExistingMedications:? sinceDate:? limit:? profile:? errorOut:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end