@interface IDSFirewallNotificationCenter
- (BOOL)_notificationShouldRedirect;
- (IDSFirewallNotificationCenter)init;
- (IDSFirewallNotificationCenter)initWithNotificationCenter:(id)a3 serverBag:(id)a4 contactsUtilities:(id)a5;
- (id)_notificationBodyForService:(id)a3 URI:(id)a4;
- (id)_notificationIconIdentifierForService:(id)a3;
- (id)_notificationSupportURL;
- (id)_notificationTitleForService:(id)a3;
- (id)_rateLimiterForService:(id)a3;
- (id)_rateLimitingKeyForURI:(id)a3 service:(id)a4;
- (int64_t)_notificationAggressiveLimitPerPeriod;
- (int64_t)_notificationAggressiveLimitTimePeriod;
- (int64_t)_notificationLimitPerPeriod;
- (int64_t)_notificationLimitTimePeriod;
- (void)postNotificationForURI:(id)a3 onService:(id)a4 shouldRateLimit:(BOOL)a5 command:(id)a6;
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

- (IDSFirewallNotificationCenter)initWithNotificationCenter:(id)a3 serverBag:(id)a4 contactsUtilities:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = IDSFirewallNotificationCenter;
  v12 = [(IDSFirewallNotificationCenter *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serverBag, a4);
    v14 = [[IDSRateLimiter alloc] initWithLimit:-[IDSFirewallNotificationCenter _notificationLimitPerPeriod](v13 timeLimit:{"_notificationLimitPerPeriod"), -[IDSFirewallNotificationCenter _notificationLimitTimePeriod](v13, "_notificationLimitTimePeriod")}];
    firewallRateLimiter = v13->_firewallRateLimiter;
    v13->_firewallRateLimiter = v14;

    v16 = [[IDSRateLimiter alloc] initWithLimit:-[IDSFirewallNotificationCenter _notificationAggressiveLimitPerPeriod](v13 timeLimit:{"_notificationAggressiveLimitPerPeriod"), -[IDSFirewallNotificationCenter _notificationAggressiveLimitTimePeriod](v13, "_notificationAggressiveLimitTimePeriod")}];
    firewallAggressiveRateLimiter = v13->_firewallAggressiveRateLimiter;
    v13->_firewallAggressiveRateLimiter = v16;

    objc_storeStrong(&v13->_notificationCenter, a3);
    objc_storeStrong(&v13->_contactUtilities, a5);
  }

  return v13;
}

- (int64_t)_notificationLimitPerPeriod
{
  v2 = [(IDSFirewallNotificationCenter *)self serverBag];
  v3 = [v2 objectForKey:@"firewall-limit"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)_notificationLimitTimePeriod
{
  v2 = 86400;
  v3 = [(IDSFirewallNotificationCenter *)self serverBag];
  v4 = [v3 objectForKey:@"firewall-time-period"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v4 integerValue];
    }
  }

  return v2;
}

- (int64_t)_notificationAggressiveLimitPerPeriod
{
  v2 = [(IDSFirewallNotificationCenter *)self serverBag];
  v3 = [v2 objectForKey:@"firewall-aggressive-limit"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)_notificationAggressiveLimitTimePeriod
{
  v2 = 604800;
  v3 = [(IDSFirewallNotificationCenter *)self serverBag];
  v4 = [v3 objectForKey:@"firewall-aggressive-time-period"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v4 integerValue];
    }
  }

  return v2;
}

- (BOOL)_notificationShouldRedirect
{
  v2 = [(IDSFirewallNotificationCenter *)self serverBag];
  v3 = [v2 objectForKey:@"firewall-should-redirect"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_notificationSupportURL
{
  v2 = [(IDSFirewallNotificationCenter *)self serverBag];
  v3 = [v2 objectForKey:@"firewall-support-url"];

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

- (id)_rateLimitingKeyForURI:(id)a3 service:(id)a4
{
  v5 = a4;
  v6 = [a3 unprefixedURI];
  v7 = [v5 identifier];

  v8 = [NSString stringWithFormat:@"%@, %@", v6, v7];

  return v8;
}

- (id)_rateLimiterForService:(id)a3
{
  v4 = [a3 firewallNotificationRateLimitType];
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = 32;
  }

  else
  {
    v5 = 24;
  }

  v4 = *(&self->super.isa + v5);
LABEL_6:

  return v4;
}

- (id)_notificationTitleForService:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  switch([v3 firewallNotificationStyle])
  {
    case 1u:
      v8 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_10091B470(v3, v8, v9, v10, v11, v12, v13, v14);
      }

      goto LABEL_9;
    case 6u:
    case 9u:
      v5 = IMLocalizedStringFromTableInBundle();
      v6 = objc_alloc_init(FTNUServiceNames);
      v7 = [v6 faceTimeServiceName];
      goto LABEL_8;
    case 7u:
      v5 = IMLocalizedStringFromTableInBundle();
      v6 = objc_alloc_init(FTNUServiceNames);
      v7 = [v6 faceTimeAudioServiceName];
      goto LABEL_8;
    case 8u:
      v5 = IMLocalizedStringFromTableInBundle();
      v6 = objc_alloc_init(FTNUServiceNames);
      v7 = [v6 faceTimeVideoServiceName];
LABEL_8:
      v15 = v7;
      v16 = [NSString stringWithFormat:v5, v7];

      break;
    default:
LABEL_9:
      v16 = IMLocalizedStringFromTableInBundle();
      break;
  }

  return v16;
}

- (id)_notificationBodyForService:(id)a3 URI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  switch([v6 firewallNotificationStyle])
  {
    case 0u:
      v9 = 0;
      v10 = @"Lockdown Mode blocked %@ from contacting you.";
      v11 = @"an unknown contact";
      goto LABEL_46;
    case 1u:
      v15 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_10091B470(v6, v15, v16, v17, v18, v19, v20, v21);
      }

      v10 = IMLocalizedStringFromTableInBundle();
      v22 = [v7 unprefixedURI];
      v23 = IMFormattedDisplayStringForID();
      v24 = [v6 displayName];
      v25 = [NSString localizedStringWithFormat:v10, v23, v24];

      goto LABEL_60;
    case 2u:
      v9 = 0;
      v10 = @"%@ attempted to collaborate using iCloud.";
      goto LABEL_45;
    case 3u:
      v9 = 0;
      v10 = @"%@ attempted to request or send a payment.";
      goto LABEL_45;
    case 4u:
      v9 = 0;
      v10 = @"%@ attempted to share Apple Card or transaction information.";
      goto LABEL_45;
    case 5u:
      v9 = 0;
      v10 = @"%@ attempted to SharePlay Music.";
      goto LABEL_45;
    case 6u:
      v26 = objc_alloc_init(FTNUServiceNames);
      v9 = [v26 faceTimeServiceName];

      v10 = @"%@ attempted to FaceTime.";
      goto LABEL_45;
    case 7u:
      v14 = objc_alloc_init(FTNUServiceNames);
      v9 = [v14 faceTimeAudioServiceName];

      v10 = @"%@ attempted to FaceTime Audio call.";
      goto LABEL_45;
    case 8u:
      v27 = objc_alloc_init(FTNUServiceNames);
      v9 = [v27 faceTimeVideoServiceName];

      v10 = @"%@ attempted to send a FaceTime Video Message.";
      goto LABEL_45;
    case 9u:
      v13 = objc_alloc_init(FTNUServiceNames);
      v9 = [v13 faceTimeServiceName];

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
      v9 = 0;
      v10 = @"%@ attempted to screen share with you.";
      goto LABEL_45;
    case 0xCu:
      v9 = 0;
      v10 = @"%@ invited you to Walkie-Talkie.";
      goto LABEL_45;
    case 0xEu:
      v9 = 0;
      v10 = @"%@ attempted to request purchase authorization.";
      goto LABEL_45;
    case 0x10u:
      v9 = 0;
      v10 = @"%@ invited you to share your location.";
      goto LABEL_45;
    case 0x11u:
      v9 = 0;
      v10 = @"%@ attempted to share an item using Find My.";
      goto LABEL_45;
    case 0x12u:
      v9 = 0;
      v10 = @"%@ attempted to set up a share with you.";
      goto LABEL_45;
    case 0x13u:
      v9 = 0;
      v10 = @"%@ attempted to access a Home.";
      goto LABEL_45;
    case 0x14u:
      v9 = 0;
      v10 = @"%@ attempted to access a camera.";
      goto LABEL_45;
    case 0x15u:
      v9 = 0;
      v10 = @"%@ attempted to invite you to a Home.";
      goto LABEL_45;
    case 0x17u:
      v9 = 0;
      v10 = @"%@ invited you to share your Fitness Activity.";
      goto LABEL_45;
    case 0x18u:
      v9 = 0;
      v10 = @"%@ attempted to start a Game Center chat.";
      goto LABEL_45;
    case 0x19u:
      v9 = 0;
      v10 = @"%@ invited you to play a game.";
      goto LABEL_45;
    case 0x1Au:
      v9 = 0;
      v10 = @"%@ attempted to start a Game Center multiplayer game";
      goto LABEL_45;
    case 0x1Bu:
      v9 = 0;
      v10 = @"%@ invited you to share your health data.";
      goto LABEL_45;
    case 0x1Cu:
      v9 = 0;
      v10 = @"%@ invited you to share your Car Key.";
      goto LABEL_45;
    case 0x1Du:
      v9 = 0;
      v10 = @"%@ attempted to share their ETA with you.";
      goto LABEL_45;
    case 0x1Eu:
      v9 = 0;
      v10 = @"%@ attempted to share something using AirDrop.";
      goto LABEL_45;
    case 0x1Fu:
      v9 = 0;
      v10 = @"%@ invited you to a Shared Photo Stream.";
      goto LABEL_45;
    case 0x21u:
      v12 = +[FTDeviceSupport sharedInstance];
      [v12 deviceType];

LABEL_64:
      v25 = IMLocalizedStringFromTableInBundle();
      goto LABEL_61;
    case 0x24u:
      v9 = 0;
      v10 = @"%@ attempted to collaborate with you using Freeform.";
      goto LABEL_45;
    case 0x25u:
      v9 = 0;
      v10 = @"%@ attempted to collaborate with you using Notes.";
      goto LABEL_45;
    case 0x26u:
      v9 = 0;
      v10 = @"%@ attempted to share a password or passkey.";
      goto LABEL_45;
    case 0x27u:
      v9 = 0;
      v10 = @"%@ attempted to share a Safari Tab Group.";
      goto LABEL_45;
    case 0x28u:
      v9 = 0;
      v10 = @"%@ attempted to share control of Apple Music.";
      goto LABEL_45;
    case 0x29u:
      v9 = 0;
      v10 = @"%@ attempted to start a Check In.";
      goto LABEL_45;
    case 0x2Au:
      v9 = 0;
      v10 = @"%@ attempted to share their Name and Photo.";
      goto LABEL_45;
    case 0x2Bu:
      v9 = 0;
      v10 = @"%@ attempted to access an alarm or timer.";
      goto LABEL_45;
    case 0x2Cu:
      v9 = 0;
      v10 = @"%@ attempted to share a Contact Key Verification.";
      goto LABEL_45;
    case 0x2Du:
      v9 = 0;
      v10 = @"%@ attempted to send an iMessage.";
      goto LABEL_45;
    case 0x2Eu:
      v9 = 0;
      v10 = @"Lockdown Mode blocked %@ from collaborating with you.";
      goto LABEL_45;
    default:
      v9 = 0;
      v10 = 0;
LABEL_45:
      v11 = @"An unknown contact";
LABEL_46:
      if ([v7 FZIDType] != 5)
      {
        v30 = [(IDSContactsUtilities *)self->_contactUtilities nameForContactMatchingURI:v7];
        if (v30)
        {
          v25 = v30;
          v31 = +[IDSFoundationLog delivery];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v36 = v7;
            v37 = 2112;
            v38 = v25;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Overriding URI %@ with contact name %@", buf, 0x16u);
          }
        }

        else
        {
          v31 = [v7 unprefixedURI];
          v25 = IMFormattedDisplayStringForID();
        }

        v32 = IMLocalizedStringFromTableInBundle();
        if (v9)
        {
          v34 = v9;
        }

        v29 = [NSString localizedStringWithFormat:v32, v25, v34];

        goto LABEL_58;
      }

      v28 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v7;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Overriding URI %@ for pseudonym", buf, 0xCu);
      }

      v10 = [NSString localizedStringWithFormat:v10, v11];
      v25 = IMLocalizedStringFromTableInBundle();
      if (v9)
      {
        v29 = [NSString stringWithFormat:v25, v9];
LABEL_58:

        v25 = v29;
      }

LABEL_60:
LABEL_61:

      return v25;
  }
}

- (id)_notificationIconIdentifierForService:(id)a3
{
  v3 = a3;
  v4 = @"com.apple.Preferences";
  switch([v3 firewallNotificationStyle])
  {
    case 1u:
      v5 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_10091B470(v3, v5, v6, v7, v8, v9, v10, v11);
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

- (void)postNotificationForURI:(id)a3 onService:(id)a4 shouldRateLimit:(BOOL)a5 command:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Told to post firewall notification {uri: %@}", buf, 0xCu);
  }

  if ([v11 firewallNotificationStyle] == 1)
  {
    v14 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v11 identifier];
      *buf = 138412546;
      v26 = v10;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not posting firewall notification because service has a notification style of none {uri: %@, service: %@}", buf, 0x16u);
    }
  }

  else if (IDSCommandIsUserInteractiveCommand())
  {
    v14 = [(IDSFirewallNotificationCenter *)self _rateLimitingKeyForURI:v10 service:v11];
    v16 = [(IDSFirewallNotificationCenter *)self _rateLimiterForService:v11];
    v17 = v16;
    if (v7 && ([v16 underLimitForItem:v14] & 1) == 0)
    {
      v19 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v10;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Not posting firewall notification because we are over limit {uri: %@}", buf, 0xCu);
      }
    }

    else
    {
      v24 = v17;
      if ([(IDSFirewallNotificationCenter *)self _notificationShouldRedirect])
      {
        v18 = [(IDSFirewallNotificationCenter *)self _notificationSupportURL];
        v19 = [NSURL URLWithString:v18];
      }

      else
      {
        v19 = 0;
      }

      v20 = [(IDSFirewallNotificationCenter *)self notificationCenter];
      v21 = [(IDSFirewallNotificationCenter *)self _notificationTitleForService:v11];
      v22 = [(IDSFirewallNotificationCenter *)self _notificationBodyForService:v11 URI:v10];
      v23 = [(IDSFirewallNotificationCenter *)self _notificationIconIdentifierForService:v11];
      [v20 postNotificationWithTitle:v21 body:v22 iconIdentifier:v23 shouldShowSubordinateIcon:1 actionURL:v19];

      v17 = v24;
      if (v7)
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
      v26 = v10;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not posting firewall notification because command is not initiated by the user {uri: %@, command: %@}", buf, 0x16u);
    }
  }
}

@end