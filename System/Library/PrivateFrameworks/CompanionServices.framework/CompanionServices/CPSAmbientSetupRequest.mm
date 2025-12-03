@interface CPSAmbientSetupRequest
- (CPSAmbientSetupRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSAmbientSetupRequest

- (CPSAmbientSetupRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CPSAmbientSetupRequest;
  v5 = [(CPSAuthenticationRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"configurationURL"];
    configurationURL = v5->_configurationURL;
    v5->_configurationURL = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"extensionToken"];
    extensionToken = v5->_extensionToken;
    v5->_extensionToken = v10;

    v5->_screensaverType = [coderCopy decodeIntegerForKey:@"screensaverType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPSAmbientSetupRequest;
  coderCopy = coder;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_configurationURL forKey:{@"configurationURL", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_extensionToken forKey:@"extensionToken"];
  [coderCopy encodeInteger:self->_screensaverType forKey:@"screensaverType"];
}

@end