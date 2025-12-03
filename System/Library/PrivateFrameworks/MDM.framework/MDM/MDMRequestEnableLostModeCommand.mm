@interface MDMRequestEnableLostModeCommand
+ (id)requestWithMessage:(id)message phoneNumber:(id)number footnote:(id)footnote;
+ (unint64_t)requiredAccessRights;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)_responseForError:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)processRequest:(id)request completionHandler:(id)handler;
@end

@implementation MDMRequestEnableLostModeCommand

+ (unint64_t)requiredAccessRights
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___MDMRequestEnableLostModeCommand;
  return objc_msgSendSuper2(&v3, sel_requiredAccessRights);
}

+ (id)requestWithMessage:(id)message phoneNumber:(id)number footnote:(id)footnote
{
  footnoteCopy = footnote;
  numberCopy = number;
  messageCopy = message;
  v10 = objc_opt_new();
  [v10 setCommandMessage:messageCopy];

  [v10 setCommandPhoneNumber:numberCopy];
  [v10 setCommandFootnote:footnoteCopy];

  return v10;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Message" forKeyPath:@"commandMessage" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"PhoneNumber" forKeyPath:@"commandPhoneNumber" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Footnote" forKeyPath:@"commandFootnote" isRequired:0 defaultValue:0 error:error];

  return v8;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  commandMessage = [(MDMRequestEnableLostModeCommand *)self commandMessage];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Message" value:commandMessage isRequired:0 defaultValue:0];

  commandPhoneNumber = [(MDMRequestEnableLostModeCommand *)self commandPhoneNumber];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"PhoneNumber" value:commandPhoneNumber isRequired:0 defaultValue:0];

  commandFootnote = [(MDMRequestEnableLostModeCommand *)self commandFootnote];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Footnote" value:commandFootnote isRequired:0 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = MDMRequestEnableLostModeCommand;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
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

- (void)processRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  commandMessage = [(MDMRequestEnableLostModeCommand *)self commandMessage];
  if (commandMessage)
  {
  }

  else
  {
    commandPhoneNumber = [(MDMRequestEnableLostModeCommand *)self commandPhoneNumber];

    if (!commandPhoneNumber)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D03480];
      v13 = DMCErrorArray();
      v14 = [v11 DMCErrorWithDomain:v12 code:12066 descriptionArray:v13 errorType:{*MEMORY[0x277D032F8], 0}];
      v15 = [(MDMRequestEnableLostModeCommand *)self _responseForError:v14];
      handlerCopy[2](handlerCopy, v15);

      goto LABEL_5;
    }
  }

  commandMessage2 = [(MDMRequestEnableLostModeCommand *)self commandMessage];
  commandPhoneNumber2 = [(MDMRequestEnableLostModeCommand *)self commandPhoneNumber];
  commandFootnote = [(MDMRequestEnableLostModeCommand *)self commandFootnote];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__MDMRequestEnableLostModeCommand_Handler__processRequest_completionHandler___block_invoke;
  v16[3] = &unk_27982BF78;
  v16[4] = self;
  v17 = handlerCopy;
  [MDMFindMyUtilities enableManagedLostModeWithMessage:commandMessage2 phoneNumber:commandPhoneNumber2 footnoteText:commandFootnote completion:v16];

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

- (id)_responseForError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    dMCVerboseDescription = [errorCopy DMCVerboseDescription];
    v10 = 138543362;
    v11 = dMCVerboseDescription;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "MDMRequestEnableLostModeCommand+Handler failed to enable MDM Lost Mode with error: %{public}@", &v10, 0xCu);
  }

  v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:errorCopy];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end