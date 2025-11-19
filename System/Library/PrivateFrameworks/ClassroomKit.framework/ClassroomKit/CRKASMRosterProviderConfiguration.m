@interface CRKASMRosterProviderConfiguration
+ (BOOL)userCachingEnabled;
+ (CRKASMRosterProviderConfiguration)instructorRosterConfiguration;
+ (CRKASMRosterProviderConfiguration)instructorRosterWithoutKeychainAndWithPersonaAdoptionConfiguration;
+ (CRKASMRosterProviderConfiguration)instructorRosterWithoutKeychainConfiguration;
+ (CRKASMRosterProviderConfiguration)studentRosterConfiguration;
+ (id)instructorRosterConfigurationWithCredentialStore:(id)a3 personaAdoption:(BOOL)a4;
- (CRKASMRosterProviderConfiguration)initWithUserCommonNamePrefix:(id)a3 trustedUserCommonNamePrefix:(id)a4 classKitFacade:(id)a5 rosterRequirements:(id)a6 credentialStore:(id)a7 maxCourseUsersCount:(int64_t)a8 maxCourseTrustedUsersCount:(int64_t)a9 rosterMutationTimeout:(double)a10 userCachingEnabled:(BOOL)a11;
- (CRKASMRosterProviderConfiguration)initWithUserCommonNamePrefix:(id)a3 trustedUserCommonNamePrefix:(id)a4 classKitFacade:(id)a5 rosterRequirements:(id)a6 credentialStore:(id)a7 maxCourseUsersCount:(int64_t)a8 maxCourseTrustedUsersCount:(int64_t)a9 rosterMutationTimeout:(double)a10 userCachingEnabled:(BOOL)a11 osTransactionPrimitives:(id)a12 transactionReleaseDelay:(double)a13;
@end

@implementation CRKASMRosterProviderConfiguration

+ (CRKASMRosterProviderConfiguration)studentRosterConfiguration
{
  v3 = +[CRKClassKitFacadeFactory makeStudentClassKitFacade];
  v4 = [CRKConcreteClassKitRosterRequirements studentRosterRequirementsWithClassKitFacade:v3];
  v5 = +[CRKASMCredentialStoreFactory studentCredentialStore];
  v6 = [a1 alloc];
  LOBYTE(v9) = [a1 userCachingEnabled];
  v7 = [v6 initWithUserCommonNamePrefix:@"member: ASM" trustedUserCommonNamePrefix:@"leader: ASM" classKitFacade:v3 rosterRequirements:v4 credentialStore:v5 maxCourseUsersCount:100 maxCourseTrustedUsersCount:60.0 rosterMutationTimeout:15 userCachingEnabled:v9];

  return v7;
}

+ (CRKASMRosterProviderConfiguration)instructorRosterConfiguration
{
  v3 = +[CRKASMCredentialStoreFactory instructorCredentialStore];
  v4 = [a1 instructorRosterConfigurationWithCredentialStore:v3 personaAdoption:0];

  return v4;
}

+ (CRKASMRosterProviderConfiguration)instructorRosterWithoutKeychainConfiguration
{
  v3 = +[CRKASMCredentialStoreFactory instructorCredentialStoreWithoutKeychain];
  v4 = [a1 instructorRosterConfigurationWithCredentialStore:v3 personaAdoption:0];

  return v4;
}

+ (CRKASMRosterProviderConfiguration)instructorRosterWithoutKeychainAndWithPersonaAdoptionConfiguration
{
  v3 = +[CRKASMCredentialStoreFactory instructorCredentialStoreWithoutKeychain];
  v4 = [a1 instructorRosterConfigurationWithCredentialStore:v3 personaAdoption:1];

  return v4;
}

- (CRKASMRosterProviderConfiguration)initWithUserCommonNamePrefix:(id)a3 trustedUserCommonNamePrefix:(id)a4 classKitFacade:(id)a5 rosterRequirements:(id)a6 credentialStore:(id)a7 maxCourseUsersCount:(int64_t)a8 maxCourseTrustedUsersCount:(int64_t)a9 rosterMutationTimeout:(double)a10 userCachingEnabled:(BOOL)a11
{
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = objc_opt_new();
  LOBYTE(v26) = a11;
  v24 = [(CRKASMRosterProviderConfiguration *)self initWithUserCommonNamePrefix:v22 trustedUserCommonNamePrefix:v21 classKitFacade:v20 rosterRequirements:v19 credentialStore:v18 maxCourseUsersCount:a8 maxCourseTrustedUsersCount:a10 rosterMutationTimeout:10.0 userCachingEnabled:a9 osTransactionPrimitives:v26 transactionReleaseDelay:v23];

  return v24;
}

- (CRKASMRosterProviderConfiguration)initWithUserCommonNamePrefix:(id)a3 trustedUserCommonNamePrefix:(id)a4 classKitFacade:(id)a5 rosterRequirements:(id)a6 credentialStore:(id)a7 maxCourseUsersCount:(int64_t)a8 maxCourseTrustedUsersCount:(int64_t)a9 rosterMutationTimeout:(double)a10 userCachingEnabled:(BOOL)a11 osTransactionPrimitives:(id)a12 transactionReleaseDelay:(double)a13
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v36 = a12;
  v37.receiver = self;
  v37.super_class = CRKASMRosterProviderConfiguration;
  v25 = [(CRKASMRosterProviderConfiguration *)&v37 init];
  if (v25)
  {
    v26 = [v20 copy];
    userCommonNamePrefix = v25->_userCommonNamePrefix;
    v25->_userCommonNamePrefix = v26;

    v28 = [v21 copy];
    trustedUserCommonNamePrefix = v25->_trustedUserCommonNamePrefix;
    v25->_trustedUserCommonNamePrefix = v28;

    objc_storeStrong(&v25->_classKitFacade, a5);
    objc_storeStrong(&v25->_rosterRequirements, a6);
    objc_storeStrong(&v25->_credentialStore, a7);
    v25->_maxCourseUsersCount = a8;
    v25->_maxCourseTrustedUsersCount = a9;
    v25->_rosterMutationTimeout = a10;
    objc_storeStrong(&v25->_osTransactionPrimitives, a12);
    v25->_transactionReleaseDelay = a13;
    if (a11)
    {
      v30 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      userCache = v25->_userCache;
      v25->_userCache = v30;

      v32 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      trustedUserCache = v25->_trustedUserCache;
      v25->_trustedUserCache = v32;
    }
  }

  return v25;
}

+ (id)instructorRosterConfigurationWithCredentialStore:(id)a3 personaAdoption:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [CRKClassKitFacadeFactory makeInstructorClassKitFacadeWithPersonaAdoption:v4];
  v8 = [CRKConcreteClassKitRosterRequirements instructorRosterRequirementsWithClassKitFacade:v7];
  v9 = [a1 alloc];
  LOBYTE(v12) = [a1 userCachingEnabled];
  v10 = [v9 initWithUserCommonNamePrefix:@"leader: ASM" trustedUserCommonNamePrefix:@"member: ASM" classKitFacade:v7 rosterRequirements:v8 credentialStore:v6 maxCourseUsersCount:15 maxCourseTrustedUsersCount:60.0 rosterMutationTimeout:100 userCachingEnabled:v12];

  return v10;
}

+ (BOOL)userCachingEnabled
{
  v2 = objc_opt_new();
  v3 = [v2 makeFeatureFlags];
  v4 = [v3 isASMUserCachingEnabled];

  return v4;
}

@end