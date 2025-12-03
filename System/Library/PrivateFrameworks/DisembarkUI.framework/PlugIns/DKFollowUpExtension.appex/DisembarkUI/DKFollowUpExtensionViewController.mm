@interface DKFollowUpExtensionViewController
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
@end

@implementation DKFollowUpExtensionViewController

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  v8 = _DKLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Processing follow up action: %@", buf, 0xCu);
  }

  v9 = [actionCopy url];

  if (v9)
  {
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    v11 = [actionCopy url];
    v24 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
    v25 = &__kCFBooleanTrue;
    domain = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v19 = 0;
    v13 = [v10 openSensitiveURL:v11 withOptions:domain error:&v19];
    v14 = v19;

    if ((v13 & 1) == 0)
    {
      v15 = _DKLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [actionCopy url];
        if (_DKIsInternalInstall())
        {
          v17 = 0;
          v18 = v14;
        }

        else if (v14)
        {
          domain = [v14 domain];
          v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v14 code]);
          v17 = 1;
        }

        else
        {
          v17 = 0;
          v18 = 0;
        }

        *buf = 138412546;
        v21 = v16;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to open URL %@: %{public}@", buf, 0x16u);
        if (v17)
        {
        }
      }
    }
  }

  else
  {
    +[DKFollowUp clearFollowUp];
  }

  completionCopy[2](completionCopy, 1);
}

@end