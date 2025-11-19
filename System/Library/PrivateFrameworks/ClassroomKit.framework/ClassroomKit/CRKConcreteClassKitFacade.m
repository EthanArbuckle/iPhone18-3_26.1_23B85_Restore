@interface CRKConcreteClassKitFacade
+ (id)makePersonSortDescriptorsSortingGivenNameFirst:(BOOL)a3;
- (BOOL)ownsError:(id)a3;
- (CRKConcreteClassKitFacade)init;
- (id)classDataObserverWithSortDescriptors:(id)a3;
- (id)locationsObserverWithSortDescriptors:(id)a3;
- (id)makeClassWithLocationID:(id)a3 name:(id)a4;
- (id)makeDataObserverWithObjectType:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5;
- (id)makePredicateForObjectIDs:(id)a3;
- (id)makePredicatesForObjectIDs:(id)a3;
- (id)makeQueryForLocationsAllowingEasyStudentSignInForPersonID:(id)a3;
- (id)makeQueryForPersonsWithIdentifiers:(id)a3;
- (id)makeQueryForPersonsWithRole:(int64_t)a3 locationIDs:(id)a4 searchString:(id)a5 sortingGivenNameFirst:(BOOL)a6 pageSize:(int64_t)a7;
- (id)objectIDsOfMembersInClass:(id)a3 withRole:(unint64_t)a4;
- (id)personObserverWithPersonIDs:(id)a3 sortDescriptors:(id)a4;
- (id)subscribeToClassMembershipChangeEvents:(id)a3;
- (id)subscribeToCurrentUserDidChangeEvents:(id)a3;
- (int64_t)accountState;
- (void)addPerson:(id)a3 withRole:(unint64_t)a4 toClass:(id)a5;
- (void)currentUserWithCompletion:(id)a3;
- (void)deregisterDataObserver:(id)a3;
- (void)enrolledClassesWithCompletion:(id)a3;
- (void)executeQuery:(id)a3;
- (void)instructedClassesWithCompletion:(id)a3;
- (void)instructorsInClassWithObjectID:(id)a3 completion:(id)a4;
- (void)locationsWithManagePermissionsForUserWithObjectID:(id)a3 completion:(id)a4;
- (void)locationsWithObjectIDs:(id)a3 completion:(id)a4;
- (void)registerDataObserver:(id)a3;
- (void)removeClass:(id)a3 completion:(id)a4;
- (void)removePerson:(id)a3 withRole:(unint64_t)a4 fromClass:(id)a5;
- (void)saveClass:(id)a3 completion:(id)a4;
- (void)studentsInClassWithObjectID:(id)a3 completion:(id)a4;
- (void)syncServerConfigWithCompletion:(id)a3;
@end

@implementation CRKConcreteClassKitFacade

- (CRKConcreteClassKitFacade)init
{
  v6.receiver = self;
  v6.super_class = CRKConcreteClassKitFacade;
  v2 = [(CRKConcreteClassKitFacade *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    accountStateProvider = v2->_accountStateProvider;
    v2->_accountStateProvider = v3;
  }

  return v2;
}

- (int64_t)accountState
{
  v2 = [(CRKConcreteClassKitFacade *)self accountStateProvider];
  v3 = [v2 accountState];

  return v3;
}

- (BOOL)ownsError:(id)a3
{
  v3 = [a3 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x277CBB5D0]];

  return v4;
}

- (void)registerDataObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitFacade *)self dataStore];
  [v5 registerDataObserver:v4];
}

- (void)deregisterDataObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitFacade *)self dataStore];
  [v5 deregisterDataObserver:v4];
}

- (void)syncServerConfigWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitFacade *)self dataStore];
  [v5 syncServerConfigWithCompletion:v4];
}

- (void)instructorsInClassWithObjectID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitFacade *)self dataStore];
  [v8 personsInClassWithClassID:v7 role:2 completion:v6];
}

- (void)studentsInClassWithObjectID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitFacade *)self dataStore];
  [v8 personsInClassWithClassID:v7 role:1 completion:v6];
}

- (id)personObserverWithPersonIDs:(id)a3 sortDescriptors:(id)a4
{
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", a4, *MEMORY[0x277CBB5E0], a3];
  v6 = [(CRKConcreteClassKitFacade *)self makeDataObserverWithObjectType:objc_opt_class() predicate:v5 sortDescriptors:0];

  return v6;
}

- (id)classDataObserverWithSortDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitFacade *)self makeDataObserverWithObjectType:objc_opt_class() predicate:0 sortDescriptors:v4];

  return v5;
}

- (void)enrolledClassesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitFacade *)self dataStore];
  [v5 enrolledClassesWithCompletion:v4];
}

- (void)instructedClassesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitFacade *)self dataStore];
  [v5 instructedClassesWithCompletion:v4];
}

- (void)saveClass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    v10 = [(CRKConcreteClassKitFacade *)self dataStore];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__CRKConcreteClassKitFacade_saveClass_completion___block_invoke;
    v12[3] = &unk_278DC11B8;
    v13 = v7;
    [v10 saveClass:v9 completion:v12];
  }

  else
  {
    v11 = CRKErrorWithCodeAndUserInfo(2, &unk_2856722E8);
    (*(v7 + 2))(v7, v11);
  }
}

- (void)removeClass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (v10)
    {
      v11 = [(CRKConcreteClassKitFacade *)self dataStore];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __52__CRKConcreteClassKitFacade_removeClass_completion___block_invoke;
      v13[3] = &unk_278DC11B8;
      v14 = v8;
      [v11 removeClass:v10 completion:v13];
    }

    else
    {
      v12 = CRKErrorWithCodeAndUserInfo(2, &unk_285672310);
      (v8)[2](v8, v12);
    }
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (id)makeClassWithLocationID:(id)a3 name:(id)a4
{
  v5 = MEMORY[0x277CBB5F0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithLocation:v7 customName:v6];

  return v8;
}

- (id)subscribeToCurrentUserDidChangeEvents:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = *MEMORY[0x277CBB5C8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__CRKConcreteClassKitFacade_subscribeToCurrentUserDidChangeEvents___block_invoke;
  v9[3] = &unk_278DC11E0;
  v10 = v3;
  v6 = v3;
  v7 = [v4 subscribeToNotificationWithName:v5 object:0 handler:v9];

  return v7;
}

- (id)subscribeToClassMembershipChangeEvents:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = *MEMORY[0x277CBB5E8];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277CBB5E8]];
  v7 = [v4 subscribeToNotificationWithName:v6 handler:v3];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not subscribe to darwin notification %s.", v5];
    v8 = [CRKEmptySubscription errorSubscriptionWithReason:v9];
  }

  return v8;
}

- (void)currentUserWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitFacade *)self dataStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CRKConcreteClassKitFacade_currentUserWithCompletion___block_invoke;
  v7[3] = &unk_278DC1208;
  v8 = v4;
  v6 = v4;
  [v5 currentUserWithCompletion:v7];
}

- (id)locationsObserverWithSortDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitFacade *)self makeDataObserverWithObjectType:objc_opt_class() predicate:0 sortDescriptors:v4];

  return v5;
}

- (void)locationsWithManagePermissionsForUserWithObjectID:(id)a3 completion:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBB638];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithOptions:4 behaviors:3];
  v10 = NSStringFromCLSASMPrivilegeType();
  v13[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v9 requirePrivilege:v10 onPersonIDs:v11];

  v12 = [MEMORY[0x277CBB628] queryWithSearchSpecification:v9];

  [v12 setCompletion:v7];
  [(CRKConcreteClassKitFacade *)self executeQuery:v12];
}

- (void)locationsWithObjectIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(CRKConcreteClassKitFacade *)self makePredicateForObjectIDs:v6];
    v17 = 0;
    v9 = [MEMORY[0x277CBB628] queryWithObjectType:objc_opt_class() predicate:v8 error:&v17];
    v10 = v17;
    if (v9)
    {
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __63__CRKConcreteClassKitFacade_locationsWithObjectIDs_completion___block_invoke;
      v15 = &unk_278DC0F30;
      v16 = v7;
      [v9 setCompletion:&v12];
      v11 = [(CRKConcreteClassKitFacade *)self dataStore:v12];
      [v11 executeQuery:v9];
    }

    else
    {
      (*(v7 + 2))(v7, 0, v10);
    }
  }

  else
  {
    (*(v7 + 2))(v7, MEMORY[0x277CBEBF8], 0);
  }
}

- (id)makeQueryForPersonsWithIdentifiers:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBB638]) initWithOptions:1 behaviors:1];
  v5 = [v4 predicateForPersonsWithObjectIDs:v3];
  v10 = 0;
  v6 = [MEMORY[0x277CBB628] queryWithObjectType:objc_opt_class() predicate:v5 error:&v10];
  v7 = v10;
  if (!v6)
  {
    v8 = _CRKLogASM_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRKConcreteClassKitFacade *)v3 makeQueryForPersonsWithIdentifiers:v7, v8];
    }
  }

  return v6;
}

- (id)makeQueryForLocationsAllowingEasyStudentSignInForPersonID:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBB638]) initWithOptions:4 behaviors:1];
  v5 = NSStringFromCLSASMPrivilegeType();
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v4 requirePrivilege:v5 onPersonIDs:v6];

  v7 = [MEMORY[0x277CBB628] queryWithSearchSpecification:v4];
  if (!v7)
  {
    v8 = _CRKLogASM_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRKConcreteClassKitFacade *)v3 makeQueryForLocationsAllowingEasyStudentSignInForPersonID:v8];
    }
  }

  return v7;
}

- (void)executeQuery:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKConcreteClassKitFacade executeQuery:];
  }

  v4 = [(CRKConcreteClassKitFacade *)self dataStore];
  [v4 executeQuery:v5];
}

- (id)makeDataObserverWithObjectType:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5
{
  v7 = MEMORY[0x277CBB630];
  v8 = a5;
  v9 = [v7 querySpecificationWithObjectType:a3 predicate:a4];
  [v9 setSortDescriptors:v8];

  v14 = 0;
  v10 = [objc_alloc(MEMORY[0x277CBB5F8]) initWithQuerySpecification:v9 error:&v14];
  v11 = v14;
  if (!v10)
  {
    v12 = _CRKLogASM_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CRKConcreteClassKitFacade makeDataObserverWithObjectType:predicate:sortDescriptors:];
    }
  }

  return v10;
}

- (void)addPerson:(id)a3 withRole:(unint64_t)a4 toClass:(id)a5
{
  v9 = a3;
  v7 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKConcreteClassKitFacade addPerson:withRole:toClass:];
  }

  v8 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKConcreteClassKitFacade addPerson:withRole:toClass:];
  }

  [v8 addPerson:v9 withRole:a4];
}

- (void)removePerson:(id)a3 withRole:(unint64_t)a4 fromClass:(id)a5
{
  v9 = a3;
  v7 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKConcreteClassKitFacade removePerson:withRole:fromClass:];
  }

  v8 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKConcreteClassKitFacade removePerson:withRole:fromClass:];
  }

  [v8 removePerson:v9 withRole:a4];
}

- (id)objectIDsOfMembersInClass:(id)a3 withRole:(unint64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  v7 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKConcreteClassKitFacade objectIDsOfMembersInClass:withRole:];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 classMembers];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (([v13 roles] & a4) != 0)
        {
          v14 = [v13 personID];
          [v6 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [v6 copy];

  return v15;
}

+ (id)makePersonSortDescriptorsSortingGivenNameFirst:(BOOL)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"givenName" ascending:1];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"familyName" ascending:1];
  v7 = v6;
  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (v3)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  [v4 addObject:v8];
  [v4 addObject:v9];
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"appleID" ascending:1];
  [v4 addObject:v10];

  v11 = [v4 copy];

  return v11;
}

- (id)makeQueryForPersonsWithRole:(int64_t)a3 locationIDs:(id)a4 searchString:(id)a5 sortingGivenNameFirst:(BOOL)a6 pageSize:(int64_t)a7
{
  v8 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [objc_opt_class() makePersonSortDescriptorsSortingGivenNameFirst:v8];
  v14 = objc_alloc(MEMORY[0x277CBB638]);
  if (v11)
  {
    v15 = [v14 initWithOptions:1 behaviors:3 searchString:v11];
  }

  else
  {
    v15 = [v14 initWithOptions:1 behaviors:3];
  }

  v16 = v15;
  [v15 requireRoleType:a3 atLocationIDs:v12];

  [v16 setPersonSortDescriptors:v13];
  v17 = [MEMORY[0x277CBB628] queryWithSearchSpecification:v16];
  [v17 setFetchLimit:a7];

  return v17;
}

- (id)makePredicateForObjectIDs:(id)a3
{
  v3 = MEMORY[0x277CCA920];
  v4 = [(CRKConcreteClassKitFacade *)self makePredicatesForObjectIDs:a3];
  v5 = [v3 orPredicateWithSubpredicates:v4];

  return v5;
}

- (id)makePredicatesForObjectIDs:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = *MEMORY[0x277CBB5E0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", v9, *(*(&v14 + 1) + 8 * i), v14];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (void)makeQueryForPersonsWithIdentifiers:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2();
  v6 = a2;
  _os_log_error_impl(&dword_243550000, a3, OS_LOG_TYPE_ERROR, "Failed to create CLSQuery for %lu person IDs: %{public}@", v5, 0x16u);
}

- (void)makeQueryForLocationsAllowingEasyStudentSignInForPersonID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Failed to create CLSQuery for organizations allowing Easy MAID Sign In for user with object ID: %{public}@", &v2, 0xCu);
}

- (void)executeQuery:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKConcreteClassKitFacade executeQuery:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

- (void)makeDataObserverWithObjectType:predicate:sortDescriptors:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = v0;
  _os_log_error_impl(&dword_243550000, v1, OS_LOG_TYPE_ERROR, "Failed to create ClassKit data observer for type %{public}@: %{public}@", v2, 0x16u);
}

- (void)addPerson:withRole:toClass:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKConcreteClassKitFacade addPerson:withRole:toClass:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

- (void)addPerson:withRole:toClass:.cold.2()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKConcreteClassKitFacade addPerson:withRole:toClass:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

- (void)removePerson:withRole:fromClass:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKConcreteClassKitFacade removePerson:withRole:fromClass:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

- (void)removePerson:withRole:fromClass:.cold.2()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKConcreteClassKitFacade removePerson:withRole:fromClass:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

- (void)objectIDsOfMembersInClass:withRole:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKConcreteClassKitFacade objectIDsOfMembersInClass:withRole:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

@end