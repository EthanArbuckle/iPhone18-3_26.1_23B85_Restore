@interface MEComposeSession
- (BOOL)isEqual:(id)a3;
- (MEComposeSession)initWithCoder:(id)a3;
- (MEComposeSession)initWithSessionID:(id)a3 composeContext:(id)a4 mailMessage:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)reloadSession;
@end

@implementation MEComposeSession

- (MEComposeSession)initWithSessionID:(id)a3 composeContext:(id)a4 mailMessage:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MEComposeSession;
  v12 = [(MEComposeSession *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_composeContext, a4);
    objc_storeStrong(&v13->_sessionID, a3);
    objc_storeStrong(&v13->_mailMessage, a5);
  }

  return v13;
}

- (MEComposeSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_sessionID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_composeContext"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mailMessage"];
  v8 = [(MEComposeSession *)self initWithSessionID:v5 composeContext:v6 mailMessage:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MEComposeSession *)self sessionID];
  [v7 encodeObject:v4 forKey:@"EFPropertyKey_sessionID"];

  v5 = [(MEComposeSession *)self composeContext];
  [v7 encodeObject:v5 forKey:@"EFPropertyKey_composeContext"];

  v6 = [(MEComposeSession *)self mailMessage];
  [v7 encodeObject:v6 forKey:@"EFPropertyKey_mailMessage"];
}

- (void)reloadSession
{
  v3 = [(MEComposeSession *)self remoteHostContext];
  [v3 regenerateEmailAddressTokenChangesForSession:self];

  v4 = [(MEComposeSession *)self remoteHostContext];
  [v4 regenerateSecurityStatusInformationForSession:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = [v4 sessionID];
    v7 = [(MEComposeSession *)self sessionID];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end