@interface DEDNotifierConfiguration
+ (id)archivedClasses;
+ (id)enhancedLoggingConfiguration;
- (BOOL)isEqual:(id)a3;
- (DEDNotifierConfiguration)initWithCoder:(id)a3;
- (DEDNotifierConfiguration)initWithHostAppIdentifier:(id)a3 localizedNotificationTitle:(id)a4 localizedNotificationBody:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DEDNotifierConfiguration

- (DEDNotifierConfiguration)initWithHostAppIdentifier:(id)a3 localizedNotificationTitle:(id)a4 localizedNotificationBody:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = DEDNotifierConfiguration;
  v12 = [(DEDNotifierConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_hostAppIdentifier, a3);
    objc_storeStrong(&v13->_localizedNotificationTitle, a4);
    objc_storeStrong(&v13->_localizedNotificationBody, a5);
  }

  return v13;
}

+ (id)enhancedLoggingConfiguration
{
  v2 = [[DEDNotifierConfiguration alloc] initWithHostAppIdentifier:&stru_285B72378 localizedNotificationTitle:0 localizedNotificationBody:&stru_285B72378];

  return v2;
}

- (DEDNotifierConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = DEDNotifierConfiguration;
  v5 = [(DEDNotifierConfiguration *)&v44 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hostAppIdentifier"];
    hostAppIdentifier = v5->_hostAppIdentifier;
    v5->_hostAppIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedNotificationTitle"];
    localizedNotificationTitle = v5->_localizedNotificationTitle;
    v5->_localizedNotificationTitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedNotificationBody"];
    localizedNotificationBody = v5->_localizedNotificationBody;
    v5->_localizedNotificationBody = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reviewActionLabel"];
    reviewActionLabel = v5->_reviewActionLabel;
    v5->_reviewActionLabel = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sendActionLabel"];
    sendActionLabel = v5->_sendActionLabel;
    v5->_sendActionLabel = v14;

    v5->_userNotificationShouldPlaySound = [v4 decodeBoolForKey:@"userNotificationShouldPlaySound"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"followupUniqueIdentifier"];
    followupUniqueIdentifier = v5->_followupUniqueIdentifier;
    v5->_followupUniqueIdentifier = v16;

    [v4 decodeDoubleForKey:@"followupFrequency"];
    v5->_followupFrequency = v18;
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"followupReviewActionURL"];
    followupReviewActionURL = v5->_followupReviewActionURL;
    v5->_followupReviewActionURL = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"followupSendActionURL"];
    followupSendActionURL = v5->_followupSendActionURL;
    v5->_followupSendActionURL = v21;

    v23 = [objc_opt_class() archivedClasses];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"followupReviewActionUserInfo"];
    followupReviewActionUserInfo = v5->_followupReviewActionUserInfo;
    v5->_followupReviewActionUserInfo = v24;

    v26 = [objc_opt_class() archivedClasses];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"followupSendActionUserInfo"];
    followupSendActionUserInfo = v5->_followupSendActionUserInfo;
    v5->_followupSendActionUserInfo = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"followupLocalizedTitle"];
    followupLocalizedTitle = v5->_followupLocalizedTitle;
    v5->_followupLocalizedTitle = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"followupLocalizedInformativeText"];
    followupLocalizedInformativeText = v5->_followupLocalizedInformativeText;
    v5->_followupLocalizedInformativeText = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"followupExtensionIdentifier"];
    followupExtensionIdentifier = v5->_followupExtensionIdentifier;
    v5->_followupExtensionIdentifier = v33;

    v5->_followupUseSpringboardNotification = [v4 decodeBoolForKey:@"followupUseSpringboardNotification"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"followupNotificationActionURL"];
    followupNotificationActionURL = v5->_followupNotificationActionURL;
    v5->_followupNotificationActionURL = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"followupNotificationActionTitle"];
    followupNotificationActionTitle = v5->_followupNotificationActionTitle;
    v5->_followupNotificationActionTitle = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"followupNotificationBundlePath"];
    followupNotificationBundlePath = v5->_followupNotificationBundlePath;
    v5->_followupNotificationBundlePath = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"followupNotificationBundleIconName"];
    followupNotificationBundleIconName = v5->_followupNotificationBundleIconName;
    v5->_followupNotificationBundleIconName = v41;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DEDNotifierConfiguration *)self hostAppIdentifier];
  [v4 encodeObject:v5 forKey:@"hostAppIdentifier"];

  v6 = [(DEDNotifierConfiguration *)self localizedNotificationTitle];
  [v4 encodeObject:v6 forKey:@"localizedNotificationTitle"];

  v7 = [(DEDNotifierConfiguration *)self localizedNotificationBody];
  [v4 encodeObject:v7 forKey:@"localizedNotificationBody"];

  v8 = [(DEDNotifierConfiguration *)self reviewActionLabel];
  [v4 encodeObject:v8 forKey:@"reviewActionLabel"];

  v9 = [(DEDNotifierConfiguration *)self sendActionLabel];
  [v4 encodeObject:v9 forKey:@"sendActionLabel"];

  [v4 encodeBool:-[DEDNotifierConfiguration userNotificationShouldPlaySound](self forKey:{"userNotificationShouldPlaySound"), @"userNotificationShouldPlaySound"}];
  v10 = [(DEDNotifierConfiguration *)self followupUniqueIdentifier];
  [v4 encodeObject:v10 forKey:@"followupUniqueIdentifier"];

  [(DEDNotifierConfiguration *)self followupFrequency];
  [v4 encodeDouble:@"followupFrequency" forKey:?];
  v11 = [(DEDNotifierConfiguration *)self followupReviewActionURL];
  [v4 encodeObject:v11 forKey:@"followupReviewActionURL"];

  v12 = [(DEDNotifierConfiguration *)self followupSendActionURL];
  [v4 encodeObject:v12 forKey:@"followupSendActionURL"];

  v13 = [(DEDNotifierConfiguration *)self followupLocalizedTitle];
  [v4 encodeObject:v13 forKey:@"followupLocalizedTitle"];

  v14 = [(DEDNotifierConfiguration *)self followupLocalizedInformativeText];
  [v4 encodeObject:v14 forKey:@"followupLocalizedInformativeText"];

  v15 = [(DEDNotifierConfiguration *)self followupExtensionIdentifier];
  [v4 encodeObject:v15 forKey:@"followupExtensionIdentifier"];

  [v4 encodeBool:-[DEDNotifierConfiguration followupUseSpringboardNotification](self forKey:{"followupUseSpringboardNotification"), @"followupUseSpringboardNotification"}];
  v16 = [(DEDNotifierConfiguration *)self followupNotificationActionURL];
  [v4 encodeObject:v16 forKey:@"followupNotificationActionURL"];

  v17 = [(DEDNotifierConfiguration *)self followupNotificationActionTitle];
  [v4 encodeObject:v17 forKey:@"followupNotificationActionTitle"];

  v18 = [(DEDNotifierConfiguration *)self followupNotificationBundlePath];
  [v4 encodeObject:v18 forKey:@"followupNotificationBundlePath"];

  v19 = [(DEDNotifierConfiguration *)self followupNotificationBundleIconName];
  [v4 encodeObject:v19 forKey:@"followupNotificationBundleIconName"];
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DEDNotifierConfiguration *)self hostAppIdentifier];
      v7 = [v5 hostAppIdentifier];
      if (![v6 isEqualToString:v7])
      {
        v15 = 0;
LABEL_50:

        goto LABEL_51;
      }

      v8 = [(DEDNotifierConfiguration *)self localizedNotificationTitle];
      v9 = [v5 localizedNotificationTitle];
      if (![v8 isEqualToString:v9])
      {
        v15 = 0;
LABEL_49:

        goto LABEL_50;
      }

      v10 = [(DEDNotifierConfiguration *)self localizedNotificationBody];
      v11 = [v5 localizedNotificationBody];
      if (![v10 isEqualToString:v11])
      {
        v15 = 0;
LABEL_48:

        goto LABEL_49;
      }

      v12 = [(DEDNotifierConfiguration *)self reviewActionLabel];
      v50 = [v5 reviewActionLabel];
      if (![v12 isEqualToString:?])
      {
        v15 = 0;
LABEL_47:

        goto LABEL_48;
      }

      v48 = v10;
      v13 = [(DEDNotifierConfiguration *)self sendActionLabel];
      [v5 sendActionLabel];
      v47 = v49 = v13;
      if ([v13 isEqualToString:?])
      {
        v46 = v12;
        v14 = [(DEDNotifierConfiguration *)self userNotificationShouldPlaySound];
        if (v14 == [v5 userNotificationShouldPlaySound])
        {
          v16 = [(DEDNotifierConfiguration *)self followupUniqueIdentifier];
          v44 = [v5 followupUniqueIdentifier];
          v45 = v16;
          v12 = v46;
          if ([v16 isEqualToString:?] && (-[DEDNotifierConfiguration followupFrequency](self, "followupFrequency"), v18 = v17, objc_msgSend(v5, "followupFrequency"), v18 == v19))
          {
            v20 = [(DEDNotifierConfiguration *)self followupReviewActionURL];
            v42 = [v5 followupReviewActionURL];
            v43 = v20;
            if ([v20 isEqual:?])
            {
              v21 = [(DEDNotifierConfiguration *)self followupSendActionURL];
              v40 = [v5 followupSendActionURL];
              v41 = v21;
              if ([v21 isEqual:?])
              {
                v22 = [(DEDNotifierConfiguration *)self followupLocalizedTitle];
                v38 = [v5 followupLocalizedTitle];
                v39 = v22;
                if ([v22 isEqualToString:?])
                {
                  v23 = [(DEDNotifierConfiguration *)self followupLocalizedInformativeText];
                  v36 = [v5 followupLocalizedInformativeText];
                  v37 = v23;
                  if ([v23 isEqualToString:?])
                  {
                    v24 = [(DEDNotifierConfiguration *)self followupUseSpringboardNotification];
                    if (v24 == [v5 followupUseSpringboardNotification])
                    {
                      v25 = [(DEDNotifierConfiguration *)self followupNotificationActionURL];
                      v35 = [v5 followupNotificationActionURL];
                      if ([v25 isEqual:?])
                      {
                        v26 = [(DEDNotifierConfiguration *)self followupNotificationActionTitle];
                        v33 = [v5 followupNotificationActionTitle];
                        v34 = v26;
                        if ([v26 isEqualToString:?])
                        {
                          v27 = [(DEDNotifierConfiguration *)self followupNotificationBundlePath];
                          v31 = [v5 followupNotificationBundlePath];
                          v32 = v27;
                          if ([v27 isEqualToString:?])
                          {
                            v30 = [(DEDNotifierConfiguration *)self followupNotificationBundleIconName];
                            v28 = [v5 followupNotificationBundleIconName];
                            v15 = [v30 isEqualToString:v28];
                          }

                          else
                          {
                            v15 = 0;
                          }
                        }

                        else
                        {
                          v15 = 0;
                        }
                      }

                      else
                      {
                        v15 = 0;
                      }
                    }

                    else
                    {
                      v15 = 0;
                    }

                    v12 = v46;
                  }

                  else
                  {
                    v15 = 0;
                  }

                  v10 = v48;
                }

                else
                {
                  v15 = 0;
                  v10 = v48;
                }
              }

              else
              {
                v15 = 0;
                v10 = v48;
              }
            }

            else
            {
              v15 = 0;
              v10 = v48;
            }
          }

          else
          {
            v15 = 0;
            v10 = v48;
          }

          goto LABEL_46;
        }

        v15 = 0;
        v12 = v46;
      }

      else
      {
        v15 = 0;
      }

      v10 = v48;
LABEL_46:

      goto LABEL_47;
    }
  }

  v15 = 0;
LABEL_51:

  return v15;
}

@end