@interface CPSWatchAlertPresentationContext
- (CPSWatchAlertPresentationContext)initWithXPCDictionary:(id)a3;
- (NSString)description;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation CPSWatchAlertPresentationContext

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  v4 = [v3 appendObject:self->_systemAuthenticationRequest withName:@"systemAuthenticationRequest"];
  v5 = [v3 appendObject:self->_restrictedAccessRequest withName:@"restrictedAccessRequest"];
  v6 = [v3 appendObject:self->_storeAuthenticationRequest withName:@"storeAuthenticationRequest"];
  v7 = [v3 appendObject:self->_unrecognizedUserRequest withName:@"unrecognizedUserRequest"];
  v8 = [v3 appendObject:self->_xpcEndpoint withName:@"xpcEndpoint"];
  v9 = [v3 build];

  return v9;
}

- (CPSWatchAlertPresentationContext)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CPSWatchAlertPresentationContext;
  v5 = [(CPSWatchAlertPresentationContext *)&v20 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CF0D20] coderWithMessage:v4];
    v7 = [v6 decodeStringForKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v7;

    v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"systemAuthenticationRequest"];
    systemAuthenticationRequest = v5->_systemAuthenticationRequest;
    v5->_systemAuthenticationRequest = v9;

    v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"restrictedAccessRequest"];
    restrictedAccessRequest = v5->_restrictedAccessRequest;
    v5->_restrictedAccessRequest = v11;

    v13 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"storeAuthenticationRequest"];
    storeAuthenticationRequest = v5->_storeAuthenticationRequest;
    v5->_storeAuthenticationRequest = v13;

    v15 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"unrecognizedUserRequest"];
    unrecognizedUserRequest = v5->_unrecognizedUserRequest;
    v5->_unrecognizedUserRequest = v15;

    v17 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"xpcEndpoint"];
    xpcEndpoint = v5->_xpcEndpoint;
    v5->_xpcEndpoint = v17;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = [MEMORY[0x277CF0D20] coderWithMessage:a3];
  [v4 encodeObject:self->_deviceName forKey:@"deviceName"];
  [v4 encodeObject:self->_systemAuthenticationRequest forKey:@"systemAuthenticationRequest"];
  [v4 encodeObject:self->_restrictedAccessRequest forKey:@"restrictedAccessRequest"];
  [v4 encodeObject:self->_storeAuthenticationRequest forKey:@"storeAuthenticationRequest"];
  [v4 encodeObject:self->_unrecognizedUserRequest forKey:@"unrecognizedUserRequest"];
  [v4 encodeObject:self->_xpcEndpoint forKey:@"xpcEndpoint"];
}

@end