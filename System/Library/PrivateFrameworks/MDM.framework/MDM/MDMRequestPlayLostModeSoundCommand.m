@interface MDMRequestPlayLostModeSoundCommand
+ (id)request;
+ (unint64_t)requiredAccessRights;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)processRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation MDMRequestPlayLostModeSoundCommand

+ (unint64_t)requiredAccessRights
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___MDMRequestPlayLostModeSoundCommand;
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
  v4.super_class = MDMRequestPlayLostModeSoundCommand;
  return [(RMModelPayloadBase *)&v4 copyWithZone:a3];
}

- (void)processRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__9;
  v32 = __Block_byref_object_dispose__9;
  v33 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__9;
  v26 = __Block_byref_object_dispose__9;
  v27 = 0;
  v7 = [MEMORY[0x277D08F78] sharedInstance];
  v8 = [v7 isManagedLostModeActive];

  if (v8)
  {
    v9 = [MEMORY[0x277D08F78] sharedInstance];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __80__MDMRequestPlayLostModeSoundCommand_Handler__processRequest_completionHandler___block_invoke;
    v17[3] = &unk_27982CB18;
    v19 = &v22;
    v20 = &v28;
    v18 = v6;
    [v9 playSoundWithOptions:0 completion:v17];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = DMCErrorArray();
    v12 = [v10 DMCErrorWithDomain:*MEMORY[0x277D03480] code:12067 descriptionArray:v11 errorType:{*MEMORY[0x277D032F8], 0}];
    v13 = v23[5];
    v23[5] = v12;

    v14 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_ERROR, "Could not play sound in MDM Lost Mode: Device is not in lost mode.", buf, 2u);
    }

    v15 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v23[5]];
    v16 = v29[5];
    v29[5] = v15;

    (*(v6 + 2))(v6, v29[5]);
  }

  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
}

uint64_t __80__MDMRequestPlayLostModeSoundCommand_Handler__processRequest_completionHandler___block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277D03480];
    v5 = a2;
    v6 = DMCErrorArray();
    v7 = [v3 DMCErrorWithDomain:v4 code:12080 descriptionArray:v6 underlyingError:v5 errorType:{*MEMORY[0x277D032F8], 0}];

    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1[5] + 8) + 40);
      v12 = v10;
      v13 = [v11 DMCVerboseDescription];
      *buf = 138543362;
      v21 = v13;
      _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_ERROR, "Could not to enable MDM Lost Mode: %{public}@", buf, 0xCu);
    }

    v14 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:*(*(a1[5] + 8) + 40)];
    v15 = *(a1[6] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = *(*(a1[6] + 8) + 40);
  result = (*(a1[4] + 16))();
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

@end