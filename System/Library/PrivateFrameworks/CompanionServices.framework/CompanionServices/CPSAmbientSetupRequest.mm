@interface CPSAmbientSetupRequest
- (CPSAmbientSetupRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSAmbientSetupRequest

- (CPSAmbientSetupRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CPSAmbientSetupRequest;
  v5 = [(CPSAuthenticationRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"configurationURL"];
    configurationURL = v5->_configurationURL;
    v5->_configurationURL = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"extensionToken"];
    extensionToken = v5->_extensionToken;
    v5->_extensionToken = v10;

    v5->_screensaverType = [v4 decodeIntegerForKey:@"screensaverType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPSAmbientSetupRequest;
  v4 = a3;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_configurationURL forKey:{@"configurationURL", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_extensionToken forKey:@"extensionToken"];
  [v4 encodeInteger:self->_screensaverType forKey:@"screensaverType"];
}

@end