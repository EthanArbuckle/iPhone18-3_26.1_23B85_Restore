@interface MCNotificationSettingsPayload
+ (id)typeStrings;
- (MCNotificationSettingsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)validatedNotificationSettings:(id)settings outError:(id *)error;
@end

@implementation MCNotificationSettingsPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.notificationsettings";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCNotificationSettingsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v34.receiver = self;
  v34.super_class = MCNotificationSettingsPayload;
  v10 = [(MCPayload *)&v34 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (v10)
  {
    isStub = [profileCopy isStub];
    v12 = objc_opt_class();
    if (isStub)
    {
      v33 = 0;
      v13 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:v12 withKey:@"NotificationSettings" isRequired:0 outError:&v33];
      v14 = v33;
      notificationSettings = v10->_notificationSettings;
      v10->_notificationSettings = v13;
    }

    else
    {
      v32 = 0;
      notificationSettings = [dictionaryCopy MCValidateAndRemoveArrayOfClass:v12 withKey:@"NotificationSettings" isRequired:1 outError:&v32];
      v16 = v32;
      if (v16)
      {
        v14 = v16;
      }

      else
      {
        v31 = 0;
        v17 = [(MCNotificationSettingsPayload *)v10 validatedNotificationSettings:notificationSettings outError:&v31];
        v14 = v31;
        [(MCNotificationSettingsPayload *)v10 setNotificationSettings:v17];
      }
    }

    if (v14)
    {
      v18 = [(MCPayload *)v10 malformedPayloadErrorWithError:v14];
      v19 = v18;
      if (error)
      {
        v20 = v18;
        *error = v19;
      }

      v21 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        v23 = objc_opt_class();
        v24 = v23;
        mCVerboseDescription = [v19 MCVerboseDescription];
        *buf = 138543618;
        v36 = v23;
        v37 = 2114;
        v38 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v22, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
    }

    if ([dictionaryCopy count])
    {
      v26 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v27 = v26;
        friendlyName = [(MCPayload *)v10 friendlyName];
        *buf = 138543618;
        v36 = friendlyName;
        v37 = 2114;
        v38 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v27, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)validatedNotificationSettings:(id)settings outError:(id *)error
{
  v96 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v8 = settingsCopy;
  v9 = [v8 countByEnumeratingWithState:&v89 objects:v95 count:16];
  if (!v9)
  {

LABEL_68:
    v59 = array;
    v11 = 0;
    if (error)
    {
LABEL_69:
      v60 = v11;
      *error = v11;
    }

    goto LABEL_70;
  }

  v10 = v9;
  v74 = array;
  v75 = array2;
  errorCopy = error;
  v11 = 0;
  v77 = *v90;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v90 != v77)
      {
        objc_enumerationMutation(v8);
      }

      v13 = [*(*(&v89 + 1) + 8 * i) mutableCopy];
      v88 = v11;
      v14 = [v13 MCValidateAndRemoveNonZeroLengthStringWithKey:@"BundleIdentifier" isRequired:1 outError:&v88];
      v15 = v88;

      if (v15)
      {

        v59 = 0;
        v11 = v15;
        goto LABEL_73;
      }

      v16 = objc_opt_class();
      v87 = 0;
      v17 = [v13 MCValidateAndRemoveObjectOfClass:v16 withKey:@"NotificationsEnabled" isRequired:0 outError:&v87];
      v18 = v87;
      if (v18)
      {
        v11 = v18;

        v59 = 0;
LABEL_73:
        error = errorCopy;
        array = v74;
        array2 = v75;
        if (errorCopy)
        {
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      v19 = objc_opt_class();
      v86 = 0;
      v20 = [v13 MCValidateAndRemoveObjectOfClass:v19 withKey:@"ShowInNotificationCenter" isRequired:0 outError:&v86];
      v21 = v86;
      if (v21)
      {
        v11 = v21;
        v22 = 0;
      }

      else
      {
        v23 = objc_opt_class();
        v85 = 0;
        v24 = [v13 MCValidateAndRemoveObjectOfClass:v23 withKey:@"ShowInLockScreen" isRequired:0 outError:&v85];
        v25 = v85;
        if (v25)
        {
          v11 = v25;
          v26 = v24;
          v22 = 0;
        }

        else
        {
          v27 = objc_opt_class();
          v84 = 0;
          v76 = [v13 MCValidateAndRemoveObjectOfClass:v27 withKey:@"AlertType" isRequired:0 outError:&v84];
          v28 = v84;
          if (v28)
          {
            v11 = v28;
            v26 = v24;
            v22 = 0;
          }

          else
          {
            v29 = objc_opt_class();
            v83 = 0;
            v72 = [v13 MCValidateAndRemoveObjectOfClass:v29 withKey:@"BadgesEnabled" isRequired:0 outError:&v83];
            v30 = v83;
            if (v30)
            {
              v11 = v30;
              v26 = v24;
              v22 = 0;
            }

            else
            {
              v31 = objc_opt_class();
              v82 = 0;
              v71 = [v13 MCValidateAndRemoveObjectOfClass:v31 withKey:@"SoundsEnabled" isRequired:0 outError:&v82];
              v32 = v82;
              if (v32)
              {
                v11 = v32;
                v26 = v24;
                v22 = 0;
              }

              else
              {
                v33 = objc_opt_class();
                v81 = 0;
                v70 = [v13 MCValidateAndRemoveObjectOfClass:v33 withKey:@"ShowInCarPlay" isRequired:0 outError:&v81];
                v34 = v81;
                if (v34)
                {
                  v11 = v34;
                  v26 = v24;
                  v22 = 0;
                }

                else
                {
                  v35 = objc_opt_class();
                  v80 = 0;
                  v69 = [v13 MCValidateAndRemoveObjectOfClass:v35 withKey:@"CriticalAlertEnabled" isRequired:0 outError:&v80];
                  v36 = v80;
                  if (v36)
                  {
                    v11 = v36;
                    v26 = v24;
                    v22 = 0;
                  }

                  else
                  {
                    v37 = objc_opt_class();
                    v79 = 0;
                    v68 = [v13 MCValidateAndRemoveObjectOfClass:v37 withKey:@"GroupingType" isRequired:0 outError:&v79];
                    v38 = v79;
                    if (v38)
                    {
                      v11 = v38;
                      v26 = v24;
                      v22 = 0;
                    }

                    else
                    {
                      v39 = objc_opt_class();
                      v78 = 0;
                      v67 = [v13 MCValidateAndRemoveObjectOfClass:v39 withKey:@"PreviewType" isRequired:0 outError:&v78];
                      v40 = v78;
                      if (v40)
                      {
                        v11 = v40;
                        v26 = v24;
                        v22 = 0;
                      }

                      else
                      {
                        v64 = [v75 containsObject:v14];
                        if (v64)
                        {
                          v26 = v24;
                          v48 = MEMORY[0x1E696ABC0];
                          v65 = MCErrorArray(@"ERROR_PAYLOAD_MULTIPLE_NOTIFICATION_SETTINGS_FOR_SAME_APP", v41, v42, v43, v44, v45, v46, v47, 0);
                          v11 = [v48 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2000 descriptionArray:? errorType:?];
                        }

                        else
                        {
                          v66 = objc_alloc(MEMORY[0x1E695DF90]);
                          v93[0] = @"BundleIdentifier";
                          v93[1] = @"NotificationsEnabled";
                          if (v17)
                          {
                            v49 = v17;
                          }

                          else
                          {
                            v49 = MEMORY[0x1E695E118];
                          }

                          v94[0] = v14;
                          v94[1] = v49;
                          if (v20)
                          {
                            v50 = v20;
                          }

                          else
                          {
                            v50 = MEMORY[0x1E695E118];
                          }

                          v93[2] = @"ShowInNotificationCenter";
                          v93[3] = @"ShowInLockScreen";
                          if (v24)
                          {
                            v51 = v24;
                          }

                          else
                          {
                            v51 = MEMORY[0x1E695E118];
                          }

                          v94[2] = v50;
                          v94[3] = v51;
                          v52 = &unk_1F1AA5758;
                          if (v76)
                          {
                            v52 = v76;
                          }

                          v93[4] = @"AlertType";
                          v53 = v72;
                          if (!v72)
                          {
                            v53 = MEMORY[0x1E695E118];
                          }

                          v94[4] = v52;
                          v94[5] = v53;
                          v54 = v71;
                          if (!v71)
                          {
                            v54 = MEMORY[0x1E695E118];
                          }

                          v93[5] = @"BadgesEnabled";
                          v93[6] = @"SoundsEnabled";
                          v93[7] = @"ShowInCarPlay";
                          v55 = v70;
                          if (!v70)
                          {
                            v55 = MEMORY[0x1E695E118];
                          }

                          v94[6] = v54;
                          v94[7] = v55;
                          v56 = MEMORY[0x1E695E110];
                          if (v69)
                          {
                            v56 = v69;
                          }

                          v93[8] = @"CriticalAlertEnabled";
                          v93[9] = @"GroupingType";
                          v57 = &unk_1F1AA5770;
                          if (v68)
                          {
                            v57 = v68;
                          }

                          v94[8] = v56;
                          v94[9] = v57;
                          v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:10];
                          v65 = [v66 initWithDictionary:v58];

                          if (v67)
                          {
                            [v65 setObject:v67 forKeyedSubscript:@"PreviewType"];
                          }

                          v26 = v24;
                          [v75 addObject:v14];
                          [v74 addObject:v65];
                          v11 = 0;
                        }

                        v22 = v64 ^ 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (!v22)
      {
        goto LABEL_64;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v89 objects:v95 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_64:

  error = errorCopy;
  array = v74;
  array2 = v75;
  if (!v11)
  {
    goto LABEL_68;
  }

  v59 = 0;
  if (errorCopy)
  {
    goto LABEL_69;
  }

LABEL_70:
  v61 = v59;

  v62 = *MEMORY[0x1E69E9840];
  return v59;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCNotificationSettingsPayload;
  stubDictionary = [(MCPayload *)&v6 stubDictionary];
  notificationSettings = [(MCNotificationSettingsPayload *)self notificationSettings];
  [stubDictionary setObject:notificationSettings forKeyedSubscript:@"NotificationSettings"];

  return stubDictionary;
}

- (id)payloadDescriptionKeyValueSections
{
  v2 = objc_opt_new();
  if (![v2 count])
  {

    v2 = 0;
  }

  return v2;
}

@end