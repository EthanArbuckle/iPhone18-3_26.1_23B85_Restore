@interface MDMRequestDisableLostModeCommand
+ (id)request;
+ (unint64_t)requiredAccessRights;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)processRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation MDMRequestDisableLostModeCommand

+ (unint64_t)requiredAccessRights
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___MDMRequestDisableLostModeCommand;
  return objc_msgSendSuper2(&v3, sel_requiredAccessRights);
}

+ (id)request
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serializeWithType:(signed __int16)a3
{
  v3 = objc_opt_new();
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = MDMRequestDisableLostModeCommand;
  return [(RMModelPayloadBase *)&v4 copyWithZone:a3];
}

- (void)processRequest:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__6;
  v20[4] = __Block_byref_object_dispose__6;
  v21 = 0;
  v7 = [MEMORY[0x277D08F78] sharedInstance];
  v8 = [v7 isManagedLostModeActive];

  if (v8)
  {
    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Disabling lost mode...", buf, 2u);
    }

    v10 = objc_alloc_init(MDMLostDeviceLocationManager);
    v11 = [(MDMLostDeviceLocationManager *)v10 lastLocationRequestedDateMessage];
    if (v11)
    {
      v12 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v11;
        _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "Device was located while in lost mode. Alerting user with message “%{public}@”", buf, 0xCu);
      }
    }

    v13 = [MEMORY[0x277D08F78] sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__MDMRequestDisableLostModeCommand_Handler__processRequest_completionHandler___block_invoke;
    v16[3] = &unk_27982CB18;
    v18 = v20;
    v19 = &v22;
    v17 = v6;
    [v13 disableManagedLostModeWithLocatedMessage:v11 completion:v16];
  }

  else
  {
    v14 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_DEFAULT, "Device is not in lost mode. Reporting success regardless.", buf, 2u);
    }

    (*(v6 + 2))(v6, v23[5]);
  }

  _Block_object_dispose(v20, 8);

  _Block_object_dispose(&v22, 8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __78__MDMRequestDisableLostModeCommand_Handler__processRequest_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277D03480];
    v5 = DMCErrorArray();
    v6 = [v3 DMCErrorWithDomain:v4 code:12069 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], 0}];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1[5] + 8) + 40);
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "Could not disable lost mode: %{public}@", buf, 0xCu);
    }

    v11 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:*(*(a1[5] + 8) + 40)];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = *(*(a1[6] + 8) + 40);
  result = (*(a1[4] + 16))();
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

@end