@interface CRKASMRosterProviderDecoratorBase
- (BOOL)ingestCertificates:(id)certificates forTrustedUserIdentifier:(id)identifier error:(id *)error;
- (BOOL)isPopulated;
- (CRKASMRoster)roster;
- (CRKASMRosterProviderDecoratorBase)initWithRosterProvider:(id)provider;
- (CRKASMUserFetching)userFetcher;
- (NSArray)locationsWithManagePermissions;
- (id)instructorDirectoryForLocationIDs:(id)ds;
- (id)studentDirectoryForLocationIDs:(id)ds;
- (void)createCourseWithProperties:(id)properties completion:(id)completion;
- (void)refresh;
- (void)removeCourseWithIdentifier:(id)identifier completion:(id)completion;
- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion;
@end

@implementation CRKASMRosterProviderDecoratorBase

- (CRKASMRosterProviderDecoratorBase)initWithRosterProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CRKASMRosterProviderDecoratorBase;
  v6 = [(CRKASMRosterProviderDecoratorBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingRosterProvider, provider);
  }

  return v7;
}

- (CRKASMRoster)roster
{
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  roster = [underlyingRosterProvider roster];

  return roster;
}

- (BOOL)isPopulated
{
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  isPopulated = [underlyingRosterProvider isPopulated];

  return isPopulated;
}

- (CRKASMUserFetching)userFetcher
{
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  userFetcher = [underlyingRosterProvider userFetcher];

  return userFetcher;
}

- (id)studentDirectoryForLocationIDs:(id)ds
{
  dsCopy = ds;
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v6 = [underlyingRosterProvider studentDirectoryForLocationIDs:dsCopy];

  return v6;
}

- (id)instructorDirectoryForLocationIDs:(id)ds
{
  dsCopy = ds;
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v6 = [underlyingRosterProvider instructorDirectoryForLocationIDs:dsCopy];

  return v6;
}

- (NSArray)locationsWithManagePermissions
{
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  locationsWithManagePermissions = [underlyingRosterProvider locationsWithManagePermissions];

  return locationsWithManagePermissions;
}

- (void)refresh
{
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  [underlyingRosterProvider refresh];
}

- (BOOL)ingestCertificates:(id)certificates forTrustedUserIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  certificatesCopy = certificates;
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  LOBYTE(error) = [underlyingRosterProvider ingestCertificates:certificatesCopy forTrustedUserIdentifier:identifierCopy error:error];

  return error;
}

- (void)removeCourseWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  [underlyingRosterProvider removeCourseWithIdentifier:identifierCopy completion:completionCopy];
}

- (void)createCourseWithProperties:(id)properties completion:(id)completion
{
  completionCopy = completion;
  propertiesCopy = properties;
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  [underlyingRosterProvider createCourseWithProperties:propertiesCopy completion:completionCopy];
}

- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion
{
  completionCopy = completion;
  propertiesCopy = properties;
  identifierCopy = identifier;
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  [underlyingRosterProvider updateCourseWithIdentifier:identifierCopy properties:propertiesCopy completion:completionCopy];
}

@end