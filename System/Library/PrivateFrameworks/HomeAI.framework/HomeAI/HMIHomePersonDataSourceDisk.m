@interface HMIHomePersonDataSourceDisk
- (void)addFaceCrops:(id)a3 completion:(id)a4;
- (void)addPersonFaceCrops:(id)a3 completion:(id)a4;
- (void)addPersons:(id)a3 completion:(id)a4;
- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)a3;
- (void)fetchSettingsWithCompletion:(id)a3;
- (void)removeFaceCropsWithUUIDs:(id)a3 completion:(id)a4;
- (void)removeFaceprintsWithUUIDs:(id)a3 completion:(id)a4;
- (void)removePersonsWithUUIDs:(id)a3 completion:(id)a4;
@end

@implementation HMIHomePersonDataSourceDisk

- (void)fetchSettingsWithCompletion:(id)a3
{
  v3 = a3;
  v5 = objc_alloc_init(HMIMutableHomePersonManagerSettings);
  [(HMIHomePersonManagerSettings *)v5 setFaceClassificationEnabled:1];
  v4 = [(HMIMutableHomePersonManagerSettings *)v5 copy];
  v3[2](v3, v4, 0);
}

- (void)addFaceCrops:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 hmfErrorWithCode:5];
  (*(a4 + 2))(v6, v7);
}

- (void)addPersonFaceCrops:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 hmfErrorWithCode:5];
  (*(a4 + 2))(v6, v7);
}

- (void)addPersons:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 hmfErrorWithCode:5];
  (*(a4 + 2))(v6, v7);
}

- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = a3;
  v6 = [v4 hmfErrorWithCode:5];
  (*(a3 + 2))(v5, 0, v6);
}

- (void)removeFaceCropsWithUUIDs:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 hmfErrorWithCode:5];
  (*(a4 + 2))(v6, v7);
}

- (void)removeFaceprintsWithUUIDs:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 hmfErrorWithCode:5];
  (*(a4 + 2))(v6, v7);
}

- (void)removePersonsWithUUIDs:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 hmfErrorWithCode:5];
  (*(a4 + 2))(v6, v7);
}

@end