@interface CRKConcreteClassKitRosterRequirements
+ (id)instructorRosterRequirementsWithClassKitFacade:(id)a3;
+ (id)studentRosterRequirementsWithClassKitFacade:(id)a3;
- (BOOL)ownsError:(id)a3;
- (CRKConcreteClassKitRosterRequirements)initWithClassKitFacade:(id)a3 isForInstructor:(BOOL)a4;
- (id)addGeneralObserver:(id)a3;
- (id)addObserverForPersonIDs:(id)a3 observerBlock:(id)a4;
- (id)makeClassWithLocationID:(id)a3 name:(id)a4;
- (id)makeDataChangedBlockWithObserverDescription:(id)a3;
- (id)makeDataObservers;
- (id)makeInstructorQueryForSearchString:(id)a3 locationIDs:(id)a4 sortingGivenNameFirst:(BOOL)a5 pageSize:(int64_t)a6;
- (id)makeQueryForLocationsAllowingEasyStudentSignInForPersonID:(id)a3;
- (id)makeQueryForPersonsWithIdentifiers:(id)a3;
- (id)makeStudentQueryForSearchString:(id)a3 locationIDs:(id)a4 sortingGivenNameFirst:(BOOL)a5 pageSize:(int64_t)a6;
- (id)objectIDsOfPersonsInClass:(id)a3;
- (id)objectIDsOfTrustedPersonsInClass:(id)a3;
- (int64_t)accountState;
- (void)addNullableObserver:(id)a3 toArray:(id)a4;
- (void)addPerson:(id)a3 toClass:(id)a4;
- (void)addTrustedPerson:(id)a3 toClass:(id)a4;
- (void)callGeneralObserversWithReason:(id)a3;
- (void)classesWithCompletion:(id)a3;
- (void)currentUserWithCompletion:(id)a3;
- (void)dealloc;
- (void)deregisterDataObservers;
- (void)executeQuery:(id)a3;
- (void)locationsWithManagePermissionsForUserWithObjectID:(id)a3 completion:(id)a4;
- (void)locationsWithObjectIDs:(id)a3 completion:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)personsInClassWithObjectID:(id)a3 completion:(id)a4;
- (void)registerDataObservers;
- (void)registerForCurrentUserChangeNotification;
- (void)registerForMembershipChangeDarwinNotification;
- (void)registerGeneralObserverConstituents;
- (void)removeClass:(id)a3 completion:(id)a4;
- (void)removeGeneralObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removePerson:(id)a3 fromClass:(id)a4;
- (void)removePersonObserver:(id)a3;
- (void)removeTrustedPerson:(id)a3 fromClass:(id)a4;
- (void)saveClass:(id)a3 completion:(id)a4;
- (void)startObservingAccountState;
- (void)stopObservingAccountState;
- (void)syncServerConfigWithCompletion:(id)a3;
- (void)trustedPersonsInClassWithObjectID:(id)a3 completion:(id)a4;
- (void)unregisterForCurrentUserChangeNotification;
- (void)unregisterForMembershipChangeDarwinNotification;
- (void)unregisterGeneralObserverConstituents;
@end

@implementation CRKConcreteClassKitRosterRequirements

- (void)dealloc
{
  [(CRKConcreteClassKitRosterRequirements *)self unregisterGeneralObserverConstituents];
  v3.receiver = self;
  v3.super_class = CRKConcreteClassKitRosterRequirements;
  [(CRKConcreteClassKitRosterRequirements *)&v3 dealloc];
}

+ (id)studentRosterRequirementsWithClassKitFacade:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithClassKitFacade:v4 isForInstructor:0];

  return v5;
}

+ (id)instructorRosterRequirementsWithClassKitFacade:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithClassKitFacade:v4 isForInstructor:1];

  return v5;
}

- (CRKConcreteClassKitRosterRequirements)initWithClassKitFacade:(id)a3 isForInstructor:(BOOL)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = CRKConcreteClassKitRosterRequirements;
  v8 = [(CRKConcreteClassKitRosterRequirements *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_classKitFacade, a3);
    v9->_forInstructor = a4;
    v10 = objc_opt_new();
    generalObserversByToken = v9->_generalObserversByToken;
    v9->_generalObserversByToken = v10;

    v12 = objc_opt_new();
    personObserversByToken = v9->_personObserversByToken;
    v9->_personObserversByToken = v12;

    v14 = [(CRKConcreteClassKitRosterRequirements *)v9 makeDataObservers];
    dataObservers = v9->_dataObservers;
    v9->_dataObservers = v14;
  }

  return v9;
}

- (BOOL)ownsError:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v6 = [v5 ownsError:v4];

  return v6;
}

- (void)syncServerConfigWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [v5 syncServerConfigWithCompletion:v4];
}

- (void)removeGeneralObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitRosterRequirements *)self generalObserversByToken];
  [v5 setObject:0 forKeyedSubscript:v4];

  v6 = [(CRKConcreteClassKitRosterRequirements *)self generalObserversByToken];
  v7 = [v6 count];

  if (!v7)
  {

    [(CRKConcreteClassKitRosterRequirements *)self unregisterGeneralObserverConstituents];
  }
}

- (void)removePersonObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitRosterRequirements *)self personObserversByToken];
  v7 = [v5 objectForKeyedSubscript:v4];

  [v7 cancel];
  v6 = [(CRKConcreteClassKitRosterRequirements *)self personObserversByToken];
  [v6 setObject:0 forKeyedSubscript:v4];
}

- (void)registerGeneralObserverConstituents
{
  if (![(CRKConcreteClassKitRosterRequirements *)self generalObserverConstituentsRegistered])
  {
    [(CRKConcreteClassKitRosterRequirements *)self setGeneralObserverConstituentsRegistered:1];
    [(CRKConcreteClassKitRosterRequirements *)self registerDataObservers];
    [(CRKConcreteClassKitRosterRequirements *)self registerForCurrentUserChangeNotification];
    [(CRKConcreteClassKitRosterRequirements *)self registerForMembershipChangeDarwinNotification];

    [(CRKConcreteClassKitRosterRequirements *)self startObservingAccountState];
  }
}

- (void)unregisterGeneralObserverConstituents
{
  if ([(CRKConcreteClassKitRosterRequirements *)self generalObserverConstituentsRegistered])
  {
    [(CRKConcreteClassKitRosterRequirements *)self setGeneralObserverConstituentsRegistered:0];
    [(CRKConcreteClassKitRosterRequirements *)self deregisterDataObservers];
    [(CRKConcreteClassKitRosterRequirements *)self unregisterForCurrentUserChangeNotification];
    [(CRKConcreteClassKitRosterRequirements *)self unregisterForMembershipChangeDarwinNotification];

    [(CRKConcreteClassKitRosterRequirements *)self stopObservingAccountState];
  }
}

- (void)registerForCurrentUserChangeNotification
{
  objc_initWeak(&location, self);
  v3 = [(CRKConcreteClassKitRosterRequirements *)self userDidChangeSubscription];
  [v3 cancel];

  v4 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __81__CRKConcreteClassKitRosterRequirements_registerForCurrentUserChangeNotification__block_invoke;
  v9 = &unk_278DC1870;
  objc_copyWeak(&v10, &location);
  v5 = [v4 subscribeToCurrentUserDidChangeEvents:&v6];
  [(CRKConcreteClassKitRosterRequirements *)self setUserDidChangeSubscription:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __81__CRKConcreteClassKitRosterRequirements_registerForCurrentUserChangeNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained callGeneralObserversWithReason:@"ClassKit current user changed"];
}

- (void)unregisterForCurrentUserChangeNotification
{
  v3 = [(CRKConcreteClassKitRosterRequirements *)self userDidChangeSubscription];
  [v3 cancel];

  [(CRKConcreteClassKitRosterRequirements *)self setUserDidChangeSubscription:0];
}

- (void)registerForMembershipChangeDarwinNotification
{
  if (![(CRKConcreteClassKitRosterRequirements *)self isForInstructor])
  {
    objc_initWeak(&location, self);
    v3 = [(CRKConcreteClassKitRosterRequirements *)self membershipDidChangeSubscription];
    [v3 cancel];

    v4 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __86__CRKConcreteClassKitRosterRequirements_registerForMembershipChangeDarwinNotification__block_invoke;
    v9 = &unk_278DC1870;
    objc_copyWeak(&v10, &location);
    v5 = [v4 subscribeToClassMembershipChangeEvents:&v6];
    [(CRKConcreteClassKitRosterRequirements *)self setMembershipDidChangeSubscription:v5, v6, v7, v8, v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __86__CRKConcreteClassKitRosterRequirements_registerForMembershipChangeDarwinNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained callGeneralObserversWithReason:@"ClassKit class membership changed"];
}

- (void)unregisterForMembershipChangeDarwinNotification
{
  v3 = [(CRKConcreteClassKitRosterRequirements *)self membershipDidChangeSubscription];
  [v3 cancel];

  [(CRKConcreteClassKitRosterRequirements *)self setMembershipDidChangeSubscription:0];
}

- (id)makeDataObservers
{
  v3 = objc_opt_new();
  v4 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v5 = [v4 classDataObserverWithSortDescriptors:0];

  if (!v5)
  {
    v6 = _CRKLogASM_11();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CRKConcreteClassKitRosterRequirements *)v6 makeDataObservers];
    }
  }

  v7 = [(CRKConcreteClassKitRosterRequirements *)self makeDataChangedBlockWithObserverDescription:@"classes"];
  [v5 setDataChanged:v7];

  [(CRKConcreteClassKitRosterRequirements *)self addNullableObserver:v5 toArray:v3];
  if ([(CRKConcreteClassKitRosterRequirements *)self isForInstructor])
  {
    v8 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
    v9 = [v8 locationsObserverWithSortDescriptors:0];

    if (!v9)
    {
      v10 = _CRKLogASM_11();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CRKConcreteClassKitRosterRequirements *)v10 makeDataObservers];
      }
    }

    v11 = [(CRKConcreteClassKitRosterRequirements *)self makeDataChangedBlockWithObserverDescription:@"locations"];
    [v9 setDataChanged:v11];

    [(CRKConcreteClassKitRosterRequirements *)self addNullableObserver:v9 toArray:v3];
  }

  v12 = [v3 copy];

  return v12;
}

- (void)addNullableObserver:(id)a3 toArray:(id)a4
{
  if (a3)
  {
    [a4 addObject:?];
  }
}

- (id)makeDataChangedBlockWithObserverDescription:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"ClassKit data observer for '%@' fired", a3];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__CRKConcreteClassKitRosterRequirements_makeDataChangedBlockWithObserverDescription___block_invoke;
  v8[3] = &unk_278DC20B0;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v5 = v4;
  v6 = MEMORY[0x245D3AAD0](v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __85__CRKConcreteClassKitRosterRequirements_makeDataChangedBlockWithObserverDescription___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __85__CRKConcreteClassKitRosterRequirements_makeDataChangedBlockWithObserverDescription___block_invoke_2;
  v2[3] = &unk_278DC19F8;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v4);
}

void __85__CRKConcreteClassKitRosterRequirements_makeDataChangedBlockWithObserverDescription___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained callGeneralObserversWithReason:*(a1 + 32)];
}

- (void)registerDataObservers
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CRKConcreteClassKitRosterRequirements *)self dataObservers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
        [v9 registerDataObserver:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)deregisterDataObservers
{
  v3 = [(CRKConcreteClassKitRosterRequirements *)self dataObservers];
  v4 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __64__CRKConcreteClassKitRosterRequirements_deregisterDataObservers__block_invoke;
  v11 = &unk_278DC1320;
  v5 = v3;
  v12 = v5;
  v6 = v4;
  v13 = v6;
  v7 = MEMORY[0x245D3AAD0](&v8);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v7[2](v7);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

void __64__CRKConcreteClassKitRosterRequirements_deregisterDataObservers__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) deregisterDataObserver:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (int64_t)accountState
{
  v2 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v3 = [v2 accountState];

  return v3;
}

- (void)startObservingAccountState
{
  v3 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [v3 addObserver:self forKeyPath:@"accountState" options:0 context:@"ObservationContext"];
}

- (void)stopObservingAccountState
{
  v3 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [v3 removeObserver:self forKeyPath:@"accountState" context:@"ObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  if (a6 == @"ObservationContext")
  {
    v13 = v9;
    v10 = a4;
    v11 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];

    if (v11 == v10)
    {
      v12 = [v13 isEqualToString:@"accountState"];

      v9 = v13;
      if (!v12)
      {
        goto LABEL_7;
      }

      [(CRKConcreteClassKitRosterRequirements *)self callGeneralObserversWithReason:@"Account state changed"];
    }

    else
    {
    }

    v9 = v13;
  }

LABEL_7:
}

- (void)callGeneralObserversWithReason:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKConcreteClassKitRosterRequirements *)a2 callGeneralObserversWithReason:?];
  }

  v6 = _CRKLogASM_11();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v5;
    _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "Firing roster requirements general observers with reason: '%{public}@'", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(CRKConcreteClassKitRosterRequirements *)self generalObserversByToken];
  v8 = [v7 allValues];

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v13 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (id)addGeneralObserver:(id)a3
{
  v4 = a3;
  [(CRKConcreteClassKitRosterRequirements *)self registerGeneralObserverConstituents];
  v5 = [(CRKConcreteClassKitRosterRequirements *)self makeToken];
  v6 = MEMORY[0x245D3AAD0](v4);

  v7 = [(CRKConcreteClassKitRosterRequirements *)self generalObserversByToken];
  [v7 setObject:v6 forKeyedSubscript:v5];

  return v5;
}

- (id)addObserverForPersonIDs:(id)a3 observerBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitRosterRequirements *)self makeToken];
  v9 = [CRKClassKitPersonIDObservation alloc];
  v10 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v11 = [(CRKClassKitPersonIDObservation *)v9 initWithPersonIDs:v7 classKitFacade:v10 block:v6];

  v12 = [(CRKConcreteClassKitRosterRequirements *)self personObserversByToken];
  [v12 setObject:v11 forKeyedSubscript:v8];

  return v8;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  [(CRKConcreteClassKitRosterRequirements *)self removeGeneralObserver:v4];
  [(CRKConcreteClassKitRosterRequirements *)self removePersonObserver:v4];
}

- (id)objectIDsOfPersonsInClass:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  v6 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v7 = v6;
  if (v5)
  {
    [v6 objectIDsOfInstructorsInClass:v4];
  }

  else
  {
    [v6 objectIDsOfStudentsInClass:v4];
  }
  v8 = ;

  return v8;
}

- (id)objectIDsOfTrustedPersonsInClass:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  v6 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v7 = v6;
  if (v5)
  {
    [v6 objectIDsOfStudentsInClass:v4];
  }

  else
  {
    [v6 objectIDsOfInstructorsInClass:v4];
  }
  v8 = ;

  return v8;
}

- (void)currentUserWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [v5 currentUserWithCompletion:v4];
}

- (void)classesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  v6 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v7 = v6;
  if (v5)
  {
    [v6 instructedClassesWithCompletion:v4];
  }

  else
  {
    [v6 enrolledClassesWithCompletion:v4];
  }
}

- (void)personsInClassWithObjectID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  v9 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v10 = v9;
  if (v8)
  {
    [v9 instructorsInClassWithObjectID:v7 completion:v6];
  }

  else
  {
    [v9 studentsInClassWithObjectID:v7 completion:v6];
  }
}

- (void)trustedPersonsInClassWithObjectID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  v9 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v10 = v9;
  if (v8)
  {
    [v9 studentsInClassWithObjectID:v7 completion:v6];
  }

  else
  {
    [v9 instructorsInClassWithObjectID:v7 completion:v6];
  }
}

- (void)executeQuery:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [v5 executeQuery:v4];
}

- (void)addPerson:(id)a3 toClass:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  v9 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v10 = v9;
  if (v8)
  {
    [v9 addInstructor:v7 toClass:v6];
  }

  else
  {
    [v9 addStudent:v7 toClass:v6];
  }
}

- (void)removePerson:(id)a3 fromClass:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  v9 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v10 = v9;
  if (v8)
  {
    [v9 removeInstructor:v7 fromClass:v6];
  }

  else
  {
    [v9 removeStudent:v7 fromClass:v6];
  }
}

- (void)addTrustedPerson:(id)a3 toClass:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  v9 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v10 = v9;
  if (v8)
  {
    [v9 addStudent:v7 toClass:v6];
  }

  else
  {
    [v9 addInstructor:v7 toClass:v6];
  }
}

- (void)removeTrustedPerson:(id)a3 fromClass:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  v9 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v10 = v9;
  if (v8)
  {
    [v9 removeStudent:v7 fromClass:v6];
  }

  else
  {
    [v9 removeInstructor:v7 fromClass:v6];
  }
}

- (id)makeStudentQueryForSearchString:(id)a3 locationIDs:(id)a4 sortingGivenNameFirst:(BOOL)a5 pageSize:(int64_t)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v13 = [v12 makeStudentQueryForSearchString:v11 locationIDs:v10 sortingGivenNameFirst:v7 pageSize:a6];

  return v13;
}

- (id)makeInstructorQueryForSearchString:(id)a3 locationIDs:(id)a4 sortingGivenNameFirst:(BOOL)a5 pageSize:(int64_t)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v13 = [v12 makeInstructorQueryForSearchString:v11 locationIDs:v10 sortingGivenNameFirst:v7 pageSize:a6];

  return v13;
}

- (id)makeQueryForPersonsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v6 = [v5 makeQueryForPersonsWithIdentifiers:v4];

  return v6;
}

- (id)makeQueryForLocationsAllowingEasyStudentSignInForPersonID:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v6 = [v5 makeQueryForLocationsAllowingEasyStudentSignInForPersonID:v4];

  return v6;
}

- (id)makeClassWithLocationID:(id)a3 name:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v9 = [v8 makeClassWithLocationID:v7 name:v6];

  return v9;
}

- (void)saveClass:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [v8 saveClass:v7 completion:v6];
}

- (void)removeClass:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [v8 removeClass:v7 completion:v6];
}

- (void)locationsWithManagePermissionsForUserWithObjectID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [v8 locationsWithManagePermissionsForUserWithObjectID:v7 completion:v6];
}

- (void)locationsWithObjectIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [v8 locationsWithObjectIDs:v7 completion:v6];
}

- (void)callGeneralObserversWithReason:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKConcreteClassKitRosterRequirements.m" lineNumber:273 description:{@"%@ must be called from the main thread", v4}];
}

@end