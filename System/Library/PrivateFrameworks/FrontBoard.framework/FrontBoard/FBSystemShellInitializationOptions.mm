@interface FBSystemShellInitializationOptions
- (BOOL)isEqual:(id)equal;
- (FBSystemShellInitializationOptions)init;
- (id)_initWithOptions:(id)options;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FBSystemShellInitializationOptions

- (id)_initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [(FBSystemShellInitializationOptions *)self init];
  v6 = v5;
  if (v5)
  {
    v5->_resetDarkBootState = *(optionsCopy + 10);
    v5->_initializeReadyForInteraction = *(optionsCopy + 8);
    v5->_shouldWaitForMigrator = *(optionsCopy + 9);
    v5->_systemSleepInterval = *(optionsCopy + 3);
    objc_storeStrong(&v5->_independentWatchdogPortName, *(optionsCopy + 2));
    v6->_initializeDisplayManager = *(optionsCopy + 11);
    v7 = [*(optionsCopy + 4) copy];
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:self->_resetDarkBootState];
  v5 = [builder appendBool:self->_initializeReadyForInteraction];
  v6 = [builder appendBool:self->_shouldWaitForMigrator];
  v7 = [builder appendBool:self->_initializeDisplayManager];
  v8 = [builder appendDouble:self->_systemSleepInterval];
  v9 = MEMORY[0x1AC572E40](self->_registerServicesBlock);
  v10 = [builder appendObject:v9];

  v11 = [builder appendObject:self->_independentWatchdogPortName];
  v12 = [builder hash];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [FBMutableSystemShellInitializationOptions alloc];

  return [(FBSystemShellInitializationOptions *)v4 _initWithOptions:self];
}

@end