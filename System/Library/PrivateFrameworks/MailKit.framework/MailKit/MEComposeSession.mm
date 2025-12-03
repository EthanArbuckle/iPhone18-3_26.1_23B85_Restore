@interface MEComposeSession
- (BOOL)isEqual:(id)equal;
- (MEComposeSession)initWithCoder:(id)coder;
- (MEComposeSession)initWithSessionID:(id)d composeContext:(id)context mailMessage:(id)message;
- (void)encodeWithCoder:(id)coder;
- (void)reloadSession;
@end

@implementation MEComposeSession

- (MEComposeSession)initWithSessionID:(id)d composeContext:(id)context mailMessage:(id)message
{
  dCopy = d;
  contextCopy = context;
  messageCopy = message;
  v15.receiver = self;
  v15.super_class = MEComposeSession;
  v12 = [(MEComposeSession *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_composeContext, context);
    objc_storeStrong(&v13->_sessionID, d);
    objc_storeStrong(&v13->_mailMessage, message);
  }

  return v13;
}

- (MEComposeSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_sessionID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_composeContext"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mailMessage"];
  v8 = [(MEComposeSession *)self initWithSessionID:v5 composeContext:v6 mailMessage:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionID = [(MEComposeSession *)self sessionID];
  [coderCopy encodeObject:sessionID forKey:@"EFPropertyKey_sessionID"];

  composeContext = [(MEComposeSession *)self composeContext];
  [coderCopy encodeObject:composeContext forKey:@"EFPropertyKey_composeContext"];

  mailMessage = [(MEComposeSession *)self mailMessage];
  [coderCopy encodeObject:mailMessage forKey:@"EFPropertyKey_mailMessage"];
}

- (void)reloadSession
{
  remoteHostContext = [(MEComposeSession *)self remoteHostContext];
  [remoteHostContext regenerateEmailAddressTokenChangesForSession:self];

  remoteHostContext2 = [(MEComposeSession *)self remoteHostContext];
  [remoteHostContext2 regenerateSecurityStatusInformationForSession:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    sessionID = [equalCopy sessionID];
    sessionID2 = [(MEComposeSession *)self sessionID];
    v8 = [sessionID isEqual:sessionID2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end