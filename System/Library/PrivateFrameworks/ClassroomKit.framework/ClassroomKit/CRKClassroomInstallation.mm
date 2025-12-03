@interface CRKClassroomInstallation
+ (BOOL)anyInstallationExists;
+ (CRKClassroomInstallation)installationWithClassroomBundleIdentifier:(id)identifier bundleHasContentsFolder:(BOOL)folder instructordBundleIdentifier:(id)bundleIdentifier;
+ (CRKClassroomInstallation)preferredInstallation;
+ (id)instructorKitImagePathInBundle:(id)bundle hasContentsFolder:(BOOL)folder;
- (CRKClassroomInstallation)initWithClassroomURL:(id)l classroomBundleIdentifier:(id)identifier instructorKitImagePath:(id)path instructordBundleIdentifier:(id)bundleIdentifier;
- (id)description;
@end

@implementation CRKClassroomInstallation

+ (CRKClassroomInstallation)installationWithClassroomBundleIdentifier:(id)identifier bundleHasContentsFolder:(BOOL)folder instructordBundleIdentifier:(id)bundleIdentifier
{
  folderCopy = folder;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v17 = 0;
  v10 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v17];
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
      [CRKClassroomInstallation installationWithClassroomBundleIdentifier:identifierCopy bundleHasContentsFolder:v12 instructordBundleIdentifier:v11];
    }
  }

  v13 = [v10 URL];
  if (v13)
  {
    v14 = [self instructorKitImagePathInBundle:v13 hasContentsFolder:folderCopy];
    v15 = [[self alloc] initWithClassroomURL:v13 classroomBundleIdentifier:identifierCopy instructorKitImagePath:v14 instructordBundleIdentifier:bundleIdentifierCopy];
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
    [self iOSInstallation];
  }

  else
  {
    [self macOSInstallation];
  }
  v3 = ;

  return v3;
}

+ (BOOL)anyInstallationExists
{
  preferredInstallation = [self preferredInstallation];
  v3 = preferredInstallation != 0;

  return v3;
}

- (CRKClassroomInstallation)initWithClassroomURL:(id)l classroomBundleIdentifier:(id)identifier instructorKitImagePath:(id)path instructordBundleIdentifier:(id)bundleIdentifier
{
  lCopy = l;
  identifierCopy = identifier;
  pathCopy = path;
  bundleIdentifierCopy = bundleIdentifier;
  v24.receiver = self;
  v24.super_class = CRKClassroomInstallation;
  v15 = [(CRKClassroomInstallation *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_classroomURL, l);
    v17 = [identifierCopy copy];
    classroomBundleIdentifier = v16->_classroomBundleIdentifier;
    v16->_classroomBundleIdentifier = v17;

    v19 = [pathCopy copy];
    instructorKitImagePath = v16->_instructorKitImagePath;
    v16->_instructorKitImagePath = v19;

    v21 = [bundleIdentifierCopy copy];
    instructordBundleIdentifier = v16->_instructordBundleIdentifier;
    v16->_instructordBundleIdentifier = v21;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  classroomURL = [(CRKClassroomInstallation *)self classroomURL];
  absoluteString = [classroomURL absoluteString];
  classroomBundleIdentifier = [(CRKClassroomInstallation *)self classroomBundleIdentifier];
  instructorKitImagePath = [(CRKClassroomInstallation *)self instructorKitImagePath];
  instructordBundleIdentifier = [(CRKClassroomInstallation *)self instructordBundleIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: %p { classroomURL = %@, classroomBundleIdentifier = %@, instructorKitImagePath = %@, instructordBundleIdentifier = %@ }>", v4, self, absoluteString, classroomBundleIdentifier, instructorKitImagePath, instructordBundleIdentifier];

  return v10;
}

+ (id)instructorKitImagePathInBundle:(id)bundle hasContentsFolder:(BOOL)folder
{
  folderCopy = folder;
  bundleCopy = bundle;
  v6 = objc_opt_new();
  path = [bundleCopy path];

  [v6 addObject:path];
  if (folderCopy)
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