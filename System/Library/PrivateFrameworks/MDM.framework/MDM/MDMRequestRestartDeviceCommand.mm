@interface MDMRequestRestartDeviceCommand
+ (id)requestWithRebuildKernelCache:(id)a3 kextPaths:(id)a4 notifyUser:(id)a5;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)processRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation MDMRequestRestartDeviceCommand

+ (id)requestWithRebuildKernelCache:(id)a3 kextPaths:(id)a4 notifyUser:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = v10;
  v12 = MEMORY[0x277CBEC28];
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = MEMORY[0x277CBEC28];
  }

  [v10 setCommandRebuildKernelCache:v13];

  [v11 setCommandKextPaths:v8];
  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v12;
  }

  [v11 setCommandNotifyUser:v14];

  return v11;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"RebuildKernelCache" forKeyPath:@"commandRebuildKernelCache" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"KextPaths" forKeyPath:@"commandKextPaths" validator:&__block_literal_global_5 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"NotifyUser" forKeyPath:@"commandNotifyUser" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5];

  return v8;
}

uint64_t __77__MDMRequestRestartDeviceCommand_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(MDMRequestRestartDeviceCommand *)self commandRebuildKernelCache];
  v6 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"RebuildKernelCache" value:v5 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v7 = [(MDMRequestRestartDeviceCommand *)self commandKextPaths];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"KextPaths" value:v7 itemSerializer:&__block_literal_global_24 isRequired:0 defaultValue:0];

  v8 = [(MDMRequestRestartDeviceCommand *)self commandNotifyUser];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"NotifyUser" value:v8 isRequired:0 defaultValue:v6];

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = MDMRequestRestartDeviceCommand;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
  v5 = [(NSNumber *)self->_commandRebuildKernelCache copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSArray *)self->_commandKextPaths copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSNumber *)self->_commandNotifyUser copy];
  v10 = v4[8];
  v4[8] = v9;

  return v4;
}

- (void)processRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MDMRequestBase *)self delegate];
  v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  [v8 willTerminateProcess:v9];

  v10 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = [v10 stringFromDate:v11];

  v13 = MDMSystemRestartLogPath();
  [v12 writeToFile:v13 atomically:1 encoding:4 error:0];

  v14 = MDMSystemRestartLogPath();
  DMCSetSkipBackupAttributeToItemAtPath();

  v15 = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"mdmd restart device"];
  [v15 setRebootType:1];
  v16 = [MEMORY[0x277D0AE18] sharedService];
  [v16 shutdownWithOptions:v15];

  while (1)
  {
    sleep(0xE10u);
  }
}

@end