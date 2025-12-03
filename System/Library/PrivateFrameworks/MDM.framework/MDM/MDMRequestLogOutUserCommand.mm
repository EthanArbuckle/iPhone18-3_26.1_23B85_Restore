@interface MDMRequestLogOutUserCommand
+ (id)request;
+ (unint64_t)requiredAccessRights;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)processRequest:(id)request completionHandler:(id)handler;
@end

@implementation MDMRequestLogOutUserCommand

+ (unint64_t)requiredAccessRights
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___MDMRequestLogOutUserCommand;
  return objc_msgSendSuper2(&v3, sel_requiredAccessRights);
}

+ (id)request
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serializeWithType:(signed __int16)type
{
  v3 = objc_opt_new();
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MDMRequestLogOutUserCommand;
  return [(RMModelPayloadBase *)&v4 copyWithZone:zone];
}

- (void)processRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__8;
  v31 = __Block_byref_object_dispose__8;
  v32 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentUser = [mEMORY[0x277D77BF8] currentUser];
  isLoginUser = [currentUser isLoginUser];

  if (isLoginUser)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = DMCErrorArray();
    v13 = [v11 DMCErrorWithDomain:*MEMORY[0x277D03480] code:12125 descriptionArray:v12 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];
    v14 = v22[5];
    v22[5] = v13;

    v15 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v22[5]];
    v16 = v28[5];
    v28[5] = v15;

    handlerCopy[2](handlerCopy, v28[5]);
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __73__MDMRequestLogOutUserCommand_Handler__processRequest_completionHandler___block_invoke;
    v17[3] = &unk_27982CBA8;
    v19 = &v21;
    v20 = &v27;
    v17[4] = self;
    v18 = handlerCopy;
    [mEMORY[0x277D77BF8] switchToLoginUserWithCompletionHandler:v17];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

void __73__MDMRequestLogOutUserCommand_Handler__processRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  if (v13)
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277D03480];
    v5 = DMCErrorArray();
    v6 = [v3 DMCErrorWithDomain:v4 code:12124 descriptionArray:v5 underlyingError:v13 errorType:{*MEMORY[0x277D032F8], 0}];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:*(*(*(a1 + 48) + 8) + 40)];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v11 = [*(a1 + 32) delegate];
    [v11 didInitiateSwitchUser];
  }

  v12 = *(*(*(a1 + 56) + 8) + 40);
  (*(*(a1 + 40) + 16))();
}

@end