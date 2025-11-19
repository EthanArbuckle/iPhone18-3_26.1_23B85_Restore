@interface FBSDisplayLayoutService
@end

@implementation FBSDisplayLayoutService

void __50___FBSDisplayLayoutService__initWithEndpoint_qos___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 setQueue:v3];
  v5 = +[FBSDisplayLayoutMonitor interface];
  [v4 setInterface:v5];

  [v4 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50___FBSDisplayLayoutService__initWithEndpoint_qos___block_invoke_3;
  v8[3] = &unk_1E76BE680;
  v9 = *(a1 + 32);
  [v4 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50___FBSDisplayLayoutService__initWithEndpoint_qos___block_invoke_4;
  v6[3] = &unk_1E76BE680;
  v7 = *(a1 + 32);
  [v4 setInvalidationHandler:v6];
}

void __50___FBSDisplayLayoutService__initWithEndpoint_qos___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _noteDisconnected];
  [v3 activate];
}

void __47___FBSDisplayLayoutService_addObserver_forKey___block_invoke(void *a1)
{
  v2 = a1 + 4;
  os_unfair_lock_lock((a1[4] + 32));
  v3 = *(*v2 + 48);
  v4 = *v2;
  if (v2[3] == *(*v2 + 56))
  {
    v5 = [*(v4 + 40) objectForKey:a1[5]];
    v6 = a1[6];

    os_unfair_lock_unlock((a1[4] + 32));
    if (v5 == v6)
    {
      if (!a1[7])
      {
        v7 = FBLogCommon();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __47___FBSDisplayLayoutService_addObserver_forKey___block_invoke_cold_1(v2, v7);
        }
      }

      (*(a1[6] + 16))();
    }
  }

  else
  {
    os_unfair_lock_unlock((v4 + 32));
  }
}

void __47___FBSDisplayLayoutService_addObserver_forKey___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*(*a1 + 8) instance];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_ERROR, "FBSDisplayLayoutService: timed out waiting for initial layout update from %{public}@; publishing nil.", &v4, 0xCu);
}

@end