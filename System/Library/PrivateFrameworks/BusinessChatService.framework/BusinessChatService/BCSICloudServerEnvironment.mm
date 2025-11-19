@interface BCSICloudServerEnvironment
- (BCSICloudServerEnvironment)initWithUserDefaults:(id)a3 isInternalInstall:(BOOL)a4 type:(int64_t)a5;
- (BOOL)isStagingMode;
- (NSDictionary)additionalRequestHTTPHeaders;
- (NSString)containerID;
- (__CFString)_productionContainerID;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)pirEnvironmentForServerType:(int64_t)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)containerEnvironment;
@end

@implementation BCSICloudServerEnvironment

- (BCSICloudServerEnvironment)initWithUserDefaults:(id)a3 isInternalInstall:(BOOL)a4 type:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = BCSICloudServerEnvironment;
  v10 = [(BCSICloudServerEnvironment *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_userDefaults, a3);
    v11->_type = a5;
    v11->_isInternalInstall = a4;
  }

  return v11;
}

- (NSString)containerID
{
  v3 = [(BCSICloudServerEnvironment *)self _productionContainerID];
  if ([(BCSICloudServerEnvironment *)self isInternalInstall])
  {
    v4 = [(BCSICloudServerEnvironment *)self type]- 1;
    if (v4 <= 4 && (v5 = off_278D39298[v4], -[BCSICloudServerEnvironment userDefaults](self, "userDefaults"), v6 = objc_claimAutoreleasedReturnValue(), [v6 stringForKey:*v5], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
    {
      v8 = v7;

      v3 = v8;
    }

    else
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "No custom cloudKit containerID set in user defaults, using production", v11, 2u);
      }

      v8 = [(BCSICloudServerEnvironment *)self _productionContainerID];
    }

    v3 = v8;
  }

  return v3;
}

- (__CFString)_productionContainerID
{
  if (a1)
  {
    v2 = [(__CFString *)a1 type];
    if ((v2 - 1) > 4)
    {
      a1 = 0;
    }

    else
    {
      a1 = *off_278D392C0[v2 - 1];
    }

    v1 = vars8;
  }

  return a1;
}

- (int64_t)containerEnvironment
{
  if ([(BCSICloudServerEnvironment *)self isInternalInstall]&& [(BCSICloudServerEnvironment *)self isStagingMode])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (NSDictionary)additionalRequestHTTPHeaders
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (![(BCSICloudServerEnvironment *)self isInternalInstall])
  {
    goto LABEL_17;
  }

  v3 = [(BCSICloudServerEnvironment *)self type];
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v10 = [(BCSICloudServerEnvironment *)self userDefaults];
      v11 = [v10 BOOLForKey:@"BCSSkipEdgeCaching"];

      if (v11)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    if (v3 != 2)
    {
      goto LABEL_17;
    }

    v4 = [(BCSICloudServerEnvironment *)self userDefaults];
    v5 = v4;
    v6 = kBCSDefaultsLinkSkipEdgeCaching;
  }

  else
  {
    switch(v3)
    {
      case 3:
        v4 = [(BCSICloudServerEnvironment *)self userDefaults];
        v5 = v4;
        v6 = kBCSDefaultsBusinessCallerSkipEdgeCaching;
        break;
      case 4:
        v4 = [(BCSICloudServerEnvironment *)self userDefaults];
        v5 = v4;
        v6 = kBCSDefaultsBusinessEmailSkipEdgeCaching;
        break;
      case 5:
        v4 = [(BCSICloudServerEnvironment *)self userDefaults];
        v5 = v4;
        v6 = kBCSDefaultsWebPresentmentSkipEdgeCaching;
        break;
      default:
        goto LABEL_17;
    }
  }

  v7 = [v4 BOOLForKey:*v6];

  if (v7)
  {
LABEL_13:
    v8 = ABSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "Edge cache disabled", v15, 2u);
    }

    v16 = @"Cache-Control";
    v17[0] = @"max-age=0";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    goto LABEL_20;
  }

LABEL_17:
  v12 = ABSLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_242072000, v12, OS_LOG_TYPE_DEFAULT, "Edge cache enabled", v15, 2u);
  }

  v9 = 0;
LABEL_20:
  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)pirEnvironmentForServerType:(int64_t)a3
{
  if (([(BCSICloudServerEnvironment *)self type]- 3) > 2)
  {
    v7 = 0;
  }

  else
  {
    v5 = [BCSPIRServerEnvironment alloc];
    v6 = [(BCSICloudServerEnvironment *)self userDefaults];
    v7 = [(BCSPIRServerEnvironment *)v5 initWithUserDefaults:v6 isInternalInstall:[(BCSICloudServerEnvironment *)self isInternalInstall] type:[(BCSICloudServerEnvironment *)self type] serverType:a3];
  }

  return v7;
}

- (BOOL)isStagingMode
{
  v3 = [(BCSICloudServerEnvironment *)self type]- 1;
  if (v3 > 4)
  {
    return 0;
  }

  v4 = off_278D392E8[v3];
  v5 = [(BCSICloudServerEnvironment *)self userDefaults];
  LOBYTE(v4) = [v5 BOOLForKey:*v4];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BCSICloudServerEnvironment *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BCSICloudServerEnvironment *)self containerID];
  v5 = [v3 appendObject:v4 withName:@"containerID"];

  [(BCSICloudServerEnvironment *)self containerEnvironment];
  v6 = CKContainerEnvironmentString();
  v7 = [v3 appendObject:v6 withName:@"containerEnvironment"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BCSICloudServerEnvironment *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end