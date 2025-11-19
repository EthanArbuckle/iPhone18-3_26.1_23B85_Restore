@interface FBSystemShellInitializationOptions
- (BOOL)isEqual:(id)a3;
- (FBSystemShellInitializationOptions)init;
- (id)_initWithOptions:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FBSystemShellInitializationOptions

- (id)_initWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(FBSystemShellInitializationOptions *)self init];
  v6 = v5;
  if (v5)
  {
    v5->_resetDarkBootState = *(v4 + 10);
    v5->_initializeReadyForInteraction = *(v4 + 8);
    v5->_shouldWaitForMigrator = *(v4 + 9);
    v5->_systemSleepInterval = *(v4 + 3);
    objc_storeStrong(&v5->_independentWatchdogPortName, *(v4 + 2));
    v6->_initializeDisplayManager = *(v4 + 11);
    v7 = [*(v4 + 4) copy];
    registerServicesBlock = v6->_registerServicesBlock;
    v6->_registerServicesBlock = v7;
  }

  return v6;
}

- (FBSystemShellInitializationOptions)init
{
  v3.receiver = self;
  v3.super_class = FBSystemShellInitializationOptions;
  result = [(FBSystemShellInitializationOptions *)&v3 init];
  if (result)
  {
    result->_shouldWaitForMigrator = 1;
    result->_initializeDisplayManager = 1;
    result->_systemSleepInterval = 1.0;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:self->_resetDarkBootState];
  v5 = [v3 appendBool:self->_initializeReadyForInteraction];
  v6 = [v3 appendBool:self->_shouldWaitForMigrator];
  v7 = [v3 appendBool:self->_initializeDisplayManager];
  v8 = [v3 appendDouble:self->_systemSleepInterval];
  v9 = MEMORY[0x1AC572E40](self->_registerServicesBlock);
  v10 = [v3 appendObject:v9];

  v11 = [v3 appendObject:self->_independentWatchdogPortName];
  v12 = [v3 hash];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      initializeReadyForInteraction = self->_initializeReadyForInteraction;
      v7 = v5->_initializeReadyForInteraction;
      if (!BSEqualBools())
      {
        goto LABEL_12;
      }

      resetDarkBootState = self->_resetDarkBootState;
      v9 = v5->_resetDarkBootState;
      if (!BSEqualBools())
      {
        goto LABEL_12;
      }

      shouldWaitForMigrator = self->_shouldWaitForMigrator;
      v11 = v5->_shouldWaitForMigrator;
      if (BSEqualBools() && (initializeDisplayManager = self->_initializeDisplayManager, v13 = v5->_initializeDisplayManager, BSEqualBools()) && (systemSleepInterval = self->_systemSleepInterval, v15 = v5->_systemSleepInterval, BSFloatEqualToFloat()))
      {
        v16 = MEMORY[0x1AC572E40](self->_registerServicesBlock);
        v17 = MEMORY[0x1AC572E40](v5->_registerServicesBlock);
        if (BSEqualObjects())
        {
          independentWatchdogPortName = self->_independentWatchdogPortName;
          v19 = v5->_independentWatchdogPortName;
          v20 = BSEqualObjects();
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
LABEL_12:
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [FBMutableSystemShellInitializationOptions alloc];

  return [(FBSystemShellInitializationOptions *)v4 _initWithOptions:self];
}

@end