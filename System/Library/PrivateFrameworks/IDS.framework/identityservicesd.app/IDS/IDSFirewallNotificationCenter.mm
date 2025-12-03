@interface IDSFirewallNotificationCenter
- (BOOL)_notificationShouldRedirect;
- (IDSFirewallNotificationCenter)init;
- (IDSFirewallNotificationCenter)initWithNotificationCenter:(id)center serverBag:(id)bag contactsUtilities:(id)utilities;
- (id)_notificationBodyForService:(id)service URI:(id)i;
- (id)_notificationIconIdentifierForService:(id)service;
- (id)_notificationSupportURL;
- (id)_notificationTitleForService:(id)service;
- (id)_rateLimiterForService:(id)service;
- (id)_rateLimitingKeyForURI:(id)i service:(id)service;
- (int64_t)_notificationAggressiveLimitPerPeriod;
- (int64_t)_notificationAggressiveLimitTimePeriod;
- (int64_t)_notificationLimitPerPeriod;
- (int64_t)_notificationLimitTimePeriod;
- (void)postNotificationForURI:(id)i onService:(id)service shouldRateLimit:(BOOL)limit command:(id)command;
@end

@implementation IDSFirewallNotificationCenter

- (IDSFirewallNotificationCenter)init
{
  v3 = +[IDSUserNotificationsCenter sharedInstance];
  v4 = +[IDSServerBag sharedInstance];
  v5 = objc_alloc_init(IDSContactsUtilities);
  v6 = [(IDSFirewallNotificationCenter *)self initWithNotificationCenter:v3 serverBag:v4 contactsUtilities:v5];

  return v6;
}

- (IDSFirewallNotificationCenter)initWithNotificationCenter:(id)center serverBag:(id)bag contactsUtilities:(id)utilities
{
  centerCopy = center;
  bagCopy = bag;
  utilitiesCopy = utilities;
  v19.receiver = self;
  v19.super_class = IDSFirewallNotificationCenter;
  v12 = [(IDSFirewallNotificationCenter *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serverBag, bag);
    v14 = [[IDSRateLimiter alloc] initWithLimit:-[IDSFirewallNotificationCenter _notificationLimitPerPeriod](v13 timeLimit:{"_notificationLimitPerPeriod"), -[IDSFirewallNotificationCenter _notificationLimitTimePeriod](v13, "_notificationLimitTimePeriod")}];
    firewallRateLimiter = v13->_firewallRateLimiter;
    v13->_firewallRateLimiter = v14;

    v16 = [[IDSRateLimiter alloc] initWithLimit:-[IDSFirewallNotificationCenter _notificationAggressiveLimitPerPeriod](v13 timeLimit:{"_notificationAggressiveLimitPerPeriod"), -[IDSFirewallNotificationCenter _notificationAggressiveLimitTimePeriod](v13, "_notificationAggressiveLimitTimePeriod")}];
    firewallAggressiveRateLimiter = v13->_firewallAggressiveRateLimiter;
    v13->_firewallAggressiveRateLimiter = v16;

    objc_storeStrong(&v13->_notificationCenter, center);
    objc_storeStrong(&v13->_contactUtilities, utilities);
  }

  return v13;
}

- (int64_t)_notificationLimitPerPeriod
{
  serverBag = [(IDSFirewallNotificationCenter *)self serverBag];
  v3 = [serverBag objectForKey:@"firewall-limit"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (int64_t)_notificationLimitTimePeriod
{
  integerValue = 86400;
  serverBag = [(IDSFirewallNotificationCenter *)self serverBag];
  v4 = [serverBag objectForKey:@"firewall-time-period"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v4 integerValue];
    }
  }

  return integerValue;
}

- (int64_t)_notificationAggressiveLimitPerPeriod
{
  serverBag = [(IDSFirewallNotificationCenter *)self serverBag];
  v3 = [serverBag objectForKey:@"firewall-aggressive-limit"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (int64_t)_notificationAggressiveLimitTimePeriod
{
  integerValue = 604800;
  serverBag = [(IDSFirewallNotificationCenter *)self serverBag];
  v4 = [serverBag objectForKey:@"firewall-aggressive-time-period"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v4 integerValue];
    }
  }

  return integerValue;
}

- (BOOL)_notificationShouldRedirect
{
  serverBag = [(IDSFirewallNotificationCenter *)self serverBag];
  v3 = [serverBag objectForKey:@"firewall-should-redirect"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_notificationSupportURL
{
  serverBag = [(IDSFirewallNotificationCenter *)self serverBag];
  v3 = [serverBag objectForKey:@"firewall-support-url"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = @"https://support.apple.com";
  }

  return v4;
}

- (id)_rateLimitingKeyForURI:(id)i service:(id)service
{
  serviceCopy = service;
  unprefixedURI = [i unprefixedURI];
  identifier = [serviceCopy identifier];

  v8 = [NSString stringWithFormat:@"%@, %@", unprefixedURI, identifier];

  return v8;
}

- (id)_rateLimiterForService:(id)service
{
  firewallNotificationRateLimitType = [service firewallNotificationRateLimitType];
  if (firewallNotificationRateLimitType)
  {
    if (firewallNotificationRateLimitType != 1)
    {
      goto LABEL_6;
    }

    v5 = 32;
  }

  else
  {
    v5 = 24;
  }

  firewallNotificationRateLimitType = *(&self->super.isa + v5);
LABEL_6:

  return firewallNotificationRateLimitType;
}

- (id)_notificationTitleForService:(id)service
{
  serviceCopy = service;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  switch([serviceCopy firewallNotificationStyle])
  {
    case 1u:
      v8 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_10091B470(serviceCopy, v8, v9, v10, v11, v12, v13, v14);
      }

      goto LABEL_9;
    case 6u:
    case 9u:
      v5 = IMLocalizedStringFromTableInBundle();
      v6 = objc_alloc_init(FTNUServiceNames);
      faceTimeServiceName = [v6 faceTimeServiceName];
      goto LABEL_8;
    case 7u:
      v5 = IMLocalizedStringFromTableInBundle();
      v6 = objc_alloc_init(FTNUServiceNames);
      faceTimeServiceName = [v6 faceTimeAudioServiceName];
      goto LABEL_8;
    case 8u:
      v5 = IMLocalizedStringFromTableInBundle();
      v6 = objc_alloc_init(FTNUServiceNames);
      faceTimeServiceName = [v6 faceTimeVideoServiceName];
LABEL_8:
      v15 = faceTimeServiceName;
      v16 = [NSString stringWithFormat:v5, faceTimeServiceName];

      break;
    default:
LABEL_9:
      v16 = IMLocalizedStringFromTableInBundle();
      break;
  }

  return v16;
}

- (id)_notificationBodyForService:(id)service URI:(id)i
{
  serviceCopy = service;
  iCopy = i;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  switch([serviceCopy firewallNotificationStyle])
  {
    case 0u:
      faceTimeServiceName = 0;
      v10 = @"Lockdown Mode blocked %@ from contacting you.";
      v11 = @"an unknown contact";
      goto LABEL_46;
    case 1u:
      v15 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_10091B470(serviceCopy, v15, v16, v17, v18, v19, v20, v21);
      }

      v10 = IMLocalizedStringFromTableInBundle();
      unprefixedURI = [iCopy unprefixedURI];
      v23 = IMFormattedDisplayStringForID();
      displayName = [serviceCopy displayName];
      v25 = [NSString localizedStringWithFormat:v10, v23, displayName];

      goto LABEL_60;
    case 2u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to collaborate using iCloud.";
      goto LABEL_45;
    case 3u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to request or send a payment.";
      goto LABEL_45;
    case 4u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to share Apple Card or transaction information.";
      goto LABEL_45;
    case 5u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to SharePlay Music.";
      goto LABEL_45;
    case 6u:
      v26 = objc_alloc_init(FTNUServiceNames);
      faceTimeServiceName = [v26 faceTimeServiceName];

      v10 = @"%@ attempted to FaceTime.";
      goto LABEL_45;
    case 7u:
      v14 = objc_alloc_init(FTNUServiceNames);
      faceTimeServiceName = [v14 faceTimeAudioServiceName];

      v10 = @"%@ attempted to FaceTime Audio call.";
      goto LABEL_45;
    case 8u:
      v27 = objc_alloc_init(FTNUServiceNames);
      faceTimeServiceName = [v27 faceTimeVideoServiceName];

      v10 = @"%@ attempted to send a FaceTime Video Message.";
      goto LABEL_45;
    case 9u:
      v13 = objc_alloc_init(FTNUServiceNames);
      faceTimeServiceName = [v13 faceTimeServiceName];

      v10 = @"%@ attempted to share a FaceTime Live Photo.";
      goto LABEL_45;
    case 0xAu:
    case 0xDu:
    case 0xFu:
    case 0x16u:
    case 0x20u:
    case 0x22u:
    case 0x23u:
      goto LABEL_64;
    case 0xBu:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to screen share with you.";
      goto LABEL_45;
    case 0xCu:
      faceTimeServiceName = 0;
      v10 = @"%@ invited you to Walkie-Talkie.";
      goto LABEL_45;
    case 0xEu:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to request purchase authorization.";
      goto LABEL_45;
    case 0x10u:
      faceTimeServiceName = 0;
      v10 = @"%@ invited you to share your location.";
      goto LABEL_45;
    case 0x11u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to share an item using Find My.";
      goto LABEL_45;
    case 0x12u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to set up a share with you.";
      goto LABEL_45;
    case 0x13u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to access a Home.";
      goto LABEL_45;
    case 0x14u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to access a camera.";
      goto LABEL_45;
    case 0x15u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to invite you to a Home.";
      goto LABEL_45;
    case 0x17u:
      faceTimeServiceName = 0;
      v10 = @"%@ invited you to share your Fitness Activity.";
      goto LABEL_45;
    case 0x18u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to start a Game Center chat.";
      goto LABEL_45;
    case 0x19u:
      faceTimeServiceName = 0;
      v10 = @"%@ invited you to play a game.";
      goto LABEL_45;
    case 0x1Au:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to start a Game Center multiplayer game";
      goto LABEL_45;
    case 0x1Bu:
      faceTimeServiceName = 0;
      v10 = @"%@ invited you to share your health data.";
      goto LABEL_45;
    case 0x1Cu:
      faceTimeServiceName = 0;
      v10 = @"%@ invited you to share your Car Key.";
      goto LABEL_45;
    case 0x1Du:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to share their ETA with you.";
      goto LABEL_45;
    case 0x1Eu:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to share something using AirDrop.";
      goto LABEL_45;
    case 0x1Fu:
      faceTimeServiceName = 0;
      v10 = @"%@ invited you to a Shared Photo Stream.";
      goto LABEL_45;
    case 0x21u:
      v12 = +[FTDeviceSupport sharedInstance];
      [v12 deviceType];

LABEL_64:
      v25 = IMLocalizedStringFromTableInBundle();
      goto LABEL_61;
    case 0x24u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to collaborate with you using Freeform.";
      goto LABEL_45;
    case 0x25u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to collaborate with you using Notes.";
      goto LABEL_45;
    case 0x26u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to share a password or passkey.";
      goto LABEL_45;
    case 0x27u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to share a Safari Tab Group.";
      goto LABEL_45;
    case 0x28u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to share control of Apple Music.";
      goto LABEL_45;
    case 0x29u:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to start a Check In.";
      goto LABEL_45;
    case 0x2Au:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to share their Name and Photo.";
      goto LABEL_45;
    case 0x2Bu:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to access an alarm or timer.";
      goto LABEL_45;
    case 0x2Cu:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to share a Contact Key Verification.";
      goto LABEL_45;
    case 0x2Du:
      faceTimeServiceName = 0;
      v10 = @"%@ attempted to send an iMessage.";
      goto LABEL_45;
    case 0x2Eu:
      faceTimeServiceName = 0;
      v10 = @"Lockdown Mode blocked %@ from collaborating with you.";
      goto LABEL_45;
    default:
      faceTimeServiceName = 0;
      v10 = 0;
LABEL_45:
      v11 = @"An unknown contact";
LABEL_46:
      if ([iCopy FZIDType] != 5)
      {
        v30 = [(IDSContactsUtilities *)self->_contactUtilities nameForContactMatchingURI:iCopy];
        if (v30)
        {
          v25 = v30;
          unprefixedURI2 = +[IDSFoundationLog delivery];
          if (os_log_type_enabled(unprefixedURI2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v36 = iCopy;
            v37 = 2112;
            v38 = v25;
            _os_log_impl(&_mh_execute_header, unprefixedURI2, OS_LOG_TYPE_DEFAULT, "Overriding URI %@ with contact name %@", buf, 0x16u);
          }
        }

        else
        {
          unprefixedURI2 = [iCopy unprefixedURI];
          v25 = IMFormattedDisplayStringForID();
        }

        v32 = IMLocalizedStringFromTableInBundle();
        if (faceTimeServiceName)
        {
          v34 = faceTimeServiceName;
        }

        v29 = [NSString localizedStringWithFormat:v32, v25, v34];

        goto LABEL_58;
      }

      v28 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = iCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Overriding URI %@ for pseudonym", buf, 0xCu);
      }

      v10 = [NSString localizedStringWithFormat:v10, v11];
      v25 = IMLocalizedStringFromTableInBundle();
      if (faceTimeServiceName)
      {
        v29 = [NSString stringWithFormat:v25, faceTimeServiceName];
LABEL_58:

        v25 = v29;
      }

LABEL_60:
LABEL_61:

      return v25;
  }
}

- (id)_notificationIconIdentifierForService:(id)service
{
  serviceCopy = service;
  v4 = @"com.apple.Preferences";
  switch([serviceCopy firewallNotificationStyle])
  {
    case 1u:
      v5 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_10091B470(serviceCopy, v5, v6, v7, v8, v9, v10, v11);
      }

      v4 = @"com.apple.Preferences";
      break;
    case 2u:
    case 0x2Eu:
      v4 = @"Collaboration%@";
      break;
    case 3u:
    case 4u:
    case 0x1Cu:
      v4 = @"com.apple.Passbook";
      break;
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
      v4 = @"com.apple.facetime";
      break;
    case 0xAu:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x2Bu:
      v4 = @"com.apple.Home";
      break;
    case 0xBu:
    case 0x20u:
      v4 = @"Screen Sharing%@";
      break;
    case 0xDu:
      v4 = @"Classroom%@";
      break;
    case 0xEu:
      v4 = @"com.apple.MobileStore";
      break;
    case 0xFu:
    case 0x10u:
    case 0x11u:
      v4 = @"com.apple.findmy";
      break;
    case 0x17u:
      v4 = @"Fitness%@";
      break;
    case 0x18u:
    case 0x19u:
    case 0x1Au:
      v4 = @"Game Center%@";
      break;
    case 0x1Bu:
      v4 = @"Health%@";
      break;
    case 0x1Du:
      v4 = @"com.apple.Maps";
      break;
    case 0x1Eu:
      v4 = @"com.apple.AirDropUIRemoteNotification";
      break;
    case 0x1Fu:
      v4 = @"Photos%@";
      break;
    case 0x21u:
      v4 = @"Apple Care%@";
      break;
    case 0x22u:
      v4 = @"Focus%@";
      break;
    case 0x23u:
      v4 = @"Screen Time%@";
      break;
    case 0x24u:
      v4 = @"Freeform%@";
      break;
    case 0x25u:
      v4 = @"Notes%@";
      break;
    case 0x27u:
      v4 = @"Safari%@";
      break;
    case 0x28u:
      v4 = @"Music%@";
      break;
    case 0x2Du:
      v4 = @"com.apple.MobileSMS";
      break;
    default:
      break;
  }

  return v4;
}

- (void)postNotificationForURI:(id)i onService:(id)service shouldRateLimit:(BOOL)limit command:(id)command
{
  limitCopy = limit;
  iCopy = i;
  serviceCopy = service;
  commandCopy = command;
  v13 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = iCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Told to post firewall notification {uri: %@}", buf, 0xCu);
  }

  if ([serviceCopy firewallNotificationStyle] == 1)
  {
    v14 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [serviceCopy identifier];
      *buf = 138412546;
      v26 = iCopy;
      v27 = 2112;
      v28 = identifier;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not posting firewall notification because service has a notification style of none {uri: %@, service: %@}", buf, 0x16u);
    }
  }

  else if (IDSCommandIsUserInteractiveCommand())
  {
    v14 = [(IDSFirewallNotificationCenter *)self _rateLimitingKeyForURI:iCopy service:serviceCopy];
    v16 = [(IDSFirewallNotificationCenter *)self _rateLimiterForService:serviceCopy];
    v17 = v16;
    if (limitCopy && ([v16 underLimitForItem:v14] & 1) == 0)
    {
      v19 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = iCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Not posting firewall notification because we are over limit {uri: %@}", buf, 0xCu);
      }
    }

    else
    {
      v24 = v17;
      if ([(IDSFirewallNotificationCenter *)self _notificationShouldRedirect])
      {
        _notificationSupportURL = [(IDSFirewallNotificationCenter *)self _notificationSupportURL];
        v19 = [NSURL URLWithString:_notificationSupportURL];
      }

      else
      {
        v19 = 0;
      }

      notificationCenter = [(IDSFirewallNotificationCenter *)self notificationCenter];
      v21 = [(IDSFirewallNotificationCenter *)self _notificationTitleForService:serviceCopy];
      v22 = [(IDSFirewallNotificationCenter *)self _notificationBodyForService:serviceCopy URI:iCopy];
      v23 = [(IDSFirewallNotificationCenter *)self _notificationIconIdentifierForService:serviceCopy];
      [notificationCenter postNotificationWithTitle:v21 body:v22 iconIdentifier:v23 shouldShowSubordinateIcon:1 actionURL:v19];

      v17 = v24;
      if (limitCopy)
      {
        [v24 noteItem:v14];
      }
    }
  }

  else
  {
    v14 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = iCopy;
      v27 = 2112;
      v28 = commandCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not posting firewall notification because command is not initiated by the user {uri: %@, command: %@}", buf, 0x16u);
    }
  }
}

@end