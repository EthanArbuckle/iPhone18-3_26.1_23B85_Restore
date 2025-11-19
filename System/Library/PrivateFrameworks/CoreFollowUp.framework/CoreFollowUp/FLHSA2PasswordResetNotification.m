@interface FLHSA2PasswordResetNotification
- (FLHSA2PasswordResetNotification)initWithCoder:(id)a3;
- (FLHSA2PasswordResetNotification)initWithFollowUpItemUserInfo:(id)a3;
- (id)followUpItemUserInfo;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FLHSA2PasswordResetNotification

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"_title"];
  [v5 encodeObject:self->_informativeText forKey:@"_informativeText"];
  [v5 encodeObject:self->_approveButtonTitle forKey:@"_approveButtonTitle"];
  [v5 encodeObject:self->_dismissButtonTitle forKey:@"_dismissButtonTitle"];
  [v5 encodeObject:self->_appleID forKey:@"_appleID"];
}

- (FLHSA2PasswordResetNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FLHSA2PasswordResetNotification *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_informativeText"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_approveButtonTitle"];
    approveButtonTitle = v5->_approveButtonTitle;
    v5->_approveButtonTitle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dismissButtonTitle"];
    dismissButtonTitle = v5->_dismissButtonTitle;
    v5->_dismissButtonTitle = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v14;
  }

  return v5;
}

- (FLHSA2PasswordResetNotification)initWithFollowUpItemUserInfo:(id)a3
{
  v4 = a3;
  v5 = [(FLHSA2PasswordResetNotification *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 objectForKeyedSubscript:@"informativeText"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v8;

    v10 = [v4 objectForKeyedSubscript:@"approveButtonTitle"];
    approveButtonTitle = v5->_approveButtonTitle;
    v5->_approveButtonTitle = v10;

    v12 = [v4 objectForKeyedSubscript:@"dismissButtonTitle"];
    dismissButtonTitle = v5->_dismissButtonTitle;
    v5->_dismissButtonTitle = v12;

    v14 = [v4 objectForKeyedSubscript:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v14;
  }

  return v5;
}

- (id)followUpItemUserInfo
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"FLHSA2PasswordResetNotification"];
  [v3 setObject:self->_title forKeyedSubscript:@"title"];
  [v3 setObject:self->_informativeText forKeyedSubscript:@"informativeText"];
  [v3 setObject:self->_approveButtonTitle forKeyedSubscript:@"approveButtonTitle"];
  [v3 setObject:self->_dismissButtonTitle forKeyedSubscript:@"dismissButtonTitle"];
  [v3 setObject:self->_appleID forKeyedSubscript:@"appleID"];

  return v3;
}

@end