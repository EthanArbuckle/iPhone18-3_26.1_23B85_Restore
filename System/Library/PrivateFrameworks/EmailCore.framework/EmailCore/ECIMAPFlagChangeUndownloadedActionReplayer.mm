@interface ECIMAPFlagChangeUndownloadedActionReplayer
- (ECIMAPLocalActionReplayerDelegate)delegate;
- (id)replayAction;
@end

@implementation ECIMAPFlagChangeUndownloadedActionReplayer

- (id)replayAction
{
  v31 = *MEMORY[0x277D85DE8];
  action = [(ECLocalActionReplayer *)self action];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECIMAPFlagChangeUndownloadedActionReplayer.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"[self.action isKindOfClass:[ECFlagChangeUndownloadedMessageAction class]]"}];
  }

  action2 = [(ECLocalActionReplayer *)self action];
  flagChange = [action2 flagChange];
  oldestPersistedRemoteID = [action2 oldestPersistedRemoteID];
  v9 = [oldestPersistedRemoteID integerValue] - 1;

  v10 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{1, v9}];
  serverInterface = [(ECIMAPFlagChangeUndownloadedActionReplayer *)self serverInterface];
  v12 = [serverInterface storeFlagChange:flagChange forUIDs:v10];

  v13 = +[ECLocalActionReplayer log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    action3 = [(ECLocalActionReplayer *)self action];
    v15 = [v10 count];
    v16 = @"didn't work";
    *buf = 138543874;
    v26 = action3;
    if (v12)
    {
      v16 = @"worked";
    }

    v27 = 2048;
    v28 = v15;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_22D092000, v13, OS_LOG_TYPE_DEFAULT, "Replaying flag action %{public}@ for %lu uids %@", buf, 0x20u);
  }

  if (v12)
  {
    v17 = [[ECLocalMessageActionResults alloc] initWithError:0];
  }

  else
  {
    serverInterface2 = [(ECIMAPFlagChangeUndownloadedActionReplayer *)self serverInterface];
    hasValidConnection = [serverInterface2 hasValidConnection];

    if (hasValidConnection)
    {
      v20 = [ECLocalMessageActionResults alloc];
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECLocalActionReplayErrorDomain" code:1 userInfo:0];
      v17 = [(ECLocalMessageActionResults *)v20 initWithError:v21];
    }

    else
    {
      v17 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (ECIMAPLocalActionReplayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end