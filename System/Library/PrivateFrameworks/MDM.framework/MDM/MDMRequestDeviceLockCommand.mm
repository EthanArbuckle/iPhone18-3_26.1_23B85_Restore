@interface MDMRequestDeviceLockCommand
+ (id)requestWithMessage:(id)a3 phoneNumber:(id)a4 PIN:(id)a5;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)processRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation MDMRequestDeviceLockCommand

+ (id)requestWithMessage:(id)a3 phoneNumber:(id)a4 PIN:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setCommandMessage:v9];

  [v10 setCommandPhoneNumber:v8];
  [v10 setCommandPIN:v7];

  return v10;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Message" forKeyPath:@"commandMessage" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"PhoneNumber" forKeyPath:@"commandPhoneNumber" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"PIN" forKeyPath:@"commandPIN" isRequired:0 defaultValue:0 error:a5];

  return v8;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(MDMRequestDeviceLockCommand *)self commandMessage];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Message" value:v5 isRequired:0 defaultValue:0];

  v6 = [(MDMRequestDeviceLockCommand *)self commandPhoneNumber];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"PhoneNumber" value:v6 isRequired:0 defaultValue:0];

  v7 = [(MDMRequestDeviceLockCommand *)self commandPIN];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"PIN" value:v7 isRequired:0 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = MDMRequestDeviceLockCommand;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
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

- (void)processRequest:(id)a3 completionHandler:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(MDMRequestDeviceLockCommand *)self commandMessage];
  v7 = [(MDMRequestDeviceLockCommand *)self commandPhoneNumber];
  v8 = [MDMFindMyUtilities lockDeviceWithMessage:v6 phoneNumber:v7];

  v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v12 = @"MessageResult";
  v13[0] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v9 addEntriesFromDictionary:v10];

  v5[2](v5, v9);
  v11 = *MEMORY[0x277D85DE8];
}

@end