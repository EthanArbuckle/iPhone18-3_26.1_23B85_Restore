@interface HDHealthStoreClient
- (BOOL)_isAuthorizedToAccessProfile:(id)profile;
- (BOOL)hasArrayEntitlement:(id)entitlement containing:(id)containing;
- (BOOL)hasEntitlement:(id)entitlement;
- (BOOL)hasPrivateMetadataAccess;
- (BOOL)hasRequiredArrayEntitlement:(id)entitlement containing:(id)containing error:(id *)error;
- (BOOL)hasRequiredEntitlement:(id)entitlement error:(id *)error;
- (BOOL)shouldBypassAuthorization;
- (BOOL)verifyHealthRecordsPermissionGrantedWithError:(id *)error;
- (HDClientAuthorizationOracle)authorizationOracle;
- (HDHealthStoreClient)initWithXPCClient:(id)client configuration:(id)configuration profile:(id)profile databaseAccessibilityAssertions:(id)assertions;
- (HDProfile)profile;
- (_HKEntitlements)entitlements;
- (_TtC12HealthDaemon29HDHealthStoreClientAssertions)databaseAccessibilityAssertions;
- (id)accessibilityAssertions;
- (id)assertionForHKDatabaseAccessibilityAssertion:(id)assertion;
- (id)baseDataEntityEncodingOptions;
- (id)filterWithQueryFilter:(id)filter objectType:(id)type;
- (id)firstAssertion;
- (id)valueForEntitlement:(id)entitlement;
- (void)addAssertionMapping:(id)mapping;
- (void)invalidateAssertions;
- (void)removeAssertionMappingForAssertion:(id)assertion;
@end

@implementation HDHealthStoreClient

- (HDHealthStoreClient)initWithXPCClient:(id)client configuration:(id)configuration profile:(id)profile databaseAccessibilityAssertions:(id)assertions
{
  v53 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  configurationCopy = configuration;
  profileCopy = profile;
  assertionsCopy = assertions;
  v46.receiver = self;
  v46.super_class = HDHealthStoreClient;
  v15 = [(HDHealthStoreClient *)&v46 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_XPCClient, client);
    objc_storeWeak(&v16->_profile, profileCopy);
    v17 = [configurationCopy copy];
    configuration = v16->_configuration;
    v16->_configuration = v17;

    objc_storeStrong(&v16->_databaseAccessibilityAssertions, assertions);
    authorizationOracle = v16->_authorizationOracle;
    v16->_authorizationOracle = 0;

    v16->_propertyLock._os_unfair_lock_opaque = 0;
    process = [clientCopy process];
    v21 = MEMORY[0x277CCDA00];
    entitlements = [process entitlements];
    bundleIdentifier = [process bundleIdentifier];
    v24 = [v21 _sourceBundleIdentifierWithEntitlements:entitlements processBundleIdentifier:bundleIdentifier isExtension:{objc_msgSend(process, "isExtension")}];
    defaultSourceBundleIdentifier = v16->_defaultSourceBundleIdentifier;
    v16->_defaultSourceBundleIdentifier = v24;

    sourceBundleIdentifier = [configurationCopy sourceBundleIdentifier];

    if (sourceBundleIdentifier)
    {
      sourceBundleIdentifier2 = [configurationCopy sourceBundleIdentifier];
      v28 = [sourceBundleIdentifier2 copy];
      sourceBundleIdentifier = v16->_sourceBundleIdentifier;
      v16->_sourceBundleIdentifier = v28;
    }

    else
    {
      v30 = v16->_defaultSourceBundleIdentifier;
      sourceBundleIdentifier2 = v16->_sourceBundleIdentifier;
      v16->_sourceBundleIdentifier = v30;
    }

    if ([process hasEntitlement:*MEMORY[0x277CCB810]])
    {
      WeakRetained = objc_loadWeakRetained(&v16->_profile);
      daemon = [WeakRetained daemon];
      behavior = [daemon behavior];
      currentOSVersion = [behavior currentOSVersion];
      sourceVersion = v16->_sourceVersion;
      v16->_sourceVersion = currentOSVersion;
    }

    else
    {
      WeakRetained = [configurationCopy sourceVersion];
      v36 = [WeakRetained copy];
      daemon = v36;
      v37 = &stru_283BF39C8;
      if (v36)
      {
        v37 = v36;
      }

      v38 = v37;
      behavior = v16->_sourceVersion;
      v16->_sourceVersion = &v38->isa;
    }

    if (!v16->_sourceBundleIdentifier && ![(HDHealthStoreClient *)v16 shouldBypassAuthorization])
    {
      _HKInitializeLogging();
      v39 = HKLogAuthorization();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        name = [process name];
        auditToken = [process auditToken];
        processIdentifier = [auditToken processIdentifier];
        entitlements2 = [process entitlements];
        *buf = 138412802;
        v48 = name;
        v49 = 1024;
        v50 = processIdentifier;
        v51 = 2112;
        v52 = entitlements2;
        _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "Process %@ (%d) has nil source bundle identifier without auth bypass. Client entitlements: %@", buf, 0x1Cu);
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
  return v16;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  if (!WeakRetained)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDHealthStoreClient.m" lineNumber:87 description:@"_profile null in HDHealthStoreClient"];
  }

  v5 = objc_loadWeakRetained(&self->_profile);

  return v5;
}

- (_HKEntitlements)entitlements
{
  process = [(HDHealthStoreClient *)self process];
  entitlements = [process entitlements];

  return entitlements;
}

- (BOOL)hasRequiredEntitlement:(id)entitlement error:(id *)error
{
  entitlementCopy = entitlement;
  process = [(HDHealthStoreClient *)self process];
  LOBYTE(error) = [process hasRequiredEntitlement:entitlementCopy error:error];

  return error;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  process = [(HDHealthStoreClient *)self process];
  v6 = [process hasEntitlement:entitlementCopy];

  return v6;
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  process = [(HDHealthStoreClient *)self process];
  v6 = [process valueForEntitlement:entitlementCopy];

  return v6;
}

- (BOOL)hasRequiredArrayEntitlement:(id)entitlement containing:(id)containing error:(id *)error
{
  containingCopy = containing;
  entitlementCopy = entitlement;
  process = [(HDHealthStoreClient *)self process];
  LOBYTE(error) = [process hasRequiredArrayEntitlement:entitlementCopy containing:containingCopy error:error];

  return error;
}

- (BOOL)hasArrayEntitlement:(id)entitlement containing:(id)containing
{
  containingCopy = containing;
  entitlementCopy = entitlement;
  process = [(HDHealthStoreClient *)self process];
  v9 = [process hasArrayEntitlement:entitlementCopy containing:containingCopy];

  return v9;
}

- (BOOL)shouldBypassAuthorization
{
  process = [(HDHealthStoreClient *)self process];
  v3 = [process hasEntitlement:*MEMORY[0x277CCB868]];

  return v3;
}

- (BOOL)hasPrivateMetadataAccess
{
  process = [(HDHealthStoreClient *)self process];
  if ([process hasEntitlement:*MEMORY[0x277CCC8B8]])
  {
    v4 = 1;
  }

  else
  {
    process2 = [(HDHealthStoreClient *)self process];
    v4 = [process2 hasEntitlement:*MEMORY[0x277CCC8B0]];
  }

  return v4;
}

- (BOOL)verifyHealthRecordsPermissionGrantedWithError:(id *)error
{
  if ([(HDHealthStoreClient *)self hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:error])
  {
    return 1;
  }

  entitlements = [(HDHealthStoreClient *)self entitlements];
  v6 = *MEMORY[0x277CCC198];
  v7 = [entitlements hasAccessEntitlementWithIdentifier:*MEMORY[0x277CCC198]];

  if (v7)
  {
    return 1;
  }

  entitlements2 = [(HDHealthStoreClient *)self entitlements];
  v9 = [entitlements2 hasPrivateAccessEntitlementWithIdentifier:*MEMORY[0x277CCC888]];

  if (v9)
  {
    return 1;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:4 format:{@"Missing %@ entitlement.", v6}];
  return 0;
}

- (HDClientAuthorizationOracle)authorizationOracle
{
  os_unfair_lock_lock(&self->_propertyLock);
  if (!self->_authorizationOracle)
  {
    v3 = [HDClientAuthorizationOracle alloc];
    sourceBundleIdentifier = self->_sourceBundleIdentifier;
    process = [(HDHealthStoreClient *)self process];
    entitlements = [process entitlements];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v8 = [(HDClientAuthorizationOracle *)v3 initWithSourceBundleIdentifier:sourceBundleIdentifier entitlements:entitlements profile:WeakRetained];
    authorizationOracle = self->_authorizationOracle;
    self->_authorizationOracle = v8;
  }

  os_unfair_lock_unlock(&self->_propertyLock);
  v10 = self->_authorizationOracle;

  return v10;
}

- (_TtC12HealthDaemon29HDHealthStoreClientAssertions)databaseAccessibilityAssertions
{
  os_unfair_lock_lock(&self->_propertyLock);
  if (!self->_databaseAccessibilityAssertions)
  {
    v3 = objc_alloc_init(_TtC12HealthDaemon29HDHealthStoreClientAssertions);
    databaseAccessibilityAssertions = self->_databaseAccessibilityAssertions;
    self->_databaseAccessibilityAssertions = v3;
  }

  os_unfair_lock_unlock(&self->_propertyLock);
  v5 = self->_databaseAccessibilityAssertions;

  return v5;
}

- (void)addAssertionMapping:(id)mapping
{
  mappingCopy = mapping;
  databaseAccessibilityAssertions = [(HDHealthStoreClient *)self databaseAccessibilityAssertions];
  [databaseAccessibilityAssertions addAssertionMappingWithAssertion:mappingCopy];
}

- (void)removeAssertionMappingForAssertion:(id)assertion
{
  assertionCopy = assertion;
  databaseAccessibilityAssertions = [(HDHealthStoreClient *)self databaseAccessibilityAssertions];
  [databaseAccessibilityAssertions removeAssertionMappingWithAssertion:assertionCopy];

  accessibilityAssertions = [(HDHealthStoreClient *)self accessibilityAssertions];
  v7 = [accessibilityAssertions count];

  if (!v7)
  {
    databaseAccessibilityAssertions = self->_databaseAccessibilityAssertions;
    self->_databaseAccessibilityAssertions = 0;
  }
}

- (id)firstAssertion
{
  databaseAccessibilityAssertions = [(HDHealthStoreClient *)self databaseAccessibilityAssertions];
  firstAssertion = [databaseAccessibilityAssertions firstAssertion];

  return firstAssertion;
}

- (id)accessibilityAssertions
{
  databaseAccessibilityAssertions = [(HDHealthStoreClient *)self databaseAccessibilityAssertions];
  accessibilityAssertions = [databaseAccessibilityAssertions accessibilityAssertions];

  return accessibilityAssertions;
}

- (id)assertionForHKDatabaseAccessibilityAssertion:(id)assertion
{
  assertionCopy = assertion;
  databaseAccessibilityAssertions = [(HDHealthStoreClient *)self databaseAccessibilityAssertions];
  v6 = [databaseAccessibilityAssertions assertionForHKDatabaseAccessibilityAssertionWithHkDatabaseAccessibilityAssertion:assertionCopy];

  return v6;
}

- (void)invalidateAssertions
{
  databaseAccessibilityAssertions = [(HDHealthStoreClient *)self databaseAccessibilityAssertions];
  [databaseAccessibilityAssertions invalidateAssertions];
}

- (id)filterWithQueryFilter:(id)filter objectType:(id)type
{
  filterCopy = filter;
  typeCopy = type;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(HDHealthStoreClient *)self hasEntitlement:*MEMORY[0x277CCC8B0]])
  {
    if (filterCopy)
    {
      [v8 addObject:filterCopy];
    }
  }

  else
  {
    if (filterCopy)
    {
      if (![(HDHealthStoreClient *)self hasPrivateMetadataAccess])
      {
        filterIgnoringPrivateMetadata = [filterCopy filterIgnoringPrivateMetadata];

        filterCopy = filterIgnoringPrivateMetadata;
      }

      [v8 addObject:filterCopy];
    }

    profile = [(HDHealthStoreClient *)self profile];
    daemon = [profile daemon];
    behavior = [daemon behavior];
    supportsSampleExpiration = [behavior supportsSampleExpiration];

    if (supportsSampleExpiration)
    {
      if (self)
      {
        v14 = MEMORY[0x277CBEA80];
        v15 = typeCopy;
        currentCalendar = [v14 currentCalendar];
        v17 = *MEMORY[0x277CCCEE8];
        date = [MEMORY[0x277CBEAA8] date];
        v19 = [currentCalendar hk_startOfDateBySubtractingDays:v17 fromDate:date];

        v20 = MEMORY[0x277CCDE38];
        v21 = [MEMORY[0x277CBEB98] setWithObject:v15];

        self = [v20 endDateFilterWithOperatorType:3 date:v19 dataTypes:v21];
      }

      [v8 addObject:self];
    }
  }

  if ([v8 count] < 2)
  {
    [v8 firstObject];
  }

  else
  {
    [MEMORY[0x277CCDD48] andFilterWithSubfilters:v8];
  }
  v22 = ;

  return v22;
}

- (id)baseDataEntityEncodingOptions
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([(HDHealthStoreClient *)self hasPrivateMetadataAccess])
  {
    v2 = 0;
  }

  else
  {
    v5 = @"ExcludePrivateMetadata";
    v6[0] = MEMORY[0x277CBEC38];
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)_isAuthorizedToAccessProfile:(id)profile
{
  profileCopy = profile;
  if (-[HDHealthStoreClient hasEntitlement:](self, "hasEntitlement:", *MEMORY[0x277CCC8B0]) || [profileCopy profileType] == 1)
  {
    v5 = 1;
  }

  else
  {
    profileIdentifier = [profileCopy profileIdentifier];
    type = [profileIdentifier type];

    v5 = type == 100 && _HDIsUnitTesting != 0;
  }

  return v5;
}

@end