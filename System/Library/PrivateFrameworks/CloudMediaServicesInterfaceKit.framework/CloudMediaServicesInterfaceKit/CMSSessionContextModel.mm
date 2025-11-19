@interface CMSSessionContextModel
- (CMSSessionContextModel)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMSSessionContextModel

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CMSSessionContextModel *)self serverOverrideURL];
  v5 = [(CMSSessionContextModel *)self serverEnvironmentOverride];
  v6 = [(CMSSessionContextModel *)self sessionAuthHeaderOverride];
  v7 = [(CMSSessionContextModel *)self homeKitAllowExplicitContentSetting];
  v8 = [(CMSSessionContextModel *)self homeKitUpdateListeningHistorySetting];
  v9 = [(CMSSessionContextModel *)self serviceID];
  v10 = [(CMSSessionContextModel *)self homeUserID];
  v11 = [v3 stringWithFormat:@"<CMSSessionContextModel: serverOverrideURL: %@, \n serverEnvironmentOverride: %@, \n sessionAuthHeaderOverride: %@, \n homeKitAllowExplicitContentSetting: %d, \n homeKitUpdateListeningHistorySetting: %d, \n serviceID: %@, \n homeUserID:%@, \n userConfiguredServiceUpdateListeningHistory: %d, \n>", v4, v5, v6, v7, v8, v9, v10, -[CMSSessionContextModel serviceUpdateListeningHistory](self, "serviceUpdateListeningHistory")];

  return v11;
}

- (CMSSessionContextModel)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CMSSessionContextModel;
  v5 = [(CMSSessionContextModel *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSServerOverrideURLEncodedKey"];
    serverOverrideURL = v5->_serverOverrideURL;
    v5->_serverOverrideURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSServerEnvironmentOverrideEncodedKey"];
    serverEnvironmentOverride = v5->_serverEnvironmentOverride;
    v5->_serverEnvironmentOverride = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSServiceIDEncodedKey"];
    serviceID = v5->_serviceID;
    v5->_serviceID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSHomeUserIDEncodedKey"];
    homeUserID = v5->_homeUserID;
    v5->_homeUserID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSSessionAuthHeaderOverrideEncodedKey"];
    sessionAuthHeaderOverride = v5->_sessionAuthHeaderOverride;
    v5->_sessionAuthHeaderOverride = v14;

    v5->_serviceUpdateListeningHistory = [v4 decodeBoolForKey:@"CMSServiceUpdateListeningHistoryEncodedKey"];
    v5->_homeKitUpdateListeningHistorySetting = [v4 decodeBoolForKey:@"CMSHomeKitUpdateListeningHistorySettingEncodedKey"];
    v5->_homeKitAllowExplicitContentSetting = [v4 decodeBoolForKey:@"CMSHomeKitAllowExplicitContentSettingEncodedKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  serverOverrideURL = self->_serverOverrideURL;
  v5 = a3;
  [v5 encodeObject:serverOverrideURL forKey:@"CMSServerOverrideURLEncodedKey"];
  [v5 encodeObject:self->_sessionAuthHeaderOverride forKey:@"CMSSessionAuthHeaderOverrideEncodedKey"];
  [v5 encodeObject:self->_serverEnvironmentOverride forKey:@"CMSServerEnvironmentOverrideEncodedKey"];
  [v5 encodeObject:self->_serviceID forKey:@"CMSServiceIDEncodedKey"];
  [v5 encodeObject:self->_homeUserID forKey:@"CMSHomeUserIDEncodedKey"];
  [v5 encodeBool:self->_serviceUpdateListeningHistory forKey:@"CMSServiceUpdateListeningHistoryEncodedKey"];
  [v5 encodeBool:self->_homeKitUpdateListeningHistorySetting forKey:@"CMSHomeKitUpdateListeningHistorySettingEncodedKey"];
  [v5 encodeBool:self->_homeKitAllowExplicitContentSetting forKey:@"CMSHomeKitAllowExplicitContentSettingEncodedKey"];
}

@end