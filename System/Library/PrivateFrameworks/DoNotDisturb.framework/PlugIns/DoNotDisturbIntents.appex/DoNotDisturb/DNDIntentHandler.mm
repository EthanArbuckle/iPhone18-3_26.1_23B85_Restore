@interface DNDIntentHandler
- (void)handleToggleDoNotDisturb:(id)disturb completion:(id)completion;
@end

@implementation DNDIntentHandler

- (void)handleToggleDoNotDisturb:(id)disturb completion:(id)completion
{
  disturbCopy = disturb;
  completionCopy = completion;
  v7 = DNDIntentLog;
  if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v86 = disturbCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling intent: %{public}@", buf, 0xCu);
  }

  userInteractive = [disturbCopy userInteractive];
  bOOLValue = [userInteractive BOOLValue];

  if (bOOLValue)
  {
    v10 = @"com.apple.donotdisturb.private.intents.user-interactive";
  }

  else
  {
    v10 = @"com.apple.donotdisturb.private.intents";
  }

  v11 = [DNDModeSelectionService serviceForClientIdentifier:v10];
  mode = [disturbCopy mode];
  if ([disturbCopy state] == 1)
  {
    duration = [disturbCopy duration];

    if (duration)
    {
      duration2 = [disturbCopy duration];
      [duration2 doubleValue];
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
      event = [disturbCopy event];

      if (!event)
      {
        location = [disturbCopy location];

        if (location)
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

      event2 = [disturbCopy event];
      identifier = [event2 identifier];

      if (identifier)
      {
        event3 = [disturbCopy event];
        identifier2 = [event3 identifier];
        v41 = [DNDModeAssertionLifetime lifetimeUntilEndOfCalendarEventWithUniqueID:identifier2 occurrenceDate:0];

LABEL_58:
        v61 = objc_alloc_init(DNDMutableModeAssertionDetails);
        [v61 setIdentifier:@"com.apple.donotdisturb.private.intents"];
        identifier3 = [mode identifier];
        [v61 setModeIdentifier:identifier3];

        [v61 setLifetime:v41];
        v63 = DNDIntentLog;
        if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
        {
          v64 = v63;
          displayString = [mode displayString];
          identifier4 = [mode identifier];
          *buf = 138543874;
          v86 = displayString;
          v87 = 2114;
          v88 = identifier4;
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

  if ([disturbCopy state] == 2)
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
    state = [disturbCopy state];
    v23 = DNDIntentLog;
    if (state != 3)
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
      displayString2 = [mode displayString];
      identifier5 = [mode identifier];
      *buf = 138543618;
      v86 = displayString2;
      v87 = 2114;
      v88 = identifier5;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Toggling mode: %{public}@ (%{public}@) without lifetime", buf, 0x16u);
    }

    v81 = 0;
    v27 = [v11 activeModeAssertionWithError:&v81];
    v73 = v81;
    details = [v27 details];
    modeIdentifier = [details modeIdentifier];
    identifier6 = [mode identifier];
    v31 = [modeIdentifier isEqualToString:identifier6];

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

            modeIdentifier2 = [*(*(&v75 + 1) + 8 * i) modeIdentifier];
            identifier7 = [mode identifier];
            v51 = [modeIdentifier2 isEqualToString:identifier7];

            if (v51)
            {

              v54 = objc_alloc_init(DNDMutableModeAssertionDetails);
              [v54 setIdentifier:@"com.apple.donotdisturb.private.intents"];
              identifier8 = [mode identifier];
              [v54 setModeIdentifier:identifier8];

              v56 = DNDIntentLog;
              if (os_log_type_enabled(DNDIntentLog, OS_LOG_TYPE_DEFAULT))
              {
                v57 = v56;
                displayString3 = [mode displayString];
                identifier9 = [mode identifier];
                *buf = 138543618;
                v86 = displayString3;
                v87 = 2114;
                v88 = identifier9;
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
  completionCopy[2](completionCopy, v69);
}

@end