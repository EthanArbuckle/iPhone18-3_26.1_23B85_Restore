@interface ACCUserNotification
- (ACCUserNotification)init;
- (void)createBackingUserNotification;
- (void)setUserNotificationCF:(__CFUserNotification *)f;
- (void)updateBackingUserNotification;
@end

@implementation ACCUserNotification

- (ACCUserNotification)init
{
  v20.receiver = self;
  v20.super_class = ACCUserNotification;
  v2 = [(ACCUserNotification *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->_userNotificationCF = 0;
    v4 = +[NSUUID UUID];
    uUIDString = [v4 UUIDString];
    uuid = v3->_uuid;
    v3->_uuid = uUIDString;

    v3->_type = 0;
    title = v3->_title;
    v3->_title = 0;

    message = v3->_message;
    v3->_message = 0;

    lockScreenTitle = v3->_lockScreenTitle;
    v3->_lockScreenTitle = 0;

    lockScreenMessage = v3->_lockScreenMessage;
    v3->_lockScreenMessage = 0;

    defaultButtonName = v3->_defaultButtonName;
    v3->_defaultButtonName = 0;

    otherButtonName = v3->_otherButtonName;
    v3->_otherButtonName = 0;

    iconURL = v3->_iconURL;
    v3->_iconURL = 0;

    *&v3->_isModal = 0;
    systemSoundID = v3->_systemSoundID;
    v3->_systemSoundID = 0;

    identifier = v3->_identifier;
    v3->_identifier = 0;

    groupIdentifier = v3->_groupIdentifier;
    v3->_groupIdentifier = 0;

    v3->_allowLockScreenDismissal = 1;
    v17 = +[NSMutableDictionary dictionary];
    iconConfiguration = v3->_iconConfiguration;
    v3->_iconConfiguration = v17;
  }

  return v3;
}

- (void)createBackingUserNotification
{
  if ([(ACCUserNotification *)self userNotificationCF])
  {
    [(ACCUserNotification *)self setUserNotificationCF:0];
  }

  [(ACCUserNotification *)self isModal];
  v41[0] = kCFUserNotificationAlertHeaderKey;
  title = [(ACCUserNotification *)self title];
  v40 = title;
  if (title)
  {
    v5 = title;
  }

  else
  {
    v5 = &stru_10022D360;
  }

  v42[0] = v5;
  v41[1] = kCFUserNotificationAlertMessageKey;
  message = [(ACCUserNotification *)self message];
  v7 = message;
  if (message)
  {
    v8 = message;
  }

  else
  {
    v8 = &stru_10022D360;
  }

  v42[1] = v8;
  v41[2] = kCFUserNotificationAlertTopMostKey;
  v39 = [NSNumber numberWithBool:1];
  v42[2] = v39;
  v41[3] = SBUserNotificationDismissOnLock;
  v38 = [NSNumber numberWithBool:0];
  v42[3] = v38;
  v41[4] = SBUserNotificationDontDismissOnUnlock;
  v9 = [NSNumber numberWithBool:[(ACCUserNotification *)self dismissOnUnlock]^ 1];
  v42[4] = v9;
  v41[5] = SBUserNotificationIgnoresQuietMode;
  v10 = [NSNumber numberWithBool:[(ACCUserNotification *)self ignoreQuietMode]];
  v42[5] = v10;
  v41[6] = SBUserNotificationLockScreenAlertHeaderKey;
  lockScreenTitle = [(ACCUserNotification *)self lockScreenTitle];
  v12 = lockScreenTitle;
  if (!lockScreenTitle)
  {
    title2 = [(ACCUserNotification *)self title];
    v36 = title2;
    if (title2)
    {
      v12 = title2;
    }

    else
    {
      v12 = &stru_10022D360;
    }
  }

  v42[6] = v12;
  v41[7] = SBUserNotificationLockScreenAlertMessageKey;
  lockScreenMessage = [(ACCUserNotification *)self lockScreenMessage];
  v15 = lockScreenMessage;
  if (!lockScreenMessage)
  {
    message2 = [(ACCUserNotification *)self message];
    v2 = message2;
    if (message2)
    {
      v15 = message2;
    }

    else
    {
      v15 = &stru_10022D360;
    }
  }

  v42[7] = v15;
  v41[8] = SBUserNotificationAllowLockscreenDismissalKey;
  v17 = [NSNumber numberWithBool:[(ACCUserNotification *)self allowLockScreenDismissal]];
  v42[8] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:9];
  v19 = [v18 mutableCopy];

  if (!lockScreenMessage)
  {
  }

  if (!lockScreenTitle)
  {
  }

  defaultButtonName = [(ACCUserNotification *)self defaultButtonName];
  if (defaultButtonName)
  {
    v21 = defaultButtonName;
    defaultButtonName2 = [(ACCUserNotification *)self defaultButtonName];
    v23 = [defaultButtonName2 length];

    if (v23)
    {
      defaultButtonName3 = [(ACCUserNotification *)self defaultButtonName];
      [v19 setObject:defaultButtonName3 forKey:kCFUserNotificationDefaultButtonTitleKey];
    }
  }

  otherButtonName = [(ACCUserNotification *)self otherButtonName];
  if (otherButtonName)
  {
    v26 = otherButtonName;
    otherButtonName2 = [(ACCUserNotification *)self otherButtonName];
    v28 = [otherButtonName2 length];

    if (v28)
    {
      otherButtonName3 = [(ACCUserNotification *)self otherButtonName];
      [v19 setObject:otherButtonName3 forKey:kCFUserNotificationAlternateButtonTitleKey];
    }
  }

  systemSoundID = [(ACCUserNotification *)self systemSoundID];

  if (systemSoundID)
  {
    systemSoundID2 = [(ACCUserNotification *)self systemSoundID];
    [v19 setObject:systemSoundID2 forKey:SBUserNotificationSystemSoundIDKey];
  }

  iconConfiguration = [(ACCUserNotification *)self iconConfiguration];
  v33 = [iconConfiguration count];

  if (v33)
  {
    iconConfiguration2 = [(ACCUserNotification *)self iconConfiguration];
    [v19 setObject:iconConfiguration2 forKey:SBUserNotificationHeaderGraphicIconDefinitionKey];
  }

  if ([(ACCUserNotification *)self presentViaSystemAperture])
  {
    [v19 setObject:&__kCFBooleanTrue forKey:SBUserNotificationSystemAperturePresentationKey];
  }

  v35 = [v19 copy];
  [(ACCUserNotification *)self setUserNotificationCFDict:v35];
}

- (void)setUserNotificationCF:(__CFUserNotification *)f
{
  userNotificationCF = self->_userNotificationCF;
  if (userNotificationCF)
  {
    CFRelease(userNotificationCF);
  }

  if (f)
  {
    v6 = CFRetain(f);
  }

  else
  {
    v6 = 0;
  }

  self->_userNotificationCF = v6;
}

- (void)updateBackingUserNotification
{
  userNotificationCF = [(ACCUserNotification *)self userNotificationCF];
  [(ACCUserNotification *)self createBackingUserNotification];

  [(ACCUserNotification *)self setUserNotificationCF:userNotificationCF];
}

@end