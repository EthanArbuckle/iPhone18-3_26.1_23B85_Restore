@interface CRKClassKitFacadeDecoratorBase
- (BOOL)ownsError:(id)error;
- (CRKClassKitFacadeDecoratorBase)init;
- (CRKClassKitFacadeDecoratorBase)initWithClassKitFacade:(id)facade;
- (NSString)description;
- (id)classDataObserverWithSortDescriptors:(id)descriptors;
- (id)locationsObserverWithSortDescriptors:(id)descriptors;
- (id)makeClassWithLocationID:(id)d name:(id)name;
- (id)makeInstructorQueryForSearchString:(id)string locationIDs:(id)ds sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size;
- (id)makeQueryForLocationsAllowingEasyStudentSignInForPersonID:(id)d;
- (id)makeQueryForPersonsWithIdentifiers:(id)identifiers;
- (id)makeStudentQueryForSearchString:(id)string locationIDs:(id)ds sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size;
- (id)objectIDsOfInstructorsInClass:(id)class;
- (id)objectIDsOfStudentsInClass:(id)class;
- (id)personObserverWithPersonIDs:(id)ds sortDescriptors:(id)descriptors;
- (id)subscribeToClassMembershipChangeEvents:(id)events;
- (id)subscribeToCurrentUserDidChangeEvents:(id)events;
- (int64_t)accountState;
- (void)addInstructor:(id)instructor toClass:(id)class;
- (void)addStudent:(id)student toClass:(id)class;
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
- (void)removeInstructor:(id)instructor fromClass:(id)class;
- (void)removeStudent:(id)student fromClass:(id)class;
- (void)saveClass:(id)class completion:(id)completion;
- (void)studentsInClassWithObjectID:(id)d completion:(id)completion;
- (void)syncServerConfigWithCompletion:(id)completion;
@end

@implementation CRKClassKitFacadeDecoratorBase

- (CRKClassKitFacadeDecoratorBase)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithClassKitFacade_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CRKClassKitFacadeDecoratorBase.m" lineNumber:20 description:{@"Use %@ instead", v5}];

  return 0;
}

- (CRKClassKitFacadeDecoratorBase)initWithClassKitFacade:(id)facade
{
  facadeCopy = facade;
  v9.receiver = self;
  v9.super_class = CRKClassKitFacadeDecoratorBase;
  v6 = [(CRKClassKitFacadeDecoratorBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingClassKitFacade, facade);
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [v3 stringWithFormat:@"<%@: %p { underlyingClassKitFacade = %@ }>", v4, self, underlyingClassKitFacade];

  return v6;
}

- (int64_t)accountState
{
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  accountState = [underlyingClassKitFacade accountState];

  return accountState;
}

- (BOOL)ownsError:(id)error
{
  errorCopy = error;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [underlyingClassKitFacade ownsError:errorCopy];

  return v6;
}

- (void)syncServerConfigWithCompletion:(id)completion
{
  completionCopy = completion;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade syncServerConfigWithCompletion:completionCopy];
}

- (id)classDataObserverWithSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [underlyingClassKitFacade classDataObserverWithSortDescriptors:descriptorsCopy];

  return v6;
}

- (id)locationsObserverWithSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [underlyingClassKitFacade locationsObserverWithSortDescriptors:descriptorsCopy];

  return v6;
}

- (id)personObserverWithPersonIDs:(id)ds sortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  dsCopy = ds;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v9 = [underlyingClassKitFacade personObserverWithPersonIDs:dsCopy sortDescriptors:descriptorsCopy];

  return v9;
}

- (void)registerDataObserver:(id)observer
{
  observerCopy = observer;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade registerDataObserver:observerCopy];
}

- (void)deregisterDataObserver:(id)observer
{
  observerCopy = observer;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade deregisterDataObserver:observerCopy];
}

- (void)currentUserWithCompletion:(id)completion
{
  completionCopy = completion;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade currentUserWithCompletion:completionCopy];
}

- (void)enrolledClassesWithCompletion:(id)completion
{
  completionCopy = completion;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade enrolledClassesWithCompletion:completionCopy];
}

- (void)instructedClassesWithCompletion:(id)completion
{
  completionCopy = completion;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade instructedClassesWithCompletion:completionCopy];
}

- (void)instructorsInClassWithObjectID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade instructorsInClassWithObjectID:dCopy completion:completionCopy];
}

- (void)studentsInClassWithObjectID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade studentsInClassWithObjectID:dCopy completion:completionCopy];
}

- (void)saveClass:(id)class completion:(id)completion
{
  completionCopy = completion;
  classCopy = class;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade saveClass:classCopy completion:completionCopy];
}

- (void)addStudent:(id)student toClass:(id)class
{
  classCopy = class;
  studentCopy = student;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade addStudent:studentCopy toClass:classCopy];
}

- (void)removeStudent:(id)student fromClass:(id)class
{
  classCopy = class;
  studentCopy = student;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade removeStudent:studentCopy fromClass:classCopy];
}

- (id)objectIDsOfStudentsInClass:(id)class
{
  classCopy = class;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [underlyingClassKitFacade objectIDsOfStudentsInClass:classCopy];

  return v6;
}

- (void)addInstructor:(id)instructor toClass:(id)class
{
  classCopy = class;
  instructorCopy = instructor;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade addInstructor:instructorCopy toClass:classCopy];
}

- (void)removeInstructor:(id)instructor fromClass:(id)class
{
  classCopy = class;
  instructorCopy = instructor;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade removeInstructor:instructorCopy fromClass:classCopy];
}

- (id)objectIDsOfInstructorsInClass:(id)class
{
  classCopy = class;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [underlyingClassKitFacade objectIDsOfInstructorsInClass:classCopy];

  return v6;
}

- (id)makeClassWithLocationID:(id)d name:(id)name
{
  nameCopy = name;
  dCopy = d;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v9 = [underlyingClassKitFacade makeClassWithLocationID:dCopy name:nameCopy];

  return v9;
}

- (void)locationsWithManagePermissionsForUserWithObjectID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade locationsWithManagePermissionsForUserWithObjectID:dCopy completion:completionCopy];
}

- (void)locationsWithObjectIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade locationsWithObjectIDs:dsCopy completion:completionCopy];
}

- (void)removeClass:(id)class completion:(id)completion
{
  completionCopy = completion;
  classCopy = class;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade removeClass:classCopy completion:completionCopy];
}

- (id)makeStudentQueryForSearchString:(id)string locationIDs:(id)ds sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size
{
  firstCopy = first;
  dsCopy = ds;
  stringCopy = string;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v13 = [underlyingClassKitFacade makeStudentQueryForSearchString:stringCopy locationIDs:dsCopy sortingGivenNameFirst:firstCopy pageSize:size];

  return v13;
}

- (id)makeInstructorQueryForSearchString:(id)string locationIDs:(id)ds sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size
{
  firstCopy = first;
  dsCopy = ds;
  stringCopy = string;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v13 = [underlyingClassKitFacade makeInstructorQueryForSearchString:stringCopy locationIDs:dsCopy sortingGivenNameFirst:firstCopy pageSize:size];

  return v13;
}

- (id)makeQueryForPersonsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [underlyingClassKitFacade makeQueryForPersonsWithIdentifiers:identifiersCopy];

  return v6;
}

- (id)makeQueryForLocationsAllowingEasyStudentSignInForPersonID:(id)d
{
  dCopy = d;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [underlyingClassKitFacade makeQueryForLocationsAllowingEasyStudentSignInForPersonID:dCopy];

  return v6;
}

- (void)executeQuery:(id)query
{
  queryCopy = query;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade executeQuery:queryCopy];
}

- (id)subscribeToClassMembershipChangeEvents:(id)events
{
  eventsCopy = events;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [underlyingClassKitFacade subscribeToClassMembershipChangeEvents:eventsCopy];

  return v6;
}

- (id)subscribeToCurrentUserDidChangeEvents:(id)events
{
  eventsCopy = events;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [underlyingClassKitFacade subscribeToCurrentUserDidChangeEvents:eventsCopy];

  return v6;
}

@end