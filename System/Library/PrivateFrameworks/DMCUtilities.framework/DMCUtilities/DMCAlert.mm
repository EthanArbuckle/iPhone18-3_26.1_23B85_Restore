@interface DMCAlert
- (NSString)summary;
- (id)notificationParametersOutFlags:(unint64_t *)flags;
@end

@implementation DMCAlert

- (NSString)summary
{
  v3 = MEMORY[0x1E696AEC0];
  title = [(DMCAlert *)self title];
  message = [(DMCAlert *)self message];
  defaultButtonText = [(DMCAlert *)self defaultButtonText];
  alternateButtonText = [(DMCAlert *)self alternateButtonText];
  otherButtonText = [(DMCAlert *)self otherButtonText];
  v9 = [v3 stringWithFormat:@"%@ - %@ [%@] [%@] [%@]", title, message, defaultButtonText, alternateButtonText, otherButtonText];

  return v9;
}

- (id)notificationParametersOutFlags:(unint64_t *)flags
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:DMCSBUserNotificationDontDismissOnUnlock()];
  title = [(DMCAlert *)self title];

  if (title)
  {
    title2 = [(DMCAlert *)self title];
    [dictionary setObject:title2 forKeyedSubscript:*MEMORY[0x1E695EE58]];
  }

  message = [(DMCAlert *)self message];

  if (message)
  {
    message2 = [(DMCAlert *)self message];
    [dictionary setObject:message2 forKeyedSubscript:*MEMORY[0x1E695EE60]];
  }

  defaultButtonText = [(DMCAlert *)self defaultButtonText];

  if (defaultButtonText)
  {
    defaultButtonText2 = [(DMCAlert *)self defaultButtonText];
    [dictionary setObject:defaultButtonText2 forKeyedSubscript:*MEMORY[0x1E695EE78]];
  }

  alternateButtonText = [(DMCAlert *)self alternateButtonText];

  if (alternateButtonText)
  {
    alternateButtonText2 = [(DMCAlert *)self alternateButtonText];
    [dictionary setObject:alternateButtonText2 forKeyedSubscript:*MEMORY[0x1E695EE70]];
  }

  otherButtonText = [(DMCAlert *)self otherButtonText];

  if (otherButtonText)
  {
    otherButtonText2 = [(DMCAlert *)self otherButtonText];
    [dictionary setObject:otherButtonText2 forKeyedSubscript:*MEMORY[0x1E695EE98]];
  }

  if ([(DMCAlert *)self destructive])
  {
    [dictionary setObject:&unk_1F2868230 forKeyedSubscript:@"SBUserNotificationAlternateButtonPresentationStyle"];
  }

  if ([(DMCAlert *)self displayOnLockScreen])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695EE68]];
  }

  if ([(DMCAlert *)self dismissOnLock])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:DMCSBUserNotificationDismissOnLock()];
  }

  *flags = 0;
  defaultButtonText3 = [(DMCAlert *)self defaultButtonText];
  if (defaultButtonText3)
  {
    v17 = defaultButtonText3;
    alternateButtonText3 = [(DMCAlert *)self alternateButtonText];
    if (alternateButtonText3)
    {
      v19 = alternateButtonText3;
      otherButtonText3 = [(DMCAlert *)self otherButtonText];

      if (otherButtonText3)
      {
        *flags |= 0x20uLL;
      }
    }

    else
    {
    }
  }

  return dictionary;
}

@end