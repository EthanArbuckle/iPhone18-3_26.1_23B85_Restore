@interface HDCloudSyncProfileManagementShim
- (HDCloudSyncProfileManagementShim)initWithProfile:(id)a3;
- (void)createProfileForIdentifier:(id)a3 firstName:(id)a4 lastName:(id)a5 configuration:(id)a6 completion:(id)a7;
- (void)deleteAllProfilesOfType:(int64_t)a3 configuration:(id)a4 completion:(id)a5;
- (void)deleteProfile:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)profileExistsForProfileIdentifier:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation HDCloudSyncProfileManagementShim

- (HDCloudSyncProfileManagementShim)initWithProfile:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDCloudSyncProfileManagementShim;
  v5 = [(HDCloudSyncProfileManagementShim *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;
  }

  return v6;
}

- (void)deleteAllProfilesOfType:(int64_t)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [a4 repository];
  v10 = [v9 profileManager];
  v19 = 0;
  LOBYTE(a3) = [v10 deleteAllProfilesOfType:a3 error:&v19];
  v11 = v19;

  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__HDCloudSyncProfileManagementShim_deleteAllProfilesOfType_configuration_completion___block_invoke;
  v15[3] = &unk_278616460;
  v18 = a3;
  v16 = v11;
  v17 = v8;
  v13 = v11;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)deleteProfile:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 repository];
  v11 = [v10 profileManager];
  v21 = 0;
  v12 = [v11 deleteProfile:v9 error:&v21];

  v13 = v21;
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__HDCloudSyncProfileManagementShim_deleteProfile_configuration_completion___block_invoke;
  v17[3] = &unk_278616460;
  v20 = v12;
  v18 = v13;
  v19 = v8;
  v15 = v13;
  v16 = v8;
  dispatch_async(queue, v17);
}

- (void)createProfileForIdentifier:(id)a3 firstName:(id)a4 lastName:(id)a5 configuration:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [a6 repository];
  v17 = [v16 profileManager];
  v28 = 0;
  v18 = [v17 createProfileForIdentifier:v15 firstName:v14 lastName:v13 error:&v28];

  v19 = v28;
  queue = self->_queue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __107__HDCloudSyncProfileManagementShim_createProfileForIdentifier_firstName_lastName_configuration_completion___block_invoke;
  v24[3] = &unk_278616488;
  v26 = v19;
  v27 = v12;
  v25 = v18;
  v21 = v19;
  v22 = v18;
  v23 = v12;
  dispatch_async(queue, v24);
}

void __107__HDCloudSyncProfileManagementShim_createProfileForIdentifier_firstName_lastName_configuration_completion___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (v3)
  {
    v6 = [v3 profileIdentifier];
    (*(v2 + 16))(v2, v6, a1[5]);
  }

  else
  {
    v4 = a1[5];
    v5 = *(v2 + 16);

    v5(v2, 0, v4);
  }
}

- (void)profileExistsForProfileIdentifier:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 repository];
  v11 = [v10 profileManager];
  v21 = 0;
  v12 = [v11 profileExistsForIdentifier:v9 error:&v21];

  v13 = v21;
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95__HDCloudSyncProfileManagementShim_profileExistsForProfileIdentifier_configuration_completion___block_invoke;
  v17[3] = &unk_2786164B0;
  v20 = v12;
  v18 = v13;
  v19 = v8;
  v15 = v8;
  v16 = v13;
  dispatch_async(queue, v17);
}

uint64_t __95__HDCloudSyncProfileManagementShim_profileExistsForProfileIdentifier_configuration_completion___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    *(a1 + 48);
  }

  return (*(*(a1 + 40) + 16))();
}

@end