@interface MDMRequestEnableLostModeCommand
+ (id)requestWithMessage:(id)a3 phoneNumber:(id)a4 footnote:(id)a5;
+ (unint64_t)requiredAccessRights;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)_responseForError:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)processRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation MDMRequestEnableLostModeCommand

+ (unint64_t)requiredAccessRights
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___MDMRequestEnableLostModeCommand;
  return objc_msgSendSuper2(&v3, sel_requiredAccessRights);
}

+ (id)requestWithMessage:(id)a3 phoneNumber:(id)a4 footnote:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setCommandMessage:v9];

  [v10 setCommandPhoneNumber:v8];
  [v10 setCommandFootnote:v7];

  return v10;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Message" forKeyPath:@"commandMessage" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"PhoneNumber" forKeyPath:@"commandPhoneNumber" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Footnote" forKeyPath:@"commandFootnote" isRequired:0 defaultValue:0 error:a5];

  return v8;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(MDMRequestEnableLostModeCommand *)self commandMessage];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Message" value:v5 isRequired:0 defaultValue:0];

  v6 = [(MDMRequestEnableLostModeCommand *)self commandPhoneNumber];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"PhoneNumber" value:v6 isRequired:0 defaultValue:0];

  v7 = [(MDMRequestEnableLostModeCommand *)self commandFootnote];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Footnote" value:v7 isRequired:0 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = MDMRequestEnableLostModeCommand;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
  v5 = [(NSString *)self->_commandMessage copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_commandPhoneNumber copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_commandFootnote copy];
  v10 = v4[8];
  v4[8] = v9;

  return v4;
}

- (void)processRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [(MDMRequestEnableLostModeCommand *)self commandMessage];
  if (v6)
  {
  }

  else
  {
    v7 = [(MDMRequestEnableLostModeCommand *)self commandPhoneNumber];

    if (!v7)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D03480];
      v13 = DMCErrorArray();
      v14 = [v11 DMCErrorWithDomain:v12 code:12066 descriptionArray:v13 errorType:{*MEMORY[0x277D032F8], 0}];
      v15 = [(MDMRequestEnableLostModeCommand *)self _responseForError:v14];
      v5[2](v5, v15);

      goto LABEL_5;
    }
  }

  v8 = [(MDMRequestEnableLostModeCommand *)self commandMessage];
  v9 = [(MDMRequestEnableLostModeCommand *)self commandPhoneNumber];
  v10 = [(MDMRequestEnableLostModeCommand *)self commandFootnote];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__MDMRequestEnableLostModeCommand_Handler__processRequest_completionHandler___block_invoke;
  v16[3] = &unk_27982BF78;
  v16[4] = self;
  v17 = v5;
  [MDMFindMyUtilities enableManagedLostModeWithMessage:v8 phoneNumber:v9 footnoteText:v10 completion:v16];

LABEL_5:
}

void __77__MDMRequestEnableLostModeCommand_Handler__processRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v11 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D03480];
    v8 = DMCErrorArray();
    v9 = [v6 DMCErrorWithDomain:v7 code:12066 descriptionArray:v8 underlyingError:v11 errorType:{*MEMORY[0x277D032F8], 0}];
    v10 = [v5 _responseForError:v9];
    (*(v4 + 16))(v4, v10);
  }

  else
  {
    v8 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    (*(v4 + 16))(v4, v8);
  }
}

- (id)_responseForError:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = [v3 DMCVerboseDescription];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "MDMRequestEnableLostModeCommand+Handler failed to enable MDM Lost Mode with error: %{public}@", &v10, 0xCu);
  }

  v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end