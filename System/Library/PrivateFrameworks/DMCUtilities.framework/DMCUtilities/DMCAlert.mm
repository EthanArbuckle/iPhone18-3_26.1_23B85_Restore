@interface DMCAlert
- (NSString)summary;
- (id)notificationParametersOutFlags:(unint64_t *)a3;
@end

@implementation DMCAlert

- (NSString)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(DMCAlert *)self title];
  v5 = [(DMCAlert *)self message];
  v6 = [(DMCAlert *)self defaultButtonText];
  v7 = [(DMCAlert *)self alternateButtonText];
  v8 = [(DMCAlert *)self otherButtonText];
  v9 = [v3 stringWithFormat:@"%@ - %@ [%@] [%@] [%@]", v4, v5, v6, v7, v8];

  return v9;
}

- (id)notificationParametersOutFlags:(unint64_t *)a3
{
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:DMCSBUserNotificationDontDismissOnUnlock()];
  v6 = [(DMCAlert *)self title];

  if (v6)
  {
    v7 = [(DMCAlert *)self title];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E695EE58]];
  }

  v8 = [(DMCAlert *)self message];

  if (v8)
  {
    v9 = [(DMCAlert *)self message];
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x1E695EE60]];
  }

  v10 = [(DMCAlert *)self defaultButtonText];

  if (v10)
  {
    v11 = [(DMCAlert *)self defaultButtonText];
    [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x1E695EE78]];
  }

  v12 = [(DMCAlert *)self alternateButtonText];

  if (v12)
  {
    v13 = [(DMCAlert *)self alternateButtonText];
    [v5 setObject:v13 forKeyedSubscript:*MEMORY[0x1E695EE70]];
  }

  v14 = [(DMCAlert *)self otherButtonText];

  if (v14)
  {
    v15 = [(DMCAlert *)self otherButtonText];
    [v5 setObject:v15 forKeyedSubscript:*MEMORY[0x1E695EE98]];
  }

  if ([(DMCAlert *)self destructive])
  {
    [v5 setObject:&unk_1F2868230 forKeyedSubscript:@"SBUserNotificationAlternateButtonPresentationStyle"];
  }

  if ([(DMCAlert *)self displayOnLockScreen])
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695EE68]];
  }

  if ([(DMCAlert *)self dismissOnLock])
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:DMCSBUserNotificationDismissOnLock()];
  }

  *a3 = 0;
  v16 = [(DMCAlert *)self defaultButtonText];
  if (v16)
  {
    v17 = v16;
    v18 = [(DMCAlert *)self alternateButtonText];
    if (v18)
    {
      v19 = v18;
      v20 = [(DMCAlert *)self otherButtonText];

      if (v20)
      {
        *a3 |= 0x20uLL;
      }
    }

    else
    {
    }
  }

  return v5;
}

@end