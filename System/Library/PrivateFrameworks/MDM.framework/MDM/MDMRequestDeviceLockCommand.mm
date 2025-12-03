@interface MDMRequestDeviceLockCommand
+ (id)requestWithMessage:(id)message phoneNumber:(id)number PIN:(id)n;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)processRequest:(id)request completionHandler:(id)handler;
@end

@implementation MDMRequestDeviceLockCommand

+ (id)requestWithMessage:(id)message phoneNumber:(id)number PIN:(id)n
{
  nCopy = n;
  numberCopy = number;
  messageCopy = message;
  v10 = objc_opt_new();
  [v10 setCommandMessage:messageCopy];

  [v10 setCommandPhoneNumber:numberCopy];
  [v10 setCommandPIN:nCopy];

  return v10;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Message" forKeyPath:@"commandMessage" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"PhoneNumber" forKeyPath:@"commandPhoneNumber" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"PIN" forKeyPath:@"commandPIN" isRequired:0 defaultValue:0 error:error];

  return v8;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  commandMessage = [(MDMRequestDeviceLockCommand *)self commandMessage];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Message" value:commandMessage isRequired:0 defaultValue:0];

  commandPhoneNumber = [(MDMRequestDeviceLockCommand *)self commandPhoneNumber];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"PhoneNumber" value:commandPhoneNumber isRequired:0 defaultValue:0];

  commandPIN = [(MDMRequestDeviceLockCommand *)self commandPIN];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"PIN" value:commandPIN isRequired:0 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = MDMRequestDeviceLockCommand;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
  v5 = [(NSString *)self->_commandMessage copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_commandPhoneNumber copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_commandPIN copy];
  v10 = v4[8];
  v4[8] = v9;

  return v4;
}

- (void)processRequest:(id)request completionHandler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  commandMessage = [(MDMRequestDeviceLockCommand *)self commandMessage];
  commandPhoneNumber = [(MDMRequestDeviceLockCommand *)self commandPhoneNumber];
  v8 = [MDMFindMyUtilities lockDeviceWithMessage:commandMessage phoneNumber:commandPhoneNumber];

  v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v12 = @"MessageResult";
  v13[0] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v9 addEntriesFromDictionary:v10];

  handlerCopy[2](handlerCopy, v9);
  v11 = *MEMORY[0x277D85DE8];
}

@end