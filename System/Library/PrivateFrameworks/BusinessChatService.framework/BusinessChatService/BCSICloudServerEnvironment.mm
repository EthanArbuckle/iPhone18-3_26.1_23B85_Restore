@interface BCSICloudServerEnvironment
- (BCSICloudServerEnvironment)initWithUserDefaults:(id)defaults isInternalInstall:(BOOL)install type:(int64_t)type;
- (BOOL)isStagingMode;
- (NSDictionary)additionalRequestHTTPHeaders;
- (NSString)containerID;
- (__CFString)_productionContainerID;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)pirEnvironmentForServerType:(int64_t)type;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)containerEnvironment;
@end

@implementation BCSICloudServerEnvironment

- (BCSICloudServerEnvironment)initWithUserDefaults:(id)defaults isInternalInstall:(BOOL)install type:(int64_t)type
{
  defaultsCopy = defaults;
  v13.receiver = self;
  v13.super_class = BCSICloudServerEnvironment;
  v10 = [(BCSICloudServerEnvironment *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_userDefaults, defaults);
    v11->_type = type;
    v11->_isInternalInstall = install;
  }

  return v11;
}

- (NSString)containerID
{
  _productionContainerID = [(BCSICloudServerEnvironment *)self _productionContainerID];
  if ([(BCSICloudServerEnvironment *)self isInternalInstall])
  {
    v4 = [(BCSICloudServerEnvironment *)self type]- 1;
    if (v4 <= 4 && (v5 = off_278D39298[v4], -[BCSICloudServerEnvironment userDefaults](self, "userDefaults"), v6 = objc_claimAutoreleasedReturnValue(), [v6 stringForKey:*v5], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
    {
      _productionContainerID2 = v7;

      _productionContainerID = _productionContainerID2;
    }

    else
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "No custom cloudKit containerID set in user defaults, using production", v11, 2u);
      }

      _productionContainerID2 = [(BCSICloudServerEnvironment *)self _productionContainerID];
    }

    _productionContainerID = _productionContainerID2;
  }

  return _productionContainerID;
}

- (__CFString)_productionContainerID
{
  if (self)
  {
    type = [(__CFString *)self type];
    if ((type - 1) > 4)
    {
      self = 0;
    }

    else
    {
      self = *off_278D392C0[type - 1];
    }

    v1 = vars8;
  }

  return self;
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

  type = [(BCSICloudServerEnvironment *)self type];
  if (type <= 2)
  {
    if (type == 1)
    {
      userDefaults = [(BCSICloudServerEnvironment *)self userDefaults];
      v11 = [userDefaults BOOLForKey:@"BCSSkipEdgeCaching"];

      if (v11)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    if (type != 2)
    {
      goto LABEL_17;
    }

    userDefaults2 = [(BCSICloudServerEnvironment *)self userDefaults];
    v5 = userDefaults2;
    v6 = kBCSDefaultsLinkSkipEdgeCaching;
  }

  else
  {
    switch(type)
    {
      case 3:
        userDefaults2 = [(BCSICloudServerEnvironment *)self userDefaults];
        v5 = userDefaults2;
        v6 = kBCSDefaultsBusinessCallerSkipEdgeCaching;
        break;
      case 4:
        userDefaults2 = [(BCSICloudServerEnvironment *)self userDefaults];
        v5 = userDefaults2;
        v6 = kBCSDefaultsBusinessEmailSkipEdgeCaching;
        break;
      case 5:
        userDefaults2 = [(BCSICloudServerEnvironment *)self userDefaults];
        v5 = userDefaults2;
        v6 = kBCSDefaultsWebPresentmentSkipEdgeCaching;
        break;
      default:
        goto LABEL_17;
    }
  }

  v7 = [userDefaults2 BOOLForKey:*v6];

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

- (id)pirEnvironmentForServerType:(int64_t)type
{
  if (([(BCSICloudServerEnvironment *)self type]- 3) > 2)
  {
    v7 = 0;
  }

  else
  {
    v5 = [BCSPIRServerEnvironment alloc];
    userDefaults = [(BCSICloudServerEnvironment *)self userDefaults];
    v7 = [(BCSPIRServerEnvironment *)v5 initWithUserDefaults:userDefaults isInternalInstall:[(BCSICloudServerEnvironment *)self isInternalInstall] type:[(BCSICloudServerEnvironment *)self type] serverType:type];
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
  userDefaults = [(BCSICloudServerEnvironment *)self userDefaults];
  LOBYTE(v4) = [userDefaults BOOLForKey:*v4];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BCSICloudServerEnvironment *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  containerID = [(BCSICloudServerEnvironment *)self containerID];
  v5 = [v3 appendObject:containerID withName:@"containerID"];

  [(BCSICloudServerEnvironment *)self containerEnvironment];
  v6 = CKContainerEnvironmentString();
  v7 = [v3 appendObject:v6 withName:@"containerEnvironment"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BCSICloudServerEnvironment *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end