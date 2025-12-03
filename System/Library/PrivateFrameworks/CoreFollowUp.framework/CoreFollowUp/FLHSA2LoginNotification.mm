@interface FLHSA2LoginNotification
- (FLHSA2LoginNotification)initWithCoder:(id)coder;
- (FLHSA2LoginNotification)initWithFollowUpItemUserInfo:(id)info;
- (id)followUpItemUserInfo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FLHSA2LoginNotification

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"_title"];
  [coderCopy encodeObject:self->_informativeText forKey:@"_informativeText"];
  [coderCopy encodeObject:self->_codePrompt forKey:@"_codePrompt"];
  [coderCopy encodeObject:self->_footerText forKey:@"_footerText"];
  [coderCopy encodeObject:self->_approveButtonTitle forKey:@"_approveButtonTitle"];
  [coderCopy encodeObject:self->_dismissButtonTitle forKey:@"_dismissButtonTitle"];
  [coderCopy encodeObject:self->_appleID forKey:@"_appleID"];
  [coderCopy encodeObject:self->_latitude forKey:@"_latitude"];
  [coderCopy encodeObject:self->_longitude forKey:@"_longitude"];
  [coderCopy encodeObject:self->_deviceType forKey:@"_deviceType"];
  [coderCopy encodeObject:self->_deviceModel forKey:@"_deviceModel"];
  [coderCopy encodeObject:self->_deviceColorString forKey:@"_deviceColorString"];
  [coderCopy encodeObject:self->_altDSID forKey:@"_altDSID"];
  [coderCopy encodeObject:self->_pushMessageID forKey:@"_pushMessageID"];
  [coderCopy encodeObject:self->_supportedDismissActions forKey:@"_supportedDismissActions"];
  [coderCopy encodeBool:self->_userAllowedSignIn forKey:@"_userAllowedSignIn"];
}

- (FLHSA2LoginNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FLHSA2LoginNotification *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_informativeText"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_codePrompt"];
    codePrompt = v5->_codePrompt;
    v5->_codePrompt = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_footerText"];
    footerText = v5->_footerText;
    v5->_footerText = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_approveButtonTitle"];
    approveButtonTitle = v5->_approveButtonTitle;
    v5->_approveButtonTitle = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dismissButtonTitle"];
    dismissButtonTitle = v5->_dismissButtonTitle;
    v5->_dismissButtonTitle = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_latitude"];
    latitude = v5->_latitude;
    v5->_latitude = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_longitude"];
    longitude = v5->_longitude;
    v5->_longitude = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_deviceType"];
    deviceType = v5->_deviceType;
    v5->_deviceType = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_deviceModel"];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_deviceColorString"];
    deviceColorString = v5->_deviceColorString;
    v5->_deviceColorString = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_pushMessageID"];
    pushMessageID = v5->_pushMessageID;
    v5->_pushMessageID = v32;

    v34 = MEMORY[0x277CBEB98];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"_supportedDismissActions"];
    supportedDismissActions = v5->_supportedDismissActions;
    v5->_supportedDismissActions = v37;

    v5->_userAllowedSignIn = [coderCopy decodeBoolForKey:@"_userAllowedSignIn"];
  }

  return v5;
}

- (FLHSA2LoginNotification)initWithFollowUpItemUserInfo:(id)info
{
  infoCopy = info;
  v5 = [(FLHSA2LoginNotification *)self init];
  if (v5)
  {
    v6 = [infoCopy objectForKeyedSubscript:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [infoCopy objectForKeyedSubscript:@"informativeText"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v8;

    v10 = [infoCopy objectForKeyedSubscript:@"codePrompt"];
    codePrompt = v5->_codePrompt;
    v5->_codePrompt = v10;

    v12 = [infoCopy objectForKeyedSubscript:@"footerText"];
    footerText = v5->_footerText;
    v5->_footerText = v12;

    v14 = [infoCopy objectForKeyedSubscript:@"approveButtonTitle"];
    approveButtonTitle = v5->_approveButtonTitle;
    v5->_approveButtonTitle = v14;

    v16 = [infoCopy objectForKeyedSubscript:@"dismissButtonTitle"];
    dismissButtonTitle = v5->_dismissButtonTitle;
    v5->_dismissButtonTitle = v16;

    v18 = [infoCopy objectForKeyedSubscript:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v18;

    v20 = [infoCopy objectForKeyedSubscript:@"latitude"];
    latitude = v5->_latitude;
    v5->_latitude = v20;

    v22 = [infoCopy objectForKeyedSubscript:@"longitude"];
    longitude = v5->_longitude;
    v5->_longitude = v22;

    v24 = [infoCopy objectForKeyedSubscript:@"deviceType"];
    deviceType = v5->_deviceType;
    v5->_deviceType = v24;

    v26 = [infoCopy objectForKeyedSubscript:@"deviceModel"];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v26;

    v28 = [infoCopy objectForKeyedSubscript:@"deviceColorString"];
    deviceColorString = v5->_deviceColorString;
    v5->_deviceColorString = v28;

    v30 = [infoCopy objectForKeyedSubscript:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v30;

    v32 = [infoCopy objectForKeyedSubscript:@"pushMessageID"];
    pushMessageID = v5->_pushMessageID;
    v5->_pushMessageID = v32;

    v34 = [infoCopy objectForKeyedSubscript:@"userAllowedSignIn"];
    v5->_userAllowedSignIn = [v34 BOOLValue];
  }

  return v5;
}

- (id)followUpItemUserInfo
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"FLHSA2LoginNotification"];
  [dictionary setObject:self->_title forKeyedSubscript:@"title"];
  [dictionary setObject:self->_informativeText forKeyedSubscript:@"informativeText"];
  [dictionary setObject:self->_codePrompt forKeyedSubscript:@"codePrompt"];
  [dictionary setObject:self->_footerText forKeyedSubscript:@"footerText"];
  [dictionary setObject:self->_approveButtonTitle forKeyedSubscript:@"approveButtonTitle"];
  [dictionary setObject:self->_dismissButtonTitle forKeyedSubscript:@"dismissButtonTitle"];
  [dictionary setObject:self->_appleID forKeyedSubscript:@"appleID"];
  [dictionary setObject:self->_latitude forKeyedSubscript:@"latitude"];
  [dictionary setObject:self->_longitude forKeyedSubscript:@"longitude"];
  [dictionary setObject:self->_deviceType forKeyedSubscript:@"deviceType"];
  [dictionary setObject:self->_deviceModel forKeyedSubscript:@"deviceModel"];
  [dictionary setObject:self->_deviceColorString forKeyedSubscript:@"deviceColorString"];
  [dictionary setObject:self->_altDSID forKeyedSubscript:@"altDSID"];
  [dictionary setObject:self->_pushMessageID forKeyedSubscript:@"pushMessageID"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_userAllowedSignIn];
  [dictionary setObject:v4 forKeyedSubscript:@"userAllowedSignIn"];

  return dictionary;
}

@end