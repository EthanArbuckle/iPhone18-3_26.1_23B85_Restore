@interface MDMRequestRestartDeviceCommand
+ (id)requestWithRebuildKernelCache:(id)cache kextPaths:(id)paths notifyUser:(id)user;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)processRequest:(id)request completionHandler:(id)handler;
@end

@implementation MDMRequestRestartDeviceCommand

+ (id)requestWithRebuildKernelCache:(id)cache kextPaths:(id)paths notifyUser:(id)user
{
  userCopy = user;
  pathsCopy = paths;
  cacheCopy = cache;
  v10 = objc_opt_new();
  v11 = v10;
  v12 = MEMORY[0x277CBEC28];
  if (cacheCopy)
  {
    v13 = cacheCopy;
  }

  else
  {
    v13 = MEMORY[0x277CBEC28];
  }

  [v10 setCommandRebuildKernelCache:v13];

  [v11 setCommandKextPaths:pathsCopy];
  if (userCopy)
  {
    v14 = userCopy;
  }

  else
  {
    v14 = v12;
  }

  [v11 setCommandNotifyUser:v14];

  return v11;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"RebuildKernelCache" forKeyPath:@"commandRebuildKernelCache" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"KextPaths" forKeyPath:@"commandKextPaths" validator:&__block_literal_global_5 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"NotifyUser" forKeyPath:@"commandNotifyUser" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error];

  return v8;
}

uint64_t __77__MDMRequestRestartDeviceCommand_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  commandRebuildKernelCache = [(MDMRequestRestartDeviceCommand *)self commandRebuildKernelCache];
  v6 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"RebuildKernelCache" value:commandRebuildKernelCache isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  commandKextPaths = [(MDMRequestRestartDeviceCommand *)self commandKextPaths];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"KextPaths" value:commandKextPaths itemSerializer:&__block_literal_global_24 isRequired:0 defaultValue:0];

  commandNotifyUser = [(MDMRequestRestartDeviceCommand *)self commandNotifyUser];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"NotifyUser" value:commandNotifyUser isRequired:0 defaultValue:v6];

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = MDMRequestRestartDeviceCommand;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
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

- (void)processRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  delegate = [(MDMRequestBase *)self delegate];
  v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  [delegate willTerminateProcess:v9];

  v10 = objc_alloc_init(MEMORY[0x277CCAA68]);
  date = [MEMORY[0x277CBEAA8] date];
  v12 = [v10 stringFromDate:date];

  v13 = MDMSystemRestartLogPath();
  [v12 writeToFile:v13 atomically:1 encoding:4 error:0];

  v14 = MDMSystemRestartLogPath();
  DMCSetSkipBackupAttributeToItemAtPath();

  v15 = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"mdmd restart device"];
  [v15 setRebootType:1];
  mEMORY[0x277D0AE18] = [MEMORY[0x277D0AE18] sharedService];
  [mEMORY[0x277D0AE18] shutdownWithOptions:v15];

  while (1)
  {
    sleep(0xE10u);
  }
}

@end