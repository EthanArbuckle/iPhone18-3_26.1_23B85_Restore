@interface CSFSoftLinking
+ (BOOL)isDeviceEnrolledWithDeKOTA:(id *)a3;
+ (void)registerForLoggedOutPushNotifications;
+ (void)unregisterForLoggedOutPushNotifications;
@end

@implementation CSFSoftLinking

+ (void)registerForLoggedOutPushNotifications
{
  v2 = _CSFGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF47C000, v2, OS_LOG_TYPE_DEFAULT, "Registering for logged out push notifications.", v4, 2u);
  }

  v3 = objc_alloc_init(getINDaemonConnectionClass());
  [v3 registerDeviceForLoggedOutiCloudNotificationsWithReason:8 completion:&__block_literal_global_4];
}

void __55__CSFSoftLinking_registerForLoggedOutPushNotifications__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = _CSFGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__CSFSoftLinking_registerForLoggedOutPushNotifications__block_invoke_cold_1(v4, v5);
    }
  }

  v6 = _CSFGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1DF47C000, v6, OS_LOG_TYPE_DEFAULT, "Registering for logged out push was successful? %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)unregisterForLoggedOutPushNotifications
{
  v2 = _CSFGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF47C000, v2, OS_LOG_TYPE_DEFAULT, "Unregistering for logged out push notifications.", v4, 2u);
  }

  v3 = objc_alloc_init(getINDaemonConnectionClass());
  [v3 unregisterDeviceFromLoggedOutiCloudNotificationsWithCompletion:&__block_literal_global_6];
}

void __57__CSFSoftLinking_unregisterForLoggedOutPushNotifications__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = _CSFGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__CSFSoftLinking_unregisterForLoggedOutPushNotifications__block_invoke_cold_1(v4, v5);
    }
  }

  v6 = _CSFGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1DF47C000, v6, OS_LOG_TYPE_DEFAULT, "Unregistering for logged out push was successful? %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isDeviceEnrolledWithDeKOTA:(id *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  MSDKDemoStateClass = getMSDKDemoStateClass();
  v5 = _CSFGetLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (MSDKDemoStateClass)
  {
    if (v6)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_1DF47C000, v5, OS_LOG_TYPE_DEFAULT, "CSFSoftLinking isDeviceEnrolledWithDeKOTA querying MSDKDemoState", v11, 2u);
    }

    v5 = [getMSDKDemoStateClass() sharedInstance];
    v7 = [v5 isDeviceEnrolledWithDeKOTA:a3];
    v8 = _CSFGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v7;
      _os_log_impl(&dword_1DF47C000, v8, OS_LOG_TYPE_DEFAULT, "CSFSoftLinking isDeviceEnrolledWithDeKOTA %d", v11, 8u);
    }
  }

  else
  {
    if (v6)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_1DF47C000, v5, OS_LOG_TYPE_DEFAULT, "CSFSoftLinking isDeviceEnrolledWithDeKOTA no access to MSDKDemoState. Returning false", v11, 2u);
    }

    LOBYTE(v7) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

void __55__CSFSoftLinking_registerForLoggedOutPushNotifications__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF47C000, a2, OS_LOG_TYPE_ERROR, "Error while registering for logged out push notifications: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __57__CSFSoftLinking_unregisterForLoggedOutPushNotifications__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF47C000, a2, OS_LOG_TYPE_ERROR, "Error while unregistering for logged out push notifications: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end