@interface HMIHomePersonDataSourceInMemory
- (HMIHomePersonDataSourceInMemory)init;
- (id)existingFaceCropUUIDs;
- (id)existingPersonFaceCropUUIDs;
- (id)existingPersonUUIDs;
- (void)addFaceCrops:(id)a3 completion:(id)a4;
- (void)addFaceprints:(id)a3 completion:(id)a4;
- (void)addPersonFaceCrops:(id)a3 completion:(id)a4;
- (void)addPersons:(id)a3 completion:(id)a4;
- (void)associateFaceCropsWithUUIDs:(id)a3 toPersonWithUUID:(id)a4 forSource:(int64_t)a5 completion:(id)a6;
- (void)fetchAllFaceprintsWithCompletion:(id)a3;
- (void)fetchAllPersonFaceCropsWithCompletion:(id)a3;
- (void)fetchAllPersonsWithCompletion:(id)a3;
- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)a3;
- (void)fetchFaceCropsForPersonsWithUUIDs:(id)a3 completion:(id)a4;
- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)a3 completion:(id)a4;
- (void)fetchPersonsWithUUIDs:(id)a3 completion:(id)a4;
- (void)fetchSettingsWithCompletion:(id)a3;
- (void)performCloudPullWithCompletion:(id)a3;
- (void)removeFaceCropsWithUUIDs:(id)a3 completion:(id)a4;
- (void)removeFaceprintsWithUUIDs:(id)a3 completion:(id)a4;
- (void)removePersonsWithUUIDs:(id)a3 completion:(id)a4;
@end

@implementation HMIHomePersonDataSourceInMemory

- (HMIHomePersonDataSourceInMemory)init
{
  v16.receiver = self;
  v16.super_class = HMIHomePersonDataSourceInMemory;
  v2 = [(HMIHomePersonDataSourceInMemory *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    personToFaceCrops = v3->_personToFaceCrops;
    v3->_personToFaceCrops = v4;

    v6 = [MEMORY[0x277CBEB58] set];
    unassociatedFaceCrops = v3->_unassociatedFaceCrops;
    v3->_unassociatedFaceCrops = v6;

    v8 = [MEMORY[0x277CBEB98] set];
    removedPersonFaceCrops = v3->_removedPersonFaceCrops;
    v3->_removedPersonFaceCrops = v8;

    v10 = HMIDispatchQueueNameString(v3, 0);
    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    workQueue = v3->_workQueue;
    v3->_workQueue = v13;
  }

  return v3;
}

- (id)existingPersonUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HMIHomePersonDataSourceInMemory *)self personToFaceCrops];
  v5 = [v4 allKeys];
  v6 = [v5 na_map:&__block_literal_global_18];
  v7 = [v3 setWithArray:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)existingPersonFaceCropUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HMIHomePersonDataSourceInMemory *)self personToFaceCrops];
  v5 = [v4 allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HMIHomePersonDataSourceInMemory_existingPersonFaceCropUUIDs__block_invoke;
  v9[3] = &unk_278754020;
  v6 = v3;
  v10 = v6;
  [v5 na_each:v9];

  v7 = [v6 copy];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

void __62__HMIHomePersonDataSourceInMemory_existingPersonFaceCropUUIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 na_map:&__block_literal_global_5];
  [v2 unionSet:v3];
}

- (id)existingFaceCropUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMIHomePersonDataSourceInMemory *)self unassociatedFaceCrops];
  v4 = [v3 na_map:&__block_literal_global_9_0];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)fetchAllFaceprintsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMIHomePersonDataSourceInMemory_fetchAllFaceprintsWithCompletion___block_invoke;
  block[3] = &unk_278754068;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __68__HMIHomePersonDataSourceInMemory_fetchAllFaceprintsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEB98] set];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)fetchAllPersonFaceCropsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMIHomePersonDataSourceInMemory_fetchAllPersonFaceCropsWithCompletion___block_invoke;
  v7[3] = &unk_278752DF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __73__HMIHomePersonDataSourceInMemory_fetchAllPersonFaceCropsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v4 = [*(a1 + 32) personToFaceCrops];
  v5 = [v4 allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HMIHomePersonDataSourceInMemory_fetchAllPersonFaceCropsWithCompletion___block_invoke_2;
  v9[3] = &unk_278754020;
  v6 = v2;
  v10 = v6;
  [v5 na_each:v9];

  os_unfair_lock_unlock(v3 + 2);
  v7 = *(a1 + 40);
  v8 = [v6 copy];
  (*(v7 + 16))(v7, v8, 0);
}

- (void)fetchAllPersonsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMIHomePersonDataSourceInMemory_fetchAllPersonsWithCompletion___block_invoke;
  v7[3] = &unk_278752DF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__HMIHomePersonDataSourceInMemory_fetchAllPersonsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA60] array];
  v3 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v4 = [*(a1 + 32) personToFaceCrops];
  v7 = [v4 allKeys];

  os_unfair_lock_unlock(v3 + 2);
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277CBEB98] setWithArray:v7];
  (*(v5 + 16))(v5, v6, 0);
}

- (void)fetchFaceCropsForPersonsWithUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMIHomePersonDataSourceInMemory_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __80__HMIHomePersonDataSourceInMemory_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) existingPersonUUIDs];
  LOBYTE(v3) = [v3 isSubsetOfSet:v4];

  if (v3)
  {
    v5 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    v6 = [*(a1 + 40) personToFaceCrops];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __80__HMIHomePersonDataSourceInMemory_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_2;
    v14 = &unk_278754090;
    v15 = *(a1 + 32);
    v7 = v2;
    v16 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:&v11];

    os_unfair_lock_unlock(v5 + 2);
    v8 = *(a1 + 48);
    v9 = [v7 copy];
    (*(v8 + 16))(v8, v9, 0);
  }

  else
  {
    v10 = *(a1 + 48);
    v9 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Invalid person UUIDs"];
    (*(v10 + 16))(v10, 0, v9);
  }
}

void __80__HMIHomePersonDataSourceInMemory_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 UUID];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5)
  {
    [*(a1 + 40) unionSet:v7];
  }
}

- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMIHomePersonDataSourceInMemory_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke;
  block[3] = &unk_278754068;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __83__HMIHomePersonDataSourceInMemory_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEB98] set];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)fetchPersonsWithUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMIHomePersonDataSourceInMemory_fetchPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __68__HMIHomePersonDataSourceInMemory_fetchPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) existingPersonUUIDs];
  LOBYTE(v2) = [v2 isSubsetOfSet:v3];

  if (v2)
  {
    v4 = [MEMORY[0x277CBEB98] set];
    v5 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    v6 = MEMORY[0x277CBEB98];
    v7 = [*(a1 + 40) personToFaceCrops];
    v8 = [v7 allKeys];
    v9 = [v6 setWithArray:v8];

    os_unfair_lock_unlock(v5 + 2);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__HMIHomePersonDataSourceInMemory_fetchPersonsWithUUIDs_completion___block_invoke_2;
    v13[3] = &unk_2787540B8;
    v14 = *(a1 + 32);
    v10 = [v9 na_filter:v13];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Invalid person UUIDs"];
    (*(v11 + 16))(v11, 0, v12);
  }
}

uint64_t __68__HMIHomePersonDataSourceInMemory_fetchPersonsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)performCloudPullWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMIHomePersonDataSourceInMemory_performCloudPullWithCompletion___block_invoke;
  block[3] = &unk_278754068;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)addFaceCrops:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMIHomePersonDataSourceInMemory_addFaceCrops_completion___block_invoke;
  block[3] = &unk_278754068;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __59__HMIHomePersonDataSourceInMemory_addFaceCrops_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Not implemented"];
  (*(v1 + 16))(v1, v2);
}

- (void)addPersonFaceCrops:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMIHomePersonDataSourceInMemory_addPersonFaceCrops_completion___block_invoke;
  block[3] = &unk_278754068;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __65__HMIHomePersonDataSourceInMemory_addPersonFaceCrops_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Not implemented"];
  (*(v1 + 16))(v1, v2);
}

- (void)addPersons:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMIHomePersonDataSourceInMemory_addPersons_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __57__HMIHomePersonDataSourceInMemory_addPersons_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) na_map:&__block_literal_global_20];
  v3 = [*(a1 + 40) existingPersonUUIDs];
  v4 = [v2 intersectsSet:v3];

  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:{@"Invalid persons, person already exists"}];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__HMIHomePersonDataSourceInMemory_addPersons_completion___block_invoke_3;
    v9[3] = &unk_2787540E0;
    v8 = *(a1 + 32);
    v9[4] = *(a1 + 40);
    [v8 na_each:v9];
    os_unfair_lock_unlock(v7 + 2);
    (*(*(a1 + 48) + 16))();
  }
}

void __57__HMIHomePersonDataSourceInMemory_addPersons_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a2;
  v6 = [v3 set];
  v5 = [*(a1 + 32) personToFaceCrops];
  [v5 setObject:v6 forKeyedSubscript:v4];
}

- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HMIHomePersonDataSourceInMemory_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke;
  v7[3] = &unk_278752DF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __79__HMIHomePersonDataSourceInMemory_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB98] set];
  v3 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v4 = [*(a1 + 32) unassociatedFaceCrops];
  v5 = [v4 copy];

  os_unfair_lock_unlock(v3 + 2);
  (*(*(a1 + 40) + 16))();
}

- (void)fetchSettingsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMIHomePersonDataSourceInMemory_fetchSettingsWithCompletion___block_invoke;
  block[3] = &unk_278754068;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __63__HMIHomePersonDataSourceInMemory_fetchSettingsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Not implemented"];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)removeFaceCropsWithUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) existingPersonFaceCropUUIDs];
  LOBYTE(v2) = [v2 isSubsetOfSet:v3];

  if (v2)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    v6 = [*(a1 + 40) personToFaceCrops];
    v7 = [v6 allKeys];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke_2;
    v16[3] = &unk_278754130;
    v8 = v4;
    v17 = v8;
    *v14 = *(a1 + 32);
    v9 = v14[0];
    v18 = vextq_s8(*v14, *v14, 8uLL);
    [v7 na_each:v16];

    v10 = [*(*(a1 + 40) + 32) setByAddingObjectsFromSet:v8];
    v11 = *(a1 + 40);
    v12 = *(v11 + 32);
    *(v11 + 32) = v10;

    os_unfair_lock_unlock(v5 + 2);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = *(a1 + 48);
    v15 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:@"Invalid faceCropUUIDs"];
    (*(v13 + 16))(v13, v15);
  }
}

void __71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 personToFaceCrops];
  v7 = [v6 objectForKeyedSubscript:v5];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke_3;
  v18[3] = &unk_278754108;
  v19 = *(a1 + 48);
  v8 = [v7 na_filter:v18];
  [v4 unionSet:v8];

  v9 = [*(a1 + 40) personToFaceCrops];
  v10 = [v9 objectForKeyedSubscript:v5];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke_4;
  v16 = &unk_278754108;
  v17 = *(a1 + 48);
  v11 = [v10 na_filter:&v13];
  v12 = [*(a1 + 40) personToFaceCrops];
  [v12 setObject:v11 forKeyedSubscript:v5];
}

uint64_t __71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)removePersonsWithUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMIHomePersonDataSourceInMemory_removePersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __69__HMIHomePersonDataSourceInMemory_removePersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) existingPersonUUIDs];
  LOBYTE(v2) = [v2 isSubsetOfSet:v3];

  if (v2)
  {
    v4 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    v5 = [*(a1 + 40) personToFaceCrops];
    v6 = [v5 allKeys];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__HMIHomePersonDataSourceInMemory_removePersonsWithUUIDs_completion___block_invoke_2;
    v11[3] = &unk_278754158;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v12 = v7;
    v13 = v8;
    [v6 na_each:v11];

    os_unfair_lock_unlock(v4 + 2);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:{@"Invalid persons, person UUID doesn't exists"}];
    (*(v9 + 16))(v9, v10);
  }
}

void __69__HMIHomePersonDataSourceInMemory_removePersonsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = v3;
  v5 = [v3 UUID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = v6[4];
    v8 = [v6 personToFaceCrops];
    v9 = [v8 objectForKeyedSubscript:v14];
    v10 = [v7 setByAddingObjectsFromSet:v9];
    v11 = *(a1 + 40);
    v12 = *(v11 + 32);
    *(v11 + 32) = v10;

    v13 = [*(a1 + 40) personToFaceCrops];
    [v13 removeObjectForKey:v14];
  }
}

- (void)addFaceprints:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMIHomePersonDataSourceInMemory_addFaceprints_completion___block_invoke;
  block[3] = &unk_278754068;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)removeFaceprintsWithUUIDs:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMIHomePersonDataSourceInMemory_removeFaceprintsWithUUIDs_completion___block_invoke;
  block[3] = &unk_278754068;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)associateFaceCropsWithUUIDs:(id)a3 toPersonWithUUID:(id)a4 forSource:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke;
  block[3] = &unk_278754220;
  v18 = v10;
  v19 = self;
  v20 = v11;
  v21 = v12;
  v22 = a5;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  dispatch_async(v13, block);
}

void __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) existingFaceCropUUIDs];
  if ([v2 isSubsetOfSet:v3])
  {
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) existingPersonFaceCropUUIDs];
    LOBYTE(v4) = [v4 isSubsetOfSet:v5];

    if ((v4 & 1) == 0)
    {
      v31 = *(a1 + 56);
      v32 = MEMORY[0x277CCA9B8];
      v33 = @"Invalid faceCropUUIDs";
      goto LABEL_8;
    }
  }

  v6 = [*(a1 + 40) existingPersonUUIDs];
  v7 = [v6 containsObject:*(a1 + 48)];

  if (v7)
  {
    v8 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    v9 = MEMORY[0x277CBEB58];
    v10 = [*(a1 + 40) unassociatedFaceCrops];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_2;
    v47[3] = &unk_278754180;
    v48 = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    v49 = v11;
    v50 = v12;
    v13 = [v10 na_map:v47];
    v14 = [v9 setWithSet:v13];

    v15 = [*(a1 + 40) unassociatedFaceCrops];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_3;
    v45[3] = &unk_2787541A8;
    v46 = *(a1 + 32);
    v16 = [v15 na_filter:v45];
    v17 = [v16 mutableCopy];
    v18 = *(a1 + 40);
    v19 = *(v18 + 24);
    *(v18 + 24) = v17;

    v20 = [*(a1 + 40) personToFaceCrops];
    v21 = [v20 allKeys];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_4;
    v40[3] = &unk_2787541F8;
    v22 = v14;
    v41 = v22;
    *v34 = *(a1 + 32);
    v23 = v34[0];
    v42 = vextq_s8(*v34, *v34, 8uLL);
    v24 = *(a1 + 48);
    v25 = *(a1 + 64);
    v43 = v24;
    v44 = v25;
    [v21 na_each:v40];

    v26 = [*(a1 + 40) personToFaceCrops];
    v27 = [v26 allKeys];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_7;
    v36[3] = &unk_278754130;
    v28 = *(a1 + 48);
    v29 = *(a1 + 40);
    v37 = v28;
    v38 = v29;
    v30 = v22;
    v39 = v30;
    [v27 na_each:v36];

    os_unfair_lock_unlock(v8 + 2);
    (*(*(a1 + 56) + 16))();
    return;
  }

  v31 = *(a1 + 56);
  v32 = MEMORY[0x277CCA9B8];
  v33 = @"Invalid personUUID";
LABEL_8:
  v35 = [v32 hmiPrivateErrorWithCode:1000 description:v33];
  (*(v31 + 16))(v31, v35);
}

HMIPersonFaceCrop *__101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 UUID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [HMIPersonFaceCrop alloc];
    v7 = [v3 UUID];
    v8 = [v3 dataRepresentation];
    v9 = [v3 dateCreated];
    [v3 faceBoundingBox];
    v10 = [(HMIPersonFaceCrop *)v6 initWithUUID:v7 dataRepresentation:v8 dateCreated:v9 faceBoundingBox:a1[5] personUUID:a1[6] source:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 personToFaceCrops];
  v7 = [v6 objectForKeyedSubscript:v5];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_5;
  v20[3] = &unk_2787541D0;
  v21 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v22 = v8;
  v23 = v9;
  v10 = [v7 na_map:v20];
  [v4 unionSet:v10];

  v11 = [*(a1 + 40) personToFaceCrops];
  v12 = [v11 objectForKeyedSubscript:v5];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_6;
  v18 = &unk_278754108;
  v19 = *(a1 + 48);
  v13 = [v12 na_filter:&v15];
  v14 = [*(a1 + 40) personToFaceCrops];
  [v14 setObject:v13 forKeyedSubscript:v5];
}

HMIPersonFaceCrop *__101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 UUID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [HMIPersonFaceCrop alloc];
    v7 = [v3 UUID];
    v8 = [v3 dataRepresentation];
    v9 = [v3 dateCreated];
    [v3 faceBoundingBox];
    v10 = [(HMIPersonFaceCrop *)v6 initWithUUID:v7 dataRepresentation:v8 dateCreated:v9 faceBoundingBox:a1[5] personUUID:a1[6] source:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 UUID];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  if (v4)
  {
    v5 = [*(a1 + 40) personToFaceCrops];
    v6 = [v5 objectForKeyedSubscript:v9];
    v7 = [v6 setByAddingObjectsFromSet:*(a1 + 48)];
    v8 = [*(a1 + 40) personToFaceCrops];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }
}

@end