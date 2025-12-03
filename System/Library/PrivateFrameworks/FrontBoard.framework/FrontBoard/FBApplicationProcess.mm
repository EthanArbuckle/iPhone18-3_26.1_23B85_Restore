@interface FBApplicationProcess
+ (id)_internalDebugEnvironmentVariables;
- (id)_createBootstrapContext;
- (void)_bootstrapDidComplete;
- (void)_finishInit;
@end

@implementation FBApplicationProcess

- (void)_finishInit
{
  if (![(FBProcessExecutionContext *)self->super._executionContext launchIntent])
  {
    pid = self->super._pid;
    if (pid != getpid())
    {
      executionContext = self->super._executionContext;
      if (executionContext)
      {
        v5 = [(FBProcessExecutionContext *)executionContext mutableCopy];
      }

      else
      {
        v5 = objc_alloc_init(FBMutableProcessExecutionContext);
      }

      v6 = v5;
      [(FBProcessExecutionContext *)v5 setLaunchIntent:2];
      v7 = [(FBMutableProcessExecutionContext *)v6 copy];
      v8 = self->super._executionContext;
      self->super._executionContext = v7;
    }
  }

  v9.receiver = self;
  v9.super_class = FBApplicationProcess;
  [(FBProcess *)&v9 _finishInit];
}

- (id)_createBootstrapContext
{
  if ([(FBProcess *)self isCurrentProcess])
  {
    v19.receiver = self;
    v19.super_class = FBApplicationProcess;
    _createBootstrapContext = [(FBProcess *)&v19 _createBootstrapContext];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = FBApplicationProcess;
    _createBootstrapContext = [(FBProcess *)&v18 _createBootstrapContext];
    executionContext = [(FBProcess *)self executionContext];
    if (!self->super._rbsHandle)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      environmentAliases = [MEMORY[0x1E698E6D0] environmentAliases];
      environmentRepresentation = [environmentAliases environmentRepresentation];
      [dictionary addEntriesFromDictionary:environmentRepresentation];

      environment = [executionContext environment];
      [dictionary addEntriesFromDictionary:environment];

      v9 = +[FBApplicationProcess _internalDebugEnvironmentVariables];
      [dictionary addEntriesFromDictionary:v9];

      arguments = [executionContext arguments];
      standardOutputURL = [executionContext standardOutputURL];
      path = [standardOutputURL path];

      standardErrorURL = [executionContext standardErrorURL];
      path2 = [standardErrorURL path];

      LODWORD(standardErrorURL) = [executionContext waitForDebugger];
      disableASLR = [executionContext disableASLR];
      [_createBootstrapContext setArguments:arguments];
      if ([dictionary count])
      {
        [_createBootstrapContext _setAdditionalEnvironment:dictionary];
      }

      [_createBootstrapContext setStandardOutputPath:path];
      [_createBootstrapContext setStandardErrorPath:path2];
      if (disableASLR)
      {
        standardErrorURL = standardErrorURL | 2;
      }

      else
      {
        standardErrorURL = standardErrorURL;
      }

      if ([executionContext enableMTE])
      {
        v16 = standardErrorURL | 0x80;
      }

      else
      {
        v16 = standardErrorURL;
      }

      [_createBootstrapContext setExecutionOptions:v16];
    }
  }

  return _createBootstrapContext;
}

+ (id)_internalDebugEnvironmentVariables
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (CFPreferencesGetAppBooleanValue(@"FBMallocStackLogging", @"com.apple.frontboard", 0) || CFPreferencesGetAppBooleanValue(@"FBMallocStackLoggingAlways", @"com.apple.frontboard", 0))
  {
    [v2 setObject:@"1" forKey:@"MallocStackLogging"];
    CFPreferencesSetAppValue(@"FBMallocStackLogging", 0, @"com.apple.frontboard");
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  if (CFPreferencesGetAppBooleanValue(@"FBMallocScribble", @"com.apple.frontboard", 0) || CFPreferencesGetAppBooleanValue(@"FBMallocScribbleAlways", @"com.apple.frontboard", 0))
  {
    [v2 setObject:@"1" forKey:@"MallocScribble"];
    CFPreferencesSetAppValue(@"FBMallocScribble", 0, @"com.apple.frontboard");
    v3 = 1;
  }

  if (CFPreferencesGetAppBooleanValue(@"FBMallocGuardEdges", @"com.apple.frontboard", 0) || CFPreferencesGetAppBooleanValue(@"FBMallocGuardEdgesAlways", @"com.apple.frontboard", 0))
  {
    [v2 setObject:@"1" forKey:@"MallocGuardEdges"];
    CFPreferencesSetAppValue(@"FBMallocGuardEdges", 0, @"com.apple.frontboard");
    v3 = 1;
  }

  if (CFPreferencesGetAppBooleanValue(@"FBMallocCheckHeap", @"com.apple.frontboard", 0) || CFPreferencesGetAppBooleanValue(@"FBMallocCheckHeapAlways", @"com.apple.frontboard", 0))
  {
    [v2 setObject:@"1" forKey:@"MallocCheckHeapStart"];
    [v2 setObject:@"1" forKey:@"MallocCheckHeapAbort"];
    [v2 setObject:@"1" forKey:@"MallocErrorAbort"];
    [v2 setObject:@"1" forKey:@"MallocScribble"];
    CFPreferencesSetAppValue(@"FBMallocCheckHeap", 0, @"com.apple.frontboard");
    v3 = 1;
  }

  if (CFPreferencesGetAppBooleanValue(@"FBGuardMalloc", @"com.apple.frontboard", 0) || CFPreferencesGetAppBooleanValue(@"FBGuardMallocAlways", @"com.apple.frontboard", 0))
  {
    [v2 setObject:@"/usr/lib/libgmalloc.dylib" forKey:@"DYLD_INSERT_LIBRARIES"];
    CFPreferencesSetAppValue(@"FBGuardMalloc", 0, @"com.apple.frontboard");
    v3 = 1;
  }

  if (CFPreferencesGetAppBooleanValue(@"FBZombieEnabled", @"com.apple.frontboard", 0) || CFPreferencesGetAppBooleanValue(@"FBZombieEnabledAlways", @"com.apple.frontboard", 0))
  {
    [v2 setObject:@"YES" forKey:@"NSZombieEnabled"];
    CFPreferencesSetAppValue(@"FBZombieEnabled", 0, @"com.apple.frontboard");
    v3 = 1;
  }

  if (CFPreferencesGetAppBooleanValue(@"FBDeallocateZombies", @"com.apple.frontboard", 0) || CFPreferencesGetAppBooleanValue(@"FBDeallocateZombiesAlways", @"com.apple.frontboard", 0))
  {
    [v2 setObject:@"YES" forKey:@"NSDeallocateZombies"];
    CFPreferencesSetAppValue(@"FBDeallocateZombies", 0, @"com.apple.frontboard");
    v3 = 1;
  }

  if (CFPreferencesGetAppBooleanValue(@"FBSQLiteAutoTrace", @"com.apple.frontboard", 0) || CFPreferencesGetAppBooleanValue(@"FBSQLiteAutoTraceAlways", @"com.apple.frontboard", 0))
  {
    [v2 setObject:@"1" forKey:@"SQLITE_AUTO_TRACE"];
    CFPreferencesSetAppValue(@"FBSQLiteAutoTrace", 0, @"com.apple.frontboard");
    v3 = 1;
  }

  if (CFPreferencesGetAppBooleanValue(@"FBDYLDRegionPrivate", @"com.apple.frontboard", 0) || CFPreferencesGetAppBooleanValue(@"FBDYLDRegionPrivateAlways", @"com.apple.frontboard", 0))
  {
    [v2 setObject:@"private" forKey:@"DYLD_SHARED_REGION"];
    CFPreferencesSetAppValue(@"FBDYLDRegionPrivate", 0, @"com.apple.frontboard");
    v3 = 1;
  }

  v7 = CFPreferencesCopyAppValue(@"FBDYLDAlternateSharedCacheDir", @"com.apple.frontboard");
  if (v7)
  {
    CFPreferencesSetAppValue(@"FBDYLDAlternateSharedCacheDir", 0, @"com.apple.frontboard");
    v3 = 1;
    v4 = v7;
  }

  else
  {
    v4 = CFPreferencesCopyAppValue(@"FBDYLDAlternateSharedCacheDirAlways", @"com.apple.frontboard");
    v7 = v4;
    if (!v4)
    {
      goto LABEL_33;
    }
  }

  v5 = CFGetTypeID(v4);
  if (v5 == CFStringGetTypeID())
  {
    [v2 setObject:v7 forKey:@"DYLD_SHARED_CACHE_DIR"];
    [v2 setObject:@"private" forKey:@"DYLD_SHARED_REGION"];
  }

LABEL_33:
  if (v3)
  {
    CFPreferencesSynchronize(@"com.apple.frontboard", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  }

  fbs_release();

  return v2;
}

- (void)_bootstrapDidComplete
{
  rbsHandle = [(FBProcess *)self rbsHandle];
  if (rbsHandle)
  {
    v4 = [[FBProcessCPUStatistics alloc] initWithProcessHandle:rbsHandle];
    cpuStatistics = self->_cpuStatistics;
    self->_cpuStatistics = v4;
  }

  v6.receiver = self;
  v6.super_class = FBApplicationProcess;
  [(FBProcess *)&v6 _bootstrapDidComplete];
}

@end