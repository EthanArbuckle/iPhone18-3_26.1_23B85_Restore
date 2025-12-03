@interface FBSApplicationTrustFacade
- (unint64_t)trustStateForApplication:(id)application;
@end

@implementation FBSApplicationTrustFacade

- (unint64_t)trustStateForApplication:(id)application
{
  v46 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  if (!self->_legacyProvider)
  {
    v6 = [FBSLegacySignatureValidationService alloc];
    v7 = +[FBSProfileManager sharedInstance];
    signerIdentity = [applicationCopy signerIdentity];
    v9 = [v7 profilesForSignerIdentity:signerIdentity];
    v10 = +[FBSProfileManager sharedInstance];
    bundleIdentifier = [applicationCopy bundleIdentifier];
    v12 = -[FBSLegacySignatureValidationService initWithApplicationInfo:andProvisioningProfiles:isManaged:](v6, "initWithApplicationInfo:andProvisioningProfiles:isManaged:", applicationCopy, v9, [v10 isManaged:bundleIdentifier]);
    legacyProvider = self->_legacyProvider;
    self->_legacyProvider = v12;
  }

  if (!self->_modernProvider)
  {
    v14 = objc_alloc_init(FBSSignatureValidationService);
    modernProvider = self->_modernProvider;
    self->_modernProvider = v14;
  }

  if (!self->_authoritativeProvider)
  {
    v16 = objc_alloc_init(FBSSignatureValidationService);
    authoritativeProvider = self->_authoritativeProvider;
    self->_authoritativeProvider = v16;

    [(FBSSignatureValidationService *)self->_authoritativeProvider setAuthoritative:1];
  }

  v18 = [(FBSApplicationTrustDataProvider *)self->_modernProvider trustStateForApplication:applicationCopy];
  v19 = [(FBSApplicationTrustDataProvider *)self->_legacyProvider trustStateForApplication:applicationCopy];
  v20 = [(FBSSignatureValidationService *)self->_authoritativeProvider trustStateForApplication:applicationCopy];
  v21 = FBLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier2 = [applicationCopy bundleIdentifier];
    v23 = NSStringFromFBSApplicationTrustState(v19);
    NSStringFromFBSApplicationTrustState(v18);
    v24 = v37 = a2;
    v25 = NSStringFromFBSApplicationTrustState(v20);
    *buf = 138413058;
    v39 = bundleIdentifier2;
    v40 = 2112;
    v41 = v23;
    v42 = 2112;
    v43 = v24;
    v44 = 2112;
    v45 = v25;
    _os_log_impl(&dword_1A2DBB000, v21, OS_LOG_TYPE_DEFAULT, "trust states for %@ - legacy: %@, modern: %@, authoritative: %@", buf, 0x2Au);

    a2 = v37;
  }

  if (v20 != v18)
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = NSStringFromFBSApplicationTrustState(v20);
    v31 = NSStringFromFBSApplicationTrustState(v18);
    v32 = [v29 stringWithFormat:@"Authoritative and modern states were divergent - authoritative: %@, modern: %@", v30, v31];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(FBSApplicationTrustFacade *)a2 trustStateForApplication:v32];
    }

    [v32 UTF8String];
    _bs_set_crash_log_message();
  }

  if (v19 != v18 && (v19 != 3 || v18 != 4))
  {
    v26 = v18 != 4 && v18 >= 2;
    v27 = !v26;
    if (v19 != 8 || !v27)
    {
      v33 = MEMORY[0x1E696AEC0];
      v34 = NSStringFromFBSApplicationTrustState(v19);
      v35 = NSStringFromFBSApplicationTrustState(v18);
      v36 = [v33 stringWithFormat:@"Legacy and modern states were divergent - legacy: %@, modern: %@", v34, v35];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [(FBSApplicationTrustFacade *)a2 trustStateForApplication:v36];
      }

      [v36 UTF8String];
      _bs_set_crash_log_message();
    }
  }

  return v18;
}

- (void)trustStateForApplication:(uint64_t)a3 .cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_1();
  v9 = @"FBSApplicationTrustFacade.m";
  v10 = 1024;
  v11 = 49;
  v12 = v7;
  v13 = a3;
  _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
}

- (void)trustStateForApplication:(uint64_t)a3 .cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_1();
  v9 = @"FBSApplicationTrustFacade.m";
  v10 = 1024;
  v11 = 57;
  v12 = v7;
  v13 = a3;
  _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
}

@end