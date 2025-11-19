@interface MISystemAppState
+ (id)_systemAppStateFromURL:(id)a3;
+ (id)sharedList;
- (MISystemAppState)init;
- (id)_onQueue_retrieveSystemAppStateRestoringBackedUpState:(BOOL)a3;
- (id)_onQueue_systemAppStateList;
- (id)systemAppStateDictionaryRestoringBackedUpState:(BOOL)a3;
- (void)_onQueue_setSystemAppStateList:(id)a3;
- (void)addIdentifier:(id)a3 withState:(int)a4;
- (void)removeIdentifiers:(id)a3;
@end

@implementation MISystemAppState

- (MISystemAppState)init
{
  v7.receiver = self;
  v7.super_class = MISystemAppState;
  v2 = [(MISystemAppState *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MobileInstallation.SystemAppStateQueue", v3);
    appStateQueue = v2->_appStateQueue;
    v2->_appStateQueue = v4;
  }

  return v2;
}

+ (id)_systemAppStateFromURL:(id)a3
{
  v3 = a3;
  v15 = 0;
  v4 = [MEMORY[0x1E695DF90] MI_dictionaryWithContentsOfURL:v3 options:1 error:&v15];
  v5 = v15;
  v6 = v5;
  if (!v4)
  {
    v10 = [v5 domain];
    if ([v10 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v11 = [v6 code];

      if (v11 == 260)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v7 = objc_opt_class();
  v8 = objc_opt_class();
  if (MIDictionaryContainsOnlyClasses(v4, v7, v8))
  {
    v9 = v4;
    goto LABEL_15;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
LABEL_13:
    v12 = [v3 path];
    MOLogWrite();
  }

LABEL_14:
  v9 = objc_opt_new();
LABEL_15:
  v13 = v9;

  return v13;
}

+ (id)sharedList
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MISystemAppState_sharedList__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedList_onceToken != -1)
  {
    dispatch_once(&sharedList_onceToken, block);
  }

  v2 = sharedList_sharedList;

  return v2;
}

uint64_t __30__MISystemAppState_sharedList__block_invoke()
{
  sharedList_sharedList = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (id)_onQueue_systemAppStateList
{
  v3 = [(MISystemAppState *)self appStateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MISystemAppState *)self systemAppStateList];
  if (!v4)
  {
    v5 = +[MIDaemonConfiguration sharedInstance];
    v6 = [v5 systemAppInstallStateFilePath];

    v4 = [objc_opt_class() _systemAppStateFromURL:v6];
    [(MISystemAppState *)self setSystemAppStateList:v4];
  }

  return v4;
}

- (id)_onQueue_retrieveSystemAppStateRestoringBackedUpState:(BOOL)a3
{
  v3 = a3;
  v5 = [(MISystemAppState *)self appStateQueue];
  dispatch_assert_queue_V2(v5);

  if (v3)
  {
    v6 = +[MIDaemonConfiguration sharedInstance];
    v7 = [v6 backupSystemAppInstallStateFilePath];

    v8 = [objc_opt_class() _systemAppStateFromURL:v7];
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v11 = v8;
      MOLogWrite();
    }

    [(MISystemAppState *)self _onQueue_setSystemAppStateList:v8, v11];
    v9 = [(MISystemAppState *)self systemAppStateList];
  }

  else
  {
    v9 = [(MISystemAppState *)self _onQueue_systemAppStateList];
  }

  return v9;
}

- (void)_onQueue_setSystemAppStateList:(id)a3
{
  v4 = a3;
  v5 = [(MISystemAppState *)self appStateQueue];
  dispatch_assert_queue_V2(v5);

  [(MISystemAppState *)self setSystemAppStateList:v4];
  v6 = +[MIDaemonConfiguration sharedInstance];
  v7 = [v6 systemAppInstallStateFilePath];

  if (v4 && [v4 count])
  {
    v8 = [(MISystemAppState *)self systemAppStateList];
    v14 = 0;
    v9 = [v8 MI_writeToURL:v7 format:200 options:268435457 error:&v14];
    v10 = v14;

    if ((v9 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v13 = [v7 path];
      MOLogWrite();
    }
  }

  else
  {
    v11 = +[MIFileManager defaultManager];
    v15 = 0;
    v12 = [v11 removeItemAtURL:v7 error:&v15];
    v10 = v15;

    if ((v12 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      MOLogWrite();
    }
  }
}

- (id)systemAppStateDictionaryRestoringBackedUpState:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = 0;
  v5 = [(MISystemAppState *)self appStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MISystemAppState_systemAppStateDictionaryRestoringBackedUpState___block_invoke;
  block[3] = &unk_1E7AE1A48;
  v9 = a3;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(v5, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __67__MISystemAppState_systemAppStateDictionaryRestoringBackedUpState___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _onQueue_retrieveSystemAppStateRestoringBackedUpState:*(a1 + 48)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addIdentifier:(id)a3 withState:(int)a4
{
  v6 = a3;
  v7 = [(MISystemAppState *)self appStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MISystemAppState_addIdentifier_withState___block_invoke;
  block[3] = &unk_1E7AE1A70;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(v7, block);
}

void __44__MISystemAppState_addIdentifier_withState___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _onQueue_systemAppStateList];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 unsignedIntegerValue];
  v4 = *(a1 + 48);

  if (v4 != v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
    [v6 setObject:v5 forKeyedSubscript:*(a1 + 40)];

    [*(a1 + 32) _onQueue_setSystemAppStateList:v6];
  }
}

- (void)removeIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(MISystemAppState *)self appStateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MISystemAppState_removeIdentifiers___block_invoke;
  v7[3] = &unk_1E7AE1A98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __38__MISystemAppState_removeIdentifiers___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _onQueue_systemAppStateList];
  v2 = [v3 count];
  [v3 removeObjectsForKeys:*(a1 + 40)];
  if (v2 != [v3 count])
  {
    [*(a1 + 32) _onQueue_setSystemAppStateList:v3];
  }
}

@end