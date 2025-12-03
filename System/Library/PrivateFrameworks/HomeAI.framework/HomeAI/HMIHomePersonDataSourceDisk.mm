@interface HMIHomePersonDataSourceDisk
- (void)addFaceCrops:(id)crops completion:(id)completion;
- (void)addPersonFaceCrops:(id)crops completion:(id)completion;
- (void)addPersons:(id)persons completion:(id)completion;
- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)completion;
- (void)fetchSettingsWithCompletion:(id)completion;
- (void)removeFaceCropsWithUUIDs:(id)ds completion:(id)completion;
- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion;
- (void)removePersonsWithUUIDs:(id)ds completion:(id)completion;
@end

@implementation HMIHomePersonDataSourceDisk

- (void)fetchSettingsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(HMIMutableHomePersonManagerSettings);
  [(HMIHomePersonManagerSettings *)v5 setFaceClassificationEnabled:1];
  v4 = [(HMIMutableHomePersonManagerSettings *)v5 copy];
  completionCopy[2](completionCopy, v4, 0);
}

- (void)addFaceCrops:(id)crops completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 hmfErrorWithCode:5];
  (*(completion + 2))(completionCopy, v7);
}

- (void)addPersonFaceCrops:(id)crops completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 hmfErrorWithCode:5];
  (*(completion + 2))(completionCopy, v7);
}

- (void)addPersons:(id)persons completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 hmfErrorWithCode:5];
  (*(completion + 2))(completionCopy, v7);
}

- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v6 = [v4 hmfErrorWithCode:5];
  (*(completion + 2))(completionCopy, 0, v6);
}

- (void)removeFaceCropsWithUUIDs:(id)ds completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 hmfErrorWithCode:5];
  (*(completion + 2))(completionCopy, v7);
}

- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 hmfErrorWithCode:5];
  (*(completion + 2))(completionCopy, v7);
}

- (void)removePersonsWithUUIDs:(id)ds completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 hmfErrorWithCode:5];
  (*(completion + 2))(completionCopy, v7);
}

@end