@interface DNDIntentHandler
- (void)handleToggleDoNotDisturb:(id)a3 completion:(id)a4;
@end

@implementation DNDIntentHandler

- (void)handleToggleDoNotDisturb:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = DNDIntentLog;
  if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v86 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling intent: %{public}@", buf, 0xCu);
  }

  v8 = [v5 userInteractive];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = @"com.apple.donotdisturb.private.intents.user-interactive";
  }

  else
  {
    v10 = @"com.apple.donotdisturb.private.intents";
  }

  v11 = [DNDModeSelectionService serviceForClientIdentifier:v10];
  v12 = [v5 mode];
  if ([v5 state] == 1)
  {
    v13 = [v5 duration];

    if (v13)
    {
      v14 = [v5 duration];
      [v14 doubleValue];
      v16 = v15;

      if (v16 > 0.0)
      {
        v17 = [DNDModeAssertionLifetime lifetimeWithDuration:v16];
LABEL_57:
        v41 = v17;
        goto LABEL_58;
      }
    }

    else
    {
      v36 = [v5 event];

      if (!v36)
      {
        v42 = [v5 location];

        if (v42)
        {
          +[DNDModeAssertionLifetime lifetimeWithCurrentLocation];
        }

        else
        {
          [DNDModeAssertionLifetime lifetimeUntilEndOfScheduleWithIdentifier:DNDDefaultScheduleIdentifier];
        }
        v17 = ;
        goto LABEL_57;
      }

      v37 = [v5 event];
      v38 = [v37 identifier];

      if (v38)
      {
        v39 = [v5 event];
        v40 = [v39 identifier];
        v41 = [DNDModeAssertionLifetime lifetimeUntilEndOfCalendarEventWithUniqueID:v40 occurrenceDate:0];

LABEL_58:
        v61 = objc_alloc_init(DNDMutableModeAssertionDetails);
        [v61 setIdentifier:@"com.apple.donotdisturb.private.intents"];
        v62 = [v12 identifier];
        [v61 setModeIdentifier:v62];

        [v61 setLifetime:v41];
        v63 = DNDIntentLog;
        if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
        {
          v64 = v63;
          v65 = [v12 displayString];
          v66 = [v12 identifier];
          *buf = 138543874;
          v86 = v65;
          v87 = 2114;
          v88 = v66;
          v89 = 2112;
          v90 = v41;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Activating mode: %{public}@ (%{public}@) with lifetime: %@", buf, 0x20u);
        }

        v83 = 0;
        v67 = [v11 activateModeWithDetails:v61 error:&v83];
        v68 = v83;
        if (v67)
        {
          v21 = 4;
        }

        else
        {
          if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_ERROR))
          {
            sub_10000230C();
          }

          v21 = 5;
        }

        goto LABEL_72;
      }
    }

    if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_ERROR))
    {
      sub_1000023E8();
    }

LABEL_34:
    v21 = 5;
    goto LABEL_72;
  }

  if ([v5 state] == 2)
  {
    v18 = DNDIntentLog;
    if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Deactivating all active assertions modes", buf, 2u);
    }

    v82 = 0;
    v19 = [v11 activateModeWithDetails:0 error:&v82];
    v20 = v82;
    if (v19)
    {
      v21 = 4;
    }

    else
    {
      if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_ERROR))
      {
        sub_100002380();
      }

      v21 = 5;
    }
  }

  else
  {
    v22 = [v5 state];
    v23 = DNDIntentLog;
    if (v22 != 3)
    {
      if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_ERROR))
      {
        sub_1000022A4();
      }

      goto LABEL_34;
    }

    if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [v12 displayString];
      v26 = [v12 identifier];
      *buf = 138543618;
      v86 = v25;
      v87 = 2114;
      v88 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Toggling mode: %{public}@ (%{public}@) without lifetime", buf, 0x16u);
    }

    v81 = 0;
    v27 = [v11 activeModeAssertionWithError:&v81];
    v73 = v81;
    v28 = [v27 details];
    v29 = [v28 modeIdentifier];
    v30 = [v12 identifier];
    v31 = [v29 isEqualToString:v30];

    if (v31)
    {
      v32 = DNDIntentLog;
      if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Deactivating all modes", buf, 2u);
      }

      v80 = 0;
      v33 = [v11 activateModeWithDetails:0 error:&v80];
      v34 = v80;
      v35 = v73;
      if (v33)
      {
        v21 = 4;
      }

      else
      {
        if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_ERROR))
        {
          sub_100002380();
        }

        v21 = 5;
      }
    }

    else
    {
      v71 = v27;
      v72 = v11;
      v79 = 0;
      v43 = [v11 availableModesWithError:&v79];
      v70 = v79;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v44 = v43;
      v45 = [v44 countByEnumeratingWithState:&v75 objects:v84 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v76;
        while (2)
        {
          for (i = 0; i != v46; i = i + 1)
          {
            if (*v76 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = [*(*(&v75 + 1) + 8 * i) modeIdentifier];
            v50 = [v12 identifier];
            v51 = [v49 isEqualToString:v50];

            if (v51)
            {

              v54 = objc_alloc_init(DNDMutableModeAssertionDetails);
              [v54 setIdentifier:@"com.apple.donotdisturb.private.intents"];
              v55 = [v12 identifier];
              [v54 setModeIdentifier:v55];

              v56 = DNDIntentLog;
              if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
              {
                v57 = v56;
                v58 = [v12 displayString];
                v59 = [v12 identifier];
                *buf = 138543618;
                v86 = v58;
                v87 = 2114;
                v88 = v59;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Activating mode: %{public}@ (%{public}@) without lifetime", buf, 0x16u);
              }

              v11 = v72;
              v74 = v73;
              v60 = [v72 activateModeWithDetails:v54 error:&v74];
              v53 = v74;

              if (v60)
              {
                v21 = 4;
              }

              else
              {
                if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_ERROR))
                {
                  sub_10000230C();
                }

                v21 = 5;
              }

              v27 = v71;

              goto LABEL_70;
            }
          }

          v46 = [v44 countByEnumeratingWithState:&v75 objects:v84 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      v52 = DNDIntentLog;
      if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Cannot activate mode because it isn't available.", buf, 2u);
      }

      v21 = 5;
      v11 = v72;
      v53 = v73;
      v27 = v71;
LABEL_70:
      v34 = v70;

      v35 = v53;
    }
  }

LABEL_72:
  v69 = [[DNDToggleDoNotDisturbIntentResponse alloc] initWithCode:v21 userActivity:0];
  v6[2](v6, v69);
}

@end