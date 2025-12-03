@interface MDMRequestShutDownDeviceCommand
+ (id)request;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)processRequest:(id)request completionHandler:(id)handler;
@end

@implementation MDMRequestShutDownDeviceCommand

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
  v4.super_class = MDMRequestShutDownDeviceCommand;
  return [(RMModelPayloadBase *)&v4 copyWithZone:zone];
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

  v13 = MDMSystemShutDownLogPath();
  [v12 writeToFile:v13 atomically:1 encoding:4 error:0];

  v14 = MDMSystemShutDownLogPath();
  DMCSetSkipBackupAttributeToItemAtPath();

  v15 = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"mdmd shut down device"];
  [v15 setRebootType:0];
  mEMORY[0x277D0AE18] = [MEMORY[0x277D0AE18] sharedService];
  [mEMORY[0x277D0AE18] shutdownWithOptions:v15];

  while (1)
  {
    sleep(0xE10u);
  }
}

@end