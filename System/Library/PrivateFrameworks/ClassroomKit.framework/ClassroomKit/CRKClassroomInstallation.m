@interface CRKClassroomInstallation
+ (BOOL)anyInstallationExists;
+ (CRKClassroomInstallation)installationWithClassroomBundleIdentifier:(id)a3 bundleHasContentsFolder:(BOOL)a4 instructordBundleIdentifier:(id)a5;
+ (CRKClassroomInstallation)preferredInstallation;
+ (id)instructorKitImagePathInBundle:(id)a3 hasContentsFolder:(BOOL)a4;
- (CRKClassroomInstallation)initWithClassroomURL:(id)a3 classroomBundleIdentifier:(id)a4 instructorKitImagePath:(id)a5 instructordBundleIdentifier:(id)a6;
- (id)description;
@end

@implementation CRKClassroomInstallation

+ (CRKClassroomInstallation)installationWithClassroomBundleIdentifier:(id)a3 bundleHasContentsFolder:(BOOL)a4 instructordBundleIdentifier:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v17 = 0;
  v10 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v8 allowPlaceholder:0 error:&v17];
  v11 = v17;
  if (!v10)
  {
    if (_CRKLogGeneral_onceToken_42 != -1)
    {
      +[CRKClassroomInstallation installationWithClassroomBundleIdentifier:bundleHasContentsFolder:instructordBundleIdentifier:];
    }

    v12 = _CRKLogGeneral_logObj_42;
    if (os_log_type_enabled(_CRKLogGeneral_logObj_42, OS_LOG_TYPE_ERROR))
    {
      [CRKClassroomInstallation installationWithClassroomBundleIdentifier:v8 bundleHasContentsFolder:v12 instructordBundleIdentifier:v11];
    }
  }

  v13 = [v10 URL];
  if (v13)
  {
    v14 = [a1 instructorKitImagePathInBundle:v13 hasContentsFolder:v6];
    v15 = [[a1 alloc] initWithClassroomURL:v13 classroomBundleIdentifier:v8 instructorKitImagePath:v14 instructordBundleIdentifier:v9];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (CRKClassroomInstallation)preferredInstallation
{
  if (CRKIsiOS())
  {
    [a1 iOSInstallation];
  }

  else
  {
    [a1 macOSInstallation];
  }
  v3 = ;

  return v3;
}

+ (BOOL)anyInstallationExists
{
  v2 = [a1 preferredInstallation];
  v3 = v2 != 0;

  return v3;
}

- (CRKClassroomInstallation)initWithClassroomURL:(id)a3 classroomBundleIdentifier:(id)a4 instructorKitImagePath:(id)a5 instructordBundleIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = CRKClassroomInstallation;
  v15 = [(CRKClassroomInstallation *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_classroomURL, a3);
    v17 = [v12 copy];
    classroomBundleIdentifier = v16->_classroomBundleIdentifier;
    v16->_classroomBundleIdentifier = v17;

    v19 = [v13 copy];
    instructorKitImagePath = v16->_instructorKitImagePath;
    v16->_instructorKitImagePath = v19;

    v21 = [v14 copy];
    instructordBundleIdentifier = v16->_instructordBundleIdentifier;
    v16->_instructordBundleIdentifier = v21;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKClassroomInstallation *)self classroomURL];
  v6 = [v5 absoluteString];
  v7 = [(CRKClassroomInstallation *)self classroomBundleIdentifier];
  v8 = [(CRKClassroomInstallation *)self instructorKitImagePath];
  v9 = [(CRKClassroomInstallation *)self instructordBundleIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: %p { classroomURL = %@, classroomBundleIdentifier = %@, instructorKitImagePath = %@, instructordBundleIdentifier = %@ }>", v4, self, v6, v7, v8, v9];

  return v10;
}

+ (id)instructorKitImagePathInBundle:(id)a3 hasContentsFolder:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 path];

  [v6 addObject:v7];
  if (v4)
  {
    [v6 addObject:@"Contents"];
  }

  [v6 addObject:@"Frameworks"];
  [v6 addObject:@"InstructorKit.framework"];
  [v6 addObject:@"InstructorKit"];
  v8 = [MEMORY[0x277CCACA8] pathWithComponents:v6];

  return v8;
}

+ (void)installationWithClassroomBundleIdentifier:(uint64_t)a1 bundleHasContentsFolder:(void *)a2 instructordBundleIdentifier:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 verboseDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_243550000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch bundle record for %{public}@: %{public}@", &v7, 0x16u);
}

@end