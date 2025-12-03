@interface CMSSessionContextModel
- (CMSSessionContextModel)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMSSessionContextModel

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  serverOverrideURL = [(CMSSessionContextModel *)self serverOverrideURL];
  serverEnvironmentOverride = [(CMSSessionContextModel *)self serverEnvironmentOverride];
  sessionAuthHeaderOverride = [(CMSSessionContextModel *)self sessionAuthHeaderOverride];
  homeKitAllowExplicitContentSetting = [(CMSSessionContextModel *)self homeKitAllowExplicitContentSetting];
  homeKitUpdateListeningHistorySetting = [(CMSSessionContextModel *)self homeKitUpdateListeningHistorySetting];
  serviceID = [(CMSSessionContextModel *)self serviceID];
  homeUserID = [(CMSSessionContextModel *)self homeUserID];
  v11 = [v3 stringWithFormat:@"<CMSSessionContextModel: serverOverrideURL: %@, \n serverEnvironmentOverride: %@, \n sessionAuthHeaderOverride: %@, \n homeKitAllowExplicitContentSetting: %d, \n homeKitUpdateListeningHistorySetting: %d, \n serviceID: %@, \n homeUserID:%@, \n userConfiguredServiceUpdateListeningHistory: %d, \n>", serverOverrideURL, serverEnvironmentOverride, sessionAuthHeaderOverride, homeKitAllowExplicitContentSetting, homeKitUpdateListeningHistorySetting, serviceID, homeUserID, -[CMSSessionContextModel serviceUpdateListeningHistory](self, "serviceUpdateListeningHistory")];

  return v11;
}

- (CMSSessionContextModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CMSSessionContextModel;
  v5 = [(CMSSessionContextModel *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSServerOverrideURLEncodedKey"];
    serverOverrideURL = v5->_serverOverrideURL;
    v5->_serverOverrideURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSServerEnvironmentOverrideEncodedKey"];
    serverEnvironmentOverride = v5->_serverEnvironmentOverride;
    v5->_serverEnvironmentOverride = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSServiceIDEncodedKey"];
    serviceID = v5->_serviceID;
    v5->_serviceID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSHomeUserIDEncodedKey"];
    homeUserID = v5->_homeUserID;
    v5->_homeUserID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSSessionAuthHeaderOverrideEncodedKey"];
    sessionAuthHeaderOverride = v5->_sessionAuthHeaderOverride;
    v5->_sessionAuthHeaderOverride = v14;

    v5->_serviceUpdateListeningHistory = [coderCopy decodeBoolForKey:@"CMSServiceUpdateListeningHistoryEncodedKey"];
    v5->_homeKitUpdateListeningHistorySetting = [coderCopy decodeBoolForKey:@"CMSHomeKitUpdateListeningHistorySettingEncodedKey"];
    v5->_homeKitAllowExplicitContentSetting = [coderCopy decodeBoolForKey:@"CMSHomeKitAllowExplicitContentSettingEncodedKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  serverOverrideURL = self->_serverOverrideURL;
  coderCopy = coder;
  [coderCopy encodeObject:serverOverrideURL forKey:@"CMSServerOverrideURLEncodedKey"];
  [coderCopy encodeObject:self->_sessionAuthHeaderOverride forKey:@"CMSSessionAuthHeaderOverrideEncodedKey"];
  [coderCopy encodeObject:self->_serverEnvironmentOverride forKey:@"CMSServerEnvironmentOverrideEncodedKey"];
  [coderCopy encodeObject:self->_serviceID forKey:@"CMSServiceIDEncodedKey"];
  [coderCopy encodeObject:self->_homeUserID forKey:@"CMSHomeUserIDEncodedKey"];
  [coderCopy encodeBool:self->_serviceUpdateListeningHistory forKey:@"CMSServiceUpdateListeningHistoryEncodedKey"];
  [coderCopy encodeBool:self->_homeKitUpdateListeningHistorySetting forKey:@"CMSHomeKitUpdateListeningHistorySettingEncodedKey"];
  [coderCopy encodeBool:self->_homeKitAllowExplicitContentSetting forKey:@"CMSHomeKitAllowExplicitContentSettingEncodedKey"];
}

@end