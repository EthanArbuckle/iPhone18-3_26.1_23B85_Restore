@interface DDTextMessageAction
+ (BOOL)isShowMessageURL:(id)a3;
+ (BOOL)supportsURL:(id)a3;
+ (id)actionsWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
- (DDTextMessageAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
- (id)_serviceIdentifier;
- (id)compactTitle;
- (id)defaultAction;
- (id)defaultMessagingApp;
- (id)defaultMessagingAppIsMessages;
- (id)defaultSMSApp;
- (id)handleString;
- (id)notificationIconBundleIdentifier;
- (id)notificationTitle;
- (id)notificationURL;
- (id)serviceCompactName;
- (id)serviceIdentifier;
- (id)serviceName;
- (id)subtitle;
- (id)viewController;
- (int)interactionType;
- (uint64_t)canUseSheet;
- (uint64_t)shouldAddDefaultApps;
- (void)baseServiceMenuName;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)performFromView:(id)a3;
- (void)viewController;
@end

@implementation DDTextMessageAction

+ (BOOL)isShowMessageURL:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 scheme];
  v5 = [v4 lowercaseString];

  if (([v5 isEqualToString:@"sms"] & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"messages"))
  {
    goto LABEL_13;
  }

  v6 = [v3 resourceSpecifier];
  v7 = [v6 componentsSeparatedByString:@"?"];
  v8 = [v7 firstObject];
  v9 = [v8 componentsSeparatedByString:@"/"];
  v10 = [v9 lastObject];
  v11 = [v10 isEqualToString:@"open"];

  if (v11)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:{0, 0}];
    v13 = [v12 queryItems];

    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v23 + 1) + 8 * i) name];
          v19 = [v18 isEqualToString:@"recipient"];

          if (v19)
          {
            v20 = 0;
            goto LABEL_15;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v20 = 1;
LABEL_15:
  }

  else
  {
LABEL_13:
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (BOOL)supportsURL:(id)a3
{
  v4 = a3;
  v5 = [(__CFString *)v4 scheme];
  v6 = [v5 lowercaseString];

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [a1 matchingSchemes];
  v8 = [v7 containsObject:v6];

  if ((v8 & 1) == 0)
  {
    if ([v6 isEqualToString:@"sip"])
    {
      v14 = 0;
      v10 = [(NSURL *)v4 dd_phoneNumberFromTelSchemeAndExtractBody:&v14 serviceID:0 suggestions:?];
      v9 = v14 != 0;
      goto LABEL_8;
    }

    v11 = dd_emailFromMailtoScheme(v4);
    IsChatBot = dd_handleIsChatBot(v11);

    if ((IsChatBot & 1) == 0)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (DDTextMessageAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v8 = a3;
  v24.receiver = self;
  v24.super_class = DDTextMessageAction;
  v9 = [(DDTelephoneNumberAction *)&v24 initWithURL:v8 result:a4 context:a5];
  v10 = v9;
  if (v9)
  {
    url = v9->super.super._url;
    if (url)
    {
      v12 = url;
    }

    else
    {
      v12 = _DDURLFromResult(a4);
    }

    v13 = v12;

    v14 = [(NSURL *)v13 scheme];
    v15 = [v14 lowercaseString];

    if ([v15 isEqualToString:@"mailto"] && dd_handleIsChatBot(v10->super._phoneNumber))
    {
      v16 = dd_encodedEmail(v10->super._phoneNumber);
      serviceID = v10->super._serviceID;
      v10->super._serviceID = v16;

      v18 = [(NSString *)v10->super._serviceID componentsSeparatedByString:@"@"];
      v19 = [v18 firstObject];
      phoneNumber = v10->super._phoneNumber;
      v10->super._phoneNumber = v19;
    }

    if (v13 && (!a4 || _DDResultIsURL(a4)) && (v10->super._serviceID || [v15 isEqualToString:@"sms"]))
    {
      v22 = [(DDTextMessageAction *)&v10->super.super.super.isa defaultSMSApp];
      notificationURLHandler = v10->_notificationURLHandler;
      v10->_notificationURLHandler = v22;

      v10->_forceSMS = 1;
    }
  }

  else
  {
    v13 = v8;
  }

  return v10;
}

- (id)defaultAction
{
  v6.receiver = self;
  v6.super_class = DDTextMessageAction;
  v3 = [(DDAction *)&v6 defaultAction];
  if (v3)
  {
    v4 = v3;
    objc_storeStrong(v3 + 22, self->_defaultMessagingApp);
    *(v4 + 184) = self->_defaultMessagingAppFetched;
    objc_storeStrong(v4 + 26, self->_messagesAppRecord);
    *(v4 + 216) = self->_messagesAppRecordFetched;
    objc_storeStrong(v4 + 24, self->_defaultSMSApp);
    *(v4 + 200) = self->_defaultSMSAppFetched;
    objc_storeStrong(v4 + 28, self->_notificationURLHandler);
    v3 = v4;
    *(v4 + 233) = self->_ignoreDefaultApps;
    *(v4 + 232) = self->_forceSMS;
  }

  return v3;
}

void __50__DDTextMessageAction_supportsAlternateSMSHandler__block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v1 = domain_answer;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v7 = v1;
      v2 = MEMORY[0x277D86220];
      v3 = "OS eligibility: Unable to determine eligibility of SMS_MMS_RCS_API due to error %d. Defaulting to ineligible";
      v4 = 8;
LABEL_6:
      _os_log_impl(&dword_21AB70000, v2, OS_LOG_TYPE_DEFAULT, v3, buf, v4);
    }
  }

  else
  {
    _MergedGlobals_11 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v7 = _MergedGlobals_11;
      v8 = 1024;
      v9 = 0;
      v10 = 1024;
      v11 = 0;
      v2 = MEMORY[0x277D86220];
      v3 = "OS eligibility: SMS_MMS_RCS_API Eligible %d, Computed: %d, Forced: %d";
      v4 = 20;
      goto LABEL_6;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)handleString
{
  if (self->super._serviceID)
  {
    return self->super._serviceID;
  }

  else
  {
    return self->super._phoneNumber;
  }
}

- (id)serviceName
{
  v3 = [(LSApplicationRecord *)self->_notificationURLHandler localizedName];
  v4 = v3;
  if (v3 || self->_forceSMS)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(LSApplicationRecord *)self->_defaultMessagingApp localizedName];
  }

  v6 = v5;

  return v6;
}

- (id)serviceCompactName
{
  v3 = [(DDTextMessageAction *)self serviceName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DDTextMessageAction;
    v5 = [(DDAction *)&v8 serviceCompactName];
  }

  v6 = v5;

  return v6;
}

- (id)subtitle
{
  v2 = [(DDTelephoneNumberAction *)self bizItem];
  v3 = [v2 messageSubtitle];

  return v3;
}

- (id)compactTitle
{
  v3 = [(DDTextMessageAction *)self serviceCompactName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DDTextMessageAction;
    v5 = [(DDTelephoneNumberAction *)&v8 compactTitle];
  }

  v6 = v5;

  return v6;
}

- (int)interactionType
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];

  if (([v4 isEqualToString:@"com.apple.MobileSMS.MessagesNotificationExtension"] & 1) != 0 || !-[DDTextMessageAction canUseSheet](self) || self && -[NSString isEqualToString:](self->super._phoneNumber, "isEqualToString:", @"open"))
  {

    return 0;
  }

  else
  {
    Helper_x8__OBJC_CLASS___MFMessageComposeViewController = gotLoadHelper_x8__OBJC_CLASS___MFMessageComposeViewController(v6);
    if ([*(v8 + 2184) canSendText])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    return v9;
  }
}

- (id)notificationTitle
{
  v3 = self->super._phoneNumber;
  if ([(NSString *)self->super._phoneNumber isEqualToString:@"open"])
  {
    v4 = DDLocalizedString(@"Show in Messages");
  }

  else
  {
    v5 = [(DDTelephoneNumberAction *)self contactAndLabelForPhoneNumber:0];
    if (v5)
    {
      v6 = [MEMORY[0x277CBDA78] stringFromContact:v5 style:0];
      if ([v6 length])
      {
        v7 = v6;

        v3 = v7;
      }
    }

    v8 = [(DDTextMessageAction *)self serviceName];
    v9 = MEMORY[0x277CCACA8];
    if (v8)
    {
      v10 = DDLocalizedString(@"Compose a message to “%@” in %@");
      [v9 stringWithFormat:v10, v3, v8];
    }

    else
    {
      v10 = DDLocalizedString(@"Compose a message to “%@”");
      [v9 stringWithFormat:v10, v3, v12];
    }
    v4 = ;
  }

  return v4;
}

- (id)notificationIconBundleIdentifier
{
  v2 = [(DDTextMessageAction *)self serviceIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"com.apple.MobileSMS";
  }

  v5 = v4;

  return v4;
}

- (id)_serviceIdentifier
{
  v2 = [(DDTextMessageAction *)self serviceIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"default.textmessage.service";
  }

  v5 = v4;

  return v4;
}

- (id)serviceIdentifier
{
  if (self->super.super._url && [DDTextMessageAction isShowMessageURL:?])
  {
    v3 = @"com.apple.MobileSMS";
  }

  else
  {
    v4 = [(LSApplicationRecord *)self->_notificationURLHandler bundleIdentifier];
    v5 = v4;
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v6 = [(DDTextMessageAction *)self notificationURL];
      v7 = [v6 scheme];
      v8 = [v7 lowercaseString];
      if ([v8 isEqualToString:@"im"])
      {
        v10 = [(DDTextMessageAction *)&self->super.super.super.isa defaultMessagingApp];
        v3 = [v10 bundleIdentifier];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (id)notificationURL
{
  cachedNotificationURL = self->_cachedNotificationURL;
  if (cachedNotificationURL)
  {
    v3 = cachedNotificationURL;
    goto LABEL_41;
  }

  if (self->super._serviceID || (-[DDTelephoneNumberAction bizItem](self, "bizItem"), v8 = objc_claimAutoreleasedReturnValue(), [v8 messagesOpenURL], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v5 = [(NSURL *)self->super.super._url scheme];
    v6 = [v5 lowercaseString];

    if (self->super._serviceID)
    {
      p_ignoreDefaultApps = &self->_ignoreDefaultApps;
      self->_ignoreDefaultApps = 1;
      goto LABEL_19;
    }

    if ([v6 isEqualToString:@"sms"])
    {
      v11 = [(NSString *)self->super._phoneNumber isEqualToString:@"open"];
      p_ignoreDefaultApps = &self->_ignoreDefaultApps;
      self->_ignoreDefaultApps = v11;
      if (v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      p_ignoreDefaultApps = &self->_ignoreDefaultApps;
      self->_ignoreDefaultApps = 0;
    }

    phoneNumber = self->super._phoneNumber;
    if (phoneNumber)
    {
      v13 = phoneNumber;
      if ([(NSString *)v13 containsString:@"@"])
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v15 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:v14 value:v13];
      v16 = [DDCallKitAudioAction providersIfHandleIsEmergency:v15];
      if ([v16 count])
      {
        *p_ignoreDefaultApps = 1;
      }
    }

LABEL_19:
    if (self->super._serviceID)
    {
      if ([v6 isEqualToString:@"sip"])
      {
        v17 = self->super._phoneNumber;
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"sms:%@?service_id=%@", v17, self->super._serviceID];
        body = self->super._body;
        if (body)
        {
          v20 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
          v21 = [(NSString *)body stringByAddingPercentEncodingWithAllowedCharacters:v20];
          v22 = [v18 stringByAppendingFormat:@"&body=%@", v21];

          v18 = v22;
        }

        if (self->super._suggestions)
        {
          v23 = [v18 stringByAppendingFormat:@"&suggestions=%@", self->super._suggestions];

          v18 = v23;
        }

        v24 = [MEMORY[0x277CBEBC0] URLWithString:v18];
        goto LABEL_35;
      }

      if (self->super.super._url)
      {
        v26 = [v6 isEqualToString:@"sms"];
        url = self->super.super._url;
        if ((v26 & 1) == 0)
        {
          v18 = [MEMORY[0x277CCACE0] componentsWithURL:url resolvingAgainstBaseURL:0];
          [v18 setScheme:@"sms"];
          v24 = [v18 URL];
LABEL_35:
          v28 = v24;

          goto LABEL_39;
        }
      }

      else
      {
        url = 0;
      }

      v25 = url;
LABEL_38:
      v28 = v25;
      goto LABEL_39;
    }

    if (!*p_ignoreDefaultApps && ([v6 isEqualToString:@"im"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"messages") & 1) == 0)
    {
      if (self->_notificationURLHandler)
      {
        if ([v6 isEqualToString:@"im"])
        {
          goto LABEL_31;
        }
      }

      else
      {
        if ([(DDTextMessageAction *)&self->super.super.super.isa defaultMessagingAppIsMessages])
        {
          v30 = @"sms";
        }

        else
        {
          v30 = @"im";
        }

        if ([v6 isEqualToString:v30])
        {
          goto LABEL_31;
        }
      }

      v31 = [v6 isEqualToString:@"sms"];
      v32 = self->super.super._url;
      if ((v31 & 1) == 0)
      {
        v33 = [(NSURL *)v32 webSafeTelephoneURL];
        if (v33)
        {
          v34 = MEMORY[0x277CBEBC0];
          v35 = MEMORY[0x277CCACA8];
          v36 = @"im";
          if (!self->_notificationURLHandler && [(DDTextMessageAction *)&self->super.super.super.isa defaultMessagingAppIsMessages])
          {
            v36 = @"sms";
          }

          v37 = [v33 resourceSpecifier];
          v38 = [v35 stringWithFormat:@"%@:%@", v36, v37];
          v28 = [v34 URLWithString:v38];
        }

        else
        {
          v39 = self->super._phoneNumber;
          if (!v39)
          {
            v28 = 0;

            goto LABEL_39;
          }

          v40 = MEMORY[0x277CBEBC0];
          v41 = MEMORY[0x277CCACA8];
          v42 = @"im";
          if (!self->_notificationURLHandler)
          {
            v43 = MEMORY[0x277CCACA8];
            v44 = [(DDTextMessageAction *)&self->super.super.super.isa defaultMessagingAppIsMessages];
            v41 = v43;
            if (v44)
            {
              v42 = @"sms";
            }

            v39 = self->super._phoneNumber;
          }

          v37 = [v41 stringWithFormat:@"%@:%@", v42, v39];
          v28 = [v40 URLWithString:v37];
        }

LABEL_39:
        objc_storeStrong(&self->_cachedNotificationURL, v28);
        v10 = v28;

        goto LABEL_40;
      }

      v25 = v32;
      goto LABEL_38;
    }

LABEL_31:
    v25 = self->super.super._url;
    goto LABEL_38;
  }

  self->_ignoreDefaultApps = 1;
  objc_storeStrong(&self->_cachedNotificationURL, v9);
  v10 = v9;
LABEL_40:

  v3 = v10;
LABEL_41:

  return v3;
}

- (void)performFromView:(id)a3
{
  v4 = a3;
  v5 = [(DDTextMessageAction *)self notificationURL];
  [(DDAction *)self _performFromView:v4 byOpeningURL:v5];
}

- (id)viewController
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (!self->super.super._viewController && self->super._phoneNumber)
  {
    v5 = self;
    [(DDTextMessageAction *)self viewController:v6];
    self = v5;
  }

  viewController = self->super.super._viewController;
  v3 = *MEMORY[0x277D85DE8];

  return viewController;
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  [a3 setMessageComposeDelegate:{0, a4}];
  v5 = [(DDAction *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(DDAction *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(DDAction *)self delegate];
      [v9 actionDidFinish:self];
    }
  }
}

+ (id)actionsWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v56[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v47 = a1;
  v48 = a4;
  v10 = [[a1 alloc] initWithURL:v8 result:a4 context:v9];
  v11 = [v10 handleString];

  if (!v11)
  {
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_8;
  }

  v12 = [v10[28] bundleIdentifier];
  v13 = [v12 isEqualToString:@"com.apple.MobileSMS"];

  if (!v13)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v14 = [MEMORY[0x277CCACE0] componentsWithURL:v8 resolvingAgainstBaseURL:0];
  [v14 setScheme:@"im"];
  v15 = [v14 URL];
  v16 = v10[28];

  if (!v16)
  {
LABEL_12:
    v16 = [(DDTextMessageAction *)v10 defaultMessagingApp];
  }

  v17 = [v16 bundleIdentifier];
  v18 = [v9 objectForKeyedSubscript:@"defaultActionOnly"];

  if (v18)
  {
    v56[0] = v10;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
  }

  else
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
    if ([(DDTextMessageAction *)v10 shouldAddDefaultApps])
    {
      v43 = v22;
      obj = v16;
      v41 = v15;
      v42 = v8;
      v49 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v23 = [MEMORY[0x277CC1E70] enumeratorForViableDefaultAppsForCategory:3 options:0];
      v24 = [v23 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v51;
        v27 = v42;
        if (v15)
        {
          v27 = v15;
        }

        v45 = v27;
        v46 = v23;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v51 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v50 + 1) + 8 * i);
            v30 = [v29 bundleIdentifier];
            v31 = v30;
            if (v30 && ([v30 isEqualToString:v17] & 1) == 0 && (objc_msgSend(v49, "containsObject:", v31) & 1) == 0)
            {
              v32 = v17;
              v33 = v9;
              v34 = [[v47 alloc] initWithURL:v45 result:v48 context:v9];
              [v10 handleString];
              v36 = v35 = v10;

              if (v36)
              {
                objc_storeStrong(v34 + 28, v29);
                objc_storeStrong(v35 + 28, obj);
                v37 = v35[21];
                v35[21] = 0;

                [v43 addObject:v34];
                [v49 addObject:v31];
              }

              v9 = v33;
              v10 = v35;
              v17 = v32;
              v23 = v46;
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v25);
      }

      v15 = v41;
      v8 = v42;
      v22 = v43;
      v16 = obj;
    }

    v38 = [v9 objectForKeyedSubscript:@"HeyBarcodeSheet"];
    v39 = [v38 BOOLValue];

    if (v39)
    {
      v54 = v10;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    }

    else
    {
      v40 = v22;
    }

    v19 = v40;
  }

LABEL_8:
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)defaultSMSApp
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = a1;
    if ((a1[25] & 1) == 0)
    {
      if (qword_280B12318 != -1)
      {
        dispatch_once(&qword_280B12318, &__block_literal_global_11);
      }

      if (_MergedGlobals_11 == 1)
      {
        isLSTrusted = dd_isLSTrusted();
        if (isLSTrusted)
        {
          v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
          v16 = 0;
          v4 = [v1 defaultApplicationForCategory:10 error:&v16];
          v5 = v16;
        }

        else
        {
          v5 = 0;
          v4 = 0;
        }

        objc_storeStrong(v2 + 24, v4);
        if (isLSTrusted)
        {
        }

        if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v6 = [MEMORY[0x277CCA8D8] mainBundle];
          v7 = [v6 bundleIdentifier];
          OUTLINED_FUNCTION_0_6();
          v18 = v5;
          OUTLINED_FUNCTION_1_4(&dword_21AB70000, MEMORY[0x277D86220], v8, "Couldn't get default messaging app from %@. Error: %@", v9, v10, v11, v12, v15, v16, v17);
        }

        *(v2 + 200) = 1;
      }
    }

    a1 = v2[24];
  }

  v13 = *MEMORY[0x277D85DE8];

  return a1;
}

- (void)baseServiceMenuName
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 bizItem];

    if (v2)
    {
      v3 = [v1 bizItem];
      v1 = [v3 messageTitle];
    }

    else
    {
      if (v1[8] && [DDTextMessageAction isShowMessageURL:?])
      {
        v4 = @"Show in Messages";
      }

      else
      {
        v4 = @"Message";
      }

      v1 = DDLocalizedString(v4);
    }
  }

  return v1;
}

- (id)defaultMessagingApp
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = a1;
    if ((a1[23] & 1) == 0)
    {
      isLSTrusted = dd_isLSTrusted();
      if (isLSTrusted)
      {
        v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
        v16 = 0;
        v4 = [v1 defaultApplicationForCategory:3 error:&v16];
        v5 = v16;
      }

      else
      {
        v5 = 0;
        v4 = 0;
      }

      objc_storeStrong(v2 + 22, v4);
      if (isLSTrusted)
      {
      }

      if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = [MEMORY[0x277CCA8D8] mainBundle];
        v7 = [v6 bundleIdentifier];
        OUTLINED_FUNCTION_0_6();
        v18 = v5;
        OUTLINED_FUNCTION_1_4(&dword_21AB70000, MEMORY[0x277D86220], v8, "Couldn't get default messaging app from %@. Error: %@", v9, v10, v11, v12, v15, v16, v17);
      }

      *(v2 + 184) = 1;
    }

    a1 = v2[22];
  }

  v13 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)defaultMessagingAppIsMessages
{
  if (result)
  {
    v1 = [(DDTextMessageAction *)result defaultMessagingApp];
    v2 = [v1 bundleIdentifier];
    v3 = [v2 isEqualToString:@"com.apple.MobileSMS"];

    return v3;
  }

  return result;
}

- (uint64_t)canUseSheet
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 224))
  {
    v1 = [*(a1 + 224) bundleIdentifier];
    v2 = [v1 isEqualToString:@"com.apple.MobileSMS"];
  }

  else
  {
    if (*(a1 + 232) == 1)
    {
      [(DDTextMessageAction *)a1 defaultSMSApp];
    }

    else
    {
      [(DDTextMessageAction *)a1 defaultMessagingApp];
    }
    v1 = ;
    v4 = [v1 bundleIdentifier];
    v2 = [v4 isEqualToString:@"com.apple.MobileSMS"];
  }

  return v2;
}

- (uint64_t)shouldAddDefaultApps
{
  v1 = a1;
  if (a1)
  {
    if (*(a1 + 64) && [DDTextMessageAction isShowMessageURL:?]|| !dd_isLSTrusted())
    {
      return 0;
    }

    else
    {
      v2 = [v1 notificationURL];
      if (v2 && (*(v1 + 233) & 1) == 0)
      {
        v4 = [(DDTextMessageAction *)v1 defaultMessagingApp];
        v5 = [v4 bundleIdentifier];
        if (v5)
        {
          v6 = [*(v1 + 56) objectForKeyedSubscript:@"HeyBarcodeSheet"];
          v7 = [v6 BOOLValue];

          if (v7)
          {
            v8 = [*(v1 + 56) objectForKeyedSubscript:@"135842921"];
            v1 = [v8 BOOLValue];
          }

          else
          {
            v1 = 1;
          }
        }

        else
        {
          v1 = 0;
        }
      }

      else
      {
        v1 = 0;
      }
    }
  }

  return v1;
}

- (void)viewController
{
  if ([(DDTextMessageAction *)a1 canUseSheet])
  {
    gotLoadHelper_x8__OBJC_CLASS___MFMessageComposeViewController(v8);
    v10 = objc_alloc_init(*(v9 + 2184));
    v11 = dd_userFriendlyEmail(*a2);
    *a3 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:a3 count:1];
    [v10 setRecipients:v12];

    [v10 setBody:a1[17]];
    [v10 setServiceId:a1[18]];
    [v10 setSuggestions:a1[19]];
    [v10 setMessageComposeDelegate:a1];
    v13 = *a4;
    *a4 = v10;
  }
}

@end