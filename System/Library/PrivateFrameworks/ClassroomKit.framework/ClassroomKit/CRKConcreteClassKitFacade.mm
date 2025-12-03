@interface CRKConcreteClassKitFacade
+ (id)makePersonSortDescriptorsSortingGivenNameFirst:(BOOL)first;
- (BOOL)ownsError:(id)error;
- (CRKConcreteClassKitFacade)init;
- (id)classDataObserverWithSortDescriptors:(id)descriptors;
- (id)locationsObserverWithSortDescriptors:(id)descriptors;
- (id)makeClassWithLocationID:(id)d name:(id)name;
- (id)makeDataObserverWithObjectType:(Class)type predicate:(id)predicate sortDescriptors:(id)descriptors;
- (id)makePredicateForObjectIDs:(id)ds;
- (id)makePredicatesForObjectIDs:(id)ds;
- (id)makeQueryForLocationsAllowingEasyStudentSignInForPersonID:(id)d;
- (id)makeQueryForPersonsWithIdentifiers:(id)identifiers;
- (id)makeQueryForPersonsWithRole:(int64_t)role locationIDs:(id)ds searchString:(id)string sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size;
- (id)objectIDsOfMembersInClass:(id)class withRole:(unint64_t)role;
- (id)personObserverWithPersonIDs:(id)ds sortDescriptors:(id)descriptors;
- (id)subscribeToClassMembershipChangeEvents:(id)events;
- (id)subscribeToCurrentUserDidChangeEvents:(id)events;
- (int64_t)accountState;
- (void)addPerson:(id)person withRole:(unint64_t)role toClass:(id)class;
- (void)currentUserWithCompletion:(id)completion;
- (void)deregisterDataObserver:(id)observer;
- (void)enrolledClassesWithCompletion:(id)completion;
- (void)executeQuery:(id)query;
- (void)instructedClassesWithCompletion:(id)completion;
- (void)instructorsInClassWithObjectID:(id)d completion:(id)completion;
- (void)locationsWithManagePermissionsForUserWithObjectID:(id)d completion:(id)completion;
- (void)locationsWithObjectIDs:(id)ds completion:(id)completion;
- (void)registerDataObserver:(id)observer;
- (void)removeClass:(id)class completion:(id)completion;
- (void)removePerson:(id)person withRole:(unint64_t)role fromClass:(id)class;
- (void)saveClass:(id)class completion:(id)completion;
- (void)studentsInClassWithObjectID:(id)d completion:(id)completion;
- (void)syncServerConfigWithCompletion:(id)completion;
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
  accountStateProvider = [(CRKConcreteClassKitFacade *)self accountStateProvider];
  accountState = [accountStateProvider accountState];

  return accountState;
}

- (BOOL)ownsError:(id)error
{
  domain = [error domain];
  v4 = [domain isEqualToString:*MEMORY[0x277CBB5D0]];

  return v4;
}

- (void)registerDataObserver:(id)observer
{
  observerCopy = observer;
  dataStore = [(CRKConcreteClassKitFacade *)self dataStore];
  [dataStore registerDataObserver:observerCopy];
}

- (void)deregisterDataObserver:(id)observer
{
  observerCopy = observer;
  dataStore = [(CRKConcreteClassKitFacade *)self dataStore];
  [dataStore deregisterDataObserver:observerCopy];
}

- (void)syncServerConfigWithCompletion:(id)completion
{
  completionCopy = completion;
  dataStore = [(CRKConcreteClassKitFacade *)self dataStore];
  [dataStore syncServerConfigWithCompletion:completionCopy];
}

- (void)instructorsInClassWithObjectID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  dataStore = [(CRKConcreteClassKitFacade *)self dataStore];
  [dataStore personsInClassWithClassID:dCopy role:2 completion:completionCopy];
}

- (void)studentsInClassWithObjectID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  dataStore = [(CRKConcreteClassKitFacade *)self dataStore];
  [dataStore personsInClassWithClassID:dCopy role:1 completion:completionCopy];
}

- (id)personObserverWithPersonIDs:(id)ds sortDescriptors:(id)descriptors
{
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", descriptors, *MEMORY[0x277CBB5E0], ds];
  v6 = [(CRKConcreteClassKitFacade *)self makeDataObserverWithObjectType:objc_opt_class() predicate:v5 sortDescriptors:0];

  return v6;
}

- (id)classDataObserverWithSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v5 = [(CRKConcreteClassKitFacade *)self makeDataObserverWithObjectType:objc_opt_class() predicate:0 sortDescriptors:descriptorsCopy];

  return v5;
}

- (void)enrolledClassesWithCompletion:(id)completion
{
  completionCopy = completion;
  dataStore = [(CRKConcreteClassKitFacade *)self dataStore];
  [dataStore enrolledClassesWithCompletion:completionCopy];
}

- (void)instructedClassesWithCompletion:(id)completion
{
  completionCopy = completion;
  dataStore = [(CRKConcreteClassKitFacade *)self dataStore];
  [dataStore instructedClassesWithCompletion:completionCopy];
}

- (void)saveClass:(id)class completion:(id)completion
{
  classCopy = class;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = classCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    dataStore = [(CRKConcreteClassKitFacade *)self dataStore];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__CRKConcreteClassKitFacade_saveClass_completion___block_invoke;
    v12[3] = &unk_278DC11B8;
    v13 = completionCopy;
    [dataStore saveClass:v9 completion:v12];
  }

  else
  {
    v11 = CRKErrorWithCodeAndUserInfo(2, &unk_2856722E8);
    (*(completionCopy + 2))(completionCopy, v11);
  }
}

- (void)removeClass:(id)class completion:(id)completion
{
  classCopy = class;
  completionCopy = completion;
  v8 = completionCopy;
  if (classCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = classCopy;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (v10)
    {
      dataStore = [(CRKConcreteClassKitFacade *)self dataStore];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __52__CRKConcreteClassKitFacade_removeClass_completion___block_invoke;
      v13[3] = &unk_278DC11B8;
      v14 = v8;
      [dataStore removeClass:v10 completion:v13];
    }

    else
    {
      v12 = CRKErrorWithCodeAndUserInfo(2, &unk_285672310);
      (v8)[2](v8, v12);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)makeClassWithLocationID:(id)d name:(id)name
{
  v5 = MEMORY[0x277CBB5F0];
  nameCopy = name;
  dCopy = d;
  v8 = [[v5 alloc] initWithLocation:dCopy customName:nameCopy];

  return v8;
}

- (id)subscribeToCurrentUserDidChangeEvents:(id)events
{
  eventsCopy = events;
  v4 = objc_opt_new();
  v5 = *MEMORY[0x277CBB5C8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__CRKConcreteClassKitFacade_subscribeToCurrentUserDidChangeEvents___block_invoke;
  v9[3] = &unk_278DC11E0;
  v10 = eventsCopy;
  v6 = eventsCopy;
  v7 = [v4 subscribeToNotificationWithName:v5 object:0 handler:v9];

  return v7;
}

- (id)subscribeToClassMembershipChangeEvents:(id)events
{
  eventsCopy = events;
  v4 = objc_opt_new();
  v5 = *MEMORY[0x277CBB5E8];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277CBB5E8]];
  v7 = [v4 subscribeToNotificationWithName:v6 handler:eventsCopy];

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

- (void)currentUserWithCompletion:(id)completion
{
  completionCopy = completion;
  dataStore = [(CRKConcreteClassKitFacade *)self dataStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CRKConcreteClassKitFacade_currentUserWithCompletion___block_invoke;
  v7[3] = &unk_278DC1208;
  v8 = completionCopy;
  v6 = completionCopy;
  [dataStore currentUserWithCompletion:v7];
}

- (id)locationsObserverWithSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v5 = [(CRKConcreteClassKitFacade *)self makeDataObserverWithObjectType:objc_opt_class() predicate:0 sortDescriptors:descriptorsCopy];

  return v5;
}

- (void)locationsWithManagePermissionsForUserWithObjectID:(id)d completion:(id)completion
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBB638];
  completionCopy = completion;
  dCopy = d;
  v9 = [[v6 alloc] initWithOptions:4 behaviors:3];
  v10 = NSStringFromCLSASMPrivilegeType();
  v13[0] = dCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v9 requirePrivilege:v10 onPersonIDs:v11];

  v12 = [MEMORY[0x277CBB628] queryWithSearchSpecification:v9];

  [v12 setCompletion:completionCopy];
  [(CRKConcreteClassKitFacade *)self executeQuery:v12];
}

- (void)locationsWithObjectIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    v8 = [(CRKConcreteClassKitFacade *)self makePredicateForObjectIDs:dsCopy];
    v17 = 0;
    v9 = [MEMORY[0x277CBB628] queryWithObjectType:objc_opt_class() predicate:v8 error:&v17];
    v10 = v17;
    if (v9)
    {
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __63__CRKConcreteClassKitFacade_locationsWithObjectIDs_completion___block_invoke;
      v15 = &unk_278DC0F30;
      v16 = completionCopy;
      [v9 setCompletion:&v12];
      v11 = [(CRKConcreteClassKitFacade *)self dataStore:v12];
      [v11 executeQuery:v9];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, v10);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8], 0);
  }
}

- (id)makeQueryForPersonsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [objc_alloc(MEMORY[0x277CBB638]) initWithOptions:1 behaviors:1];
  v5 = [v4 predicateForPersonsWithObjectIDs:identifiersCopy];
  v10 = 0;
  v6 = [MEMORY[0x277CBB628] queryWithObjectType:objc_opt_class() predicate:v5 error:&v10];
  v7 = v10;
  if (!v6)
  {
    v8 = _CRKLogASM_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRKConcreteClassKitFacade *)identifiersCopy makeQueryForPersonsWithIdentifiers:v7, v8];
    }
  }

  return v6;
}

- (id)makeQueryForLocationsAllowingEasyStudentSignInForPersonID:(id)d
{
  v10[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = [objc_alloc(MEMORY[0x277CBB638]) initWithOptions:4 behaviors:1];
  v5 = NSStringFromCLSASMPrivilegeType();
  v10[0] = dCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v4 requirePrivilege:v5 onPersonIDs:v6];

  v7 = [MEMORY[0x277CBB628] queryWithSearchSpecification:v4];
  if (!v7)
  {
    v8 = _CRKLogASM_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRKConcreteClassKitFacade *)dCopy makeQueryForLocationsAllowingEasyStudentSignInForPersonID:v8];
    }
  }

  return v7;
}

- (void)executeQuery:(id)query
{
  queryCopy = query;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKConcreteClassKitFacade executeQuery:];
  }

  dataStore = [(CRKConcreteClassKitFacade *)self dataStore];
  [dataStore executeQuery:queryCopy];
}

- (id)makeDataObserverWithObjectType:(Class)type predicate:(id)predicate sortDescriptors:(id)descriptors
{
  v7 = MEMORY[0x277CBB630];
  descriptorsCopy = descriptors;
  v9 = [v7 querySpecificationWithObjectType:type predicate:predicate];
  [v9 setSortDescriptors:descriptorsCopy];

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

- (void)addPerson:(id)person withRole:(unint64_t)role toClass:(id)class
{
  personCopy = person;
  classCopy = class;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKConcreteClassKitFacade addPerson:withRole:toClass:];
  }

  v8 = classCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKConcreteClassKitFacade addPerson:withRole:toClass:];
  }

  [v8 addPerson:personCopy withRole:role];
}

- (void)removePerson:(id)person withRole:(unint64_t)role fromClass:(id)class
{
  personCopy = person;
  classCopy = class;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKConcreteClassKitFacade removePerson:withRole:fromClass:];
  }

  v8 = classCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKConcreteClassKitFacade removePerson:withRole:fromClass:];
  }

  [v8 removePerson:personCopy withRole:role];
}

- (id)objectIDsOfMembersInClass:(id)class withRole:(unint64_t)role
{
  v22 = *MEMORY[0x277D85DE8];
  classCopy = class;
  v6 = objc_opt_new();
  v7 = classCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKConcreteClassKitFacade objectIDsOfMembersInClass:withRole:];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  classMembers = [v7 classMembers];
  v9 = [classMembers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(classMembers);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (([v13 roles] & role) != 0)
        {
          personID = [v13 personID];
          [v6 addObject:personID];
        }
      }

      v10 = [classMembers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [v6 copy];

  return v15;
}

+ (id)makePersonSortDescriptorsSortingGivenNameFirst:(BOOL)first
{
  firstCopy = first;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"givenName" ascending:1];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"familyName" ascending:1];
  v7 = v6;
  if (firstCopy)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (firstCopy)
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

- (id)makeQueryForPersonsWithRole:(int64_t)role locationIDs:(id)ds searchString:(id)string sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size
{
  firstCopy = first;
  stringCopy = string;
  dsCopy = ds;
  v13 = [objc_opt_class() makePersonSortDescriptorsSortingGivenNameFirst:firstCopy];
  v14 = objc_alloc(MEMORY[0x277CBB638]);
  if (stringCopy)
  {
    v15 = [v14 initWithOptions:1 behaviors:3 searchString:stringCopy];
  }

  else
  {
    v15 = [v14 initWithOptions:1 behaviors:3];
  }

  v16 = v15;
  [v15 requireRoleType:role atLocationIDs:dsCopy];

  [v16 setPersonSortDescriptors:v13];
  v17 = [MEMORY[0x277CBB628] queryWithSearchSpecification:v16];
  [v17 setFetchLimit:size];

  return v17;
}

- (id)makePredicateForObjectIDs:(id)ds
{
  v3 = MEMORY[0x277CCA920];
  v4 = [(CRKConcreteClassKitFacade *)self makePredicatesForObjectIDs:ds];
  v5 = [v3 orPredicateWithSubpredicates:v4];

  return v5;
}

- (id)makePredicatesForObjectIDs:(id)ds
{
  v19 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = dsCopy;
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