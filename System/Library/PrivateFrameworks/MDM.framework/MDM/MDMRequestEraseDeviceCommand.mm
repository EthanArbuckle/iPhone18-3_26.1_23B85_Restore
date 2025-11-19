@interface MDMRequestEraseDeviceCommand
+ (id)requestWithPreserveDataPlan:(id)a3 disallowProximitySetup:(id)a4 PIN:(id)a5 obliterationBehavior:(id)a6 returnToService:(id)a7;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)_eraseDeviceFailedToEraseErrorWithUnderlayingError:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)processRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation MDMRequestEraseDeviceCommand

+ (id)requestWithPreserveDataPlan:(id)a3 disallowProximitySetup:(id)a4 PIN:(id)a5 obliterationBehavior:(id)a6 returnToService:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_new();
  v17 = v16;
  v18 = MEMORY[0x277CBEC28];
  if (v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = MEMORY[0x277CBEC28];
  }

  [v16 setCommandPreserveDataPlan:v19];

  if (v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = v18;
  }

  [v17 setCommandDisallowProximitySetup:v20];

  [v17 setCommandPIN:v13];
  [v17 setCommandObliterationBehavior:v12];

  [v17 setCommandReturnToService:v11];

  return v17;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  if ([(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"PreserveDataPlan" forKeyPath:@"commandPreserveDataPlan" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"DisallowProximitySetup" forKeyPath:@"commandDisallowProximitySetup" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"PIN" forKeyPath:@"commandPIN" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"ObliterationBehavior" forKeyPath:@"commandObliterationBehavior" isRequired:0 defaultValue:0 error:a5])
  {
    LOWORD(v11) = a4;
    v9 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"ReturnToService" forKeyPath:@"commandReturnToService" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v11 error:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(MDMRequestEraseDeviceCommand *)self commandPreserveDataPlan];
  v7 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"PreserveDataPlan" value:v6 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v8 = [(MDMRequestEraseDeviceCommand *)self commandDisallowProximitySetup];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"DisallowProximitySetup" value:v8 isRequired:0 defaultValue:v7];

  v9 = [(MDMRequestEraseDeviceCommand *)self commandPIN];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"PIN" value:v9 isRequired:0 defaultValue:0];

  v10 = [(MDMRequestEraseDeviceCommand *)self commandObliterationBehavior];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ObliterationBehavior" value:v10 isRequired:0 defaultValue:0];

  v11 = [(MDMRequestEraseDeviceCommand *)self commandReturnToService];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__MDMRequestEraseDeviceCommand_serializeWithType___block_invoke;
  v14[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v15 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"ReturnToService" value:v11 dictSerializer:v14 isRequired:0 defaultValue:0];

  v12 = [v5 copy];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = MDMRequestEraseDeviceCommand;
  v4 = [(RMModelPayloadBase *)&v16 copyWithZone:a3];
  v5 = [(NSNumber *)self->_commandPreserveDataPlan copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSNumber *)self->_commandDisallowProximitySetup copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_commandPIN copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSString *)self->_commandObliterationBehavior copy];
  v12 = v4[9];
  v4[9] = v11;

  v13 = [(MDMRequestEraseDeviceCommand_ReturnToService *)self->_commandReturnToService copy];
  v14 = v4[10];
  v4[10] = v13;

  return v4;
}

- (void)processRequest:(id)a3 completionHandler:(id)a4
{
  v27 = a3;
  v6 = a4;
  v7 = [(MDMRequestEraseDeviceCommand *)self commandPreserveDataPlan];
  v8 = [v7 BOOLValue];

  v9 = [(MDMRequestEraseDeviceCommand *)self commandDisallowProximitySetup];
  v10 = [v9 BOOLValue];

  v11 = [(MDMRequestEraseDeviceCommand *)self commandReturnToService];
  v12 = [v11 commandEnabled];
  v13 = [v12 BOOLValue];

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__7;
  v36 = __Block_byref_object_dispose__7;
  v37 = 0;
  v14 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__MDMRequestEraseDeviceCommand_Handler__processRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_27982CB80;
  v31 = &v32;
  aBlock[4] = self;
  v15 = v14;
  v30 = v15;
  v16 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __74__MDMRequestEraseDeviceCommand_Handler__processRequest_completionHandler___block_invoke_1;
  v28[3] = &unk_27982BA78;
  v28[4] = self;
  v17 = _Block_copy(v28);
  if (v13)
  {
    v25 = v10;
    v26 = v8;
    v18 = [(MDMRequestEraseDeviceCommand *)self commandReturnToService];
    v19 = [v18 commandMDMProfileData];
    v20 = [(MDMRequestEraseDeviceCommand *)self commandReturnToService];
    v21 = [v20 commandWiFiProfileData];
    v22 = [(MDMRequestEraseDeviceCommand *)self commandReturnToService];
    v23 = [v22 commandBootstrapToken];
    [MDMReturnToServiceUtilities triggerReturnToServiceObliterationWithPreserveDataPlan:v26 disallowProximitySetup:v25 mdmProfileData:v19 wifiProfileData:v21 bootstrapToken:v23 preObliterationAction:v17 completionHandler:v16];
  }

  else
  {
    [MDMObliterationUtilities obliterateDeviceWithPreserveDataPlan:v8 disallowProximitySetup:v10 preObliterationAction:v17 completionHander:v16];
  }

  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v24 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v33[5]];
  v6[2](v6, v24);

  _Block_object_dispose(&v32, 8);
}

intptr_t __74__MDMRequestEraseDeviceCommand_Handler__processRequest_completionHandler___block_invoke(intptr_t result, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = result;
    v4 = [*(result + 32) _eraseDeviceFailedToEraseErrorWithUnderlayingError:?];
    v5 = *(*(v3 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(v3 + 48) + 8) + 40);
      v9 = v7;
      v10 = [v8 DMCVerboseDescription];
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "Could not erase device: %{public}@", &v12, 0xCu);
    }

    result = dispatch_semaphore_signal(*(v3 + 40));
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __74__MDMRequestEraseDeviceCommand_Handler__processRequest_completionHandler___block_invoke_1(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v1 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  [v2 willTerminateProcess:v1];
}

- (id)_eraseDeviceFailedToEraseErrorWithUnderlayingError:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = a3;
  v6 = DMCErrorArray();
  v7 = [v3 DMCErrorWithDomain:v4 code:12089 descriptionArray:v6 underlyingError:v5 errorType:{*MEMORY[0x277D032F8], 0}];

  return v7;
}

@end