@interface HDMedicationExposableDoseEventControlTaskServer
+ (id)requiredEntitlements;
- (void)remote_deleteDoseEventWithPersistentUUID:(id)a3 completion:(id)a4;
- (void)remote_doseEventsForDateInterval:(id)a3 medicationIdentifier:(id)a4 completion:(id)a5;
- (void)remote_writeDoseEvents:(id)a3 completion:(id)a4;
@end

@implementation HDMedicationExposableDoseEventControlTaskServer

+ (id)requiredEntitlements
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CCC3F0];
  v6[0] = *MEMORY[0x277CCC1B8];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)remote_doseEventsForDateInterval:(id)a3 medicationIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HDStandardTaskServer *)self client];
  v12 = [v11 authorizationOracle];
  v13 = [v12 clientHasAuthorizationForAllTypes];

  if ((v13 & 1) == 0)
  {
    v15 = [(HDStandardTaskServer *)self client];
    v16 = [v15 authorizationOracle];
    v17 = [MEMORY[0x277CCDB68] userTrackedConceptTypeForIdentifier:*MEMORY[0x277CCCE88]];
    v32 = 0;
    v18 = [v16 authorizationStatusRecordForType:v17 error:&v32];
    v14 = v32;

    if (v18)
    {
      if ([v18 authorizationStatus] == 103)
      {

        goto LABEL_6;
      }

      v28 = MEMORY[0x277CCA9B8];
      v29 = @"Authorization denied.";
      v30 = 4;
    }

    else
    {
      _HKInitializeLogging();
      v21 = HKLogAuthorization();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(HDMedicationExposableDoseEventControlTaskServer *)v14 remote_doseEventsForDateInterval:v21 medicationIdentifier:v22 completion:v23, v24, v25, v26, v27];
      }

      v28 = MEMORY[0x277CCA9B8];
      v29 = @"Unable to determine authorization.";
      v30 = 5;
    }

    v20 = [v28 hk_error:v30 description:v29];

    v10[2](v10, 0, v20);
    goto LABEL_12;
  }

  v14 = 0;
LABEL_6:
  v19 = [(HDStandardTaskServer *)self profile];
  v31 = v14;
  v18 = [HDMedicationExposableDoseEventEngine doseEventsForDateInterval:v8 medicationIdentifier:v9 profile:v19 error:&v31];
  v20 = v31;

  (v10)[2](v10, v18, v20);
LABEL_12:
}

- (void)remote_writeDoseEvents:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDStandardTaskServer *)self client];
  v9 = [v8 authorizationOracle];
  v10 = [v9 clientHasAuthorizationForAllTypes];

  if ((v10 & 1) == 0)
  {
    v12 = [(HDStandardTaskServer *)self client];
    v13 = [v12 authorizationOracle];
    v14 = [MEMORY[0x277CCDB68] userTrackedConceptTypeForIdentifier:*MEMORY[0x277CCCE88]];
    v30 = 0;
    v15 = [v13 authorizationStatusRecordForType:v14 error:&v30];
    v11 = v30;

    if (v15)
    {
      if ([v15 authorizationStatus] == 103)
      {

        goto LABEL_6;
      }

      v26 = MEMORY[0x277CCA9B8];
      v27 = @"Authorization denied.";
      v28 = 4;
    }

    else
    {
      _HKInitializeLogging();
      v19 = HKLogAuthorization();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(HDMedicationExposableDoseEventControlTaskServer *)v11 remote_doseEventsForDateInterval:v19 medicationIdentifier:v20 completion:v21, v22, v23, v24, v25];
      }

      v26 = MEMORY[0x277CCA9B8];
      v27 = @"Unable to determine authorization.";
      v28 = 5;
    }

    v18 = [v26 hk_error:v28 description:v27];

    v7[2](v7, 0, v18);
    goto LABEL_12;
  }

  v11 = 0;
LABEL_6:
  v16 = [(HDStandardTaskServer *)self profile];
  v29 = v11;
  v17 = [HDMedicationExposableDoseEventEngine writeDoseEvents:v6 profile:v16 error:&v29];
  v18 = v29;

  v7[2](v7, v17, v18);
LABEL_12:
}

- (void)remote_deleteDoseEventWithPersistentUUID:(id)a3 completion:(id)a4
{
  v34[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HDStandardTaskServer *)self client];
  v9 = [v8 authorizationOracle];
  v10 = [v9 clientHasAuthorizationForAllTypes];

  if ((v10 & 1) == 0)
  {
    v12 = [(HDStandardTaskServer *)self client];
    v13 = [v12 authorizationOracle];
    v14 = [MEMORY[0x277CCDB68] userTrackedConceptTypeForIdentifier:*MEMORY[0x277CCCE88]];
    v33 = 0;
    v15 = [v13 authorizationStatusRecordForType:v14 error:&v33];
    v11 = v33;

    if (v15)
    {
      if ([v15 authorizationStatus] == 103)
      {

        goto LABEL_6;
      }

      v28 = MEMORY[0x277CCA9B8];
      v29 = @"Authorization denied.";
      v30 = 4;
    }

    else
    {
      _HKInitializeLogging();
      v21 = HKLogAuthorization();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(HDMedicationExposableDoseEventControlTaskServer *)v11 remote_doseEventsForDateInterval:v21 medicationIdentifier:v22 completion:v23, v24, v25, v26, v27];
      }

      v28 = MEMORY[0x277CCA9B8];
      v29 = @"Unable to determine authorization.";
      v30 = 5;
    }

    v20 = [v28 hk_error:v30 description:v29];

    v7[2](v7, 0, v20);
    goto LABEL_12;
  }

  v11 = 0;
LABEL_6:
  v15 = objc_alloc_init(MEMORY[0x277D10688]);
  v16 = [(HDStandardTaskServer *)self profile];
  v17 = [v16 dataManager];
  v34[0] = v6;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v32 = v11;
  v19 = [v17 deleteObjectsWithUUIDCollection:v18 configuration:v15 error:&v32];
  v20 = v32;

  v7[2](v7, v19, v20);
LABEL_12:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)remote_doseEventsForDateInterval:(uint64_t)a3 medicationIdentifier:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25181C000, a2, a3, "Failed to retrieve authorization status for activity summary type: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end