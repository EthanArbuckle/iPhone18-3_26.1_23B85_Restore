@interface FLHSA2PasswordResetNotification
- (FLHSA2PasswordResetNotification)initWithCoder:(id)coder;
- (FLHSA2PasswordResetNotification)initWithFollowUpItemUserInfo:(id)info;
- (id)followUpItemUserInfo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FLHSA2PasswordResetNotification

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"_title"];
  [coderCopy encodeObject:self->_informativeText forKey:@"_informativeText"];
  [coderCopy encodeObject:self->_approveButtonTitle forKey:@"_approveButtonTitle"];
  [coderCopy encodeObject:self->_dismissButtonTitle forKey:@"_dismissButtonTitle"];
  [coderCopy encodeObject:self->_appleID forKey:@"_appleID"];
}

- (FLHSA2PasswordResetNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FLHSA2PasswordResetNotification *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_informativeText"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_approveButtonTitle"];
    approveButtonTitle = v5->_approveButtonTitle;
    v5->_approveButtonTitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dismissButtonTitle"];
    dismissButtonTitle = v5->_dismissButtonTitle;
    v5->_dismissButtonTitle = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v14;
  }

  return v5;
}

- (FLHSA2PasswordResetNotification)initWithFollowUpItemUserInfo:(id)info
{
  infoCopy = info;
  v5 = [(FLHSA2PasswordResetNotification *)self init];
  if (v5)
  {
    v6 = [infoCopy objectForKeyedSubscript:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [infoCopy objectForKeyedSubscript:@"informativeText"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v8;

    v10 = [infoCopy objectForKeyedSubscript:@"approveButtonTitle"];
    approveButtonTitle = v5->_approveButtonTitle;
    v5->_approveButtonTitle = v10;

    v12 = [infoCopy objectForKeyedSubscript:@"dismissButtonTitle"];
    dismissButtonTitle = v5->_dismissButtonTitle;
    v5->_dismissButtonTitle = v12;

    v14 = [infoCopy objectForKeyedSubscript:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v14;
  }

  return v5;
}

- (id)followUpItemUserInfo
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"FLHSA2PasswordResetNotification"];
  [dictionary setObject:self->_title forKeyedSubscript:@"title"];
  [dictionary setObject:self->_informativeText forKeyedSubscript:@"informativeText"];
  [dictionary setObject:self->_approveButtonTitle forKeyedSubscript:@"approveButtonTitle"];
  [dictionary setObject:self->_dismissButtonTitle forKeyedSubscript:@"dismissButtonTitle"];
  [dictionary setObject:self->_appleID forKeyedSubscript:@"appleID"];

  return dictionary;
}

@end