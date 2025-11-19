@interface FLHSA2LoginNotification
- (FLHSA2LoginNotification)initWithCoder:(id)a3;
- (FLHSA2LoginNotification)initWithFollowUpItemUserInfo:(id)a3;
- (id)followUpItemUserInfo;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FLHSA2LoginNotification

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"_title"];
  [v5 encodeObject:self->_informativeText forKey:@"_informativeText"];
  [v5 encodeObject:self->_codePrompt forKey:@"_codePrompt"];
  [v5 encodeObject:self->_footerText forKey:@"_footerText"];
  [v5 encodeObject:self->_approveButtonTitle forKey:@"_approveButtonTitle"];
  [v5 encodeObject:self->_dismissButtonTitle forKey:@"_dismissButtonTitle"];
  [v5 encodeObject:self->_appleID forKey:@"_appleID"];
  [v5 encodeObject:self->_latitude forKey:@"_latitude"];
  [v5 encodeObject:self->_longitude forKey:@"_longitude"];
  [v5 encodeObject:self->_deviceType forKey:@"_deviceType"];
  [v5 encodeObject:self->_deviceModel forKey:@"_deviceModel"];
  [v5 encodeObject:self->_deviceColorString forKey:@"_deviceColorString"];
  [v5 encodeObject:self->_altDSID forKey:@"_altDSID"];
  [v5 encodeObject:self->_pushMessageID forKey:@"_pushMessageID"];
  [v5 encodeObject:self->_supportedDismissActions forKey:@"_supportedDismissActions"];
  [v5 encodeBool:self->_userAllowedSignIn forKey:@"_userAllowedSignIn"];
}

- (FLHSA2LoginNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FLHSA2LoginNotification *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_informativeText"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_codePrompt"];
    codePrompt = v5->_codePrompt;
    v5->_codePrompt = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_footerText"];
    footerText = v5->_footerText;
    v5->_footerText = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_approveButtonTitle"];
    approveButtonTitle = v5->_approveButtonTitle;
    v5->_approveButtonTitle = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dismissButtonTitle"];
    dismissButtonTitle = v5->_dismissButtonTitle;
    v5->_dismissButtonTitle = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_latitude"];
    latitude = v5->_latitude;
    v5->_latitude = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_longitude"];
    longitude = v5->_longitude;
    v5->_longitude = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_deviceType"];
    deviceType = v5->_deviceType;
    v5->_deviceType = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_deviceModel"];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_deviceColorString"];
    deviceColorString = v5->_deviceColorString;
    v5->_deviceColorString = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_pushMessageID"];
    pushMessageID = v5->_pushMessageID;
    v5->_pushMessageID = v32;

    v34 = MEMORY[0x277CBEB98];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"_supportedDismissActions"];
    supportedDismissActions = v5->_supportedDismissActions;
    v5->_supportedDismissActions = v37;

    v5->_userAllowedSignIn = [v4 decodeBoolForKey:@"_userAllowedSignIn"];
  }

  return v5;
}

- (FLHSA2LoginNotification)initWithFollowUpItemUserInfo:(id)a3
{
  v4 = a3;
  v5 = [(FLHSA2LoginNotification *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 objectForKeyedSubscript:@"informativeText"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v8;

    v10 = [v4 objectForKeyedSubscript:@"codePrompt"];
    codePrompt = v5->_codePrompt;
    v5->_codePrompt = v10;

    v12 = [v4 objectForKeyedSubscript:@"footerText"];
    footerText = v5->_footerText;
    v5->_footerText = v12;

    v14 = [v4 objectForKeyedSubscript:@"approveButtonTitle"];
    approveButtonTitle = v5->_approveButtonTitle;
    v5->_approveButtonTitle = v14;

    v16 = [v4 objectForKeyedSubscript:@"dismissButtonTitle"];
    dismissButtonTitle = v5->_dismissButtonTitle;
    v5->_dismissButtonTitle = v16;

    v18 = [v4 objectForKeyedSubscript:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v18;

    v20 = [v4 objectForKeyedSubscript:@"latitude"];
    latitude = v5->_latitude;
    v5->_latitude = v20;

    v22 = [v4 objectForKeyedSubscript:@"longitude"];
    longitude = v5->_longitude;
    v5->_longitude = v22;

    v24 = [v4 objectForKeyedSubscript:@"deviceType"];
    deviceType = v5->_deviceType;
    v5->_deviceType = v24;

    v26 = [v4 objectForKeyedSubscript:@"deviceModel"];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v26;

    v28 = [v4 objectForKeyedSubscript:@"deviceColorString"];
    deviceColorString = v5->_deviceColorString;
    v5->_deviceColorString = v28;

    v30 = [v4 objectForKeyedSubscript:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v30;

    v32 = [v4 objectForKeyedSubscript:@"pushMessageID"];
    pushMessageID = v5->_pushMessageID;
    v5->_pushMessageID = v32;

    v34 = [v4 objectForKeyedSubscript:@"userAllowedSignIn"];
    v5->_userAllowedSignIn = [v34 BOOLValue];
  }

  return v5;
}

- (id)followUpItemUserInfo
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"FLHSA2LoginNotification"];
  [v3 setObject:self->_title forKeyedSubscript:@"title"];
  [v3 setObject:self->_informativeText forKeyedSubscript:@"informativeText"];
  [v3 setObject:self->_codePrompt forKeyedSubscript:@"codePrompt"];
  [v3 setObject:self->_footerText forKeyedSubscript:@"footerText"];
  [v3 setObject:self->_approveButtonTitle forKeyedSubscript:@"approveButtonTitle"];
  [v3 setObject:self->_dismissButtonTitle forKeyedSubscript:@"dismissButtonTitle"];
  [v3 setObject:self->_appleID forKeyedSubscript:@"appleID"];
  [v3 setObject:self->_latitude forKeyedSubscript:@"latitude"];
  [v3 setObject:self->_longitude forKeyedSubscript:@"longitude"];
  [v3 setObject:self->_deviceType forKeyedSubscript:@"deviceType"];
  [v3 setObject:self->_deviceModel forKeyedSubscript:@"deviceModel"];
  [v3 setObject:self->_deviceColorString forKeyedSubscript:@"deviceColorString"];
  [v3 setObject:self->_altDSID forKeyedSubscript:@"altDSID"];
  [v3 setObject:self->_pushMessageID forKeyedSubscript:@"pushMessageID"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_userAllowedSignIn];
  [v3 setObject:v4 forKeyedSubscript:@"userAllowedSignIn"];

  return v3;
}

@end