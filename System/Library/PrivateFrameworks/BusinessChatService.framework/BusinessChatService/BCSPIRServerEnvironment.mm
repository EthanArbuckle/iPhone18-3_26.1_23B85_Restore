@interface BCSPIRServerEnvironment
- (BCSPIRServerEnvironment)initWithUserDefaults:(id)defaults isInternalInstall:(BOOL)install type:(int64_t)type serverType:(int64_t)serverType;
- (BOOL)disableCaching;
- (BOOL)pirUsesCompression;
- (NSString)pirCompressionType;
- (NSString)pirUseCase;
- (NSString)secondaryIdentifier;
- (id)_stringFromDefaultsForKey:(void *)key defaultValue:;
- (uint64_t)_BOOLFromDefaultsForKey:(uint64_t)key defaultValue:;
@end

@implementation BCSPIRServerEnvironment

- (BCSPIRServerEnvironment)initWithUserDefaults:(id)defaults isInternalInstall:(BOOL)install type:(int64_t)type serverType:(int64_t)serverType
{
  defaultsCopy = defaults;
  v15.receiver = self;
  v15.super_class = BCSPIRServerEnvironment;
  v12 = [(BCSPIRServerEnvironment *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userDefaults, defaults);
    v13->_isInternalInstall = install;
    v13->_type = type;
    v13->_serverType = serverType;
  }

  return v13;
}

- (NSString)pirUseCase
{
  if (![(BCSPIRServerEnvironment *)self isInternalInstall])
  {
    goto LABEL_15;
  }

  type = [(BCSPIRServerEnvironment *)self type];
  switch(type)
  {
    case 5:
      goto LABEL_10;
    case 4:
      serverType = [(BCSPIRServerEnvironment *)self serverType];
      if ((serverType - 1) < 2)
      {
        v4 = @"BCSBusinessEmailPIRUseCase";
        v5 = kBCSDefaultBusinessEmailPIRUseCase;
        goto LABEL_14;
      }

      if (serverType == 3)
      {
        v4 = @"BCSBusinessEmailLogoPIRUseCase";
        v5 = kBCSDefaultBusinessEmailLogoPIRUseCase;
        goto LABEL_14;
      }

LABEL_10:
      serverType2 = [(BCSPIRServerEnvironment *)self serverType];
      if ((serverType2 - 1) < 2)
      {
        v4 = @"BCSWebPresentmentPIRUseCase";
        v5 = kBCSDefaultWebPresentmentPIRUseCase;
        goto LABEL_14;
      }

      if (serverType2 == 4)
      {
        v4 = @"BCSWebPresentmentPermissionsPIRUseCase";
        v5 = kBCSDefaultWebPresentmentPermissionsPIRUseCase;
        goto LABEL_14;
      }

      break;
    case 3:
      v4 = @"BCSBusinessCallerPIRUseCase";
      v5 = kBCSDefaultBusinessCallerPIRUseCase;
LABEL_14:
      v8 = [(BCSPIRServerEnvironment *)self _stringFromDefaultsForKey:v4 defaultValue:*v5];
      goto LABEL_29;
  }

LABEL_15:
  type2 = [(BCSPIRServerEnvironment *)self type];
  switch(type2)
  {
    case 5:
      serverType3 = [(BCSPIRServerEnvironment *)self serverType];
      if ((serverType3 - 1) < 2)
      {
        v10 = kBCSDefaultWebPresentmentPIRUseCase;
        goto LABEL_27;
      }

      if (serverType3 == 4)
      {
        v10 = kBCSDefaultWebPresentmentPermissionsPIRUseCase;
        goto LABEL_27;
      }

      break;
    case 4:
      serverType4 = [(BCSPIRServerEnvironment *)self serverType];
      if ((serverType4 - 1) < 2)
      {
        v10 = kBCSDefaultBusinessEmailPIRUseCase;
        goto LABEL_27;
      }

      if (serverType4 == 3)
      {
        v10 = kBCSDefaultBusinessEmailLogoPIRUseCase;
        goto LABEL_27;
      }

      break;
    case 3:
      v10 = kBCSDefaultBusinessCallerPIRUseCase;
LABEL_27:
      v8 = *v10;
      goto LABEL_29;
  }

  v8 = 0;
LABEL_29:

  return v8;
}

- (id)_stringFromDefaultsForKey:(void *)key defaultValue:
{
  v5 = a2;
  keyCopy = key;
  if (self)
  {
    if (v5 && ([self userDefaults], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKey:", v5), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      userDefaults = [self userDefaults];
      self = [userDefaults stringForKey:v5];
    }

    else
    {
      self = keyCopy;
    }
  }

  return self;
}

- (BOOL)pirUsesCompression
{
  if (![(BCSPIRServerEnvironment *)self isInternalInstall])
  {
    return 1;
  }

  type = [(BCSPIRServerEnvironment *)self type];
  if (type == 3)
  {
    v5 = kBCSDefaultsBusinessCallerPIRUsesCompression;
    goto LABEL_10;
  }

  if (type == 5)
  {
    serverType = [(BCSPIRServerEnvironment *)self serverType];
    if ((serverType - 1) < 2)
    {
      v5 = kBCSDefaultsWebPresentmentPIRUsesCompression;
      goto LABEL_10;
    }

    if (serverType == 4)
    {
      v5 = kBCSDefaultsWebPresentmentPermissionsPIRUsesCompression;
      goto LABEL_10;
    }

    return 1;
  }

  if (type != 4)
  {
    return 1;
  }

  serverType2 = [(BCSPIRServerEnvironment *)self serverType];
  if ((serverType2 - 1) >= 3)
  {
    return 1;
  }

  v5 = off_278D39E80[serverType2 - 1];
LABEL_10:
  v7 = *v5;

  return [(BCSPIRServerEnvironment *)self _BOOLFromDefaultsForKey:v7 defaultValue:1];
}

- (uint64_t)_BOOLFromDefaultsForKey:(uint64_t)key defaultValue:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (v5)
    {
      userDefaults = [self userDefaults];
      v8 = [userDefaults objectForKey:v6];

      if (v8)
      {
        userDefaults2 = [self userDefaults];
        key = [userDefaults2 BOOLForKey:v6];
      }
    }
  }

  else
  {
    key = 0;
  }

  return key;
}

- (NSString)pirCompressionType
{
  isInternalInstall = [(BCSPIRServerEnvironment *)self isInternalInstall];
  type = [(BCSPIRServerEnvironment *)self type];
  if (isInternalInstall)
  {
    if (type != 5)
    {
      if (type != 4)
      {
        if (type == 3)
        {
          v5 = @"BCSBusinessCallerPIRCompressionType";
          v6 = kBCSDefaultBusinessCallerPIRCompressionType;
LABEL_28:
          v12 = [(BCSPIRServerEnvironment *)self _stringFromDefaultsForKey:v5 defaultValue:*v6];
          goto LABEL_31;
        }

        goto LABEL_24;
      }

      serverType = [(BCSPIRServerEnvironment *)self serverType];
      if ((serverType - 1) < 2)
      {
        v5 = @"BCSBusinessEmailPIRCompressionType";
        v6 = kBCSDefaultBusinessEmailPIRCompressionType;
        goto LABEL_28;
      }

      if (serverType == 3)
      {
        v5 = @"BCSBusinessEmailLogoPIRCompressionType";
        v6 = kBCSDefaultBusinessEmailLogoPIRCompressionType;
        goto LABEL_28;
      }

      if (serverType == 4)
      {
        goto LABEL_24;
      }
    }

    serverType2 = [(BCSPIRServerEnvironment *)self serverType];
    if ((serverType2 - 1) < 2)
    {
      v5 = @"BCSWebPresentmentPIRCompressionType";
      v6 = kBCSDefaultWebPresentmentPIRCompressionType;
      goto LABEL_28;
    }

    if (serverType2 == 4)
    {
      v5 = @"BCSWebPresentmentPermissionsPIRCompressionType";
      v6 = kBCSDefaultWebPresentmentPermissionsPIRCompressionType;
      goto LABEL_28;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_31;
  }

  if (type == 5)
  {
LABEL_18:
    serverType3 = [(BCSPIRServerEnvironment *)self serverType];
    if ((serverType3 - 1) >= 2)
    {
      if (serverType3 != 4)
      {
        goto LABEL_24;
      }

      v7 = kBCSDefaultWebPresentmentPermissionsPIRCompressionType;
    }

    else
    {
      v7 = kBCSDefaultWebPresentmentPIRCompressionType;
    }

    goto LABEL_30;
  }

  if (type == 4)
  {
    serverType4 = [(BCSPIRServerEnvironment *)self serverType];
    if ((serverType4 - 1) < 2)
    {
      v7 = kBCSDefaultBusinessEmailPIRCompressionType;
      goto LABEL_30;
    }

    if (serverType4 == 3)
    {
      v7 = kBCSDefaultBusinessEmailLogoPIRCompressionType;
      goto LABEL_30;
    }

    if (serverType4 == 4)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (type != 3)
  {
    goto LABEL_24;
  }

  v7 = kBCSDefaultBusinessCallerPIRCompressionType;
LABEL_30:
  v12 = *v7;
LABEL_31:

  return v12;
}

- (NSString)secondaryIdentifier
{
  isInternalInstall = [(BCSPIRServerEnvironment *)self isInternalInstall];
  type = [(BCSPIRServerEnvironment *)self type];
  if (isInternalInstall)
  {
    switch(type)
    {
      case 5:
        v5 = @"BCSWebPresentmentSecondaryIdentifier";
        v6 = kBCSPIRSecondaryIdentifierForWebPresentment;
        goto LABEL_14;
      case 4:
        v5 = @"BCSBusinessEmailSecondaryIdentifier";
        v6 = kBCSPIRSecondaryIdentifierForEmail;
        goto LABEL_14;
      case 3:
        v5 = @"BCSBusinessCallerSecondaryIdentifier";
        v6 = kBCSPIRSecondaryIdentifierForBusinessCaller;
LABEL_14:
        v8 = [(BCSPIRServerEnvironment *)self _stringFromDefaultsForKey:v5 defaultValue:*v6];
        goto LABEL_17;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_17;
  }

  switch(type)
  {
    case 5:
      v7 = kBCSPIRSecondaryIdentifierForWebPresentment;
      break;
    case 4:
      v7 = kBCSPIRSecondaryIdentifierForEmail;
      break;
    case 3:
      v7 = kBCSPIRSecondaryIdentifierForBusinessCaller;
      break;
    default:
      goto LABEL_10;
  }

  v8 = *v7;
LABEL_17:

  return v8;
}

- (BOOL)disableCaching
{
  if (![(BCSPIRServerEnvironment *)self isInternalInstall])
  {
    return [(BCSPIRServerEnvironment *)self type]== 5 && [(BCSPIRServerEnvironment *)self serverType]== 4;
  }

  type = [(BCSPIRServerEnvironment *)self type];
  if ((type - 3) < 2)
  {
    return 0;
  }

  if (type != 5)
  {
    return [(BCSPIRServerEnvironment *)self type]== 5 && [(BCSPIRServerEnvironment *)self serverType]== 4;
  }

  serverType = [(BCSPIRServerEnvironment *)self serverType];
  if ((serverType - 1) >= 2)
  {
    if (serverType == 4)
    {
      v5 = @"BCSWebPresentmentPermissionsPIREnableCaching";
      selfCopy2 = self;
      v7 = 1;
      goto LABEL_8;
    }

    return [(BCSPIRServerEnvironment *)self type]== 5 && [(BCSPIRServerEnvironment *)self serverType]== 4;
  }

  v5 = @"BCSWebPresentmentPIREnableCaching";
  selfCopy2 = self;
  v7 = 0;
LABEL_8:

  return [(BCSPIRServerEnvironment *)selfCopy2 _BOOLFromDefaultsForKey:v5 defaultValue:v7];
}

@end