@interface DEDNotifierConfiguration
+ (id)archivedClasses;
+ (id)enhancedLoggingConfiguration;
- (BOOL)isEqual:(id)equal;
- (DEDNotifierConfiguration)initWithCoder:(id)coder;
- (DEDNotifierConfiguration)initWithHostAppIdentifier:(id)identifier localizedNotificationTitle:(id)title localizedNotificationBody:(id)body;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DEDNotifierConfiguration

- (DEDNotifierConfiguration)initWithHostAppIdentifier:(id)identifier localizedNotificationTitle:(id)title localizedNotificationBody:(id)body
{
  identifierCopy = identifier;
  titleCopy = title;
  bodyCopy = body;
  v15.receiver = self;
  v15.super_class = DEDNotifierConfiguration;
  v12 = [(DEDNotifierConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_hostAppIdentifier, identifier);
    objc_storeStrong(&v13->_localizedNotificationTitle, title);
    objc_storeStrong(&v13->_localizedNotificationBody, body);
  }

  return v13;
}

+ (id)enhancedLoggingConfiguration
{
  v2 = [[DEDNotifierConfiguration alloc] initWithHostAppIdentifier:&stru_285B72378 localizedNotificationTitle:0 localizedNotificationBody:&stru_285B72378];

  return v2;
}

- (DEDNotifierConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v44.receiver = self;
  v44.super_class = DEDNotifierConfiguration;
  v5 = [(DEDNotifierConfiguration *)&v44 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hostAppIdentifier"];
    hostAppIdentifier = v5->_hostAppIdentifier;
    v5->_hostAppIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedNotificationTitle"];
    localizedNotificationTitle = v5->_localizedNotificationTitle;
    v5->_localizedNotificationTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedNotificationBody"];
    localizedNotificationBody = v5->_localizedNotificationBody;
    v5->_localizedNotificationBody = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reviewActionLabel"];
    reviewActionLabel = v5->_reviewActionLabel;
    v5->_reviewActionLabel = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sendActionLabel"];
    sendActionLabel = v5->_sendActionLabel;
    v5->_sendActionLabel = v14;

    v5->_userNotificationShouldPlaySound = [coderCopy decodeBoolForKey:@"userNotificationShouldPlaySound"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"followupUniqueIdentifier"];
    followupUniqueIdentifier = v5->_followupUniqueIdentifier;
    v5->_followupUniqueIdentifier = v16;

    [coderCopy decodeDoubleForKey:@"followupFrequency"];
    v5->_followupFrequency = v18;
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"followupReviewActionURL"];
    followupReviewActionURL = v5->_followupReviewActionURL;
    v5->_followupReviewActionURL = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"followupSendActionURL"];
    followupSendActionURL = v5->_followupSendActionURL;
    v5->_followupSendActionURL = v21;

    archivedClasses = [objc_opt_class() archivedClasses];
    v24 = [coderCopy decodeObjectOfClasses:archivedClasses forKey:@"followupReviewActionUserInfo"];
    followupReviewActionUserInfo = v5->_followupReviewActionUserInfo;
    v5->_followupReviewActionUserInfo = v24;

    archivedClasses2 = [objc_opt_class() archivedClasses];
    v27 = [coderCopy decodeObjectOfClasses:archivedClasses2 forKey:@"followupSendActionUserInfo"];
    followupSendActionUserInfo = v5->_followupSendActionUserInfo;
    v5->_followupSendActionUserInfo = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"followupLocalizedTitle"];
    followupLocalizedTitle = v5->_followupLocalizedTitle;
    v5->_followupLocalizedTitle = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"followupLocalizedInformativeText"];
    followupLocalizedInformativeText = v5->_followupLocalizedInformativeText;
    v5->_followupLocalizedInformativeText = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"followupExtensionIdentifier"];
    followupExtensionIdentifier = v5->_followupExtensionIdentifier;
    v5->_followupExtensionIdentifier = v33;

    v5->_followupUseSpringboardNotification = [coderCopy decodeBoolForKey:@"followupUseSpringboardNotification"];
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"followupNotificationActionURL"];
    followupNotificationActionURL = v5->_followupNotificationActionURL;
    v5->_followupNotificationActionURL = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"followupNotificationActionTitle"];
    followupNotificationActionTitle = v5->_followupNotificationActionTitle;
    v5->_followupNotificationActionTitle = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"followupNotificationBundlePath"];
    followupNotificationBundlePath = v5->_followupNotificationBundlePath;
    v5->_followupNotificationBundlePath = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"followupNotificationBundleIconName"];
    followupNotificationBundleIconName = v5->_followupNotificationBundleIconName;
    v5->_followupNotificationBundleIconName = v41;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hostAppIdentifier = [(DEDNotifierConfiguration *)self hostAppIdentifier];
  [coderCopy encodeObject:hostAppIdentifier forKey:@"hostAppIdentifier"];

  localizedNotificationTitle = [(DEDNotifierConfiguration *)self localizedNotificationTitle];
  [coderCopy encodeObject:localizedNotificationTitle forKey:@"localizedNotificationTitle"];

  localizedNotificationBody = [(DEDNotifierConfiguration *)self localizedNotificationBody];
  [coderCopy encodeObject:localizedNotificationBody forKey:@"localizedNotificationBody"];

  reviewActionLabel = [(DEDNotifierConfiguration *)self reviewActionLabel];
  [coderCopy encodeObject:reviewActionLabel forKey:@"reviewActionLabel"];

  sendActionLabel = [(DEDNotifierConfiguration *)self sendActionLabel];
  [coderCopy encodeObject:sendActionLabel forKey:@"sendActionLabel"];

  [coderCopy encodeBool:-[DEDNotifierConfiguration userNotificationShouldPlaySound](self forKey:{"userNotificationShouldPlaySound"), @"userNotificationShouldPlaySound"}];
  followupUniqueIdentifier = [(DEDNotifierConfiguration *)self followupUniqueIdentifier];
  [coderCopy encodeObject:followupUniqueIdentifier forKey:@"followupUniqueIdentifier"];

  [(DEDNotifierConfiguration *)self followupFrequency];
  [coderCopy encodeDouble:@"followupFrequency" forKey:?];
  followupReviewActionURL = [(DEDNotifierConfiguration *)self followupReviewActionURL];
  [coderCopy encodeObject:followupReviewActionURL forKey:@"followupReviewActionURL"];

  followupSendActionURL = [(DEDNotifierConfiguration *)self followupSendActionURL];
  [coderCopy encodeObject:followupSendActionURL forKey:@"followupSendActionURL"];

  followupLocalizedTitle = [(DEDNotifierConfiguration *)self followupLocalizedTitle];
  [coderCopy encodeObject:followupLocalizedTitle forKey:@"followupLocalizedTitle"];

  followupLocalizedInformativeText = [(DEDNotifierConfiguration *)self followupLocalizedInformativeText];
  [coderCopy encodeObject:followupLocalizedInformativeText forKey:@"followupLocalizedInformativeText"];

  followupExtensionIdentifier = [(DEDNotifierConfiguration *)self followupExtensionIdentifier];
  [coderCopy encodeObject:followupExtensionIdentifier forKey:@"followupExtensionIdentifier"];

  [coderCopy encodeBool:-[DEDNotifierConfiguration followupUseSpringboardNotification](self forKey:{"followupUseSpringboardNotification"), @"followupUseSpringboardNotification"}];
  followupNotificationActionURL = [(DEDNotifierConfiguration *)self followupNotificationActionURL];
  [coderCopy encodeObject:followupNotificationActionURL forKey:@"followupNotificationActionURL"];

  followupNotificationActionTitle = [(DEDNotifierConfiguration *)self followupNotificationActionTitle];
  [coderCopy encodeObject:followupNotificationActionTitle forKey:@"followupNotificationActionTitle"];

  followupNotificationBundlePath = [(DEDNotifierConfiguration *)self followupNotificationBundlePath];
  [coderCopy encodeObject:followupNotificationBundlePath forKey:@"followupNotificationBundlePath"];

  followupNotificationBundleIconName = [(DEDNotifierConfiguration *)self followupNotificationBundleIconName];
  [coderCopy encodeObject:followupNotificationBundleIconName forKey:@"followupNotificationBundleIconName"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      hostAppIdentifier = [(DEDNotifierConfiguration *)self hostAppIdentifier];
      hostAppIdentifier2 = [v5 hostAppIdentifier];
      if (![hostAppIdentifier isEqualToString:hostAppIdentifier2])
      {
        v15 = 0;
LABEL_50:

        goto LABEL_51;
      }

      localizedNotificationTitle = [(DEDNotifierConfiguration *)self localizedNotificationTitle];
      localizedNotificationTitle2 = [v5 localizedNotificationTitle];
      if (![localizedNotificationTitle isEqualToString:localizedNotificationTitle2])
      {
        v15 = 0;
LABEL_49:

        goto LABEL_50;
      }

      localizedNotificationBody = [(DEDNotifierConfiguration *)self localizedNotificationBody];
      localizedNotificationBody2 = [v5 localizedNotificationBody];
      if (![localizedNotificationBody isEqualToString:localizedNotificationBody2])
      {
        v15 = 0;
LABEL_48:

        goto LABEL_49;
      }

      reviewActionLabel = [(DEDNotifierConfiguration *)self reviewActionLabel];
      reviewActionLabel2 = [v5 reviewActionLabel];
      if (![reviewActionLabel isEqualToString:?])
      {
        v15 = 0;
LABEL_47:

        goto LABEL_48;
      }

      v48 = localizedNotificationBody;
      sendActionLabel = [(DEDNotifierConfiguration *)self sendActionLabel];
      [v5 sendActionLabel];
      v47 = v49 = sendActionLabel;
      if ([sendActionLabel isEqualToString:?])
      {
        v46 = reviewActionLabel;
        userNotificationShouldPlaySound = [(DEDNotifierConfiguration *)self userNotificationShouldPlaySound];
        if (userNotificationShouldPlaySound == [v5 userNotificationShouldPlaySound])
        {
          followupUniqueIdentifier = [(DEDNotifierConfiguration *)self followupUniqueIdentifier];
          followupUniqueIdentifier2 = [v5 followupUniqueIdentifier];
          v45 = followupUniqueIdentifier;
          reviewActionLabel = v46;
          if ([followupUniqueIdentifier isEqualToString:?] && (-[DEDNotifierConfiguration followupFrequency](self, "followupFrequency"), v18 = v17, objc_msgSend(v5, "followupFrequency"), v18 == v19))
          {
            followupReviewActionURL = [(DEDNotifierConfiguration *)self followupReviewActionURL];
            followupReviewActionURL2 = [v5 followupReviewActionURL];
            v43 = followupReviewActionURL;
            if ([followupReviewActionURL isEqual:?])
            {
              followupSendActionURL = [(DEDNotifierConfiguration *)self followupSendActionURL];
              followupSendActionURL2 = [v5 followupSendActionURL];
              v41 = followupSendActionURL;
              if ([followupSendActionURL isEqual:?])
              {
                followupLocalizedTitle = [(DEDNotifierConfiguration *)self followupLocalizedTitle];
                followupLocalizedTitle2 = [v5 followupLocalizedTitle];
                v39 = followupLocalizedTitle;
                if ([followupLocalizedTitle isEqualToString:?])
                {
                  followupLocalizedInformativeText = [(DEDNotifierConfiguration *)self followupLocalizedInformativeText];
                  followupLocalizedInformativeText2 = [v5 followupLocalizedInformativeText];
                  v37 = followupLocalizedInformativeText;
                  if ([followupLocalizedInformativeText isEqualToString:?])
                  {
                    followupUseSpringboardNotification = [(DEDNotifierConfiguration *)self followupUseSpringboardNotification];
                    if (followupUseSpringboardNotification == [v5 followupUseSpringboardNotification])
                    {
                      followupNotificationActionURL = [(DEDNotifierConfiguration *)self followupNotificationActionURL];
                      followupNotificationActionURL2 = [v5 followupNotificationActionURL];
                      if ([followupNotificationActionURL isEqual:?])
                      {
                        followupNotificationActionTitle = [(DEDNotifierConfiguration *)self followupNotificationActionTitle];
                        followupNotificationActionTitle2 = [v5 followupNotificationActionTitle];
                        v34 = followupNotificationActionTitle;
                        if ([followupNotificationActionTitle isEqualToString:?])
                        {
                          followupNotificationBundlePath = [(DEDNotifierConfiguration *)self followupNotificationBundlePath];
                          followupNotificationBundlePath2 = [v5 followupNotificationBundlePath];
                          v32 = followupNotificationBundlePath;
                          if ([followupNotificationBundlePath isEqualToString:?])
                          {
                            followupNotificationBundleIconName = [(DEDNotifierConfiguration *)self followupNotificationBundleIconName];
                            followupNotificationBundleIconName2 = [v5 followupNotificationBundleIconName];
                            v15 = [followupNotificationBundleIconName isEqualToString:followupNotificationBundleIconName2];
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

                    reviewActionLabel = v46;
                  }

                  else
                  {
                    v15 = 0;
                  }

                  localizedNotificationBody = v48;
                }

                else
                {
                  v15 = 0;
                  localizedNotificationBody = v48;
                }
              }

              else
              {
                v15 = 0;
                localizedNotificationBody = v48;
              }
            }

            else
            {
              v15 = 0;
              localizedNotificationBody = v48;
            }
          }

          else
          {
            v15 = 0;
            localizedNotificationBody = v48;
          }

          goto LABEL_46;
        }

        v15 = 0;
        reviewActionLabel = v46;
      }

      else
      {
        v15 = 0;
      }

      localizedNotificationBody = v48;
LABEL_46:

      goto LABEL_47;
    }
  }

  v15 = 0;
LABEL_51:

  return v15;
}

@end