@interface CRKClassKitFacadeDecoratorBase
- (BOOL)ownsError:(id)a3;
- (CRKClassKitFacadeDecoratorBase)init;
- (CRKClassKitFacadeDecoratorBase)initWithClassKitFacade:(id)a3;
- (NSString)description;
- (id)classDataObserverWithSortDescriptors:(id)a3;
- (id)locationsObserverWithSortDescriptors:(id)a3;
- (id)makeClassWithLocationID:(id)a3 name:(id)a4;
- (id)makeInstructorQueryForSearchString:(id)a3 locationIDs:(id)a4 sortingGivenNameFirst:(BOOL)a5 pageSize:(int64_t)a6;
- (id)makeQueryForLocationsAllowingEasyStudentSignInForPersonID:(id)a3;
- (id)makeQueryForPersonsWithIdentifiers:(id)a3;
- (id)makeStudentQueryForSearchString:(id)a3 locationIDs:(id)a4 sortingGivenNameFirst:(BOOL)a5 pageSize:(int64_t)a6;
- (id)objectIDsOfInstructorsInClass:(id)a3;
- (id)objectIDsOfStudentsInClass:(id)a3;
- (id)personObserverWithPersonIDs:(id)a3 sortDescriptors:(id)a4;
- (id)subscribeToClassMembershipChangeEvents:(id)a3;
- (id)subscribeToCurrentUserDidChangeEvents:(id)a3;
- (int64_t)accountState;
- (void)addInstructor:(id)a3 toClass:(id)a4;
- (void)addStudent:(id)a3 toClass:(id)a4;
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
- (void)removeInstructor:(id)a3 fromClass:(id)a4;
- (void)removeStudent:(id)a3 fromClass:(id)a4;
- (void)saveClass:(id)a3 completion:(id)a4;
- (void)studentsInClassWithObjectID:(id)a3 completion:(id)a4;
- (void)syncServerConfigWithCompletion:(id)a3;
@end

@implementation CRKClassKitFacadeDecoratorBase

- (CRKClassKitFacadeDecoratorBase)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithClassKitFacade_);
  [v4 handleFailureInMethod:a2 object:self file:@"CRKClassKitFacadeDecoratorBase.m" lineNumber:20 description:{@"Use %@ instead", v5}];

  return 0;
}

- (CRKClassKitFacadeDecoratorBase)initWithClassKitFacade:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKClassKitFacadeDecoratorBase;
  v6 = [(CRKClassKitFacadeDecoratorBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingClassKitFacade, a3);
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [v3 stringWithFormat:@"<%@: %p { underlyingClassKitFacade = %@ }>", v4, self, v5];

  return v6;
}

- (int64_t)accountState
{
  v2 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v3 = [v2 accountState];

  return v3;
}

- (BOOL)ownsError:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [v5 ownsError:v4];

  return v6;
}

- (void)syncServerConfigWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v5 syncServerConfigWithCompletion:v4];
}

- (id)classDataObserverWithSortDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [v5 classDataObserverWithSortDescriptors:v4];

  return v6;
}

- (id)locationsObserverWithSortDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [v5 locationsObserverWithSortDescriptors:v4];

  return v6;
}

- (id)personObserverWithPersonIDs:(id)a3 sortDescriptors:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v9 = [v8 personObserverWithPersonIDs:v7 sortDescriptors:v6];

  return v9;
}

- (void)registerDataObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v5 registerDataObserver:v4];
}

- (void)deregisterDataObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v5 deregisterDataObserver:v4];
}

- (void)currentUserWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v5 currentUserWithCompletion:v4];
}

- (void)enrolledClassesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v5 enrolledClassesWithCompletion:v4];
}

- (void)instructedClassesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v5 instructedClassesWithCompletion:v4];
}

- (void)instructorsInClassWithObjectID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v8 instructorsInClassWithObjectID:v7 completion:v6];
}

- (void)studentsInClassWithObjectID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v8 studentsInClassWithObjectID:v7 completion:v6];
}

- (void)saveClass:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v8 saveClass:v7 completion:v6];
}

- (void)addStudent:(id)a3 toClass:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v8 addStudent:v7 toClass:v6];
}

- (void)removeStudent:(id)a3 fromClass:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v8 removeStudent:v7 fromClass:v6];
}

- (id)objectIDsOfStudentsInClass:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [v5 objectIDsOfStudentsInClass:v4];

  return v6;
}

- (void)addInstructor:(id)a3 toClass:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v8 addInstructor:v7 toClass:v6];
}

- (void)removeInstructor:(id)a3 fromClass:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v8 removeInstructor:v7 fromClass:v6];
}

- (id)objectIDsOfInstructorsInClass:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [v5 objectIDsOfInstructorsInClass:v4];

  return v6;
}

- (id)makeClassWithLocationID:(id)a3 name:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v9 = [v8 makeClassWithLocationID:v7 name:v6];

  return v9;
}

- (void)locationsWithManagePermissionsForUserWithObjectID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v8 locationsWithManagePermissionsForUserWithObjectID:v7 completion:v6];
}

- (void)locationsWithObjectIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v8 locationsWithObjectIDs:v7 completion:v6];
}

- (void)removeClass:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v8 removeClass:v7 completion:v6];
}

- (id)makeStudentQueryForSearchString:(id)a3 locationIDs:(id)a4 sortingGivenNameFirst:(BOOL)a5 pageSize:(int64_t)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v13 = [v12 makeStudentQueryForSearchString:v11 locationIDs:v10 sortingGivenNameFirst:v7 pageSize:a6];

  return v13;
}

- (id)makeInstructorQueryForSearchString:(id)a3 locationIDs:(id)a4 sortingGivenNameFirst:(BOOL)a5 pageSize:(int64_t)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v13 = [v12 makeInstructorQueryForSearchString:v11 locationIDs:v10 sortingGivenNameFirst:v7 pageSize:a6];

  return v13;
}

- (id)makeQueryForPersonsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [v5 makeQueryForPersonsWithIdentifiers:v4];

  return v6;
}

- (id)makeQueryForLocationsAllowingEasyStudentSignInForPersonID:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [v5 makeQueryForLocationsAllowingEasyStudentSignInForPersonID:v4];

  return v6;
}

- (void)executeQuery:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v5 executeQuery:v4];
}

- (id)subscribeToClassMembershipChangeEvents:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [v5 subscribeToClassMembershipChangeEvents:v4];

  return v6;
}

- (id)subscribeToCurrentUserDidChangeEvents:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v6 = [v5 subscribeToCurrentUserDidChangeEvents:v4];

  return v6;
}

@end