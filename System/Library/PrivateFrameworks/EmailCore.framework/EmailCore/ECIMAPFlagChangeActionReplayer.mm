@interface ECIMAPFlagChangeActionReplayer
- (ECIMAPLocalActionReplayerDelegate)delegate;
- (id)replayAction;
@end

@implementation ECIMAPFlagChangeActionReplayer

- (id)replayAction
{
  v51 = *MEMORY[0x277D85DE8];
  action = [(ECLocalActionReplayer *)self action];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECIMAPFlagChangeActionReplayer.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"[self.action isKindOfClass:[ECFlagChangeMessageAction class]]"}];
  }

  action2 = [(ECLocalActionReplayer *)self action];
  remoteIDs = [action2 remoteIDs];
  messages = [action2 messages];
  v7 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = remoteIDs;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v9)
  {
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addIndex:{objc_msgSend(*(*(&v39 + 1) + 8 * i), "integerValue")}];
      }

      v9 = [v8 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v9);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = messages;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v13)
  {
    v14 = *v36;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v12);
        }

        remoteID = [*(*(&v35 + 1) + 8 * j) remoteID];
        integerValue = [remoteID integerValue];

        if (integerValue)
        {
          [v7 addIndex:?];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v13);
  }

  if ([v7 count])
  {
    flagChange = [action2 flagChange];
    serverInterface = [(ECIMAPFlagChangeActionReplayer *)self serverInterface];
    v20 = [serverInterface storeFlagChange:flagChange forUIDs:v7];
  }

  else
  {
    v20 = 1;
  }

  v21 = +[ECLocalActionReplayer log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    action3 = [(ECLocalActionReplayer *)self action];
    v23 = [v7 count];
    v24 = @"didn't work";
    *buf = 138543874;
    v44 = action3;
    if (v20)
    {
      v24 = @"worked";
    }

    v45 = 2048;
    v46 = v23;
    v47 = 2112;
    v48 = v24;
    _os_log_impl(&dword_22D092000, v21, OS_LOG_TYPE_DEFAULT, "Replaying flag action %{public}@ for %lu uids %@", buf, 0x20u);
  }

  if (v20)
  {
    v25 = [[ECLocalMessageActionResults alloc] initWithError:0];
  }

  else
  {
    serverInterface2 = [(ECIMAPFlagChangeActionReplayer *)self serverInterface];
    hasValidConnection = [serverInterface2 hasValidConnection];

    if (hasValidConnection)
    {
      v28 = [ECLocalMessageActionResults alloc];
      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECLocalActionReplayErrorDomain" code:1 userInfo:0];
      v25 = [(ECLocalMessageActionResults *)v28 initWithError:v29];
    }

    else
    {
      v25 = 0;
    }
  }

  v30 = *MEMORY[0x277D85DE8];

  return v25;
}

- (ECIMAPLocalActionReplayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end