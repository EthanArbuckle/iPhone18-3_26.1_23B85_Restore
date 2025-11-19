@interface BCSPIRServerEnvironment
- (BCSPIRServerEnvironment)initWithUserDefaults:(id)a3 isInternalInstall:(BOOL)a4 type:(int64_t)a5 serverType:(int64_t)a6;
- (BOOL)disableCaching;
- (BOOL)pirUsesCompression;
- (NSString)pirCompressionType;
- (NSString)pirUseCase;
- (NSString)secondaryIdentifier;
- (id)_stringFromDefaultsForKey:(void *)a3 defaultValue:;
- (uint64_t)_BOOLFromDefaultsForKey:(uint64_t)a3 defaultValue:;
@end

@implementation BCSPIRServerEnvironment

- (BCSPIRServerEnvironment)initWithUserDefaults:(id)a3 isInternalInstall:(BOOL)a4 type:(int64_t)a5 serverType:(int64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = BCSPIRServerEnvironment;
  v12 = [(BCSPIRServerEnvironment *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userDefaults, a3);
    v13->_isInternalInstall = a4;
    v13->_type = a5;
    v13->_serverType = a6;
  }

  return v13;
}

- (NSString)pirUseCase
{
  if (![(BCSPIRServerEnvironment *)self isInternalInstall])
  {
    goto LABEL_15;
  }

  v3 = [(BCSPIRServerEnvironment *)self type];
  switch(v3)
  {
    case 5:
      goto LABEL_10;
    case 4:
      v6 = [(BCSPIRServerEnvironment *)self serverType];
      if ((v6 - 1) < 2)
      {
        v4 = @"BCSBusinessEmailPIRUseCase";
        v5 = kBCSDefaultBusinessEmailPIRUseCase;
        goto LABEL_14;
      }

      if (v6 == 3)
      {
        v4 = @"BCSBusinessEmailLogoPIRUseCase";
        v5 = kBCSDefaultBusinessEmailLogoPIRUseCase;
        goto LABEL_14;
      }

LABEL_10:
      v7 = [(BCSPIRServerEnvironment *)self serverType];
      if ((v7 - 1) < 2)
      {
        v4 = @"BCSWebPresentmentPIRUseCase";
        v5 = kBCSDefaultWebPresentmentPIRUseCase;
        goto LABEL_14;
      }

      if (v7 == 4)
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
  v9 = [(BCSPIRServerEnvironment *)self type];
  switch(v9)
  {
    case 5:
      v12 = [(BCSPIRServerEnvironment *)self serverType];
      if ((v12 - 1) < 2)
      {
        v10 = kBCSDefaultWebPresentmentPIRUseCase;
        goto LABEL_27;
      }

      if (v12 == 4)
      {
        v10 = kBCSDefaultWebPresentmentPermissionsPIRUseCase;
        goto LABEL_27;
      }

      break;
    case 4:
      v11 = [(BCSPIRServerEnvironment *)self serverType];
      if ((v11 - 1) < 2)
      {
        v10 = kBCSDefaultBusinessEmailPIRUseCase;
        goto LABEL_27;
      }

      if (v11 == 3)
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

- (id)_stringFromDefaultsForKey:(void *)a3 defaultValue:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (v5 && ([a1 userDefaults], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKey:", v5), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      v9 = [a1 userDefaults];
      a1 = [v9 stringForKey:v5];
    }

    else
    {
      a1 = v6;
    }
  }

  return a1;
}

- (BOOL)pirUsesCompression
{
  if (![(BCSPIRServerEnvironment *)self isInternalInstall])
  {
    return 1;
  }

  v3 = [(BCSPIRServerEnvironment *)self type];
  if (v3 == 3)
  {
    v5 = kBCSDefaultsBusinessCallerPIRUsesCompression;
    goto LABEL_10;
  }

  if (v3 == 5)
  {
    v6 = [(BCSPIRServerEnvironment *)self serverType];
    if ((v6 - 1) < 2)
    {
      v5 = kBCSDefaultsWebPresentmentPIRUsesCompression;
      goto LABEL_10;
    }

    if (v6 == 4)
    {
      v5 = kBCSDefaultsWebPresentmentPermissionsPIRUsesCompression;
      goto LABEL_10;
    }

    return 1;
  }

  if (v3 != 4)
  {
    return 1;
  }

  v4 = [(BCSPIRServerEnvironment *)self serverType];
  if ((v4 - 1) >= 3)
  {
    return 1;
  }

  v5 = off_278D39E80[v4 - 1];
LABEL_10:
  v7 = *v5;

  return [(BCSPIRServerEnvironment *)self _BOOLFromDefaultsForKey:v7 defaultValue:1];
}

- (uint64_t)_BOOLFromDefaultsForKey:(uint64_t)a3 defaultValue:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = [a1 userDefaults];
      v8 = [v7 objectForKey:v6];

      if (v8)
      {
        v9 = [a1 userDefaults];
        a3 = [v9 BOOLForKey:v6];
      }
    }
  }

  else
  {
    a3 = 0;
  }

  return a3;
}

- (NSString)pirCompressionType
{
  v3 = [(BCSPIRServerEnvironment *)self isInternalInstall];
  v4 = [(BCSPIRServerEnvironment *)self type];
  if (v3)
  {
    if (v4 != 5)
    {
      if (v4 != 4)
      {
        if (v4 == 3)
        {
          v5 = @"BCSBusinessCallerPIRCompressionType";
          v6 = kBCSDefaultBusinessCallerPIRCompressionType;
LABEL_28:
          v12 = [(BCSPIRServerEnvironment *)self _stringFromDefaultsForKey:v5 defaultValue:*v6];
          goto LABEL_31;
        }

        goto LABEL_24;
      }

      v8 = [(BCSPIRServerEnvironment *)self serverType];
      if ((v8 - 1) < 2)
      {
        v5 = @"BCSBusinessEmailPIRCompressionType";
        v6 = kBCSDefaultBusinessEmailPIRCompressionType;
        goto LABEL_28;
      }

      if (v8 == 3)
      {
        v5 = @"BCSBusinessEmailLogoPIRCompressionType";
        v6 = kBCSDefaultBusinessEmailLogoPIRCompressionType;
        goto LABEL_28;
      }

      if (v8 == 4)
      {
        goto LABEL_24;
      }
    }

    v9 = [(BCSPIRServerEnvironment *)self serverType];
    if ((v9 - 1) < 2)
    {
      v5 = @"BCSWebPresentmentPIRCompressionType";
      v6 = kBCSDefaultWebPresentmentPIRCompressionType;
      goto LABEL_28;
    }

    if (v9 == 4)
    {
      v5 = @"BCSWebPresentmentPermissionsPIRCompressionType";
      v6 = kBCSDefaultWebPresentmentPermissionsPIRCompressionType;
      goto LABEL_28;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_31;
  }

  if (v4 == 5)
  {
LABEL_18:
    v11 = [(BCSPIRServerEnvironment *)self serverType];
    if ((v11 - 1) >= 2)
    {
      if (v11 != 4)
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

  if (v4 == 4)
  {
    v10 = [(BCSPIRServerEnvironment *)self serverType];
    if ((v10 - 1) < 2)
    {
      v7 = kBCSDefaultBusinessEmailPIRCompressionType;
      goto LABEL_30;
    }

    if (v10 == 3)
    {
      v7 = kBCSDefaultBusinessEmailLogoPIRCompressionType;
      goto LABEL_30;
    }

    if (v10 == 4)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (v4 != 3)
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
  v3 = [(BCSPIRServerEnvironment *)self isInternalInstall];
  v4 = [(BCSPIRServerEnvironment *)self type];
  if (v3)
  {
    switch(v4)
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

  switch(v4)
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

  v3 = [(BCSPIRServerEnvironment *)self type];
  if ((v3 - 3) < 2)
  {
    return 0;
  }

  if (v3 != 5)
  {
    return [(BCSPIRServerEnvironment *)self type]== 5 && [(BCSPIRServerEnvironment *)self serverType]== 4;
  }

  v4 = [(BCSPIRServerEnvironment *)self serverType];
  if ((v4 - 1) >= 2)
  {
    if (v4 == 4)
    {
      v5 = @"BCSWebPresentmentPermissionsPIREnableCaching";
      v6 = self;
      v7 = 1;
      goto LABEL_8;
    }

    return [(BCSPIRServerEnvironment *)self type]== 5 && [(BCSPIRServerEnvironment *)self serverType]== 4;
  }

  v5 = @"BCSWebPresentmentPIREnableCaching";
  v6 = self;
  v7 = 0;
LABEL_8:

  return [(BCSPIRServerEnvironment *)v6 _BOOLFromDefaultsForKey:v5 defaultValue:v7];
}

@end