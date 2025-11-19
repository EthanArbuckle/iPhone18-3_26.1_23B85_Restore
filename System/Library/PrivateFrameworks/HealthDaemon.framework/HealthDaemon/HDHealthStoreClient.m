@interface HDHealthStoreClient
- (BOOL)_isAuthorizedToAccessProfile:(id)a3;
- (BOOL)hasArrayEntitlement:(id)a3 containing:(id)a4;
- (BOOL)hasEntitlement:(id)a3;
- (BOOL)hasPrivateMetadataAccess;
- (BOOL)hasRequiredArrayEntitlement:(id)a3 containing:(id)a4 error:(id *)a5;
- (BOOL)hasRequiredEntitlement:(id)a3 error:(id *)a4;
- (BOOL)shouldBypassAuthorization;
- (BOOL)verifyHealthRecordsPermissionGrantedWithError:(id *)a3;
- (HDClientAuthorizationOracle)authorizationOracle;
- (HDHealthStoreClient)initWithXPCClient:(id)a3 configuration:(id)a4 profile:(id)a5 databaseAccessibilityAssertions:(id)a6;
- (HDProfile)profile;
- (_HKEntitlements)entitlements;
- (_TtC12HealthDaemon29HDHealthStoreClientAssertions)databaseAccessibilityAssertions;
- (id)accessibilityAssertions;
- (id)assertionForHKDatabaseAccessibilityAssertion:(id)a3;
- (id)baseDataEntityEncodingOptions;
- (id)filterWithQueryFilter:(id)a3 objectType:(id)a4;
- (id)firstAssertion;
- (id)valueForEntitlement:(id)a3;
- (void)addAssertionMapping:(id)a3;
- (void)invalidateAssertions;
- (void)removeAssertionMappingForAssertion:(id)a3;
@end

@implementation HDHealthStoreClient

- (HDHealthStoreClient)initWithXPCClient:(id)a3 configuration:(id)a4 profile:(id)a5 databaseAccessibilityAssertions:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v46.receiver = self;
  v46.super_class = HDHealthStoreClient;
  v15 = [(HDHealthStoreClient *)&v46 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_XPCClient, a3);
    objc_storeWeak(&v16->_profile, v13);
    v17 = [v12 copy];
    configuration = v16->_configuration;
    v16->_configuration = v17;

    objc_storeStrong(&v16->_databaseAccessibilityAssertions, a6);
    authorizationOracle = v16->_authorizationOracle;
    v16->_authorizationOracle = 0;

    v16->_propertyLock._os_unfair_lock_opaque = 0;
    v20 = [v11 process];
    v21 = MEMORY[0x277CCDA00];
    v22 = [v20 entitlements];
    v23 = [v20 bundleIdentifier];
    v24 = [v21 _sourceBundleIdentifierWithEntitlements:v22 processBundleIdentifier:v23 isExtension:{objc_msgSend(v20, "isExtension")}];
    defaultSourceBundleIdentifier = v16->_defaultSourceBundleIdentifier;
    v16->_defaultSourceBundleIdentifier = v24;

    v26 = [v12 sourceBundleIdentifier];

    if (v26)
    {
      v27 = [v12 sourceBundleIdentifier];
      v28 = [v27 copy];
      sourceBundleIdentifier = v16->_sourceBundleIdentifier;
      v16->_sourceBundleIdentifier = v28;
    }

    else
    {
      v30 = v16->_defaultSourceBundleIdentifier;
      v27 = v16->_sourceBundleIdentifier;
      v16->_sourceBundleIdentifier = v30;
    }

    if ([v20 hasEntitlement:*MEMORY[0x277CCB810]])
    {
      WeakRetained = objc_loadWeakRetained(&v16->_profile);
      v32 = [WeakRetained daemon];
      v33 = [v32 behavior];
      v34 = [v33 currentOSVersion];
      sourceVersion = v16->_sourceVersion;
      v16->_sourceVersion = v34;
    }

    else
    {
      WeakRetained = [v12 sourceVersion];
      v36 = [WeakRetained copy];
      v32 = v36;
      v37 = &stru_283BF39C8;
      if (v36)
      {
        v37 = v36;
      }

      v38 = v37;
      v33 = v16->_sourceVersion;
      v16->_sourceVersion = &v38->isa;
    }

    if (!v16->_sourceBundleIdentifier && ![(HDHealthStoreClient *)v16 shouldBypassAuthorization])
    {
      _HKInitializeLogging();
      v39 = HKLogAuthorization();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v42 = [v20 name];
        v45 = [v20 auditToken];
        v43 = [v45 processIdentifier];
        v44 = [v20 entitlements];
        *buf = 138412802;
        v48 = v42;
        v49 = 1024;
        v50 = v43;
        v51 = 2112;
        v52 = v44;
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
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HDHealthStoreClient.m" lineNumber:87 description:@"_profile null in HDHealthStoreClient"];
  }

  v5 = objc_loadWeakRetained(&self->_profile);

  return v5;
}

- (_HKEntitlements)entitlements
{
  v2 = [(HDHealthStoreClient *)self process];
  v3 = [v2 entitlements];

  return v3;
}

- (BOOL)hasRequiredEntitlement:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDHealthStoreClient *)self process];
  LOBYTE(a4) = [v7 hasRequiredEntitlement:v6 error:a4];

  return a4;
}

- (BOOL)hasEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthStoreClient *)self process];
  v6 = [v5 hasEntitlement:v4];

  return v6;
}

- (id)valueForEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthStoreClient *)self process];
  v6 = [v5 valueForEntitlement:v4];

  return v6;
}

- (BOOL)hasRequiredArrayEntitlement:(id)a3 containing:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(HDHealthStoreClient *)self process];
  LOBYTE(a5) = [v10 hasRequiredArrayEntitlement:v9 containing:v8 error:a5];

  return a5;
}

- (BOOL)hasArrayEntitlement:(id)a3 containing:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDHealthStoreClient *)self process];
  v9 = [v8 hasArrayEntitlement:v7 containing:v6];

  return v9;
}

- (BOOL)shouldBypassAuthorization
{
  v2 = [(HDHealthStoreClient *)self process];
  v3 = [v2 hasEntitlement:*MEMORY[0x277CCB868]];

  return v3;
}

- (BOOL)hasPrivateMetadataAccess
{
  v3 = [(HDHealthStoreClient *)self process];
  if ([v3 hasEntitlement:*MEMORY[0x277CCC8B8]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HDHealthStoreClient *)self process];
    v4 = [v5 hasEntitlement:*MEMORY[0x277CCC8B0]];
  }

  return v4;
}

- (BOOL)verifyHealthRecordsPermissionGrantedWithError:(id *)a3
{
  if ([(HDHealthStoreClient *)self hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:a3])
  {
    return 1;
  }

  v5 = [(HDHealthStoreClient *)self entitlements];
  v6 = *MEMORY[0x277CCC198];
  v7 = [v5 hasAccessEntitlementWithIdentifier:*MEMORY[0x277CCC198]];

  if (v7)
  {
    return 1;
  }

  v8 = [(HDHealthStoreClient *)self entitlements];
  v9 = [v8 hasPrivateAccessEntitlementWithIdentifier:*MEMORY[0x277CCC888]];

  if (v9)
  {
    return 1;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a3 code:4 format:{@"Missing %@ entitlement.", v6}];
  return 0;
}

- (HDClientAuthorizationOracle)authorizationOracle
{
  os_unfair_lock_lock(&self->_propertyLock);
  if (!self->_authorizationOracle)
  {
    v3 = [HDClientAuthorizationOracle alloc];
    sourceBundleIdentifier = self->_sourceBundleIdentifier;
    v5 = [(HDHealthStoreClient *)self process];
    v6 = [v5 entitlements];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v8 = [(HDClientAuthorizationOracle *)v3 initWithSourceBundleIdentifier:sourceBundleIdentifier entitlements:v6 profile:WeakRetained];
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

- (void)addAssertionMapping:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthStoreClient *)self databaseAccessibilityAssertions];
  [v5 addAssertionMappingWithAssertion:v4];
}

- (void)removeAssertionMappingForAssertion:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthStoreClient *)self databaseAccessibilityAssertions];
  [v5 removeAssertionMappingWithAssertion:v4];

  v6 = [(HDHealthStoreClient *)self accessibilityAssertions];
  v7 = [v6 count];

  if (!v7)
  {
    databaseAccessibilityAssertions = self->_databaseAccessibilityAssertions;
    self->_databaseAccessibilityAssertions = 0;
  }
}

- (id)firstAssertion
{
  v2 = [(HDHealthStoreClient *)self databaseAccessibilityAssertions];
  v3 = [v2 firstAssertion];

  return v3;
}

- (id)accessibilityAssertions
{
  v2 = [(HDHealthStoreClient *)self databaseAccessibilityAssertions];
  v3 = [v2 accessibilityAssertions];

  return v3;
}

- (id)assertionForHKDatabaseAccessibilityAssertion:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthStoreClient *)self databaseAccessibilityAssertions];
  v6 = [v5 assertionForHKDatabaseAccessibilityAssertionWithHkDatabaseAccessibilityAssertion:v4];

  return v6;
}

- (void)invalidateAssertions
{
  v2 = [(HDHealthStoreClient *)self databaseAccessibilityAssertions];
  [v2 invalidateAssertions];
}

- (id)filterWithQueryFilter:(id)a3 objectType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(HDHealthStoreClient *)self hasEntitlement:*MEMORY[0x277CCC8B0]])
  {
    if (v6)
    {
      [v8 addObject:v6];
    }
  }

  else
  {
    if (v6)
    {
      if (![(HDHealthStoreClient *)self hasPrivateMetadataAccess])
      {
        v9 = [v6 filterIgnoringPrivateMetadata];

        v6 = v9;
      }

      [v8 addObject:v6];
    }

    v10 = [(HDHealthStoreClient *)self profile];
    v11 = [v10 daemon];
    v12 = [v11 behavior];
    v13 = [v12 supportsSampleExpiration];

    if (v13)
    {
      if (self)
      {
        v14 = MEMORY[0x277CBEA80];
        v15 = v7;
        v16 = [v14 currentCalendar];
        v17 = *MEMORY[0x277CCCEE8];
        v18 = [MEMORY[0x277CBEAA8] date];
        v19 = [v16 hk_startOfDateBySubtractingDays:v17 fromDate:v18];

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

- (BOOL)_isAuthorizedToAccessProfile:(id)a3
{
  v4 = a3;
  if (-[HDHealthStoreClient hasEntitlement:](self, "hasEntitlement:", *MEMORY[0x277CCC8B0]) || [v4 profileType] == 1)
  {
    v5 = 1;
  }

  else
  {
    v7 = [v4 profileIdentifier];
    v8 = [v7 type];

    v5 = v8 == 100 && _HDIsUnitTesting != 0;
  }

  return v5;
}

@end