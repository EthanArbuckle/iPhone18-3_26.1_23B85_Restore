@interface DNDGetFocusStateIntentHandler
- (void)handleGetFocusState:(id)a3 completion:(id)a4;
@end

@implementation DNDGetFocusStateIntentHandler

- (void)handleGetFocusState:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = DNDIntentLog;
  if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling intent: %{public}@", buf, 0xCu);
  }

  v8 = [v5 focus];
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

    sub_10000118C(v6, 5, 2);
  }

  else
  {
    v34 = v6;
    v35 = v5;
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

          v18 = [*(*(&v37 + 1) + 8 * i) modeIdentifier];
          v19 = [v8 identifier];
          v20 = [v18 isEqualToString:v19];

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

              v6 = v34;
              sub_10000118C(v34, 5, 2);
              v5 = v35;
              v10 = v33;
            }

            else
            {
              v32 = v22;
              v25 = [v22 details];
              v26 = [v25 modeIdentifier];
              v27 = [v8 identifier];
              v28 = [v26 isEqualToString:v27];

              v29 = DNDIntentLog;
              v30 = os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT);
              if (v28)
              {
                v6 = v34;
                if (v30)
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Requested mode is active.", buf, 2u);
                }

                v31 = 1;
              }

              else
              {
                v6 = v34;
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

              v5 = v35;
              v22 = v32;
              v10 = v33;
              sub_10000118C(v6, 4, v31);
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

    v6 = v34;
    sub_10000118C(v34, 100, 2);
    v5 = v35;
    v10 = v33;
  }

LABEL_31:
}

@end