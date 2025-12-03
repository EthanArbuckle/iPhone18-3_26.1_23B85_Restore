@interface MDMRequestEraseDeviceCommand
+ (id)requestWithPreserveDataPlan:(id)plan disallowProximitySetup:(id)setup PIN:(id)n obliterationBehavior:(id)behavior returnToService:(id)service;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)_eraseDeviceFailedToEraseErrorWithUnderlayingError:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)processRequest:(id)request completionHandler:(id)handler;
@end

@implementation MDMRequestEraseDeviceCommand

+ (id)requestWithPreserveDataPlan:(id)plan disallowProximitySetup:(id)setup PIN:(id)n obliterationBehavior:(id)behavior returnToService:(id)service
{
  serviceCopy = service;
  behaviorCopy = behavior;
  nCopy = n;
  setupCopy = setup;
  planCopy = plan;
  v16 = objc_opt_new();
  v17 = v16;
  v18 = MEMORY[0x277CBEC28];
  if (planCopy)
  {
    v19 = planCopy;
  }

  else
  {
    v19 = MEMORY[0x277CBEC28];
  }

  [v16 setCommandPreserveDataPlan:v19];

  if (setupCopy)
  {
    v20 = setupCopy;
  }

  else
  {
    v20 = v18;
  }

  [v17 setCommandDisallowProximitySetup:v20];

  [v17 setCommandPIN:nCopy];
  [v17 setCommandObliterationBehavior:behaviorCopy];

  [v17 setCommandReturnToService:serviceCopy];

  return v17;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  if ([(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"PreserveDataPlan" forKeyPath:@"commandPreserveDataPlan" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"DisallowProximitySetup" forKeyPath:@"commandDisallowProximitySetup" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"PIN" forKeyPath:@"commandPIN" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ObliterationBehavior" forKeyPath:@"commandObliterationBehavior" isRequired:0 defaultValue:0 error:error])
  {
    LOWORD(v11) = type;
    v9 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"ReturnToService" forKeyPath:@"commandReturnToService" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v11 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  commandPreserveDataPlan = [(MDMRequestEraseDeviceCommand *)self commandPreserveDataPlan];
  v7 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"PreserveDataPlan" value:commandPreserveDataPlan isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  commandDisallowProximitySetup = [(MDMRequestEraseDeviceCommand *)self commandDisallowProximitySetup];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"DisallowProximitySetup" value:commandDisallowProximitySetup isRequired:0 defaultValue:v7];

  commandPIN = [(MDMRequestEraseDeviceCommand *)self commandPIN];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"PIN" value:commandPIN isRequired:0 defaultValue:0];

  commandObliterationBehavior = [(MDMRequestEraseDeviceCommand *)self commandObliterationBehavior];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ObliterationBehavior" value:commandObliterationBehavior isRequired:0 defaultValue:0];

  commandReturnToService = [(MDMRequestEraseDeviceCommand *)self commandReturnToService];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__MDMRequestEraseDeviceCommand_serializeWithType___block_invoke;
  v14[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"ReturnToService" value:commandReturnToService dictSerializer:v14 isRequired:0 defaultValue:0];

  v12 = [v5 copy];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = MDMRequestEraseDeviceCommand;
  v4 = [(RMModelPayloadBase *)&v16 copyWithZone:zone];
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

- (void)processRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  commandPreserveDataPlan = [(MDMRequestEraseDeviceCommand *)self commandPreserveDataPlan];
  bOOLValue = [commandPreserveDataPlan BOOLValue];

  commandDisallowProximitySetup = [(MDMRequestEraseDeviceCommand *)self commandDisallowProximitySetup];
  bOOLValue2 = [commandDisallowProximitySetup BOOLValue];

  commandReturnToService = [(MDMRequestEraseDeviceCommand *)self commandReturnToService];
  commandEnabled = [commandReturnToService commandEnabled];
  bOOLValue3 = [commandEnabled BOOLValue];

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
  if (bOOLValue3)
  {
    v25 = bOOLValue2;
    v26 = bOOLValue;
    commandReturnToService2 = [(MDMRequestEraseDeviceCommand *)self commandReturnToService];
    commandMDMProfileData = [commandReturnToService2 commandMDMProfileData];
    commandReturnToService3 = [(MDMRequestEraseDeviceCommand *)self commandReturnToService];
    commandWiFiProfileData = [commandReturnToService3 commandWiFiProfileData];
    commandReturnToService4 = [(MDMRequestEraseDeviceCommand *)self commandReturnToService];
    commandBootstrapToken = [commandReturnToService4 commandBootstrapToken];
    [MDMReturnToServiceUtilities triggerReturnToServiceObliterationWithPreserveDataPlan:v26 disallowProximitySetup:v25 mdmProfileData:commandMDMProfileData wifiProfileData:commandWiFiProfileData bootstrapToken:commandBootstrapToken preObliterationAction:v17 completionHandler:v16];
  }

  else
  {
    [MDMObliterationUtilities obliterateDeviceWithPreserveDataPlan:bOOLValue disallowProximitySetup:bOOLValue2 preObliterationAction:v17 completionHander:v16];
  }

  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v24 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v33[5]];
  handlerCopy[2](handlerCopy, v24);

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

- (id)_eraseDeviceFailedToEraseErrorWithUnderlayingError:(id)error
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  errorCopy = error;
  v6 = DMCErrorArray();
  v7 = [v3 DMCErrorWithDomain:v4 code:12089 descriptionArray:v6 underlyingError:errorCopy errorType:{*MEMORY[0x277D032F8], 0}];

  return v7;
}

@end