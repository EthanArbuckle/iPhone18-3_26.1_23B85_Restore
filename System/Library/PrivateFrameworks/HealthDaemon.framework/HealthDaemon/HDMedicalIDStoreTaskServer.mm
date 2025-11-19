@interface HDMedicalIDStoreTaskServer
+ (BOOL)validateClient:(id)a3 error:(id *)a4;
- (id)medicalIDDataManagerWithError:(void *)a1;
- (void)remote_addEmergencyContact:(id)a3 completion:(id)a4;
- (void)remote_deleteMedicalIDDataWithLastFetchedMedicalIDData:(id)a3 completion:(id)a4;
- (void)remote_fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion:(id)a3;
- (void)remote_fetchMedicalIDWithCompletion:(id)a3;
- (void)remote_medicalIDClinicalContactsWithCompletion:(id)a3;
- (void)remote_medicalIDEmergencyContactsWithCompletion:(id)a3;
- (void)remote_removeEmergencyContact:(id)a3 completion:(id)a4;
- (void)remote_updateMedicalIDData:(id)a3 lastFetchedMedicalIDData:(id)a4 completion:(id)a5;
@end

@implementation HDMedicalIDStoreTaskServer

+ (BOOL)validateClient:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = *MEMORY[0x277CCC368];
  if ([v5 hasRequiredEntitlement:*MEMORY[0x277CCC368] error:a4])
  {
    v7 = [v5 valueForEntitlement:v6];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = [v5 hasRequiredArrayEntitlement:v6 containing:*MEMORY[0x277CCBD50] error:a4] | v8;

  return v9 & 1;
}

- (id)medicalIDDataManagerWithError:(void *)a1
{
  if (a1)
  {
    v4 = [a1 profile];
    v5 = [v4 medicalIDDataManager];

    if (v5)
    {
      v6 = [a1 profile];
      v7 = [v6 medicalIDDataManager];
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
      if (v6)
      {
        if (a2)
        {
          v8 = v6;
          *a2 = v6;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)remote_fetchMedicalIDWithCompletion:(id)a3
{
  v10 = 0;
  v4 = a3;
  v5 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v6 = v10;
  v9 = v6;
  v7 = [v5 fetchMedicalIDIfSetUpWithError:&v9];
  v8 = v9;

  v4[2](v4, v7, v8);
}

- (void)remote_fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion:(id)a3
{
  v10 = 0;
  v4 = a3;
  v5 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v6 = v10;
  v9 = v6;
  v7 = [v5 fetchMedicalIDDataIfSetUpOrCreateDefaultWithError:&v9];
  v8 = v9;

  v4[2](v4, v7, v8);
}

- (void)remote_updateMedicalIDData:(id)a3 lastFetchedMedicalIDData:(id)a4 completion:(id)a5
{
  v7 = a5;
  v18 = 0;
  v8 = a3;
  v9 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v10 = v18;
  v17 = v10;
  v11 = [v9 updateMedicalIDWithLocalData:v8 error:&v17];

  v12 = v17;
  if (v11)
  {
    v13 = [(HDStandardTaskServer *)self profile];
    v14 = [v13 daemon];
    v15 = [v14 analyticsSubmissionCoordinator];
    v16 = [(HDStandardTaskServer *)self profile];
    [v15 medicalID_reportHasBeenSetForProfileType:{objc_msgSend(v16, "profileType")}];
  }

  v7[2](v7, v11, v12);
}

- (void)remote_deleteMedicalIDDataWithLastFetchedMedicalIDData:(id)a3 completion:(id)a4
{
  v5 = a4;
  v15 = 0;
  v6 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v7 = v15;
  v14 = v7;
  v8 = [v6 deleteMedicalIDDataWithError:&v14];
  v9 = v14;

  if (v8)
  {
    v10 = [(HDStandardTaskServer *)self profile];
    v11 = [v10 daemon];
    v12 = [v11 analyticsSubmissionCoordinator];
    v13 = [(HDStandardTaskServer *)self profile];
    [v12 medicalID_reportHasBeenDeletedForProfileType:{objc_msgSend(v13, "profileType")}];
  }

  v5[2](v5, v8, v9);
}

- (void)remote_medicalIDEmergencyContactsWithCompletion:(id)a3
{
  v10 = 0;
  v4 = a3;
  v5 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v6 = v10;
  v9 = v6;
  v7 = [v5 medicalIDEmergencyContactsWithError:&v9];
  v8 = v9;

  v4[2](v4, v7, v8);
}

- (void)remote_medicalIDClinicalContactsWithCompletion:(id)a3
{
  v13 = 0;
  v4 = a3;
  v5 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v6 = v13;
  v12 = v6;
  v7 = [v5 medicalIDClinicalContactsWithError:&v12];
  v8 = v12;

  if (v7 || !v8)
  {
    v9 = v4;
    v10 = v7;
    v11 = 0;
  }

  else
  {
    v9 = v4;
    v10 = 0;
    v11 = v8;
  }

  (*(v4 + 2))(v9, v10, v11);
}

- (void)remote_addEmergencyContact:(id)a3 completion:(id)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v8 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v9 = v30;
  if (v8)
  {
    v29 = 0;
    v10 = [v8 fetchMedicalIDIfSetUpWithError:&v29];
    v11 = v29;
    v12 = v11;
    if (v10)
    {
      v13 = [v10 emergencyContacts];
      v14 = [v13 containsObject:v6];

      if (v14)
      {
        v7[2](v7, 1, 0);
      }

      else
      {
        v16 = [v10 emergencyContacts];
        v17 = [v16 count];
        v18 = *MEMORY[0x277CCDF30];

        if (v17 >= v18)
        {
          v22 = [MEMORY[0x277CCA9B8] hk_error:130 format:@"Medical ID emergency contact limit exceeded. Unable to add additional emergency contacts."];
          (v7)[2](v7, 0, v22);
        }

        else
        {
          v19 = [v10 emergencyContacts];
          if (v19)
          {
            v20 = [v10 emergencyContacts];
            v21 = [v20 arrayByAddingObject:v6];
            [v10 setEmergencyContacts:v21];
          }

          else
          {
            v31[0] = v6;
            v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
            [v10 setEmergencyContacts:v20];
          }

          v23 = [MEMORY[0x277CBEAA8] date];
          [v10 setEmergencyContactsModifiedDate:v23];

          v28 = 0;
          v24 = [v8 updateMedicalIDWithLocalData:v10 error:&v28];
          v25 = v28;
          v26 = v25;
          if (v24)
          {
            v27 = 0;
          }

          else
          {
            v27 = v25;
          }

          (v7)[2](v7, v24, v27);
        }
      }
    }

    else
    {
      if (!v11)
      {
        v12 = [MEMORY[0x277CCA9B8] hk_error:111 format:@"Medical ID has not been configured."];
      }

      (v7)[2](v7, 0, v12);
    }
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)remote_removeEmergencyContact:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v8 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v9 = v23;
  if (v8)
  {
    v22 = 0;
    v10 = [v8 fetchMedicalIDIfSetUpWithError:&v22];
    v11 = v22;
    if (v10 && ([v10 emergencyContacts], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", v6), v12, (v13 & 1) != 0))
    {
      v14 = [v10 emergencyContacts];
      v15 = [v14 mutableCopy];

      [v15 removeObject:v6];
      [v10 setEmergencyContacts:v15];
      v16 = [MEMORY[0x277CBEAA8] date];
      [v10 setEmergencyContactsModifiedDate:v16];

      v21 = 0;
      v17 = [v8 updateMedicalIDWithLocalData:v10 error:&v21];
      v18 = v21;
      v19 = v18;
      if (v17)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      (v7)[2](v7, v17, v20);
    }

    else
    {
      v7[2](v7, 1, 0);
    }
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }
}

@end