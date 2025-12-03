@interface CRKASMRosterProviderFactory
- (id)makeClassicAdHocSwitchReadingRosterProviderWithConfiguration:(id)configuration;
- (id)makeEasyMAIDSignInRosterProvider;
- (id)makeInstructorRosterProvider;
- (id)makeInstructorRosterWithoutKeychainAndWithPersonaAdoption;
- (id)makeRosterProviderWithConfiguration:(id)configuration;
- (id)makeStudentRosterProvider;
@end

@implementation CRKASMRosterProviderFactory

- (id)makeInstructorRosterProvider
{
  v3 = +[CRKASMRosterProviderConfiguration instructorRosterConfiguration];
  v4 = [(CRKASMRosterProviderFactory *)self makeClassicAdHocSwitchReadingRosterProviderWithConfiguration:v3];

  return v4;
}

- (id)makeEasyMAIDSignInRosterProvider
{
  v3 = [CRKASMEasyMAIDSignInRosterProvider alloc];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__CRKASMRosterProviderFactory_makeEasyMAIDSignInRosterProvider__block_invoke;
  v6[3] = &unk_278DC1E40;
  v6[4] = self;
  v4 = [(CRKASMEasyMAIDSignInRosterProvider *)v3 initWithRosterProviderGenerator:v6];

  return v4;
}

- (id)makeStudentRosterProvider
{
  v3 = +[CRKASMRosterProviderConfiguration studentRosterConfiguration];
  v4 = [(CRKASMRosterProviderFactory *)self makeClassicAdHocSwitchReadingRosterProviderWithConfiguration:v3];

  return v4;
}

- (id)makeInstructorRosterWithoutKeychainAndWithPersonaAdoption
{
  v3 = +[CRKASMRosterProviderConfiguration instructorRosterWithoutKeychainAndWithPersonaAdoptionConfiguration];
  v4 = [(CRKASMRosterProviderFactory *)self makeClassicAdHocSwitchReadingRosterProviderWithConfiguration:v3];

  return v4;
}

- (id)makeClassicAdHocSwitchReadingRosterProviderWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [CRKASMClassicAdHocSwitchReadingRosterProvider alloc];
  classKitFacade = [configurationCopy classKitFacade];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__CRKASMRosterProviderFactory_makeClassicAdHocSwitchReadingRosterProviderWithConfiguration___block_invoke;
  v10[3] = &unk_278DC1E68;
  v10[4] = self;
  v11 = configurationCopy;
  v7 = configurationCopy;
  v8 = [(CRKASMClassicAdHocSwitchReadingRosterProvider *)v5 initWithClassKitFacade:classKitFacade rosterProviderGenerator:v10];

  return v8;
}

- (id)makeRosterProviderWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[CRKASMConcreteRosterProvider alloc] initWithConfiguration:configurationCopy];
  v5 = -[CRKASMCourseSizeLimitingRosterProvider initWithRosterProvider:maxUserCount:maxTrustedUserCount:]([CRKASMCourseSizeLimitingRosterProvider alloc], "initWithRosterProvider:maxUserCount:maxTrustedUserCount:", v4, [configurationCopy maxCourseUsersCount], objc_msgSend(configurationCopy, "maxCourseTrustedUsersCount"));

  v6 = [[CRKASMAtomicRosterProvider alloc] initWithRosterProvider:v5];
  v7 = [CRKASMTimeoutRosterProvider alloc];
  [configurationCopy rosterMutationTimeout];
  v9 = v8;

  v10 = [(CRKASMTimeoutRosterProvider *)v7 initWithRosterProvider:v6 timeout:v9];
  v11 = [[CRKASMNetworkCheckingRosterProvider alloc] initWithRosterProvider:v10];

  return v11;
}

@end