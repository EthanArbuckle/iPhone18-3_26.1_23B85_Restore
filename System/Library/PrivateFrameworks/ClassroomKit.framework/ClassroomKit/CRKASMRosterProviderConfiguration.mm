@interface CRKASMRosterProviderConfiguration
+ (BOOL)userCachingEnabled;
+ (CRKASMRosterProviderConfiguration)instructorRosterConfiguration;
+ (CRKASMRosterProviderConfiguration)instructorRosterWithoutKeychainAndWithPersonaAdoptionConfiguration;
+ (CRKASMRosterProviderConfiguration)instructorRosterWithoutKeychainConfiguration;
+ (CRKASMRosterProviderConfiguration)studentRosterConfiguration;
+ (id)instructorRosterConfigurationWithCredentialStore:(id)store personaAdoption:(BOOL)adoption;
- (CRKASMRosterProviderConfiguration)initWithUserCommonNamePrefix:(id)prefix trustedUserCommonNamePrefix:(id)namePrefix classKitFacade:(id)facade rosterRequirements:(id)requirements credentialStore:(id)store maxCourseUsersCount:(int64_t)count maxCourseTrustedUsersCount:(int64_t)usersCount rosterMutationTimeout:(double)self0 userCachingEnabled:(BOOL)self1;
- (CRKASMRosterProviderConfiguration)initWithUserCommonNamePrefix:(id)prefix trustedUserCommonNamePrefix:(id)namePrefix classKitFacade:(id)facade rosterRequirements:(id)requirements credentialStore:(id)store maxCourseUsersCount:(int64_t)count maxCourseTrustedUsersCount:(int64_t)usersCount rosterMutationTimeout:(double)self0 userCachingEnabled:(BOOL)self1 osTransactionPrimitives:(id)self2 transactionReleaseDelay:(double)self3;
@end

@implementation CRKASMRosterProviderConfiguration

+ (CRKASMRosterProviderConfiguration)studentRosterConfiguration
{
  v3 = +[CRKClassKitFacadeFactory makeStudentClassKitFacade];
  v4 = [CRKConcreteClassKitRosterRequirements studentRosterRequirementsWithClassKitFacade:v3];
  v5 = +[CRKASMCredentialStoreFactory studentCredentialStore];
  v6 = [self alloc];
  LOBYTE(v9) = [self userCachingEnabled];
  v7 = [v6 initWithUserCommonNamePrefix:@"member: ASM" trustedUserCommonNamePrefix:@"leader: ASM" classKitFacade:v3 rosterRequirements:v4 credentialStore:v5 maxCourseUsersCount:100 maxCourseTrustedUsersCount:60.0 rosterMutationTimeout:15 userCachingEnabled:v9];

  return v7;
}

+ (CRKASMRosterProviderConfiguration)instructorRosterConfiguration
{
  v3 = +[CRKASMCredentialStoreFactory instructorCredentialStore];
  v4 = [self instructorRosterConfigurationWithCredentialStore:v3 personaAdoption:0];

  return v4;
}

+ (CRKASMRosterProviderConfiguration)instructorRosterWithoutKeychainConfiguration
{
  v3 = +[CRKASMCredentialStoreFactory instructorCredentialStoreWithoutKeychain];
  v4 = [self instructorRosterConfigurationWithCredentialStore:v3 personaAdoption:0];

  return v4;
}

+ (CRKASMRosterProviderConfiguration)instructorRosterWithoutKeychainAndWithPersonaAdoptionConfiguration
{
  v3 = +[CRKASMCredentialStoreFactory instructorCredentialStoreWithoutKeychain];
  v4 = [self instructorRosterConfigurationWithCredentialStore:v3 personaAdoption:1];

  return v4;
}

- (CRKASMRosterProviderConfiguration)initWithUserCommonNamePrefix:(id)prefix trustedUserCommonNamePrefix:(id)namePrefix classKitFacade:(id)facade rosterRequirements:(id)requirements credentialStore:(id)store maxCourseUsersCount:(int64_t)count maxCourseTrustedUsersCount:(int64_t)usersCount rosterMutationTimeout:(double)self0 userCachingEnabled:(BOOL)self1
{
  storeCopy = store;
  requirementsCopy = requirements;
  facadeCopy = facade;
  namePrefixCopy = namePrefix;
  prefixCopy = prefix;
  v23 = objc_opt_new();
  LOBYTE(v26) = enabled;
  v24 = [(CRKASMRosterProviderConfiguration *)self initWithUserCommonNamePrefix:prefixCopy trustedUserCommonNamePrefix:namePrefixCopy classKitFacade:facadeCopy rosterRequirements:requirementsCopy credentialStore:storeCopy maxCourseUsersCount:count maxCourseTrustedUsersCount:timeout rosterMutationTimeout:10.0 userCachingEnabled:usersCount osTransactionPrimitives:v26 transactionReleaseDelay:v23];

  return v24;
}

- (CRKASMRosterProviderConfiguration)initWithUserCommonNamePrefix:(id)prefix trustedUserCommonNamePrefix:(id)namePrefix classKitFacade:(id)facade rosterRequirements:(id)requirements credentialStore:(id)store maxCourseUsersCount:(int64_t)count maxCourseTrustedUsersCount:(int64_t)usersCount rosterMutationTimeout:(double)self0 userCachingEnabled:(BOOL)self1 osTransactionPrimitives:(id)self2 transactionReleaseDelay:(double)self3
{
  prefixCopy = prefix;
  namePrefixCopy = namePrefix;
  facadeCopy = facade;
  requirementsCopy = requirements;
  storeCopy = store;
  primitivesCopy = primitives;
  v37.receiver = self;
  v37.super_class = CRKASMRosterProviderConfiguration;
  v25 = [(CRKASMRosterProviderConfiguration *)&v37 init];
  if (v25)
  {
    v26 = [prefixCopy copy];
    userCommonNamePrefix = v25->_userCommonNamePrefix;
    v25->_userCommonNamePrefix = v26;

    v28 = [namePrefixCopy copy];
    trustedUserCommonNamePrefix = v25->_trustedUserCommonNamePrefix;
    v25->_trustedUserCommonNamePrefix = v28;

    objc_storeStrong(&v25->_classKitFacade, facade);
    objc_storeStrong(&v25->_rosterRequirements, requirements);
    objc_storeStrong(&v25->_credentialStore, store);
    v25->_maxCourseUsersCount = count;
    v25->_maxCourseTrustedUsersCount = usersCount;
    v25->_rosterMutationTimeout = timeout;
    objc_storeStrong(&v25->_osTransactionPrimitives, primitives);
    v25->_transactionReleaseDelay = delay;
    if (enabled)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      userCache = v25->_userCache;
      v25->_userCache = strongToWeakObjectsMapTable;

      strongToWeakObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      trustedUserCache = v25->_trustedUserCache;
      v25->_trustedUserCache = strongToWeakObjectsMapTable2;
    }
  }

  return v25;
}

+ (id)instructorRosterConfigurationWithCredentialStore:(id)store personaAdoption:(BOOL)adoption
{
  adoptionCopy = adoption;
  storeCopy = store;
  v7 = [CRKClassKitFacadeFactory makeInstructorClassKitFacadeWithPersonaAdoption:adoptionCopy];
  v8 = [CRKConcreteClassKitRosterRequirements instructorRosterRequirementsWithClassKitFacade:v7];
  v9 = [self alloc];
  LOBYTE(v12) = [self userCachingEnabled];
  v10 = [v9 initWithUserCommonNamePrefix:@"leader: ASM" trustedUserCommonNamePrefix:@"member: ASM" classKitFacade:v7 rosterRequirements:v8 credentialStore:storeCopy maxCourseUsersCount:15 maxCourseTrustedUsersCount:60.0 rosterMutationTimeout:100 userCachingEnabled:v12];

  return v10;
}

+ (BOOL)userCachingEnabled
{
  v2 = objc_opt_new();
  makeFeatureFlags = [v2 makeFeatureFlags];
  isASMUserCachingEnabled = [makeFeatureFlags isASMUserCachingEnabled];

  return isASMUserCachingEnabled;
}

@end