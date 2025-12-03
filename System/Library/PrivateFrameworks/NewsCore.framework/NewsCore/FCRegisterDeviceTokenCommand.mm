@interface FCRegisterDeviceTokenCommand
- (FCRegisterDeviceTokenCommand)initWithCoder:(id)coder;
- (FCRegisterDeviceTokenCommand)initWithUserID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service;
@end

@implementation FCRegisterDeviceTokenCommand

- (FCRegisterDeviceTokenCommand)initWithUserID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode
{
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  v14 = iDCopy;
  selfCopy = 0;
  if (dCopy && tokenCopy && iDCopy)
  {
    v19.receiver = self;
    v19.super_class = FCRegisterDeviceTokenCommand;
    v16 = [(FCRegisterDeviceTokenCommand *)&v19 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_userID, d);
      objc_storeStrong(&v17->_deviceToken, token);
      objc_storeStrong(&v17->_storefrontID, iD);
      v17->_deviceDigestMode = mode;
    }

    self = v17;
    selfCopy = self;
  }

  return selfCopy;
}

- (FCRegisterDeviceTokenCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserIDKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceTokenKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StorefrontIDKey"];
  v8 = [coderCopy decodeIntForKey:@"DigestModeKey"];

  v9 = [(FCRegisterDeviceTokenCommand *)self initWithUserID:v5 deviceToken:v6 storefrontID:v7 deviceDigestMode:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userID = [(FCRegisterDeviceTokenCommand *)self userID];
  [coderCopy encodeObject:userID forKey:@"UserIDKey"];

  deviceToken = [(FCRegisterDeviceTokenCommand *)self deviceToken];
  [coderCopy encodeObject:deviceToken forKey:@"DeviceTokenKey"];

  storefrontID = [(FCRegisterDeviceTokenCommand *)self storefrontID];
  [coderCopy encodeObject:storefrontID forKey:@"StorefrontIDKey"];

  [coderCopy encodeInt:-[FCRegisterDeviceTokenCommand deviceDigestMode](self forKey:{"deviceDigestMode"), @"DigestModeKey"}];
}

- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service
{
  delegateCopy = delegate;
  notificationsEndpointConnection = [context notificationsEndpointConnection];
  userID = [(FCRegisterDeviceTokenCommand *)self userID];
  deviceToken = [(FCRegisterDeviceTokenCommand *)self deviceToken];
  storefrontID = [(FCRegisterDeviceTokenCommand *)self storefrontID];
  deviceDigestMode = [(FCRegisterDeviceTokenCommand *)self deviceDigestMode];
  v13 = dispatch_get_global_queue(-2, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__FCRegisterDeviceTokenCommand_executeWithContext_delegate_qualityOfService___block_invoke;
  v15[3] = &unk_1E7C38080;
  v16 = delegateCopy;
  selfCopy = self;
  v14 = delegateCopy;
  [notificationsEndpointConnection registerDeviceWithUserID:userID deviceToken:deviceToken storefrontID:storefrontID deviceDigestMode:deviceDigestMode callbackQueue:v13 completion:v15];
}

void __77__FCRegisterDeviceTokenCommand_executeWithContext_delegate_qualityOfService___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 0;
  }

  else if ([v5 fc_isNetworkUnavailableError])
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 1;
  }

  else
  {
    v9 = [v10 fc_shouldRetry];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v9)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  [v6 command:v7 didFinishWithStatus:v8];
}

@end