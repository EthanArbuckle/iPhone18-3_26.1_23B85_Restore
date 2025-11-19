@interface MDMRequestShutDownDeviceCommand
+ (id)request;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)processRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation MDMRequestShutDownDeviceCommand

+ (id)request
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serializeWithType:(signed __int16)a3
{
  v3 = objc_opt_new();
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = MDMRequestShutDownDeviceCommand;
  return [(RMModelPayloadBase *)&v4 copyWithZone:a3];
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

  v13 = MDMSystemShutDownLogPath();
  [v12 writeToFile:v13 atomically:1 encoding:4 error:0];

  v14 = MDMSystemShutDownLogPath();
  DMCSetSkipBackupAttributeToItemAtPath();

  v15 = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"mdmd shut down device"];
  [v15 setRebootType:0];
  v16 = [MEMORY[0x277D0AE18] sharedService];
  [v16 shutdownWithOptions:v15];

  while (1)
  {
    sleep(0xE10u);
  }
}

@end