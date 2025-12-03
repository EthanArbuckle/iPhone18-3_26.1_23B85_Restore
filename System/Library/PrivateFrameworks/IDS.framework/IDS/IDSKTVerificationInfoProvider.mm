@interface IDSKTVerificationInfoProvider
- (IDSKTVerificationInfoProvider)initWithApplicationIdentifier:(id)identifier;
- (void)fetchPeerVerificationInfos:(id)infos completionBlock:(id)block;
- (void)fetchSelfVerificationInfo:(id)info;
- (void)healSelf:(id)self completionBlock:(id)block;
@end

@implementation IDSKTVerificationInfoProvider

- (IDSKTVerificationInfoProvider)initWithApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = IDSKTVerificationInfoProvider;
  v6 = [(IDSKTVerificationInfoProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationIdentifier, identifier);
  }

  return v7;
}

- (void)fetchPeerVerificationInfos:(id)infos completionBlock:(id)block
{
  infosCopy = infos;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A91C70;
  v10[3] = &unk_1E743F278;
  v11 = infosCopy;
  v12 = blockCopy;
  v10[4] = self;
  v8 = infosCopy;
  v9 = blockCopy;
  [IDSXPCDaemonController performDaemonControllerTask:v10];
}

- (void)fetchSelfVerificationInfo:(id)info
{
  infoCopy = info;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A91E84;
  v6[3] = &unk_1E7440330;
  v6[4] = self;
  v7 = infoCopy;
  v5 = infoCopy;
  [IDSXPCDaemonController performDaemonControllerTask:v6];
}

- (void)healSelf:(id)self completionBlock:(id)block
{
  selfCopy = self;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A92184;
  v10[3] = &unk_1E743F278;
  v11 = selfCopy;
  v12 = blockCopy;
  v10[4] = self;
  v8 = selfCopy;
  v9 = blockCopy;
  [IDSXPCDaemonController performDaemonControllerTask:v10];
}

@end