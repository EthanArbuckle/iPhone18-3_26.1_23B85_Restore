@interface CRKASMWorldBuildOperation
+ (id)makeErrorWithErrorsByObjectID:(id)d;
- (CRKASMWorldBuildOperation)initWithEnvironment:(id)environment;
- (id)compileResult;
- (id)makeHousekeeperWithRoster:(id)roster;
- (id)rosterRequirements;
- (void)buildAllClassKitPersonsByClassID;
- (void)buildClassKitClasses;
- (void)buildClassKitLocationsByLocationID;
- (void)buildCurrentClassKitUser;
- (void)buildManageableLocationIDs;
- (void)checkAccountEligibility;
- (void)finish;
- (void)finishWithEmptyResultObject;
- (void)housekeepKeychainWithRoster:(id)roster;
- (void)main;
@end

@implementation CRKASMWorldBuildOperation

- (CRKASMWorldBuildOperation)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = CRKASMWorldBuildOperation;
  v6 = [(CRKASMWorldBuildOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environment, environment);
  }

  return v7;
}

- (void)main
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CRKASMWorldBuildOperation_main__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__CRKASMWorldBuildOperation_main__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCanceled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = CATErrorWithCodeAndUserInfo();
    [v3 endOperationWithError:v4];
  }

  else
  {

    [v3 checkAccountEligibility];
  }
}

- (void)checkAccountEligibility
{
  rosterRequirements = [(CRKASMWorldBuildOperation *)self rosterRequirements];
  accountState = [rosterRequirements accountState];

  if (accountState != 2)
  {
    if (accountState == 1)
    {
      v6 = _CRKLogASM_12();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v7 = "ASM World Build: Account is transitioning. Nothing to build right now.";
        v8 = &v10;
LABEL_14:
        _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      }
    }

    else
    {
      if (!accountState)
      {
        v5 = _CRKLogASM_12();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "ASM World Build: No eligible ASM account signed in", buf, 2u);
        }

        [(CRKASMWorldBuildOperation *)self housekeepKeychain];
        goto LABEL_16;
      }

      v6 = _CRKLogASM_12();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        v7 = "ASM World Build: Unknown account state. Doing nothing out of fear.";
        v8 = &v9;
        goto LABEL_14;
      }
    }

LABEL_16:
    [(CRKASMWorldBuildOperation *)self finishWithEmptyResultObject];
    return;
  }

  [(CRKASMWorldBuildOperation *)self buildCurrentClassKitUser];
}

- (void)buildCurrentClassKitUser
{
  rosterRequirements = [(CRKASMWorldBuildOperation *)self rosterRequirements];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__CRKASMWorldBuildOperation_buildCurrentClassKitUser__block_invoke;
  v4[3] = &unk_278DC2128;
  v4[4] = self;
  [rosterRequirements currentUserWithCompletion:v4];
}

void __53__CRKASMWorldBuildOperation_buildCurrentClassKitUser__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CRKASMWorldBuildOperation_buildCurrentClassKitUser__block_invoke_2;
  block[3] = &unk_278DC1DF0;
  block[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __53__CRKASMWorldBuildOperation_buildCurrentClassKitUser__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    if (*(a1 + 40))
    {
      v2 = *(a1 + 32);

      [v2 endOperationWithError:?];
    }

    else
    {
      v3 = [*(a1 + 48) person];
      v4 = v3;
      if (v3 && ([v3 objectID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
      {
        [*(a1 + 32) setClassKitCurrentUser:*(a1 + 48)];
        [*(a1 + 32) buildClassKitClasses];
      }

      else
      {
        v6 = _CRKLogASM_12();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "ASM World Build: Could not find current user", v7, 2u);
        }

        [*(a1 + 32) finishWithEmptyResultObject];
      }
    }
  }
}

- (void)buildClassKitClasses
{
  rosterRequirements = [(CRKASMWorldBuildOperation *)self rosterRequirements];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__CRKASMWorldBuildOperation_buildClassKitClasses__block_invoke;
  v4[3] = &unk_278DC1E18;
  v4[4] = self;
  [rosterRequirements classesWithCompletion:v4];
}

void __49__CRKASMWorldBuildOperation_buildClassKitClasses__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CRKASMWorldBuildOperation_buildClassKitClasses__block_invoke_2;
  block[3] = &unk_278DC1DF0;
  block[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __49__CRKASMWorldBuildOperation_buildClassKitClasses__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isExecuting];
  if (result)
  {
    if (*(a1 + 40))
    {
      v3 = *(a1 + 32);

      return [v3 endOperationWithError:?];
    }

    else
    {
      v4 = [*(a1 + 48) crk_filterUsingBlock:&__block_literal_global_55];
      [*(a1 + 32) setClassKitClasses:v4];

      v5 = *(a1 + 32);

      return [v5 buildClassKitLocationsByLocationID];
    }
  }

  return result;
}

BOOL __49__CRKASMWorldBuildOperation_buildClassKitClasses__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectID];

  if (!v3)
  {
    v4 = _CRKLogASM_12();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__CRKASMWorldBuildOperation_buildClassKitClasses__block_invoke_3_cold_1(v2);
    }
  }

  return v3 != 0;
}

- (void)buildClassKitLocationsByLocationID
{
  v3 = MEMORY[0x277CBEB98];
  classKitClasses = [(CRKASMWorldBuildOperation *)self classKitClasses];
  v5 = [classKitClasses crk_mapUsingBlock:&__block_literal_global_6_2];
  v6 = [v3 setWithArray:v5];

  rosterRequirements = [(CRKASMWorldBuildOperation *)self rosterRequirements];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__CRKASMWorldBuildOperation_buildClassKitLocationsByLocationID__block_invoke_2;
  v8[3] = &unk_278DC1E18;
  v8[4] = self;
  [rosterRequirements locationsWithObjectIDs:v6 completion:v8];
}

void __63__CRKASMWorldBuildOperation_buildClassKitLocationsByLocationID__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CRKASMWorldBuildOperation_buildClassKitLocationsByLocationID__block_invoke_3;
  block[3] = &unk_278DC1DF0;
  block[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __63__CRKASMWorldBuildOperation_buildClassKitLocationsByLocationID__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) isExecuting];
  if (result)
  {
    if (*(a1 + 40))
    {
      v3 = *(a1 + 32);

      return [v3 endOperationWithError:?];
    }

    else
    {
      v4 = [*(a1 + 48) crk_dictionaryUsingKeyGenerator:&__block_literal_global_9 valueGenerator:&__block_literal_global_12_1];
      [*(a1 + 32) setClassKitLocationsByLocationID:v4];

      v5 = *(a1 + 32);

      return [v5 buildManageableLocationIDs];
    }
  }

  return result;
}

- (void)buildManageableLocationIDs
{
  rosterRequirements = [(CRKASMWorldBuildOperation *)self rosterRequirements];
  classKitCurrentUser = [(CRKASMWorldBuildOperation *)self classKitCurrentUser];
  person = [classKitCurrentUser person];
  objectID = [person objectID];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CRKASMWorldBuildOperation_buildManageableLocationIDs__block_invoke;
  v7[3] = &unk_278DC1E18;
  v7[4] = self;
  [rosterRequirements locationsWithManagePermissionsForUserWithObjectID:objectID completion:v7];
}

void __55__CRKASMWorldBuildOperation_buildManageableLocationIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CRKASMWorldBuildOperation_buildManageableLocationIDs__block_invoke_2;
  block[3] = &unk_278DC1DF0;
  block[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__CRKASMWorldBuildOperation_buildManageableLocationIDs__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    if (*(a1 + 40))
    {
      v2 = *(a1 + 32);

      [v2 endOperationWithError:?];
    }

    else
    {
      v8 = [*(a1 + 48) crk_dictionaryUsingKeyGenerator:&__block_literal_global_14_0 valueGenerator:&__block_literal_global_16];
      v3 = [*(a1 + 32) classKitLocationsByLocationID];
      v4 = [v3 crk_dictionaryByAddingEntriesFromDictionary:v8];
      [*(a1 + 32) setClassKitLocationsByLocationID:v4];

      v5 = MEMORY[0x277CBEB98];
      v6 = [*(a1 + 48) crk_mapUsingBlock:&__block_literal_global_18_0];
      v7 = [v5 setWithArray:v6];
      [*(a1 + 32) setManageableLocationIDs:v7];

      [*(a1 + 32) buildAllClassKitPersonsByClassID];
    }
  }
}

- (void)buildAllClassKitPersonsByClassID
{
  v41 = *MEMORY[0x277D85DE8];
  v21 = objc_opt_new();
  v20 = objc_opt_new();
  v19 = objc_opt_new();
  v3 = dispatch_group_create();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(CRKASMWorldBuildOperation *)self classKitClasses];
  v4 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v18 = *v37;
    do
    {
      v6 = 0;
      do
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v36 + 1) + 8 * v6);
        dispatch_group_enter(v3);
        rosterRequirements = [(CRKASMWorldBuildOperation *)self rosterRequirements];
        objectID = [v7 objectID];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __61__CRKASMWorldBuildOperation_buildAllClassKitPersonsByClassID__block_invoke;
        v31[3] = &unk_278DC21F8;
        v10 = v21;
        v32 = v10;
        v33 = v7;
        v34 = v19;
        v11 = v3;
        v35 = v11;
        [rosterRequirements trustedPersonsInClassWithObjectID:objectID completion:v31];

        dispatch_group_enter(v11);
        rosterRequirements2 = [(CRKASMWorldBuildOperation *)self rosterRequirements];
        objectID2 = [v7 objectID];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __61__CRKASMWorldBuildOperation_buildAllClassKitPersonsByClassID__block_invoke_3;
        v26[3] = &unk_278DC21F8;
        v27 = v10;
        v28 = v7;
        v29 = v20;
        v30 = v11;
        [rosterRequirements2 personsInClassWithObjectID:objectID2 completion:v26];

        ++v6;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v5);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CRKASMWorldBuildOperation_buildAllClassKitPersonsByClassID__block_invoke_5;
  block[3] = &unk_278DC12D0;
  block[4] = self;
  v23 = v21;
  v24 = v19;
  v25 = v20;
  v14 = v20;
  v15 = v19;
  v16 = v21;
  dispatch_group_notify(v3, MEMORY[0x277D85CD0], block);
}

void __61__CRKASMWorldBuildOperation_buildAllClassKitPersonsByClassID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__CRKASMWorldBuildOperation_buildAllClassKitPersonsByClassID__block_invoke_2;
  v12[3] = &unk_278DC21D0;
  v13 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v5;
  v18 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __61__CRKASMWorldBuildOperation_buildAllClassKitPersonsByClassID__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 40;
  }

  else
  {
    if (*(a1 + 64))
    {
      v2 = *(a1 + 64);
    }

    else
    {
      v2 = MEMORY[0x277CBEBF8];
    }

    v3 = 56;
  }

  v4 = *(a1 + v3);
  v5 = [*(a1 + 48) objectID];
  [v4 setObject:v2 forKeyedSubscript:v5];

  v6 = *(a1 + 72);

  dispatch_group_leave(v6);
}

void __61__CRKASMWorldBuildOperation_buildAllClassKitPersonsByClassID__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__CRKASMWorldBuildOperation_buildAllClassKitPersonsByClassID__block_invoke_4;
  v12[3] = &unk_278DC21D0;
  v13 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v5;
  v18 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __61__CRKASMWorldBuildOperation_buildAllClassKitPersonsByClassID__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 40;
  }

  else
  {
    if (*(a1 + 64))
    {
      v2 = *(a1 + 64);
    }

    else
    {
      v2 = MEMORY[0x277CBEBF8];
    }

    v3 = 56;
  }

  v4 = *(a1 + v3);
  v5 = [*(a1 + 48) objectID];
  [v4 setObject:v2 forKeyedSubscript:v5];

  v6 = *(a1 + 72);

  dispatch_group_leave(v6);
}

void __61__CRKASMWorldBuildOperation_buildAllClassKitPersonsByClassID__block_invoke_5(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = [objc_opt_class() makeErrorWithErrorsByObjectID:*(a1 + 40)];
    v5 = v2;
    if (v2)
    {
      [*(a1 + 32) endOperationWithError:v2];
    }

    else
    {
      v3 = [*(a1 + 48) copy];
      [*(a1 + 32) setTrustedClassKitPersonsByClassID:v3];

      v4 = [*(a1 + 56) copy];
      [*(a1 + 32) setClassKitPersonsByClassID:v4];

      [*(a1 + 32) finish];
    }
  }
}

- (void)finish
{
  compileResult = [(CRKASMWorldBuildOperation *)self compileResult];
  [(CRKASMWorldBuildOperation *)self endOperationWithResultObject:compileResult];
}

- (void)finishWithEmptyResultObject
{
  v3 = objc_opt_new();
  [(CRKASMWorldBuildOperation *)self endOperationWithResultObject:v3];
}

- (void)housekeepKeychainWithRoster:(id)roster
{
  v3 = [(CRKASMWorldBuildOperation *)self makeHousekeeperWithRoster:roster];
  [v3 housekeep];
}

- (id)makeHousekeeperWithRoster:(id)roster
{
  rosterCopy = roster;
  v5 = [CRKASMCredentialHousekeeper alloc];
  environment = [(CRKASMWorldBuildOperation *)self environment];
  configuration = [environment configuration];
  credentialStore = [configuration credentialStore];
  v9 = [(CRKASMCredentialHousekeeper *)v5 initWithRoster:rosterCopy credentialStore:credentialStore];

  return v9;
}

- (id)compileResult
{
  environment = [(CRKASMWorldBuildOperation *)self environment];
  certificateVendor = [environment certificateVendor];

  environment2 = [(CRKASMWorldBuildOperation *)self environment];
  classKitCurrentUser = [(CRKASMWorldBuildOperation *)self classKitCurrentUser];
  person = [classKitCurrentUser person];
  objectID = [person objectID];
  v8 = [environment2 identityVendorForUserIdentifier:objectID];

  classKitClasses = [(CRKASMWorldBuildOperation *)self classKitClasses];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __42__CRKASMWorldBuildOperation_compileResult__block_invoke;
  v33[3] = &unk_278DC2220;
  v33[4] = self;
  v34 = v8;
  v31 = v8;
  v10 = [classKitClasses crk_mapUsingBlock:v33];

  v11 = [CRKASMCollidingCourseFilter coursesByFilteringCollidingCoursesFromArray:v10];
  environment3 = [(CRKASMWorldBuildOperation *)self environment];
  userFactory = [environment3 userFactory];
  classKitCurrentUser2 = [(CRKASMWorldBuildOperation *)self classKitCurrentUser];
  person2 = [classKitCurrentUser2 person];
  v16 = [userFactory userForPerson:person2];

  v17 = [CRKASMConcreteOrganization alloc];
  classKitCurrentUser3 = [(CRKASMWorldBuildOperation *)self classKitCurrentUser];
  person3 = [classKitCurrentUser3 person];
  orgID = [person3 orgID];
  classKitCurrentUser4 = [(CRKASMWorldBuildOperation *)self classKitCurrentUser];
  organizationName = [classKitCurrentUser4 organizationName];
  v23 = [(CRKASMConcreteOrganization *)v17 initWithIdentifier:orgID name:organizationName];

  v24 = [[CRKASMConcreteRoster alloc] initWithOrganization:v23 user:v16 courses:v11 certificateVendor:certificateVendor];
  manageableLocationIDs = [(CRKASMWorldBuildOperation *)self manageableLocationIDs];
  allObjects = [manageableLocationIDs allObjects];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __42__CRKASMWorldBuildOperation_compileResult__block_invoke_27;
  v32[3] = &unk_278DC2248;
  v32[4] = self;
  v27 = [allObjects crk_mapUsingBlock:v32];

  [(CRKASMWorldBuildOperation *)self housekeepKeychainWithRoster:v24];
  v28 = [[CRKASMWorldBuildResultObject alloc] initWithRoster:v24 manageableLocations:v27];

  return v28;
}

CRKASMConcreteCourse *__42__CRKASMWorldBuildOperation_compileResult__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) classKitLocationsByLocationID];
  v5 = [v3 locationID];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [*(a1 + 32) classKitPersonsByClassID];
  v8 = [v3 objectID];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [*(a1 + 32) trustedClassKitPersonsByClassID];
  v11 = [v3 objectID];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v6)
  {
    v13 = [CRKASMConcreteCourse alloc];
    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) manageableLocationIDs];
    v16 = [*(a1 + 32) environment];
    v17 = [(CRKASMConcreteCourse *)v13 initWithBackingClass:v3 location:v6 persons:v9 trustedPersons:v12 identityVendor:v14 manageableLocationIDs:v15 environment:v16];
  }

  else
  {
    v18 = _CRKLogASM_12();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __42__CRKASMWorldBuildOperation_compileResult__block_invoke_cold_1(v3);
    }

    v17 = 0;
  }

  return v17;
}

CRKASMConcreteLocation *__42__CRKASMWorldBuildOperation_compileResult__block_invoke_27(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 classKitLocationsByLocationID];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = [[CRKASMConcreteLocation alloc] initWithBackingLocation:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)makeErrorWithErrorsByObjectID:(id)d
{
  v9[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy count])
  {
    if ([dCopy count] == 1)
    {
      allValues = [dCopy allValues];
      firstObject = [allValues firstObject];
    }

    else
    {
      v8 = @"CRKPartialErrorsByItemIdentifier";
      v9[0] = dCopy;
      allValues = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      firstObject = CRKErrorWithCodeAndUserInfo(29, allValues);
    }

    v6 = firstObject;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)rosterRequirements
{
  environment = [(CRKASMWorldBuildOperation *)self environment];
  configuration = [environment configuration];
  rosterRequirements = [configuration rosterRequirements];

  return rosterRequirements;
}

void __49__CRKASMWorldBuildOperation_buildClassKitClasses__block_invoke_3_cold_1(void *a1)
{
  v1 = [a1 className];
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Not vending class with name %@ because it has a nil object ID", v4, v5, v6, v7, 2u);
}

void __42__CRKASMWorldBuildOperation_compileResult__block_invoke_cold_1(void *a1)
{
  v1 = [a1 className];
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Not vending class with name %@ because it is missing a location", v4, v5, v6, v7, 2u);
}

@end