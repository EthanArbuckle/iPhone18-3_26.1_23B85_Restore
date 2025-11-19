@interface MDMRequestEraseDeviceCommand_ReturnToService
+ (NSSet)allowedCommandKeys;
+ (id)buildRequiredOnlyWithEnabled:(id)a3;
+ (id)buildWithEnabled:(id)a3 wiFiProfileData:(id)a4 mdmProfileData:(id)a5 bootstrapToken:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MDMRequestEraseDeviceCommand_ReturnToService

+ (NSSet)allowedCommandKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Enabled";
  v7[1] = @"WiFiProfileData";
  v7[2] = @"MDMProfileData";
  v7[3] = @"BootstrapToken";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithEnabled:(id)a3 wiFiProfileData:(id)a4 mdmProfileData:(id)a5 bootstrapToken:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setCommandEnabled:v12];

  [v13 setCommandWiFiProfileData:v11];
  [v13 setCommandMDMProfileData:v10];

  [v13 setCommandBootstrapToken:v9];

  return v13;
}

+ (id)buildRequiredOnlyWithEnabled:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setCommandEnabled:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = MDMRequestEraseDeviceCommand_ReturnToService;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
  v5 = [(NSNumber *)self->_commandEnabled copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSData *)self->_commandWiFiProfileData copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSData *)self->_commandMDMProfileData copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSData *)self->_commandBootstrapToken copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end