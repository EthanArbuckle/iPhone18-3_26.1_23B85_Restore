@interface ECIMAPFlagChangeActionReplayer
- (ECIMAPLocalActionReplayerDelegate)delegate;
- (id)replayAction;
@end

@implementation ECIMAPFlagChangeActionReplayer

- (id)replayAction
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = [(ECLocalActionReplayer *)self action];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"ECIMAPFlagChangeActionReplayer.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"[self.action isKindOfClass:[ECFlagChangeMessageAction class]]"}];
  }

  v6 = [(ECLocalActionReplayer *)self action];
  v34 = [v6 remoteIDs];
  v33 = [v6 messages];
  v7 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = v34;
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
  v12 = v33;
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

        v16 = [*(*(&v35 + 1) + 8 * j) remoteID];
        v17 = [v16 integerValue];

        if (v17)
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
    v18 = [v6 flagChange];
    v19 = [(ECIMAPFlagChangeActionReplayer *)self serverInterface];
    v20 = [v19 storeFlagChange:v18 forUIDs:v7];
  }

  else
  {
    v20 = 1;
  }

  v21 = +[ECLocalActionReplayer log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(ECLocalActionReplayer *)self action];
    v23 = [v7 count];
    v24 = @"didn't work";
    *buf = 138543874;
    v44 = v22;
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
    v26 = [(ECIMAPFlagChangeActionReplayer *)self serverInterface];
    v27 = [v26 hasValidConnection];

    if (v27)
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