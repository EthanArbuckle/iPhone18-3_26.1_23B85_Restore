@interface HDMedicationClusterQueryServer
- (HDMedicationClusterQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_queryMedicationsWithConfiguration:(uint64_t)a3 errorOut:;
- (id)_queryMedicationsWithExistingMedications:(void *)a1 errorOut:(void *)a2;
- (id)_queryMedicationsWithMachineReadableCode:(uint64_t)a3 errorOut:;
- (id)_queryMedicationsWithScanResult:(void *)a1 errorOut:(void *)a2;
- (id)_queryMedicationsWithSearchTokens:(void *)a1 errorOut:(void *)a2;
- (void)_queue_start;
@end

@implementation HDMedicationClusterQueryServer

- (HDMedicationClusterQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v7.receiver = self;
  v7.super_class = HDMedicationClusterQueryServer;
  return [(HDQueryServer *)&v7 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
}

- (void)_queue_start
{
  v9.receiver = self;
  v9.super_class = HDMedicationClusterQueryServer;
  [(HDQueryServer *)&v9 _queue_start];
  v3 = [(HDQueryServer *)self queryUUID];
  v4 = [(HDQueryServer *)self clientProxy];
  v5 = [(HDQueryServer *)self configuration];
  v8 = 0;
  v6 = [(HDMedicationClusterQueryServer *)self _queryMedicationsWithConfiguration:v5 errorOut:&v8];
  v7 = v8;

  if (v6)
  {
    [v4 client_deliverResults:v6 queryUUID:v3];
  }

  else
  {
    if (!v7)
    {
      v7 = [MEMORY[0x277CCA9B8] hk_error:122 format:{@"Query operation returned nil without an error. queryUUID=[%@]", v3}];
    }

    [v4 client_deliverError:v7 forQuery:v3];
  }
}

- (id)_queryMedicationsWithConfiguration:(uint64_t)a3 errorOut:
{
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    switch([v6 queryType])
    {
      case 0:
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Received queryType none"];
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

- (id)_queryMedicationsWithScanResult:(void *)a1 errorOut:(void *)a2
{
  if (a1)
  {
    v4 = a2;
    [v4 scanResult];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_3() limit];

    [a1 profile];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_1_9() medicationClustersFromScanResult:? limit:? profile:? errorOut:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_queryMedicationsWithMachineReadableCode:(uint64_t)a3 errorOut:
{
  v4 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v13 = 0;
    v6 = a2;
    [v6 machineReadableCode];
    objc_claimAutoreleasedReturnValue();
    v7 = [OUTLINED_FUNCTION_2_3() codeAttributeType];

    v8 = [v4 profile];
    v9 = [HDMedicationSearchEngine medicationCluster:&v13 machineReadableCode:v3 codeAttributeType:v7 profile:v8 errorOut:a3];
    v10 = v13;

    v4 = 0;
    if (v9)
    {
      if (v10)
      {
        v14[0] = v10;
        v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      }

      else
      {
        v4 = MEMORY[0x277CBEBF8];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_queryMedicationsWithSearchTokens:(void *)a1 errorOut:(void *)a2
{
  if (a1)
  {
    v4 = a2;
    [v4 textSearchTokens];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_3() limit];

    [a1 profile];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_1_9() medicationClustersFromTextSearchTokens:? limit:? profile:? errorOut:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_queryMedicationsWithExistingMedications:(void *)a1 errorOut:(void *)a2
{
  if (a1)
  {
    v4 = a2;
    [v4 existingMedications];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_2_3() sinceDate];
    [v4 limit];

    [a1 profile];
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