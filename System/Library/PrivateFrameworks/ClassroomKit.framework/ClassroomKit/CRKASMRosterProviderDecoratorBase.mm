@interface CRKASMRosterProviderDecoratorBase
- (BOOL)ingestCertificates:(id)a3 forTrustedUserIdentifier:(id)a4 error:(id *)a5;
- (BOOL)isPopulated;
- (CRKASMRoster)roster;
- (CRKASMRosterProviderDecoratorBase)initWithRosterProvider:(id)a3;
- (CRKASMUserFetching)userFetcher;
- (NSArray)locationsWithManagePermissions;
- (id)instructorDirectoryForLocationIDs:(id)a3;
- (id)studentDirectoryForLocationIDs:(id)a3;
- (void)createCourseWithProperties:(id)a3 completion:(id)a4;
- (void)refresh;
- (void)removeCourseWithIdentifier:(id)a3 completion:(id)a4;
- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5;
@end

@implementation CRKASMRosterProviderDecoratorBase

- (CRKASMRosterProviderDecoratorBase)initWithRosterProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKASMRosterProviderDecoratorBase;
  v6 = [(CRKASMRosterProviderDecoratorBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingRosterProvider, a3);
  }

  return v7;
}

- (CRKASMRoster)roster
{
  v2 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v3 = [v2 roster];

  return v3;
}

- (BOOL)isPopulated
{
  v2 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v3 = [v2 isPopulated];

  return v3;
}

- (CRKASMUserFetching)userFetcher
{
  v2 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v3 = [v2 userFetcher];

  return v3;
}

- (id)studentDirectoryForLocationIDs:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v6 = [v5 studentDirectoryForLocationIDs:v4];

  return v6;
}

- (id)instructorDirectoryForLocationIDs:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v6 = [v5 instructorDirectoryForLocationIDs:v4];

  return v6;
}

- (NSArray)locationsWithManagePermissions
{
  v2 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v3 = [v2 locationsWithManagePermissions];

  return v3;
}

- (void)refresh
{
  v2 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  [v2 refresh];
}

- (BOOL)ingestCertificates:(id)a3 forTrustedUserIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  LOBYTE(a5) = [v10 ingestCertificates:v9 forTrustedUserIdentifier:v8 error:a5];

  return a5;
}

- (void)removeCourseWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  [v8 removeCourseWithIdentifier:v7 completion:v6];
}

- (void)createCourseWithProperties:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  [v8 createCourseWithProperties:v7 completion:v6];
}

- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  [v11 updateCourseWithIdentifier:v10 properties:v9 completion:v8];
}

@end