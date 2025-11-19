@interface CRKASMConcreteRosterProvider
- (BOOL)ingestCertificates:(id)a3 forTrustedUserIdentifier:(id)a4 error:(id *)a5;
- (CRKASMConcreteRosterProvider)initWithConfiguration:(id)a3;
- (CRKASMUserFetching)userFetcher;
- (id)instructorDirectoryForLocationIDs:(id)a3;
- (id)studentDirectoryForLocationIDs:(id)a3;
- (void)createCourseWithProperties:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)logDurationOfOperation:(id)a3;
- (void)processFinishedWorldBuild:(id)a3;
- (void)removeCourseWithIdentifier:(id)a3 completion:(id)a4;
- (void)startNewWorldBuild;
- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5;
- (void)updateManageableLocations:(id)a3;
- (void)updateRoster:(id)a3 outTrustedPersonIDsChanged:(BOOL *)a4;
- (void)worldBuildDidFinish:(id)a3;
@end

@implementation CRKASMConcreteRosterProvider

- (void)dealloc
{
  [(CRKASMWorldBuildOperation *)self->_worldBuildOperation cancel];
  v3.receiver = self;
  v3.super_class = CRKASMConcreteRosterProvider;
  [(CRKASMConcreteRosterProvider *)&v3 dealloc];
}

- (CRKASMConcreteRosterProvider)initWithConfiguration:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CRKASMConcreteRosterProvider;
  v5 = [(CRKASMConcreteRosterProvider *)&v22 init];
  if (v5)
  {
    v6 = [[CRKASMRosterProviderEnvironment alloc] initWithConfiguration:v4];
    environment = v5->_environment;
    v5->_environment = v6;

    v8 = [[CRKASMCertificateIngestor alloc] initWithConfiguration:v4];
    certificateIngestor = v5->_certificateIngestor;
    v5->_certificateIngestor = v8;

    v10 = [CRKClassKitChangeNotifier alloc];
    v11 = [v4 rosterRequirements];
    v12 = [(CRKClassKitChangeNotifier *)v10 initWithRequirements:v11];
    classKitChangeNotifier = v5->_classKitChangeNotifier;
    v5->_classKitChangeNotifier = v12;

    [(CRKClassKitChangeNotifier *)v5->_classKitChangeNotifier setDelegate:v5];
    v14 = [CRKASMRosterUpdater alloc];
    v15 = [v4 rosterRequirements];
    v16 = [(CRKASMRosterUpdater *)v14 initWithRequirements:v15];
    rosterUpdater = v5->_rosterUpdater;
    v5->_rosterUpdater = v16;

    locationsWithManagePermissions = v5->_locationsWithManagePermissions;
    v19 = MEMORY[0x277CBEBF8];
    v5->_locationsWithManagePermissions = MEMORY[0x277CBEBF8];

    locations = v5->_locations;
    v5->_locations = v19;

    [(CRKASMConcreteRosterProvider *)v5 refresh];
  }

  return v5;
}

- (BOOL)ingestCertificates:(id)a3 forTrustedUserIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CRKASMConcreteRosterProvider *)self certificateIngestor];
  LOBYTE(a5) = [v10 ingestCertificates:v9 forTrustedUserIdentifier:v8 error:a5];

  return a5;
}

- (CRKASMUserFetching)userFetcher
{
  v3 = [CRKASMConcreteUserFetcher alloc];
  v4 = [(CRKASMConcreteRosterProvider *)self environment];
  v5 = [v4 configuration];
  v6 = [v5 rosterRequirements];
  v7 = [(CRKASMConcreteUserFetcher *)v3 initWithRosterRequirements:v6];

  return v7;
}

- (id)studentDirectoryForLocationIDs:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMConcreteRosterProvider *)self environment];
  v6 = [v5 configuration];
  v7 = [v6 rosterRequirements];
  v8 = [CRKASMConcreteUserDirectory studentDirectoryWithRosterRequirements:v7 locationIDs:v4];

  return v8;
}

- (id)instructorDirectoryForLocationIDs:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMConcreteRosterProvider *)self environment];
  v6 = [v5 configuration];
  v7 = [v6 rosterRequirements];
  v8 = [CRKASMConcreteUserDirectory instructorDirectoryWithRosterRequirements:v7 locationIDs:v4];

  return v8;
}

- (void)createCourseWithProperties:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKASMConcreteRosterProvider *)self rosterUpdater];
  [v8 createClassWithProperties:v7 completion:v6];
}

- (void)removeCourseWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CRKASMConcreteRosterProvider *)self rosterUpdater];
  v8 = [(CRKASMConcreteRosterProvider *)self roster];
  [v9 removeCourseWithIdentifier:v7 roster:v8 completion:v6];
}

- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(CRKASMConcreteRosterProvider *)self rosterUpdater];
  v11 = [(CRKASMConcreteRosterProvider *)self roster];
  [v12 updateCourseWithIdentifier:v10 properties:v9 roster:v11 completion:v8];
}

- (void)startNewWorldBuild
{
  v3 = [(CRKASMConcreteRosterProvider *)self environment];
  v4 = [v3 configuration];
  v5 = [v4 osTransactionPrimitives];
  v6 = [v5 transactionWithReverseDNSReason:@"com.apple.studentd.roster"];

  v7 = [(CRKASMConcreteRosterProvider *)self worldBuildOperation];
  [v7 cancel];

  v8 = [CRKASMWorldBuildOperation alloc];
  v9 = [(CRKASMConcreteRosterProvider *)self environment];
  v10 = [(CRKASMWorldBuildOperation *)v8 initWithEnvironment:v9];
  [(CRKASMConcreteRosterProvider *)self setWorldBuildOperation:v10];

  v11 = [MEMORY[0x277CF9540] crk_backgroundQueue];
  v12 = [(CRKASMConcreteRosterProvider *)self worldBuildOperation];
  [v11 addOperation:v12];

  v13 = [(CRKASMConcreteRosterProvider *)self environment];
  v14 = [v13 configuration];
  [v14 transactionReleaseDelay];
  v16 = v15;

  v17 = MEMORY[0x277CCA8C8];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __50__CRKASMConcreteRosterProvider_startNewWorldBuild__block_invoke;
  v32[3] = &unk_278DC29E8;
  v34 = v16;
  v18 = v6;
  v33 = v18;
  v19 = [v17 blockOperationWithBlock:v32];
  v20 = [(CRKASMConcreteRosterProvider *)self worldBuildOperation];
  [v19 addDependency:v20];

  v21 = [MEMORY[0x277CCABD8] mainQueue];
  [v21 addOperation:v19];

  objc_initWeak(&location, self);
  v22 = [(CRKASMConcreteRosterProvider *)self worldBuildOperation];
  v23 = MEMORY[0x277CCA8C8];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __50__CRKASMConcreteRosterProvider_startNewWorldBuild__block_invoke_14;
  v28[3] = &unk_278DC19F8;
  objc_copyWeak(&v30, &location);
  v24 = v22;
  v29 = v24;
  v25 = [v23 blockOperationWithBlock:v28];
  v26 = [(CRKASMConcreteRosterProvider *)self worldBuildOperation];
  [v25 addDependency:v26];

  v27 = [MEMORY[0x277CCABD8] mainQueue];
  [v27 addOperation:v25];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __50__CRKASMConcreteRosterProvider_startNewWorldBuild__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _CRKLogASM_14();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 134217984;
    v8 = v3;
    _os_log_impl(&dword_243550000, v2, OS_LOG_TYPE_DEFAULT, "World build operation finished. Will release OS transaction in %lf seconds.", buf, 0xCu);
  }

  v4 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CRKASMConcreteRosterProvider_startNewWorldBuild__block_invoke_11;
  block[3] = &unk_278DC10F0;
  v6 = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

uint64_t __50__CRKASMConcreteRosterProvider_startNewWorldBuild__block_invoke_11(uint64_t a1)
{
  v2 = _CRKLogASM_14();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243550000, v2, OS_LOG_TYPE_DEFAULT, "Now ending OS transaction after finishing world build operation.", v4, 2u);
  }

  return [*(a1 + 32) cancel];
}

void __50__CRKASMConcreteRosterProvider_startNewWorldBuild__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained worldBuildDidFinish:*(a1 + 32)];
}

- (void)worldBuildDidFinish:(id)a3
{
  v5 = a3;
  v4 = [(CRKASMConcreteRosterProvider *)self worldBuildOperation];

  if (v4 == v5)
  {
    [(CRKASMConcreteRosterProvider *)self setWorldBuildOperation:0];
    [(CRKASMConcreteRosterProvider *)self processFinishedWorldBuild:v5];
    if (![(CRKASMConcreteRosterProvider *)self isPopulated])
    {
      [(CRKASMConcreteRosterProvider *)self setPopulated:1];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)processFinishedWorldBuild:(id)a3
{
  v4 = a3;
  [(CRKASMConcreteRosterProvider *)self logDurationOfOperation:v4];
  v5 = [v4 error];
  if (v5)
  {
    v6 = _CRKLogASM_14();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CRKASMConcreteRosterProvider *)v5 processFinishedWorldBuild:v6];
    }
  }

  else
  {
    v7 = [v4 resultObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v14 = 0;
    v10 = [v9 roster];
    [(CRKASMConcreteRosterProvider *)self updateRoster:v10 outTrustedPersonIDsChanged:&v14];

    v11 = [v9 manageableLocations];

    [(CRKASMConcreteRosterProvider *)self updateManageableLocations:v11];
    if (v14 == 1)
    {
      v12 = _CRKLogASM_14();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_243550000, v12, OS_LOG_TYPE_DEFAULT, "World building again because the observed trusted person IDs changed", v13, 2u);
      }

      [(CRKASMConcreteRosterProvider *)self startNewWorldBuild];
    }
  }
}

- (void)updateRoster:(id)a3 outTrustedPersonIDsChanged:(BOOL *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CRKASMConcreteRosterProvider *)self roster];
  if (v6 | v7)
  {
    v8 = v7;
    v9 = [(CRKASMConcreteRosterProvider *)self roster];
    v10 = [v9 isEqual:v6];

    if ((v10 & 1) == 0)
    {
      v11 = _CRKLogASM_14();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v6 courses];
        v19 = 138543362;
        v20 = v12;
        _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "Updating ASM roster with courses: %{public}@", &v19, 0xCu);
      }

      v13 = _CRKLogASM_14();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v6 user];
        v19 = 138543362;
        v20 = v14;
        _os_log_impl(&dword_243550000, v13, OS_LOG_TYPE_DEFAULT, "Updating ASM roster with user: %{public}@", &v19, 0xCu);
      }

      v15 = _CRKLogASM_14();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v6 organization];
        v19 = 138543362;
        v20 = v16;
        _os_log_impl(&dword_243550000, v15, OS_LOG_TYPE_DEFAULT, "Updating ASM roster with organization: %{public}@", &v19, 0xCu);
      }

      [(CRKASMConcreteRosterProvider *)self setRoster:v6];
      v17 = [(CRKASMConcreteRosterProvider *)self classKitChangeNotifier];
      v18 = [v17 updateObservedTrustedPersonIDsWithRoster:v6];

      if (a4)
      {
        *a4 = v18;
      }
    }
  }
}

- (void)updateManageableLocations:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRKASMConcreteRosterProvider *)self locationsWithManagePermissions];
  if (v4 | v5)
  {
    v6 = v5;
    v7 = [(CRKASMConcreteRosterProvider *)self locationsWithManagePermissions];
    v8 = [v7 isEqual:v4];

    if ((v8 & 1) == 0)
    {
      v9 = _CRKLogASM_14();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = [v4 count];
        _os_log_impl(&dword_243550000, v9, OS_LOG_TYPE_DEFAULT, "Updating Manageable ASM locations. Count: %lu", &v10, 0xCu);
      }

      [(CRKASMConcreteRosterProvider *)self setLocationsWithManagePermissions:v4];
    }
  }
}

- (void)logDurationOfOperation:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 finishedDate];
  v5 = [v3 startedDate];

  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  v8 = _CRKLogASM_14();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = v7;
    _os_log_impl(&dword_243550000, v8, OS_LOG_TYPE_DEFAULT, "ASM world build operation took %.2f seconds", &v9, 0xCu);
  }
}

- (void)processFinishedWorldBuild:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 verboseDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "ASM world build failed: %{public}@", &v4, 0xCu);
}

@end