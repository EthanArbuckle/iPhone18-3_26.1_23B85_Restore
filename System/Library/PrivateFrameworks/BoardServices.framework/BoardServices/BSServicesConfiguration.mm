@interface BSServicesConfiguration
+ (id)_bootstrapConfigOfService:(void *)service withEnv:(void *)env info:;
+ (id)_configOfService:(void *)service fromPlist:(char)plist isViewService:(void *)viewService postfixBlock:;
+ (id)_configOfService:(void *)service withViewServiceDomainsDictionary:;
+ (id)_parseFeatureFlagsForDomain:(void *)domain parameterName:(void *)name featureFlags:;
+ (id)activateManualDomain:(id)domain;
+ (id)bootstrapConfiguration;
+ (id)extendAutomaticBootstrapCompletion;
+ (id)registerDynamicDomainsFromPlist:(id)plist;
+ (id)viewServiceConfiguration;
+ (void)activateViewServiceConfiguration;
+ (void)activateXPCService;
+ (void)registerViewServiceConfiguration;
- (BSServicesConfiguration)init;
- (NSSet)disabledDomains;
- (id)_initWithDomainsByIdentifier:(void *)identifier disabledDomainsByIdentifier:;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)domainForIdentifier:(id)identifier;
- (id)domainForMachName:(id)name;
- (id)domainsContainingServiceIdentifier:(id)identifier;
- (id)succinctDescription;
@end

@implementation BSServicesConfiguration

+ (id)bootstrapConfiguration
{
  if (qword_1ED4A7C28 != -1)
  {
    dispatch_once(&qword_1ED4A7C28, &__block_literal_global_164);
  }

  v3 = _MergedGlobals_8;

  return v3;
}

void __49__BSServicesConfiguration_bootstrapConfiguration__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v1 environment];
  v3 = [v2 objectForKey:@"BSServiceDomains"];

  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 infoDictionary];
  v6 = [v5 objectForKey:@"BSServiceDomains"];

  v7 = objc_opt_self();
  v8 = [(BSRBSService *)v7 _sharedInstanceCreatingIfNecessary:?];
  v9 = [BSServicesConfiguration _bootstrapConfigOfService:v8 withEnv:v3 info:v6];
  v10 = _MergedGlobals_8;
  _MergedGlobals_8 = v9;

  if (v3)
  {
    *__error() = 0;
    if (unsetenv("BSServiceDomains"))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = *__error();
        v13[0] = 67109120;
        v13[1] = v12;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to unsetenv(BSServiceDomains) : errno=%{darwin.errno}d", v13, 8u);
      }
    }
  }

  objc_autoreleasePoolPop(v0);
  v11 = *MEMORY[0x1E69E9840];
}

+ (id)viewServiceConfiguration
{
  v2 = +[BSServiceManager sharedInstanceIfCreated];
  v3 = [(BSServiceManager *)v2 viewServiceConfigurationRegisteringIfNecessary:?];

  return v3;
}

+ (void)registerViewServiceConfiguration
{
  v3 = +[BSServiceManager sharedInstance];
  v2 = [(BSServiceManager *)v3 viewServiceConfigurationRegisteringIfNecessary:?];
}

+ (void)activateViewServiceConfiguration
{
  v2 = +[BSServiceManager sharedInstance];
  [(BSServiceManager *)v2 activateViewServiceConfiguration];
}

- (BSServicesConfiguration)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BSServicesConfiguration"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSServicesConfiguration.m";
    v18 = 1024;
    v19 = 35;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithDomainsByIdentifier:(void *)identifier disabledDomainsByIdentifier:
{
  v5 = a2;
  identifierCopy = identifier;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = BSServicesConfiguration;
    self = objc_msgSendSuper2(&v17, sel_init);
    if (self)
    {
      v7 = [v5 copy];
      v8 = self[1];
      self[1] = v7;

      v9 = [identifierCopy copy];
      v10 = self[2];
      self[2] = v9;

      v11 = MEMORY[0x1E695DFB8];
      allValues = [self[1] allValues];
      v13 = [allValues sortedArrayUsingComparator:&__block_literal_global_6];
      v14 = [v11 orderedSetWithArray:v13];
      v15 = self[3];
      self[3] = v14;
    }
  }

  return self;
}

uint64_t __84__BSServicesConfiguration__initWithDomainsByIdentifier_disabledDomainsByIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];
  v7 = [v5 compare:v6];

  return v7;
}

+ (id)_configOfService:(void *)service fromPlist:(char)plist isViewService:(void *)viewService postfixBlock:
{
  v53 = *MEMORY[0x1E69E9840];
  v29 = a2;
  serviceCopy = service;
  viewServiceCopy = viewService;
  v9 = objc_opt_self();
  v10 = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke;
  v39[3] = &unk_1E7520A58;
  v28 = dictionary;
  v40 = v28;
  v12 = MEMORY[0x19A908200](v39);
  if (serviceCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      serviceCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"domainsInfo was of an unexpected type : %@", serviceCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(sel__configOfService_fromPlist_isViewService_postfixBlock_);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v42 = v24;
        v43 = 2114;
        v44 = v26;
        v45 = 2048;
        v46 = v9;
        v47 = 2114;
        v48 = @"BSServicesConfiguration.m";
        v49 = 1024;
        v50 = 98;
        v51 = 2114;
        v52 = serviceCopy;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = serviceCopy;
      [serviceCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84C8D8);
    }
  }

  v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(serviceCopy, "count")}];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke_14;
  v31[3] = &unk_1E7520AD0;
  v36 = sel__configOfService_fromPlist_isViewService_postfixBlock_;
  v37 = v9;
  plistCopy = plist;
  v15 = v12;
  v35 = v15;
  v16 = v29;
  v32 = v16;
  v17 = dictionary2;
  v33 = v17;
  v18 = v13;
  v34 = v18;
  [serviceCopy enumerateKeysAndObjectsUsingBlock:v31];
  v19 = [[BSServicesConfiguration alloc] _initWithDomainsByIdentifier:v18 disabledDomainsByIdentifier:v17];
  if (viewServiceCopy)
  {
    v20 = viewServiceCopy[2]();

    v19 = v20;
  }

  objc_autoreleasePoolPop(v10);
  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

id __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) objectForKey:v3];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [v4 copyWithZone:0];

      [*(a1 + 32) setObject:v7 forKey:v7];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v219 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v185 = a3;
  v183 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier of the domain must be NSString : %@", v5];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v81 = NSStringFromSelector(*(a1 + 64));
      v82 = *(a1 + 72);
      v83 = objc_opt_class();
      v84 = NSStringFromClass(v83);
      v85 = *(a1 + 72);
      *buf = 138544642;
      v208 = v81;
      v209 = 2114;
      v210 = v84;
      v211 = 2048;
      v212 = v85;
      v213 = 2114;
      v214 = @"BSServicesConfiguration.m";
      v215 = 1024;
      v216 = 103;
      v217 = 2114;
      v218 = v80;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v86 = v80;
    [v80 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84DA18);
  }

  v6 = [v5 hasPrefix:@"XPCService"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"configuration of domain %@ must be NSDictionary : %@", v5, v185];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v88 = NSStringFromSelector(*(a1 + 64));
      v89 = *(a1 + 72);
      v90 = objc_opt_class();
      v91 = NSStringFromClass(v90);
      v92 = *(a1 + 72);
      *buf = 138544642;
      v208 = v88;
      v209 = 2114;
      v210 = v91;
      v211 = 2048;
      v212 = v92;
      v213 = 2114;
      v214 = @"BSServicesConfiguration.m";
      v215 = 1024;
      v216 = 105;
      v217 = 2114;
      v218 = v87;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v93 = v87;
    [v87 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84DB20);
  }

  if (*(a1 + 80) & v6)
  {
    v108 = [MEMORY[0x1E696AEC0] stringWithFormat:@"view-service config cannot contain XPCService domains : %@", v5];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v109 = NSStringFromSelector(*(a1 + 64));
      v110 = *(a1 + 72);
      v111 = objc_opt_class();
      v112 = NSStringFromClass(v111);
      v113 = *(a1 + 72);
      *buf = 138544642;
      v208 = v109;
      v209 = 2114;
      v210 = v112;
      v211 = 2048;
      v212 = v113;
      v213 = 2114;
      v214 = @"BSServicesConfiguration.m";
      v215 = 1024;
      v216 = 108;
      v217 = 2114;
      v218 = v108;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v114 = v108;
    [v108 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84DE34);
  }

  v7 = [v185 objectForKey:@"MachName"];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v115 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MachName of domain %@ is not allowed : %@", v183, v7];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v116 = NSStringFromSelector(*(a1 + 64));
        v117 = *(a1 + 72);
        v118 = objc_opt_class();
        v119 = NSStringFromClass(v118);
        v120 = *(a1 + 72);
        *buf = 138544642;
        v208 = v116;
        v209 = 2114;
        v210 = v119;
        v211 = 2048;
        v212 = v120;
        v213 = 2114;
        v214 = @"BSServicesConfiguration.m";
        v215 = 1024;
        v216 = 115;
        v217 = 2114;
        v218 = v115;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v121 = v115;
      [v115 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84DF38);
    }

    if ([v183 isEqualToString:@"XPCService"])
    {
      goto LABEL_17;
    }

    if (([v183 hasPrefix:@"XPCService."] & 1) == 0)
    {
      v143 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XPCService sub domain "];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v144 = NSStringFromSelector(*(a1 + 64));
        v145 = *(a1 + 72);
        v146 = objc_opt_class();
        v147 = NSStringFromClass(v146);
        v148 = *(a1 + 72);
        *buf = 138544642;
        v208 = v144;
        v209 = 2114;
        v210 = v147;
        v211 = 2048;
        v212 = v148;
        v213 = 2114;
        v214 = @"BSServicesConfiguration.m";
        v215 = 1024;
        v216 = 117;
        v217 = 2114;
        v218 = v143;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v149 = v143;
      [v143 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84E344);
    }

    v9 = [@"XPCService." length];
    v10 = [v183 length];
    if (v10 <= [@"XPCService." length])
    {
      v11 = 0;
    }

    else
    {
      v11 = [v183 substringFromIndex:v9];
    }

    if (![v11 length])
    {
      v150 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MachName of domain %@ is invalid : %@", v183, v11];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v151 = NSStringFromSelector(*(a1 + 64));
        v152 = *(a1 + 72);
        v153 = objc_opt_class();
        v154 = NSStringFromClass(v153);
        v155 = *(a1 + 72);
        *buf = 138544642;
        v208 = v151;
        v209 = 2114;
        v210 = v154;
        v211 = 2048;
        v212 = v155;
        v213 = 2114;
        v214 = @"BSServicesConfiguration.m";
        v215 = 1024;
        v216 = 122;
        v217 = 2114;
        v218 = v150;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v156 = v150;
      [v150 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84E448);
    }

    if (!v11)
    {
LABEL_17:
      v18 = *(a1 + 56);
      v15 = [MEMORY[0x1E696AAE8] mainBundle];
      v16 = [v15 bundleIdentifier];
      v181 = (*(v18 + 16))(v18, v16);
      v12 = 0;
    }

    else
    {
      v12 = (*(*(a1 + 56) + 16))();
      v13 = *(a1 + 56);
      v14 = MEMORY[0x1E696AEC0];
      v15 = [MEMORY[0x1E696AAE8] mainBundle];
      v16 = [v15 bundleIdentifier];
      v17 = [v14 stringWithFormat:@"%@.%@", v16, v11];
      v181 = (*(v13 + 16))(v13, v17);
    }

    v8 = v15;
    v178 = v12;
  }

  else
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MachName of domain %@ must be NSString : %@", v183, v8];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v130 = NSStringFromSelector(*(a1 + 64));
          v131 = *(a1 + 72);
          v132 = objc_opt_class();
          v133 = NSStringFromClass(v132);
          v134 = *(a1 + 72);
          *buf = 138544642;
          v208 = v130;
          v209 = 2114;
          v210 = v133;
          v211 = 2048;
          v212 = v134;
          v213 = 2114;
          v214 = @"BSServicesConfiguration.m";
          v215 = 1024;
          v216 = 131;
          v217 = 2114;
          v218 = v129;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v135 = v129;
        [v129 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A84E144);
      }
    }

    v181 = (*(*(a1 + 56) + 16))();
    v178 = 0;
  }

  v180 = [v185 objectForKey:@"Multiplexing"];
  if (v180)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Multiplexing of domain %@ must be NSString : %@", v183, v180];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v102 = NSStringFromSelector(*(a1 + 64));
        v103 = *(a1 + 72);
        v104 = objc_opt_class();
        v105 = NSStringFromClass(v104);
        v106 = *(a1 + 72);
        *buf = 138544642;
        v208 = v102;
        v209 = 2114;
        v210 = v105;
        v211 = 2048;
        v212 = v106;
        v213 = 2114;
        v214 = @"BSServicesConfiguration.m";
        v215 = 1024;
        v216 = 139;
        v217 = 2114;
        v218 = v101;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v107 = v101;
      [v101 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84DD30);
    }

    if ([v180 isEqualToString:@"Default"])
    {
      v19 = 0;
      goto LABEL_30;
    }

    if ([v180 isEqualToString:@"UserInitiated"])
    {
      v19 = 1;
      goto LABEL_30;
    }

    if (([v180 isEqualToString:@"UserInteractive"] & 1) == 0)
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unrecognized Multiplexing value of domain %@ : %@", v183, v180];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v67 = NSStringFromSelector(*(a1 + 64));
        v68 = *(a1 + 72);
        v69 = objc_opt_class();
        v70 = NSStringFromClass(v69);
        v71 = *(a1 + 72);
        *buf = 138544642;
        v208 = v67;
        v209 = 2114;
        v210 = v70;
        v211 = 2048;
        v212 = v71;
        v213 = 2114;
        v214 = @"BSServicesConfiguration.m";
        v215 = 1024;
        v216 = 147;
        v217 = 2114;
        v218 = v66;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v72 = v66;
      [v66 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84D80CLL);
    }
  }

  else if (_os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v208 = v183;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "configuration of BSServiceDomain %{public}@ did not specify its Multiplexing type", buf, 0xCu);
  }

  v19 = 2;
LABEL_30:
  v179 = [v185 objectForKey:@"Start"];
  v173 = v19;
  if (*(a1 + 80) == 1)
  {
    if (v179)
    {
      v122 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Start of domain %@ is not allowed : %@", v183, v179];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v123 = NSStringFromSelector(*(a1 + 64));
        v124 = *(a1 + 72);
        v125 = objc_opt_class();
        v126 = NSStringFromClass(v125);
        v127 = *(a1 + 72);
        *buf = 138544642;
        v208 = v123;
        v209 = 2114;
        v210 = v126;
        v211 = 2048;
        v212 = v127;
        v213 = 2114;
        v214 = @"BSServicesConfiguration.m";
        v215 = 1024;
        v216 = 157;
        v217 = 2114;
        v218 = v122;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v128 = v122;
      [v122 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84E040);
    }

    v20 = 5;
  }

  else if (v6)
  {
    if (v179)
    {
      v157 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Start of domain %@ is not allowed : %@", v183, v179];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v158 = NSStringFromSelector(*(a1 + 64));
        v159 = *(a1 + 72);
        v160 = objc_opt_class();
        v161 = NSStringFromClass(v160);
        v162 = *(a1 + 72);
        *buf = 138544642;
        v208 = v158;
        v209 = 2114;
        v210 = v161;
        v211 = 2048;
        v212 = v162;
        v213 = 2114;
        v214 = @"BSServicesConfiguration.m";
        v215 = 1024;
        v216 = 160;
        v217 = 2114;
        v218 = v157;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v163 = v157;
      [v157 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84E550);
    }

    v20 = 4;
  }

  else
  {
    if (!v179)
    {
      v177 = 0;
      goto LABEL_46;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v164 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Start of domain %@ must be NSString : %@", v183, v179];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v165 = NSStringFromSelector(*(a1 + 64));
        v166 = *(a1 + 72);
        v167 = objc_opt_class();
        v168 = NSStringFromClass(v167);
        v169 = *(a1 + 72);
        *buf = 138544642;
        v208 = v165;
        v209 = 2114;
        v210 = v168;
        v211 = 2048;
        v212 = v169;
        v213 = 2114;
        v214 = @"BSServicesConfiguration.m";
        v215 = 1024;
        v216 = 163;
        v217 = 2114;
        v218 = v164;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v170 = v164;
      [v164 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84E658);
    }

    if ([v179 isEqualToString:@"ManualBootstrap"])
    {
      v20 = 1;
    }

    else if ([v179 isEqualToString:@"UnboundedManualBootstrap"])
    {
      v20 = 2;
    }

    else
    {
      if (([v179 isEqualToString:@"ManualSession"] & 1) == 0)
      {
        v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unrecognized Start value of domain %@ : %@", v183, v179];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v74 = NSStringFromSelector(*(a1 + 64));
          v75 = *(a1 + 72);
          v76 = objc_opt_class();
          v77 = NSStringFromClass(v76);
          v78 = *(a1 + 72);
          *buf = 138544642;
          v208 = v74;
          v209 = 2114;
          v210 = v77;
          v211 = 2048;
          v212 = v78;
          v213 = 2114;
          v214 = @"BSServicesConfiguration.m";
          v215 = 1024;
          v216 = 171;
          v217 = 2114;
          v218 = v73;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v79 = v73;
        [v73 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A84D914);
      }

      v20 = 3;
    }
  }

  v177 = v20;
LABEL_46:
  v21 = [MEMORY[0x1E695DFA8] set];
  v182 = [v185 objectForKey:@"DerivedServiceRestrictions"];
  if (v6)
  {
    if (v182)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DerivedServiceRestrictions of domain %@ is not allowed : %@", v183, v182];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(*(a1 + 64));
        v24 = *(a1 + 72);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = *(a1 + 72);
        *buf = 138544642;
        v208 = v23;
        v209 = 2114;
        v210 = v26;
        v211 = 2048;
        v212 = v27;
        v213 = 2114;
        v214 = @"BSServicesConfiguration.m";
        v215 = 1024;
        v216 = 179;
        v217 = 2114;
        v218 = v22;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v28 = v22;
      [v22 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84D00CLL);
    }
  }

  else
  {
    if (v182)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v136 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DerivedServiceRestrictions of domain %@ was of an unexpected type : %@", v183, v182];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v137 = NSStringFromSelector(*(a1 + 64));
          v138 = *(a1 + 72);
          v139 = objc_opt_class();
          v140 = NSStringFromClass(v139);
          v141 = *(a1 + 72);
          *buf = 138544642;
          v208 = v137;
          v209 = 2114;
          v210 = v140;
          v211 = 2048;
          v212 = v141;
          v213 = 2114;
          v214 = @"BSServicesConfiguration.m";
          v215 = 1024;
          v216 = 181;
          v217 = 2114;
          v218 = v136;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v142 = v136;
        [v136 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A84E248);
      }
    }

    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v29 = v182;
    v30 = [v29 countByEnumeratingWithState:&v200 objects:v206 count:16];
    if (v30)
    {
      v31 = *v201;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v201 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v200 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entry of DerivedServiceRestrictions of domain %@ must be NSString : %@", v183, v33];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v60 = NSStringFromSelector(*(a1 + 64));
              v61 = *(a1 + 72);
              v62 = objc_opt_class();
              v63 = NSStringFromClass(v62);
              v64 = *(a1 + 72);
              *buf = 138544642;
              v208 = v60;
              v209 = 2114;
              v210 = v63;
              v211 = 2048;
              v212 = v64;
              v213 = 2114;
              v214 = @"BSServicesConfiguration.m";
              v215 = 1024;
              v216 = 183;
              v217 = 2114;
              v218 = v59;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v65 = v59;
            [v59 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A84D704);
          }

          v34 = (*(*(a1 + 56) + 16))();
          [v21 addObject:v34];
        }

        v30 = [v29 countByEnumeratingWithState:&v200 objects:v206 count:16];
      }

      while (v30);
    }
  }

  v184 = [v185 objectForKey:@"Services"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected a Services entry in the configuration of domain %@ : %@", v183, v185];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v95 = NSStringFromSelector(*(a1 + 64));
      v96 = *(a1 + 72);
      v97 = objc_opt_class();
      v98 = NSStringFromClass(v97);
      v99 = *(a1 + 72);
      *buf = 138544642;
      v208 = v95;
      v209 = 2114;
      v210 = v98;
      v211 = 2048;
      v212 = v99;
      v213 = 2114;
      v214 = @"BSServicesConfiguration.m";
      v215 = 1024;
      v216 = 190;
      v217 = 2114;
      v218 = v94;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v100 = v94;
    [v94 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84DC28);
  }

  v35 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v184, "count")}];
  v194[0] = MEMORY[0x1E69E9820];
  v194[1] = 3221225472;
  v194[2] = __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke_110;
  v194[3] = &unk_1E7520AA8;
  v36 = v183;
  v37 = *(a1 + 72);
  v195 = v36;
  v198 = v37;
  v199 = v177;
  v175 = *(a1 + 56);
  v38 = v175;
  v197 = v175;
  v176 = v35;
  v196 = v176;
  [v184 enumerateKeysAndObjectsUsingBlock:v194];
  v39 = [v185 objectForKey:@"EnableIfFeatureFlag"];
  v171 = v39;
  if (v39)
  {
    [(BSServicesConfiguration *)*(a1 + 72) _parseFeatureFlagsForDomain:v36 parameterName:@"EnableIfFeatureFlag" featureFlags:v39];
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v40 = v191 = 0u;
    v41 = [v40 countByEnumeratingWithState:&v190 objects:v205 count:16];
    if (v41)
    {
      v42 = *v191;
      while (2)
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v191 != v42)
          {
            objc_enumerationMutation(v40);
          }

          if (([*(*(&v190 + 1) + 8 * j) isEnabled] & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v208 = v36;
              _os_log_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Feature flag enablement conditional for BSServiceDomain %{public}@ not satisfied; ignoring domain.", buf, 0xCu);
            }

            v174 = 1;
            goto LABEL_76;
          }
        }

        v41 = [v40 countByEnumeratingWithState:&v190 objects:v205 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v174 = 0;
LABEL_76:
  }

  else
  {
    v174 = 0;
    v40 = 0;
  }

  v44 = [v185 objectForKey:@"DisableIfFeatureFlag"];
  v172 = v44;
  if (!v44)
  {
    v45 = 0;
    goto LABEL_93;
  }

  [(BSServicesConfiguration *)*(a1 + 72) _parseFeatureFlagsForDomain:v36 parameterName:@"DisableIfFeatureFlag" featureFlags:v44];
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v45 = v187 = 0u;
  v46 = [v45 countByEnumeratingWithState:&v186 objects:v204 count:16];
  if (!v46)
  {

LABEL_90:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v208 = v36;
      _os_log_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Feature flag disablement conditional met for BSServiceDomain %{public}@; ignoring domain.", buf, 0xCu);
    }

    v174 = 1;
    goto LABEL_93;
  }

  v47 = *v187;
  v48 = 1;
  do
  {
    for (k = 0; k != v46; ++k)
    {
      if (*v187 != v47)
      {
        objc_enumerationMutation(v45);
      }

      v48 &= [*(*(&v186 + 1) + 8 * k) isEnabled];
    }

    v46 = [v45 countByEnumeratingWithState:&v186 objects:v204 count:16];
  }

  while (v46);

  if (v48)
  {
    goto LABEL_90;
  }

LABEL_93:
  v50 = [BSServiceDomainSpecification alloc];
  v51 = (*(*(a1 + 56) + 16))();
  v52 = [(BSRBSService *)*(a1 + 32) launchIdentifiersForMachName:v181];
  v53 = [v21 count];
  if (v53)
  {
    v54 = (*(*(a1 + 56) + 16))();
  }

  else
  {
    v54 = 0;
  }

  v55 = [(BSServiceDomainSpecification *)&v50->super.isa _initWithIdentifier:v51 machName:v181 multiplexingType:v173 xpcSubserviceName:v178 start:v177 launchIdentifiers:v52 servicesByIdentifier:v176 derivedServiceRestrictions:v54 enableIfFeatureFlags:v40 disableIfFeatureFlags:v45];
  if (v53)
  {
  }

  if (v174)
  {
    v56 = *(a1 + 40);
  }

  else
  {
    v56 = *(a1 + 48);
  }

  v57 = [v55 identifier];
  [v56 setObject:v55 forKey:v57];

  v58 = *MEMORY[0x1E69E9840];
}

void __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v48 = a2;
  v49 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier of a service in domatin %@ must be NSString : %@", *(a1 + 32), v48];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(*(a1 + 56));
      v22 = *(a1 + 64);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = *(a1 + 64);
      *buf = 138544642;
      v54 = v21;
      v55 = 2114;
      v56 = v24;
      v57 = 2048;
      v58 = v25;
      v59 = 2114;
      v60 = @"BSServicesConfiguration.m";
      v61 = 1024;
      v62 = 194;
      v63 = 2114;
      v64 = v20;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v20;
    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84EE98);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"configuration of service %@ in domain %@ must be NSDictionary : %@", v48, *(a1 + 32), v49];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(*(a1 + 56));
      v29 = *(a1 + 64);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = *(a1 + 64);
      *buf = 138544642;
      v54 = v28;
      v55 = 2114;
      v56 = v31;
      v57 = 2048;
      v58 = v32;
      v59 = 2114;
      v60 = @"BSServicesConfiguration.m";
      v61 = 1024;
      v62 = 195;
      v63 = 2114;
      v64 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v33 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84EFA4);
  }

  v5 = [v49 objectForKey:@"HideAtLaunch"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HideAtLaunch value of service %@ in domain %@ was of an unexpected type : %@", v48, *(a1 + 32), v5];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v35 = NSStringFromSelector(*(a1 + 56));
        v36 = *(a1 + 64);
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = *(a1 + 64);
        *buf = 138544642;
        v54 = v35;
        v55 = 2114;
        v56 = v38;
        v57 = 2048;
        v58 = v39;
        v59 = 2114;
        v60 = @"BSServicesConfiguration.m";
        v61 = 1024;
        v62 = 200;
        v63 = 2114;
        v64 = v34;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v40 = v34;
      [v34 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84F0ACLL);
    }

    if ([v5 BOOLValue] && *(a1 + 72))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HideAtLaunch is only supported for automatic domains"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v42 = NSStringFromSelector(*(a1 + 56));
        v43 = *(a1 + 64);
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = *(a1 + 64);
        *buf = 138544642;
        v54 = v42;
        v55 = 2114;
        v56 = v45;
        v57 = 2048;
        v58 = v46;
        v59 = 2114;
        v60 = @"BSServicesConfiguration.m";
        v61 = 1024;
        v62 = 202;
        v63 = 2114;
        v64 = v41;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v47 = v41;
      [v41 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84F1A4);
    }
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [v49 bs_safeDictionaryForKey:@"Options"];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __81__BSServicesConfiguration__configOfService_fromPlist_isViewService_postfixBlock___block_invoke_130;
  v50[3] = &unk_1E7520A80;
  v8 = v6;
  v51 = v8;
  v52 = *(a1 + 48);
  [v7 enumerateKeysAndObjectsUsingBlock:v50];

  v9 = *(a1 + 48);
  v10 = [BSServiceSpecification alloc];
  v11 = (*(*(a1 + 48) + 16))();
  v12 = [v5 BOOLValue];
  v13 = [v8 count];
  if (v13)
  {
    v14 = (*(*(a1 + 48) + 16))();
  }

  else
  {
    v14 = 0;
  }

  v15 = [(BSServiceSpecification *)v10 _initWithIdentifier:v11 hiddenAtLaunch:v12 derived:0 options:v14];
  v16 = (*(v9 + 16))(v9, v15);

  if (v13)
  {
  }

  v17 = *(a1 + 40);
  v18 = [v16 identifier];
  [v17 setObject:v16 forKey:v18];

  v19 = *MEMORY[0x1E69E9840];
}

+ (id)_parseFeatureFlagsForDomain:(void *)domain parameterName:(void *)name featureFlags:
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a2;
  domainCopy = domain;
  nameCopy = name;
  v9 = objc_opt_self();
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  v41 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __82__BSServicesConfiguration__parseFeatureFlagsForDomain_parameterName_featureFlags___block_invoke;
  v35[3] = &unk_1E7520AF8;
  v35[5] = sel__parseFeatureFlagsForDomain_parameterName_featureFlags_;
  v35[6] = v9;
  v35[4] = &v36;
  v10 = MEMORY[0x19A908200](v35);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (v10)[2](v10, nameCopy);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = objc_claimAutoreleasedReturnValue();

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = NSStringFromSelector(sel__parseFeatureFlagsForDomain_parameterName_featureFlags_);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138544642;
        v44 = v22;
        v45 = 2114;
        v46 = v24;
        v47 = 2048;
        v48 = v9;
        v49 = 2114;
        v50 = @"BSServicesConfiguration.m";
        v51 = 1024;
        v52 = 311;
        v53 = 2114;
        v54 = v21;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v25 = v21;
      [v21 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84FC54);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FeatureFlagConditionals"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(sel__parseFeatureFlagsForDomain_parameterName_featureFlags_);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544642;
        v44 = v27;
        v45 = 2114;
        v46 = v29;
        v47 = 2048;
        v48 = v9;
        v49 = 2114;
        v50 = @"BSServicesConfiguration.m";
        v51 = 1024;
        v52 = 306;
        v53 = 2114;
        v54 = v26;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v30 = v26;
      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84FD48);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = nameCopy;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v12)
    {
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v10[2](v10, *(*(&v31 + 1) + 8 * i));
        }

        v12 = [v11 countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v12);
    }
  }

  v15 = v37[5];

  _Block_object_dispose(&v36, 8);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __82__BSServicesConfiguration__parseFeatureFlagsForDomain_parameterName_featureFlags___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v26 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FeatureFlagConditional values must be NSString types."];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(*(a1 + 40));
      v14 = *(a1 + 48);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = *(a1 + 48);
      *buf = 138544642;
      v28 = v13;
      v29 = 2114;
      v30 = v16;
      v31 = 2048;
      v32 = v17;
      v33 = 2114;
      v34 = @"BSServicesConfiguration.m";
      v35 = 1024;
      v36 = 288;
      v37 = 2114;
      v38 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A850044);
  }

  v3 = [v26 componentsSeparatedByString:@"/"];
  if ([v3 count] != 2)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Feature flags must be defined in the format: Domain/FeatureName"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(*(a1 + 40));
      v21 = *(a1 + 48);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = *(a1 + 48);
      *buf = 138544642;
      v28 = v20;
      v29 = 2114;
      v30 = v23;
      v31 = 2048;
      v32 = v24;
      v33 = 2114;
      v34 = @"BSServicesConfiguration.m";
      v35 = 1024;
      v36 = 290;
      v37 = 2114;
      v38 = v19;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v19;
    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85013CLL);
  }

  v4 = [v3 objectAtIndex:0];
  v5 = [v3 objectAtIndex:1];
  v6 = [[BSServiceFeatureFlag alloc] initWithDomain:v4 featureName:v5];
  v7 = *(*(*(a1 + 32) + 8) + 40);
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v7 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v7 addObject:v6];

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)_bootstrapConfigOfService:(void *)service withEnv:(void *)env info:
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = a2;
  serviceCopy = service;
  envCopy = env;
  v9 = objc_opt_self();
  v10 = objc_autoreleasePoolPush();
  if (serviceCopy)
  {
    uTF8String = [serviceCopy UTF8String];
    if (!uTF8String)
    {
      serviceCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceDomains of environment could not be converted to UTF8String : %@", serviceCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(sel__bootstrapConfigOfService_withEnv_info_);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138544642;
        v51 = v20;
        v52 = 2114;
        v53 = v22;
        v54 = 2048;
        v55 = v9;
        v56 = 2114;
        v57 = @"BSServicesConfiguration.m";
        v58 = 1024;
        v59 = 427;
        v60 = 2114;
        v61 = serviceCopy;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v23 = serviceCopy;
      [serviceCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A850500);
    }

    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:uTF8String length:strlen(uTF8String)];
    if (!v12)
    {
      serviceCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceDomains of environment could not be converted to NSData : %@", serviceCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(sel__bootstrapConfigOfService_withEnv_info_);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138544642;
        v51 = v25;
        v52 = 2114;
        v53 = v27;
        v54 = 2048;
        v55 = v9;
        v56 = 2114;
        v57 = @"BSServicesConfiguration.m";
        v58 = 1024;
        v59 = 429;
        v60 = 2114;
        v61 = serviceCopy2;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v28 = serviceCopy2;
      [serviceCopy2 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8505FCLL);
    }

    v49 = 0;
    v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:&v49];
    v14 = v49;
    if (!v13)
    {
      serviceCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceDomains of environment could not be deserialized due to %@ : %@", v14, serviceCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = NSStringFromSelector(sel__bootstrapConfigOfService_withEnv_info_);
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138544642;
        v51 = v30;
        v52 = 2114;
        v53 = v32;
        v54 = 2048;
        v55 = v9;
        v56 = 2114;
        v57 = @"BSServicesConfiguration.m";
        v58 = 1024;
        v59 = 432;
        v60 = 2114;
        v61 = serviceCopy3;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v33 = serviceCopy3;
      [serviceCopy3 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8506F8);
    }

    if (envCopy)
    {
      envCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceDomains cannot be defined in both the environment and the Info.plist : env=%@ info=%@", v13, envCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v35 = NSStringFromSelector(sel__bootstrapConfigOfService_withEnv_info_);
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *buf = 138544642;
        v51 = v35;
        v52 = 2114;
        v53 = v37;
        v54 = 2048;
        v55 = v9;
        v56 = 2114;
        v57 = @"BSServicesConfiguration.m";
        v58 = 1024;
        v59 = 436;
        v60 = 2114;
        v61 = envCopy;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v38 = envCopy;
      [envCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8507F4);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceDomains of environment was of an unexpected type : %@", v13];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v40 = NSStringFromSelector(sel__bootstrapConfigOfService_withEnv_info_);
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        *buf = 138544642;
        v51 = v40;
        v52 = 2114;
        v53 = v42;
        v54 = 2048;
        v55 = v9;
        v56 = 2114;
        v57 = @"BSServicesConfiguration.m";
        v58 = 1024;
        v59 = 437;
        v60 = 2114;
        v61 = v39;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v43 = v39;
      [v39 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8508F0);
    }

    v15 = [BSServicesConfiguration _configOfService:v6 fromPlist:v13 isViewService:0 postfixBlock:0];
  }

  else
  {
    if (envCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceDomains was of an unexpected type : %@", 0];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v45 = NSStringFromSelector(sel__bootstrapConfigOfService_withEnv_info_);
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          *buf = 138544642;
          v51 = v45;
          v52 = 2114;
          v53 = v47;
          v54 = 2048;
          v55 = v9;
          v56 = 2114;
          v57 = @"BSServicesConfiguration.m";
          v58 = 1024;
          v59 = 440;
          v60 = 2114;
          v61 = v44;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v48 = v44;
        [v44 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A8509ECLL);
      }

      v16 = [BSServicesConfiguration _configOfService:v6 fromPlist:envCopy isViewService:0 postfixBlock:&__block_literal_global_213];
    }

    else
    {
      v16 = [BSServicesConfiguration _configOfService:v6 fromPlist:0 isViewService:0 postfixBlock:0];
    }

    v15 = v16;
  }

  objc_autoreleasePoolPop(v10);

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

- (NSSet)disabledDomains
{
  v2 = MEMORY[0x1E695DFD8];
  allValues = [(NSDictionary *)self->_disabledDomainsByIdentifier allValues];
  v4 = [v2 setWithArray:allValues];

  return v4;
}

- (id)domainForIdentifier:(id)identifier
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2114;
      v26 = @"BSServicesConfiguration.m";
      v27 = 1024;
      v28 = 352;
      v29 = 2114;
      v30 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A850D6CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v20 = v15;
      v21 = 2114;
      v22 = v17;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2114;
      v26 = @"BSServicesConfiguration.m";
      v27 = 1024;
      v28 = 352;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A850E70);
  }

  v6 = [(NSDictionary *)self->_domainsByIdentifier objectForKey:identifierCopy];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)domainForMachName:(id)name
{
  v42 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!nameCopy)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v31 = v16;
      v32 = 2114;
      v33 = v18;
      v34 = 2048;
      selfCopy2 = self;
      v36 = 2114;
      v37 = @"BSServicesConfiguration.m";
      v38 = 1024;
      v39 = 357;
      v40 = 2114;
      v41 = v15;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v15;
    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85115CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v31 = v21;
      v32 = 2114;
      v33 = v23;
      v34 = 2048;
      selfCopy2 = self;
      v36 = 2114;
      v37 = @"BSServicesConfiguration.m";
      v38 = 1024;
      v39 = 357;
      v40 = 2114;
      v41 = v20;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v24 = v20;
    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A851260);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_orderedDomains;
  v7 = [(NSOrderedSet *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = *v26;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        machName = [v10 machName];
        v12 = [machName isEqualToString:nameCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_13;
        }
      }

      v7 = [(NSOrderedSet *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)domainsContainingServiceIdentifier:(id)identifier
{
  v42 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v31 = v16;
      v32 = 2114;
      v33 = v18;
      v34 = 2048;
      selfCopy2 = self;
      v36 = 2114;
      v37 = @"BSServicesConfiguration.m";
      v38 = 1024;
      v39 = 367;
      v40 = 2114;
      v41 = v15;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v15;
    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A851584);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v31 = v21;
      v32 = 2114;
      v33 = v23;
      v34 = 2048;
      selfCopy2 = self;
      v36 = 2114;
      v37 = @"BSServicesConfiguration.m";
      v38 = 1024;
      v39 = 367;
      v40 = 2114;
      v41 = v20;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v24 = v20;
    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A851688);
  }

  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSOrderedSet count](self->_orderedDomains, "count")}];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_orderedDomains;
  v8 = [(NSOrderedSet *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 serviceForIdentifier:identifierCopy];
        if (v12)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [(NSOrderedSet *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)extendAutomaticBootstrapCompletion
{
  v2 = +[BSServiceManager sharedInstance];
  extendAutomaticBootstrapCompletion = [(BSServiceManager *)v2 extendAutomaticBootstrapCompletion];

  return extendAutomaticBootstrapCompletion;
}

+ (id)registerDynamicDomainsFromPlist:(id)plist
{
  v30 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  v6 = +[BSServiceManager sharedInstance];
  _connection = [(BSServiceConnection *)v6 _connection];
  v8 = [BSServicesConfiguration _configOfService:_connection fromPlist:plistCopy isViewService:0 postfixBlock:0];

  v9 = [(BSServiceManager *)v6 registerDynamicConfiguration:v8];
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing registration"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *v21 = 138544642;
      *&v21[4] = v17;
      *&v21[12] = 2114;
      *&v21[14] = v19;
      v22 = 2048;
      selfCopy = self;
      v24 = 2114;
      v25 = @"BSServicesConfiguration.m";
      v26 = 1024;
      v27 = 388;
      v28 = 2114;
      v29 = v16;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v21, 0x3Au);
    }

    v20 = v16;
    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8519E8);
  }

  v10 = [BSServicesConfigurationRegistration alloc];
  v11 = v8;
  v12 = v9;
  if (v10)
  {
    *v21 = v10;
    *&v21[8] = BSServicesConfigurationRegistration;
    v13 = objc_msgSendSuper2(v21, sel_init);
    v10 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_configuration, v8);
      objc_storeStrong(&v10->_registration, v9);
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)activateManualDomain:(id)domain
{
  domainCopy = domain;
  v4 = +[BSServiceManager sharedInstance];
  v5 = [(BSServiceManager *)v4 activateManualDomain:domainCopy];

  return v5;
}

+ (void)activateXPCService
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[BSServiceManager sharedInstance];
  [(BSServiceManager *)v3 enforceXPCServiceListenerRegistration];

  objc_autoreleasePoolPop(v2);
  v4 = xpc_bs_main();

  _Unwind_Resume(v4);
}

id *__66__BSServicesConfiguration__bootstrapConfigOfService_withEnv_info___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v33 = a3;
  v35 = v4;
  v31 = [v4 domainsContainingServiceIdentifier:@"com.apple.frontboard.system-service"];
  if ([v31 count] == 1)
  {
    v5 = [v31 anyObject];
    v32 = [v5 serviceForIdentifier:@"com.apple.frontboard.system-service"];
    if (v5)
    {
      v6 = v5[11];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v34 = [MEMORY[0x1E695DFA8] set];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = [&unk_1F0E05B90 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v8)
    {
      v9 = *v41;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(&unk_1F0E05B90);
          }

          v11 = *(*(&v40 + 1) + 8 * i);
          if (([v7 containsObject:v11] & 1) == 0)
          {
            v12 = [v35 domainsContainingServiceIdentifier:v11];
            v13 = [v12 count] == 0;

            if (v13)
            {
              v14 = [BSServiceSpecification alloc];
              v15 = v33[2](v33, v11);
              v16 = -[BSServiceSpecification _initWithIdentifier:hiddenAtLaunch:derived:options:](v14, v15, [v32 isHiddenAtLaunch], 1, 0);

              v17 = (v33)[2](v33, v16);
              [v34 addObject:v17];
            }
          }
        }

        v8 = [&unk_1F0E05B90 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v8);
    }

    if ([v34 count])
    {
      v18 = MEMORY[0x1E695DF90];
      v19 = [v35 domains];
      v20 = [v18 dictionaryWithCapacity:{objc_msgSend(v19, "count")}];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v21 = [v35 domains];
      v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v22)
      {
        v23 = *v37;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v37 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v36 + 1) + 8 * j);
            if (v25 == v5)
            {
              v26 = [(BSServiceDomainSpecification *)v5 _domainWithAdditionalServices:v34];
              v27 = [v25 identifier];
              [v20 setObject:v26 forKey:v27];
            }

            else
            {
              v26 = [*(*(&v36 + 1) + 8 * j) identifier];
              [v20 setObject:v25 forKey:v26];
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v22);
      }

      v28 = [[BSServicesConfiguration alloc] _initWithDomainsByIdentifier:v20 disabledDomainsByIdentifier:0];
      v35 = v28;
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v35;
}

+ (id)_configOfService:(void *)service withViewServiceDomainsDictionary:
{
  v4 = a2;
  serviceCopy = service;
  objc_opt_self();
  v6 = [BSServicesConfiguration _configOfService:v4 fromPlist:serviceCopy isViewService:1 postfixBlock:0];

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSServicesConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSServicesConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(BSServicesConfiguration *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__BSServicesConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E75209E8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];
  v7 = v6;

  return v6;
}

void __65__BSServicesConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 24) array];
  [v1 appendArraySection:? withName:? skipIfEmpty:?];
}

@end