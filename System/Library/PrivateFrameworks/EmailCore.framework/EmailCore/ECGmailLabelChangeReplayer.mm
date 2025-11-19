@interface ECGmailLabelChangeReplayer
- (id)replayAction;
@end

@implementation ECGmailLabelChangeReplayer

- (id)replayAction
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = [(ECLocalActionReplayer *)self action];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"ECGmailLabelChangeReplayer.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"[labelChangeAction isKindOfClass:[ECLabelChangeMessageAction class]]"}];
  }

  v35 = [v4 remoteIDs];
  v34 = [v4 messages];
  v5 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = v35;
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v7)
  {
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addIndex:{objc_msgSend(*(*(&v40 + 1) + 8 * i), "integerValue")}];
      }

      v7 = [v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v7);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v34;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v11)
  {
    v12 = *v37;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v36 + 1) + 8 * j) remoteID];
        v15 = [v14 integerValue];

        if (v15)
        {
          [v5 addIndex:?];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v11);
  }

  v33 = [v4 labelsToAdd];
  v16 = [v33 valueForKey:@"labelName"];
  v17 = [v16 allObjects];

  v18 = [v4 labelsToRemove];
  v19 = [v18 valueForKey:@"labelName"];
  v20 = [v19 allObjects];

  if ([v17 count])
  {
    v21 = [(ECGmailLabelChangeReplayer *)self serverInterface];
    v22 = [v21 storeGmailLabels:v17 state:1 forUIDs:v5];

    if (!v22)
    {
      goto LABEL_24;
    }
  }

  if ([v20 count] && (-[ECGmailLabelChangeReplayer serverInterface](self, "serverInterface"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "storeGmailLabels:state:forUIDs:", v20, 0, v5), v23, !v24))
  {
LABEL_24:
    v26 = [(ECGmailLabelChangeReplayer *)self serverInterface];
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

  else
  {
    v25 = [[ECLocalMessageActionResults alloc] initWithError:0];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v25;
}

@end