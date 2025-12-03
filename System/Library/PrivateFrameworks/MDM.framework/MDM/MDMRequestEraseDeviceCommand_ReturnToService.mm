@interface MDMRequestEraseDeviceCommand_ReturnToService
+ (NSSet)allowedCommandKeys;
+ (id)buildRequiredOnlyWithEnabled:(id)enabled;
+ (id)buildWithEnabled:(id)enabled wiFiProfileData:(id)data mdmProfileData:(id)profileData bootstrapToken:(id)token;
- (id)copyWithZone:(_NSZone *)zone;
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

+ (id)buildWithEnabled:(id)enabled wiFiProfileData:(id)data mdmProfileData:(id)profileData bootstrapToken:(id)token
{
  tokenCopy = token;
  profileDataCopy = profileData;
  dataCopy = data;
  enabledCopy = enabled;
  v13 = objc_opt_new();
  [v13 setCommandEnabled:enabledCopy];

  [v13 setCommandWiFiProfileData:dataCopy];
  [v13 setCommandMDMProfileData:profileDataCopy];

  [v13 setCommandBootstrapToken:tokenCopy];

  return v13;
}

+ (id)buildRequiredOnlyWithEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = objc_opt_new();
  [v4 setCommandEnabled:enabledCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = MDMRequestEraseDeviceCommand_ReturnToService;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
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