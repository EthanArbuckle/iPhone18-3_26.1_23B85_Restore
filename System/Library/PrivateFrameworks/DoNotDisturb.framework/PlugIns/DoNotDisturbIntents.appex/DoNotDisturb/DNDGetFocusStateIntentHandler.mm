@interface DNDGetFocusStateIntentHandler
- (void)handleGetFocusState:(id)state completion:(id)completion;
@end

@implementation DNDGetFocusStateIntentHandler

- (void)handleGetFocusState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  v7 = DNDIntentLog;
  if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = stateCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling intent: %{public}@", buf, 0xCu);
  }

  focus = [stateCopy focus];
  v9 = [DNDModeSelectionService serviceForClientIdentifier:@"com.apple.DoNotDisturb.Intents"];
  v41 = 0;
  v10 = [v9 availableModesWithError:&v41];
  v11 = v41;
  if (v11)
  {
    v12 = DNDIntentLog;
    if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error getting available modes: %@", buf, 0xCu);
    }

    sub_10000118C(completionCopy, 5, 2);
  }

  else
  {
    v34 = completionCopy;
    v35 = stateCopy;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v33 = v10;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v13);
          }

          modeIdentifier = [*(*(&v37 + 1) + 8 * i) modeIdentifier];
          identifier = [focus identifier];
          v20 = [modeIdentifier isEqualToString:identifier];

          if (v20)
          {

            v36 = 0;
            v22 = [v9 activeModeAssertionWithError:&v36];
            v23 = v36;
            if (v23)
            {
              v24 = DNDIntentLog;
              if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44 = v23;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Error while getting assertion mode: %@.", buf, 0xCu);
              }

              completionCopy = v34;
              sub_10000118C(v34, 5, 2);
              stateCopy = v35;
              v10 = v33;
            }

            else
            {
              v32 = v22;
              details = [v22 details];
              modeIdentifier2 = [details modeIdentifier];
              identifier2 = [focus identifier];
              v28 = [modeIdentifier2 isEqualToString:identifier2];

              v29 = DNDIntentLog;
              v30 = os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT);
              if (v28)
              {
                completionCopy = v34;
                if (v30)
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Requested mode is active.", buf, 2u);
                }

                v31 = 1;
              }

              else
              {
                completionCopy = v34;
                if (v30)
                {
                  *buf = 0;
                  v31 = 2;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Requested mode is not active.", buf, 2u);
                }

                else
                {
                  v31 = 2;
                }
              }

              stateCopy = v35;
              v22 = v32;
              v10 = v33;
              sub_10000118C(completionCopy, 4, v31);
            }

            goto LABEL_31;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v21 = DNDIntentLog;
    if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Requested mode is not configured.", buf, 2u);
    }

    completionCopy = v34;
    sub_10000118C(v34, 100, 2);
    stateCopy = v35;
    v10 = v33;
  }

LABEL_31:
}

@end