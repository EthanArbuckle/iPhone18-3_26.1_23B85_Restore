@interface IDSKTVerificationInfoProvider
- (IDSKTVerificationInfoProvider)initWithApplicationIdentifier:(id)a3;
- (void)fetchPeerVerificationInfos:(id)a3 completionBlock:(id)a4;
- (void)fetchSelfVerificationInfo:(id)a3;
- (void)healSelf:(id)a3 completionBlock:(id)a4;
@end

@implementation IDSKTVerificationInfoProvider

- (IDSKTVerificationInfoProvider)initWithApplicationIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSKTVerificationInfoProvider;
  v6 = [(IDSKTVerificationInfoProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationIdentifier, a3);
  }

  return v7;
}

- (void)fetchPeerVerificationInfos:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A91C70;
  v10[3] = &unk_1E743F278;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [IDSXPCDaemonController performDaemonControllerTask:v10];
}

- (void)fetchSelfVerificationInfo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A91E84;
  v6[3] = &unk_1E7440330;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [IDSXPCDaemonController performDaemonControllerTask:v6];
}

- (void)healSelf:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A92184;
  v10[3] = &unk_1E743F278;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [IDSXPCDaemonController performDaemonControllerTask:v10];
}

@end