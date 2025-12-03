@interface CRKConcreteClassKitRosterRequirements
+ (id)instructorRosterRequirementsWithClassKitFacade:(id)facade;
+ (id)studentRosterRequirementsWithClassKitFacade:(id)facade;
- (BOOL)ownsError:(id)error;
- (CRKConcreteClassKitRosterRequirements)initWithClassKitFacade:(id)facade isForInstructor:(BOOL)instructor;
- (id)addGeneralObserver:(id)observer;
- (id)addObserverForPersonIDs:(id)ds observerBlock:(id)block;
- (id)makeClassWithLocationID:(id)d name:(id)name;
- (id)makeDataChangedBlockWithObserverDescription:(id)description;
- (id)makeDataObservers;
- (id)makeInstructorQueryForSearchString:(id)string locationIDs:(id)ds sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size;
- (id)makeQueryForLocationsAllowingEasyStudentSignInForPersonID:(id)d;
- (id)makeQueryForPersonsWithIdentifiers:(id)identifiers;
- (id)makeStudentQueryForSearchString:(id)string locationIDs:(id)ds sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size;
- (id)objectIDsOfPersonsInClass:(id)class;
- (id)objectIDsOfTrustedPersonsInClass:(id)class;
- (int64_t)accountState;
- (void)addNullableObserver:(id)observer toArray:(id)array;
- (void)addPerson:(id)person toClass:(id)class;
- (void)addTrustedPerson:(id)person toClass:(id)class;
- (void)callGeneralObserversWithReason:(id)reason;
- (void)classesWithCompletion:(id)completion;
- (void)currentUserWithCompletion:(id)completion;
- (void)dealloc;
- (void)deregisterDataObservers;
- (void)executeQuery:(id)query;
- (void)locationsWithManagePermissionsForUserWithObjectID:(id)d completion:(id)completion;
- (void)locationsWithObjectIDs:(id)ds completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)personsInClassWithObjectID:(id)d completion:(id)completion;
- (void)registerDataObservers;
- (void)registerForCurrentUserChangeNotification;
- (void)registerForMembershipChangeDarwinNotification;
- (void)registerGeneralObserverConstituents;
- (void)removeClass:(id)class completion:(id)completion;
- (void)removeGeneralObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)removePerson:(id)person fromClass:(id)class;
- (void)removePersonObserver:(id)observer;
- (void)removeTrustedPerson:(id)person fromClass:(id)class;
- (void)saveClass:(id)class completion:(id)completion;
- (void)startObservingAccountState;
- (void)stopObservingAccountState;
- (void)syncServerConfigWithCompletion:(id)completion;
- (void)trustedPersonsInClassWithObjectID:(id)d completion:(id)completion;
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

+ (id)studentRosterRequirementsWithClassKitFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [[self alloc] initWithClassKitFacade:facadeCopy isForInstructor:0];

  return v5;
}

+ (id)instructorRosterRequirementsWithClassKitFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [[self alloc] initWithClassKitFacade:facadeCopy isForInstructor:1];

  return v5;
}

- (CRKConcreteClassKitRosterRequirements)initWithClassKitFacade:(id)facade isForInstructor:(BOOL)instructor
{
  facadeCopy = facade;
  v17.receiver = self;
  v17.super_class = CRKConcreteClassKitRosterRequirements;
  v8 = [(CRKConcreteClassKitRosterRequirements *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_classKitFacade, facade);
    v9->_forInstructor = instructor;
    v10 = objc_opt_new();
    generalObserversByToken = v9->_generalObserversByToken;
    v9->_generalObserversByToken = v10;

    v12 = objc_opt_new();
    personObserversByToken = v9->_personObserversByToken;
    v9->_personObserversByToken = v12;

    makeDataObservers = [(CRKConcreteClassKitRosterRequirements *)v9 makeDataObservers];
    dataObservers = v9->_dataObservers;
    v9->_dataObservers = makeDataObservers;
  }

  return v9;
}

- (BOOL)ownsError:(id)error
{
  errorCopy = error;
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v6 = [classKitFacade ownsError:errorCopy];

  return v6;
}

- (void)syncServerConfigWithCompletion:(id)completion
{
  completionCopy = completion;
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [classKitFacade syncServerConfigWithCompletion:completionCopy];
}

- (void)removeGeneralObserver:(id)observer
{
  observerCopy = observer;
  generalObserversByToken = [(CRKConcreteClassKitRosterRequirements *)self generalObserversByToken];
  [generalObserversByToken setObject:0 forKeyedSubscript:observerCopy];

  generalObserversByToken2 = [(CRKConcreteClassKitRosterRequirements *)self generalObserversByToken];
  v7 = [generalObserversByToken2 count];

  if (!v7)
  {

    [(CRKConcreteClassKitRosterRequirements *)self unregisterGeneralObserverConstituents];
  }
}

- (void)removePersonObserver:(id)observer
{
  observerCopy = observer;
  personObserversByToken = [(CRKConcreteClassKitRosterRequirements *)self personObserversByToken];
  v7 = [personObserversByToken objectForKeyedSubscript:observerCopy];

  [v7 cancel];
  personObserversByToken2 = [(CRKConcreteClassKitRosterRequirements *)self personObserversByToken];
  [personObserversByToken2 setObject:0 forKeyedSubscript:observerCopy];
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
  userDidChangeSubscription = [(CRKConcreteClassKitRosterRequirements *)self userDidChangeSubscription];
  [userDidChangeSubscription cancel];

  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __81__CRKConcreteClassKitRosterRequirements_registerForCurrentUserChangeNotification__block_invoke;
  v9 = &unk_278DC1870;
  objc_copyWeak(&v10, &location);
  v5 = [classKitFacade subscribeToCurrentUserDidChangeEvents:&v6];
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
  userDidChangeSubscription = [(CRKConcreteClassKitRosterRequirements *)self userDidChangeSubscription];
  [userDidChangeSubscription cancel];

  [(CRKConcreteClassKitRosterRequirements *)self setUserDidChangeSubscription:0];
}

- (void)registerForMembershipChangeDarwinNotification
{
  if (![(CRKConcreteClassKitRosterRequirements *)self isForInstructor])
  {
    objc_initWeak(&location, self);
    membershipDidChangeSubscription = [(CRKConcreteClassKitRosterRequirements *)self membershipDidChangeSubscription];
    [membershipDidChangeSubscription cancel];

    classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __86__CRKConcreteClassKitRosterRequirements_registerForMembershipChangeDarwinNotification__block_invoke;
    v9 = &unk_278DC1870;
    objc_copyWeak(&v10, &location);
    v5 = [classKitFacade subscribeToClassMembershipChangeEvents:&v6];
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
  membershipDidChangeSubscription = [(CRKConcreteClassKitRosterRequirements *)self membershipDidChangeSubscription];
  [membershipDidChangeSubscription cancel];

  [(CRKConcreteClassKitRosterRequirements *)self setMembershipDidChangeSubscription:0];
}

- (id)makeDataObservers
{
  v3 = objc_opt_new();
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v5 = [classKitFacade classDataObserverWithSortDescriptors:0];

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
    classKitFacade2 = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
    v9 = [classKitFacade2 locationsObserverWithSortDescriptors:0];

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

- (void)addNullableObserver:(id)observer toArray:(id)array
{
  if (observer)
  {
    [array addObject:?];
  }
}

- (id)makeDataChangedBlockWithObserverDescription:(id)description
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"ClassKit data observer for '%@' fired", description];
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
  dataObservers = [(CRKConcreteClassKitRosterRequirements *)self dataObservers];
  v4 = [dataObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(dataObservers);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
        [classKitFacade registerDataObserver:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [dataObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)deregisterDataObservers
{
  dataObservers = [(CRKConcreteClassKitRosterRequirements *)self dataObservers];
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __64__CRKConcreteClassKitRosterRequirements_deregisterDataObservers__block_invoke;
  v11 = &unk_278DC1320;
  v5 = dataObservers;
  v12 = v5;
  v6 = classKitFacade;
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
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  accountState = [classKitFacade accountState];

  return accountState;
}

- (void)startObservingAccountState
{
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [classKitFacade addObserver:self forKeyPath:@"accountState" options:0 context:@"ObservationContext"];
}

- (void)stopObservingAccountState
{
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [classKitFacade removeObserver:self forKeyPath:@"accountState" context:@"ObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (context == @"ObservationContext")
  {
    v13 = pathCopy;
    objectCopy = object;
    classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];

    if (classKitFacade == objectCopy)
    {
      v12 = [v13 isEqualToString:@"accountState"];

      pathCopy = v13;
      if (!v12)
      {
        goto LABEL_7;
      }

      [(CRKConcreteClassKitRosterRequirements *)self callGeneralObserversWithReason:@"Account state changed"];
    }

    else
    {
    }

    pathCopy = v13;
  }

LABEL_7:
}

- (void)callGeneralObserversWithReason:(id)reason
{
  v20 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKConcreteClassKitRosterRequirements *)a2 callGeneralObserversWithReason:?];
  }

  v6 = _CRKLogASM_11();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = reasonCopy;
    _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "Firing roster requirements general observers with reason: '%{public}@'", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  generalObserversByToken = [(CRKConcreteClassKitRosterRequirements *)self generalObserversByToken];
  allValues = [generalObserversByToken allValues];

  v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        (*(*(*(&v13 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (id)addGeneralObserver:(id)observer
{
  observerCopy = observer;
  [(CRKConcreteClassKitRosterRequirements *)self registerGeneralObserverConstituents];
  makeToken = [(CRKConcreteClassKitRosterRequirements *)self makeToken];
  v6 = MEMORY[0x245D3AAD0](observerCopy);

  generalObserversByToken = [(CRKConcreteClassKitRosterRequirements *)self generalObserversByToken];
  [generalObserversByToken setObject:v6 forKeyedSubscript:makeToken];

  return makeToken;
}

- (id)addObserverForPersonIDs:(id)ds observerBlock:(id)block
{
  blockCopy = block;
  dsCopy = ds;
  makeToken = [(CRKConcreteClassKitRosterRequirements *)self makeToken];
  v9 = [CRKClassKitPersonIDObservation alloc];
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v11 = [(CRKClassKitPersonIDObservation *)v9 initWithPersonIDs:dsCopy classKitFacade:classKitFacade block:blockCopy];

  personObserversByToken = [(CRKConcreteClassKitRosterRequirements *)self personObserversByToken];
  [personObserversByToken setObject:v11 forKeyedSubscript:makeToken];

  return makeToken;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  [(CRKConcreteClassKitRosterRequirements *)self removeGeneralObserver:observerCopy];
  [(CRKConcreteClassKitRosterRequirements *)self removePersonObserver:observerCopy];
}

- (id)objectIDsOfPersonsInClass:(id)class
{
  classCopy = class;
  isForInstructor = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v7 = classKitFacade;
  if (isForInstructor)
  {
    [classKitFacade objectIDsOfInstructorsInClass:classCopy];
  }

  else
  {
    [classKitFacade objectIDsOfStudentsInClass:classCopy];
  }
  v8 = ;

  return v8;
}

- (id)objectIDsOfTrustedPersonsInClass:(id)class
{
  classCopy = class;
  isForInstructor = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v7 = classKitFacade;
  if (isForInstructor)
  {
    [classKitFacade objectIDsOfStudentsInClass:classCopy];
  }

  else
  {
    [classKitFacade objectIDsOfInstructorsInClass:classCopy];
  }
  v8 = ;

  return v8;
}

- (void)currentUserWithCompletion:(id)completion
{
  completionCopy = completion;
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [classKitFacade currentUserWithCompletion:completionCopy];
}

- (void)classesWithCompletion:(id)completion
{
  completionCopy = completion;
  isForInstructor = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v7 = classKitFacade;
  if (isForInstructor)
  {
    [classKitFacade instructedClassesWithCompletion:completionCopy];
  }

  else
  {
    [classKitFacade enrolledClassesWithCompletion:completionCopy];
  }
}

- (void)personsInClassWithObjectID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  isForInstructor = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v10 = classKitFacade;
  if (isForInstructor)
  {
    [classKitFacade instructorsInClassWithObjectID:dCopy completion:completionCopy];
  }

  else
  {
    [classKitFacade studentsInClassWithObjectID:dCopy completion:completionCopy];
  }
}

- (void)trustedPersonsInClassWithObjectID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  isForInstructor = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v10 = classKitFacade;
  if (isForInstructor)
  {
    [classKitFacade studentsInClassWithObjectID:dCopy completion:completionCopy];
  }

  else
  {
    [classKitFacade instructorsInClassWithObjectID:dCopy completion:completionCopy];
  }
}

- (void)executeQuery:(id)query
{
  queryCopy = query;
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [classKitFacade executeQuery:queryCopy];
}

- (void)addPerson:(id)person toClass:(id)class
{
  classCopy = class;
  personCopy = person;
  isForInstructor = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v10 = classKitFacade;
  if (isForInstructor)
  {
    [classKitFacade addInstructor:personCopy toClass:classCopy];
  }

  else
  {
    [classKitFacade addStudent:personCopy toClass:classCopy];
  }
}

- (void)removePerson:(id)person fromClass:(id)class
{
  classCopy = class;
  personCopy = person;
  isForInstructor = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v10 = classKitFacade;
  if (isForInstructor)
  {
    [classKitFacade removeInstructor:personCopy fromClass:classCopy];
  }

  else
  {
    [classKitFacade removeStudent:personCopy fromClass:classCopy];
  }
}

- (void)addTrustedPerson:(id)person toClass:(id)class
{
  classCopy = class;
  personCopy = person;
  isForInstructor = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v10 = classKitFacade;
  if (isForInstructor)
  {
    [classKitFacade addStudent:personCopy toClass:classCopy];
  }

  else
  {
    [classKitFacade addInstructor:personCopy toClass:classCopy];
  }
}

- (void)removeTrustedPerson:(id)person fromClass:(id)class
{
  classCopy = class;
  personCopy = person;
  isForInstructor = [(CRKConcreteClassKitRosterRequirements *)self isForInstructor];
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v10 = classKitFacade;
  if (isForInstructor)
  {
    [classKitFacade removeStudent:personCopy fromClass:classCopy];
  }

  else
  {
    [classKitFacade removeInstructor:personCopy fromClass:classCopy];
  }
}

- (id)makeStudentQueryForSearchString:(id)string locationIDs:(id)ds sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size
{
  firstCopy = first;
  dsCopy = ds;
  stringCopy = string;
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v13 = [classKitFacade makeStudentQueryForSearchString:stringCopy locationIDs:dsCopy sortingGivenNameFirst:firstCopy pageSize:size];

  return v13;
}

- (id)makeInstructorQueryForSearchString:(id)string locationIDs:(id)ds sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size
{
  firstCopy = first;
  dsCopy = ds;
  stringCopy = string;
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v13 = [classKitFacade makeInstructorQueryForSearchString:stringCopy locationIDs:dsCopy sortingGivenNameFirst:firstCopy pageSize:size];

  return v13;
}

- (id)makeQueryForPersonsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v6 = [classKitFacade makeQueryForPersonsWithIdentifiers:identifiersCopy];

  return v6;
}

- (id)makeQueryForLocationsAllowingEasyStudentSignInForPersonID:(id)d
{
  dCopy = d;
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v6 = [classKitFacade makeQueryForLocationsAllowingEasyStudentSignInForPersonID:dCopy];

  return v6;
}

- (id)makeClassWithLocationID:(id)d name:(id)name
{
  nameCopy = name;
  dCopy = d;
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  v9 = [classKitFacade makeClassWithLocationID:dCopy name:nameCopy];

  return v9;
}

- (void)saveClass:(id)class completion:(id)completion
{
  completionCopy = completion;
  classCopy = class;
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [classKitFacade saveClass:classCopy completion:completionCopy];
}

- (void)removeClass:(id)class completion:(id)completion
{
  completionCopy = completion;
  classCopy = class;
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [classKitFacade removeClass:classCopy completion:completionCopy];
}

- (void)locationsWithManagePermissionsForUserWithObjectID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [classKitFacade locationsWithManagePermissionsForUserWithObjectID:dCopy completion:completionCopy];
}

- (void)locationsWithObjectIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  classKitFacade = [(CRKConcreteClassKitRosterRequirements *)self classKitFacade];
  [classKitFacade locationsWithObjectIDs:dsCopy completion:completionCopy];
}

- (void)callGeneralObserversWithReason:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKConcreteClassKitRosterRequirements.m" lineNumber:273 description:{@"%@ must be called from the main thread", v4}];
}

@end