@interface FCRegisterDeviceTokenCommand
- (FCRegisterDeviceTokenCommand)initWithCoder:(id)a3;
- (FCRegisterDeviceTokenCommand)initWithUserID:(id)a3 deviceToken:(id)a4 storefrontID:(id)a5 deviceDigestMode:(int)a6;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5;
@end

@implementation FCRegisterDeviceTokenCommand

- (FCRegisterDeviceTokenCommand)initWithUserID:(id)a3 deviceToken:(id)a4 storefrontID:(id)a5 deviceDigestMode:(int)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  v15 = 0;
  if (v11 && v12 && v13)
  {
    v19.receiver = self;
    v19.super_class = FCRegisterDeviceTokenCommand;
    v16 = [(FCRegisterDeviceTokenCommand *)&v19 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_userID, a3);
      objc_storeStrong(&v17->_deviceToken, a4);
      objc_storeStrong(&v17->_storefrontID, a5);
      v17->_deviceDigestMode = a6;
    }

    self = v17;
    v15 = self;
  }

  return v15;
}

- (FCRegisterDeviceTokenCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserIDKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceTokenKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StorefrontIDKey"];
  v8 = [v4 decodeIntForKey:@"DigestModeKey"];

  v9 = [(FCRegisterDeviceTokenCommand *)self initWithUserID:v5 deviceToken:v6 storefrontID:v7 deviceDigestMode:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(FCRegisterDeviceTokenCommand *)self userID];
  [v7 encodeObject:v4 forKey:@"UserIDKey"];

  v5 = [(FCRegisterDeviceTokenCommand *)self deviceToken];
  [v7 encodeObject:v5 forKey:@"DeviceTokenKey"];

  v6 = [(FCRegisterDeviceTokenCommand *)self storefrontID];
  [v7 encodeObject:v6 forKey:@"StorefrontIDKey"];

  [v7 encodeInt:-[FCRegisterDeviceTokenCommand deviceDigestMode](self forKey:{"deviceDigestMode"), @"DigestModeKey"}];
}

- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5
{
  v7 = a4;
  v8 = [a3 notificationsEndpointConnection];
  v9 = [(FCRegisterDeviceTokenCommand *)self userID];
  v10 = [(FCRegisterDeviceTokenCommand *)self deviceToken];
  v11 = [(FCRegisterDeviceTokenCommand *)self storefrontID];
  v12 = [(FCRegisterDeviceTokenCommand *)self deviceDigestMode];
  v13 = dispatch_get_global_queue(-2, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__FCRegisterDeviceTokenCommand_executeWithContext_delegate_qualityOfService___block_invoke;
  v15[3] = &unk_1E7C38080;
  v16 = v7;
  v17 = self;
  v14 = v7;
  [v8 registerDeviceWithUserID:v9 deviceToken:v10 storefrontID:v11 deviceDigestMode:v12 callbackQueue:v13 completion:v15];
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