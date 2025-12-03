@interface CPLCloudKitReschedulerCoordinator
+ (id)_cloudKitReschedulerManagerForLibraryWithIdentifier:(id)identifier involvedProcesses:(id)processes relatedApplications:(id)applications;
+ (id)cloudKitReschedulerManagerForLibraryWithIdentifier:(id)identifier involvedProcesses:(id)processes relatedApplications:(id)applications;
+ (void)_saveRegisteredTaskIdentifiers;
+ (void)beginRegisteringKnownReschedulerManager;
+ (void)dropCloudKitReschedulerManagerForLibraryWithIdentifier:(id)identifier;
+ (void)endRegisteringKnownReschedulerManagers;
@end

@implementation CPLCloudKitReschedulerCoordinator

+ (void)_saveRegisteredTaskIdentifiers
{
  if ((byte_1002C4FD0 & 1) == 0)
  {
    allObjects = [qword_1002C4FE8 allObjects];
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 setObject:allObjects forKey:@"_CPLRegisteredTaskIdentifiers"];
  }
}

+ (id)_cloudKitReschedulerManagerForLibraryWithIdentifier:(id)identifier involvedProcesses:(id)processes relatedApplications:(id)applications
{
  identifierCopy = identifier;
  v8 = CPLLibraryIdentifierSystemLibrary;
  applicationsCopy = applications;
  processesCopy = processes;
  LODWORD(v8) = [identifierCopy isEqualToString:v8];
  v11 = [CPLBGSTReschedulerManager alloc];
  if (v8)
  {
    v12 = +[CPLBGSTReschedulerManager taskIdentifierForSystemLibrary];
    +[CPLBGSTReschedulerManager groupNameForSystemLibrarySync];
  }

  else
  {
    v12 = [CPLBGSTReschedulerManager taskIdentifierForLibraryIdentifier:identifierCopy];
    +[CPLBGSTReschedulerManager groupNameForAppLibrarySync];
  }
  v13 = ;
  v14 = [(CPLBGSTReschedulerManager *)v11 initWithTaskIdentifier:v12 involvedProcesses:processesCopy relatedApplications:applicationsCopy groupName:v13];

  return v14;
}

+ (id)cloudKitReschedulerManagerForLibraryWithIdentifier:(id)identifier involvedProcesses:(id)processes relatedApplications:(id)applications
{
  identifierCopy = identifier;
  processesCopy = processes;
  applicationsCopy = applications;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100004390;
  v31 = sub_1000052AC;
  v32 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v19 = sub_10002B6DC;
  v20 = &unk_1002734D0;
  v12 = identifierCopy;
  v25 = a2;
  selfCopy = self;
  v21 = v12;
  v24 = &v27;
  v13 = processesCopy;
  v22 = v13;
  v14 = applicationsCopy;
  v23 = v14;
  v15 = v18;
  os_unfair_lock_lock(&stru_1002C4FD4);
  v19(v15);
  os_unfair_lock_unlock(&stru_1002C4FD4);

  v16 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v16;
}

+ (void)dropCloudKitReschedulerManagerForLibraryWithIdentifier:(id)identifier
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_100004390;
  v12[4] = sub_1000052AC;
  v13 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_10002BB1C;
  v8 = &unk_1002734F8;
  v10 = v12;
  identifierCopy = identifier;
  v9 = identifierCopy;
  selfCopy = self;
  v5 = v6;
  os_unfair_lock_lock(&stru_1002C4FD4);
  v7(v5);
  os_unfair_lock_unlock(&stru_1002C4FD4);

  _Block_object_dispose(v12, 8);
}

+ (void)beginRegisteringKnownReschedulerManager
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v4 = sub_10002BC60;
  v5 = &unk_100273518;
  v6 = a2;
  selfCopy = self;
  v2 = v3;
  os_unfair_lock_lock(&stru_1002C4FD4);
  v4(v2);
  os_unfair_lock_unlock(&stru_1002C4FD4);
}

+ (void)endRegisteringKnownReschedulerManagers
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v4 = sub_10002BD84;
  v5 = &unk_100273540;
  v6 = v8;
  selfCopy = self;
  v2 = v3;
  os_unfair_lock_lock(&stru_1002C4FD4);
  v4(v2);
  os_unfair_lock_unlock(&stru_1002C4FD4);

  _Block_object_dispose(v8, 8);
}

@end