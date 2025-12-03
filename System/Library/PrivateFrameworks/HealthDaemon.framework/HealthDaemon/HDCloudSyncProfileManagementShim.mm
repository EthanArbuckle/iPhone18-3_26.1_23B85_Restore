@interface HDCloudSyncProfileManagementShim
- (HDCloudSyncProfileManagementShim)initWithProfile:(id)profile;
- (void)createProfileForIdentifier:(id)identifier firstName:(id)name lastName:(id)lastName configuration:(id)configuration completion:(id)completion;
- (void)deleteAllProfilesOfType:(int64_t)type configuration:(id)configuration completion:(id)completion;
- (void)deleteProfile:(id)profile configuration:(id)configuration completion:(id)completion;
- (void)profileExistsForProfileIdentifier:(id)identifier configuration:(id)configuration completion:(id)completion;
@end

@implementation HDCloudSyncProfileManagementShim

- (HDCloudSyncProfileManagementShim)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HDCloudSyncProfileManagementShim;
  v5 = [(HDCloudSyncProfileManagementShim *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;
  }

  return v6;
}

- (void)deleteAllProfilesOfType:(int64_t)type configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  repository = [configuration repository];
  profileManager = [repository profileManager];
  v19 = 0;
  LOBYTE(type) = [profileManager deleteAllProfilesOfType:type error:&v19];
  v11 = v19;

  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__HDCloudSyncProfileManagementShim_deleteAllProfilesOfType_configuration_completion___block_invoke;
  v15[3] = &unk_278616460;
  typeCopy = type;
  v16 = v11;
  v17 = completionCopy;
  v13 = v11;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

- (void)deleteProfile:(id)profile configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  profileCopy = profile;
  repository = [configuration repository];
  profileManager = [repository profileManager];
  v21 = 0;
  v12 = [profileManager deleteProfile:profileCopy error:&v21];

  v13 = v21;
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__HDCloudSyncProfileManagementShim_deleteProfile_configuration_completion___block_invoke;
  v17[3] = &unk_278616460;
  v20 = v12;
  v18 = v13;
  v19 = completionCopy;
  v15 = v13;
  v16 = completionCopy;
  dispatch_async(queue, v17);
}

- (void)createProfileForIdentifier:(id)identifier firstName:(id)name lastName:(id)lastName configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  lastNameCopy = lastName;
  nameCopy = name;
  identifierCopy = identifier;
  repository = [configuration repository];
  profileManager = [repository profileManager];
  v28 = 0;
  v18 = [profileManager createProfileForIdentifier:identifierCopy firstName:nameCopy lastName:lastNameCopy error:&v28];

  v19 = v28;
  queue = self->_queue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __107__HDCloudSyncProfileManagementShim_createProfileForIdentifier_firstName_lastName_configuration_completion___block_invoke;
  v24[3] = &unk_278616488;
  v26 = v19;
  v27 = completionCopy;
  v25 = v18;
  v21 = v19;
  v22 = v18;
  v23 = completionCopy;
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

- (void)profileExistsForProfileIdentifier:(id)identifier configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  repository = [configuration repository];
  profileManager = [repository profileManager];
  v21 = 0;
  v12 = [profileManager profileExistsForIdentifier:identifierCopy error:&v21];

  v13 = v21;
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95__HDCloudSyncProfileManagementShim_profileExistsForProfileIdentifier_configuration_completion___block_invoke;
  v17[3] = &unk_2786164B0;
  v20 = v12;
  v18 = v13;
  v19 = completionCopy;
  v15 = completionCopy;
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