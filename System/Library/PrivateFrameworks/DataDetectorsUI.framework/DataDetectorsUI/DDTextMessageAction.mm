@interface DDTextMessageAction
+ (BOOL)isShowMessageURL:(id)l;
+ (BOOL)supportsURL:(id)l;
+ (id)actionsWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (DDTextMessageAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
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
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)performFromView:(id)view;
- (void)viewController;
@end

@implementation DDTextMessageAction

+ (BOOL)isShowMessageURL:(id)l
{
  v28 = *MEMORY[0x277D85DE8];
  lCopy = l;
  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  if (([lowercaseString isEqualToString:@"sms"] & 1) == 0 && !objc_msgSend(lowercaseString, "isEqualToString:", @"messages"))
  {
    goto LABEL_13;
  }

  resourceSpecifier = [lCopy resourceSpecifier];
  v7 = [resourceSpecifier componentsSeparatedByString:@"?"];
  firstObject = [v7 firstObject];
  v9 = [firstObject componentsSeparatedByString:@"/"];
  lastObject = [v9 lastObject];
  v11 = [lastObject isEqualToString:@"open"];

  if (v11)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:{0, 0}];
    queryItems = [v12 queryItems];

    v14 = [queryItems countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(queryItems);
          }

          name = [*(*(&v23 + 1) + 8 * i) name];
          v19 = [name isEqualToString:@"recipient"];

          if (v19)
          {
            v20 = 0;
            goto LABEL_15;
          }
        }

        v15 = [queryItems countByEnumeratingWithState:&v23 objects:v27 count:16];
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

+ (BOOL)supportsURL:(id)l
{
  lCopy = l;
  scheme = [(__CFString *)lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  if (!lowercaseString)
  {
    goto LABEL_7;
  }

  matchingSchemes = [self matchingSchemes];
  v8 = [matchingSchemes containsObject:lowercaseString];

  if ((v8 & 1) == 0)
  {
    if ([lowercaseString isEqualToString:@"sip"])
    {
      v14 = 0;
      v10 = [(NSURL *)lCopy dd_phoneNumberFromTelSchemeAndExtractBody:&v14 serviceID:0 suggestions:?];
      v9 = v14 != 0;
      goto LABEL_8;
    }

    v11 = dd_emailFromMailtoScheme(lCopy);
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

- (DDTextMessageAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  lCopy = l;
  v24.receiver = self;
  v24.super_class = DDTextMessageAction;
  v9 = [(DDTelephoneNumberAction *)&v24 initWithURL:lCopy result:result context:context];
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
      v12 = _DDURLFromResult(result);
    }

    v13 = v12;

    scheme = [(NSURL *)v13 scheme];
    lowercaseString = [scheme lowercaseString];

    if ([lowercaseString isEqualToString:@"mailto"] && dd_handleIsChatBot(v10->super._phoneNumber))
    {
      v16 = dd_encodedEmail(v10->super._phoneNumber);
      serviceID = v10->super._serviceID;
      v10->super._serviceID = v16;

      v18 = [(NSString *)v10->super._serviceID componentsSeparatedByString:@"@"];
      firstObject = [v18 firstObject];
      phoneNumber = v10->super._phoneNumber;
      v10->super._phoneNumber = firstObject;
    }

    if (v13 && (!result || _DDResultIsURL(result)) && (v10->super._serviceID || [lowercaseString isEqualToString:@"sms"]))
    {
      defaultSMSApp = [(DDTextMessageAction *)&v10->super.super.super.isa defaultSMSApp];
      notificationURLHandler = v10->_notificationURLHandler;
      v10->_notificationURLHandler = defaultSMSApp;

      v10->_forceSMS = 1;
    }
  }

  else
  {
    v13 = lCopy;
  }

  return v10;
}

- (id)defaultAction
{
  v6.receiver = self;
  v6.super_class = DDTextMessageAction;
  defaultAction = [(DDAction *)&v6 defaultAction];
  if (defaultAction)
  {
    v4 = defaultAction;
    objc_storeStrong(defaultAction + 22, self->_defaultMessagingApp);
    *(v4 + 184) = self->_defaultMessagingAppFetched;
    objc_storeStrong(v4 + 26, self->_messagesAppRecord);
    *(v4 + 216) = self->_messagesAppRecordFetched;
    objc_storeStrong(v4 + 24, self->_defaultSMSApp);
    *(v4 + 200) = self->_defaultSMSAppFetched;
    objc_storeStrong(v4 + 28, self->_notificationURLHandler);
    defaultAction = v4;
    *(v4 + 233) = self->_ignoreDefaultApps;
    *(v4 + 232) = self->_forceSMS;
  }

  return defaultAction;
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
  localizedName = [(LSApplicationRecord *)self->_notificationURLHandler localizedName];
  v4 = localizedName;
  if (localizedName || self->_forceSMS)
  {
    localizedName2 = localizedName;
  }

  else
  {
    localizedName2 = [(LSApplicationRecord *)self->_defaultMessagingApp localizedName];
  }

  v6 = localizedName2;

  return v6;
}

- (id)serviceCompactName
{
  serviceName = [(DDTextMessageAction *)self serviceName];
  v4 = serviceName;
  if (serviceName)
  {
    serviceCompactName = serviceName;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DDTextMessageAction;
    serviceCompactName = [(DDAction *)&v8 serviceCompactName];
  }

  v6 = serviceCompactName;

  return v6;
}

- (id)subtitle
{
  bizItem = [(DDTelephoneNumberAction *)self bizItem];
  messageSubtitle = [bizItem messageSubtitle];

  return messageSubtitle;
}

- (id)compactTitle
{
  serviceCompactName = [(DDTextMessageAction *)self serviceCompactName];
  v4 = serviceCompactName;
  if (serviceCompactName)
  {
    compactTitle = serviceCompactName;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DDTextMessageAction;
    compactTitle = [(DDTelephoneNumberAction *)&v8 compactTitle];
  }

  v6 = compactTitle;

  return v6;
}

- (int)interactionType
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (([bundleIdentifier isEqualToString:@"com.apple.MobileSMS.MessagesNotificationExtension"] & 1) != 0 || !-[DDTextMessageAction canUseSheet](self) || self && -[NSString isEqualToString:](self->super._phoneNumber, "isEqualToString:", @"open"))
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

    serviceName = [(DDTextMessageAction *)self serviceName];
    v9 = MEMORY[0x277CCACA8];
    if (serviceName)
    {
      v10 = DDLocalizedString(@"Compose a message to “%@” in %@");
      [v9 stringWithFormat:v10, v3, serviceName];
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
  serviceIdentifier = [(DDTextMessageAction *)self serviceIdentifier];
  v3 = serviceIdentifier;
  if (serviceIdentifier)
  {
    v4 = serviceIdentifier;
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
  serviceIdentifier = [(DDTextMessageAction *)self serviceIdentifier];
  v3 = serviceIdentifier;
  if (serviceIdentifier)
  {
    v4 = serviceIdentifier;
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
    bundleIdentifier2 = @"com.apple.MobileSMS";
  }

  else
  {
    bundleIdentifier = [(LSApplicationRecord *)self->_notificationURLHandler bundleIdentifier];
    v5 = bundleIdentifier;
    if (bundleIdentifier)
    {
      bundleIdentifier2 = bundleIdentifier;
    }

    else
    {
      notificationURL = [(DDTextMessageAction *)self notificationURL];
      scheme = [notificationURL scheme];
      lowercaseString = [scheme lowercaseString];
      if ([lowercaseString isEqualToString:@"im"])
      {
        defaultMessagingApp = [(DDTextMessageAction *)&self->super.super.super.isa defaultMessagingApp];
        bundleIdentifier2 = [defaultMessagingApp bundleIdentifier];
      }

      else
      {
        bundleIdentifier2 = 0;
      }
    }
  }

  return bundleIdentifier2;
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
    scheme = [(NSURL *)self->super.super._url scheme];
    lowercaseString = [scheme lowercaseString];

    if (self->super._serviceID)
    {
      p_ignoreDefaultApps = &self->_ignoreDefaultApps;
      self->_ignoreDefaultApps = 1;
      goto LABEL_19;
    }

    if ([lowercaseString isEqualToString:@"sms"])
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
      if ([lowercaseString isEqualToString:@"sip"])
      {
        v17 = self->super._phoneNumber;
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"sms:%@?service_id=%@", v17, self->super._serviceID];
        body = self->super._body;
        if (body)
        {
          uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
          v21 = [(NSString *)body stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
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
        v26 = [lowercaseString isEqualToString:@"sms"];
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

    if (!*p_ignoreDefaultApps && ([lowercaseString isEqualToString:@"im"] & 1) == 0 && (objc_msgSend(lowercaseString, "isEqualToString:", @"messages") & 1) == 0)
    {
      if (self->_notificationURLHandler)
      {
        if ([lowercaseString isEqualToString:@"im"])
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

        if ([lowercaseString isEqualToString:v30])
        {
          goto LABEL_31;
        }
      }

      v31 = [lowercaseString isEqualToString:@"sms"];
      v32 = self->super.super._url;
      if ((v31 & 1) == 0)
      {
        webSafeTelephoneURL = [(NSURL *)v32 webSafeTelephoneURL];
        if (webSafeTelephoneURL)
        {
          v34 = MEMORY[0x277CBEBC0];
          v35 = MEMORY[0x277CCACA8];
          v36 = @"im";
          if (!self->_notificationURLHandler && [(DDTextMessageAction *)&self->super.super.super.isa defaultMessagingAppIsMessages])
          {
            v36 = @"sms";
          }

          resourceSpecifier = [webSafeTelephoneURL resourceSpecifier];
          v38 = [v35 stringWithFormat:@"%@:%@", v36, resourceSpecifier];
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
            defaultMessagingAppIsMessages = [(DDTextMessageAction *)&self->super.super.super.isa defaultMessagingAppIsMessages];
            v41 = v43;
            if (defaultMessagingAppIsMessages)
            {
              v42 = @"sms";
            }

            v39 = self->super._phoneNumber;
          }

          resourceSpecifier = [v41 stringWithFormat:@"%@:%@", v42, v39];
          v28 = [v40 URLWithString:resourceSpecifier];
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

- (void)performFromView:(id)view
{
  viewCopy = view;
  notificationURL = [(DDTextMessageAction *)self notificationURL];
  [(DDAction *)self _performFromView:viewCopy byOpeningURL:notificationURL];
}

- (id)viewController
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (!self->super.super._viewController && self->super._phoneNumber)
  {
    selfCopy = self;
    [(DDTextMessageAction *)self viewController:v6];
    self = selfCopy;
  }

  viewController = self->super.super._viewController;
  v3 = *MEMORY[0x277D85DE8];

  return viewController;
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  [controller setMessageComposeDelegate:{0, result}];
  delegate = [(DDAction *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(DDAction *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(DDAction *)self delegate];
      [delegate3 actionDidFinish:self];
    }
  }
}

+ (id)actionsWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  v56[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  contextCopy = context;
  selfCopy = self;
  resultCopy = result;
  v10 = [[self alloc] initWithURL:lCopy result:result context:contextCopy];
  handleString = [v10 handleString];

  if (!handleString)
  {
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_8;
  }

  bundleIdentifier = [v10[28] bundleIdentifier];
  v13 = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"];

  if (!v13)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v14 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  [v14 setScheme:@"im"];
  v15 = [v14 URL];
  defaultMessagingApp = v10[28];

  if (!defaultMessagingApp)
  {
LABEL_12:
    defaultMessagingApp = [(DDTextMessageAction *)v10 defaultMessagingApp];
  }

  bundleIdentifier2 = [defaultMessagingApp bundleIdentifier];
  v18 = [contextCopy objectForKeyedSubscript:@"defaultActionOnly"];

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
      obj = defaultMessagingApp;
      v41 = v15;
      v42 = lCopy;
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
            bundleIdentifier3 = [v29 bundleIdentifier];
            v31 = bundleIdentifier3;
            if (bundleIdentifier3 && ([bundleIdentifier3 isEqualToString:bundleIdentifier2] & 1) == 0 && (objc_msgSend(v49, "containsObject:", v31) & 1) == 0)
            {
              v32 = bundleIdentifier2;
              v33 = contextCopy;
              v34 = [[selfCopy alloc] initWithURL:v45 result:resultCopy context:contextCopy];
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

              contextCopy = v33;
              v10 = v35;
              bundleIdentifier2 = v32;
              v23 = v46;
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v25);
      }

      v15 = v41;
      lCopy = v42;
      v22 = v43;
      defaultMessagingApp = obj;
    }

    v38 = [contextCopy objectForKeyedSubscript:@"HeyBarcodeSheet"];
    bOOLValue = [v38 BOOLValue];

    if (bOOLValue)
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
  if (self)
  {
    selfCopy = self;
    if ((self[25] & 1) == 0)
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
          defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
          v16 = 0;
          v4 = [defaultWorkspace defaultApplicationForCategory:10 error:&v16];
          v5 = v16;
        }

        else
        {
          v5 = 0;
          v4 = 0;
        }

        objc_storeStrong(selfCopy + 24, v4);
        if (isLSTrusted)
        {
        }

        if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
          OUTLINED_FUNCTION_0_6();
          v18 = v5;
          OUTLINED_FUNCTION_1_4(&dword_21AB70000, MEMORY[0x277D86220], v8, "Couldn't get default messaging app from %@. Error: %@", v9, v10, v11, v12, v15, v16, v17);
        }

        *(selfCopy + 200) = 1;
      }
    }

    self = selfCopy[24];
  }

  v13 = *MEMORY[0x277D85DE8];

  return self;
}

- (void)baseServiceMenuName
{
  selfCopy = self;
  if (self)
  {
    bizItem = [self bizItem];

    if (bizItem)
    {
      bizItem2 = [selfCopy bizItem];
      selfCopy = [bizItem2 messageTitle];
    }

    else
    {
      if (selfCopy[8] && [DDTextMessageAction isShowMessageURL:?])
      {
        v4 = @"Show in Messages";
      }

      else
      {
        v4 = @"Message";
      }

      selfCopy = DDLocalizedString(v4);
    }
  }

  return selfCopy;
}

- (id)defaultMessagingApp
{
  v19 = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    if ((self[23] & 1) == 0)
    {
      isLSTrusted = dd_isLSTrusted();
      if (isLSTrusted)
      {
        defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
        v16 = 0;
        v4 = [defaultWorkspace defaultApplicationForCategory:3 error:&v16];
        v5 = v16;
      }

      else
      {
        v5 = 0;
        v4 = 0;
      }

      objc_storeStrong(selfCopy + 22, v4);
      if (isLSTrusted)
      {
      }

      if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        OUTLINED_FUNCTION_0_6();
        v18 = v5;
        OUTLINED_FUNCTION_1_4(&dword_21AB70000, MEMORY[0x277D86220], v8, "Couldn't get default messaging app from %@. Error: %@", v9, v10, v11, v12, v15, v16, v17);
      }

      *(selfCopy + 184) = 1;
    }

    self = selfCopy[22];
  }

  v13 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)defaultMessagingAppIsMessages
{
  if (result)
  {
    defaultMessagingApp = [(DDTextMessageAction *)result defaultMessagingApp];
    bundleIdentifier = [defaultMessagingApp bundleIdentifier];
    v3 = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"];

    return v3;
  }

  return result;
}

- (uint64_t)canUseSheet
{
  if (!self)
  {
    return 0;
  }

  if (*(self + 224))
  {
    bundleIdentifier = [*(self + 224) bundleIdentifier];
    v2 = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"];
  }

  else
  {
    if (*(self + 232) == 1)
    {
      [(DDTextMessageAction *)self defaultSMSApp];
    }

    else
    {
      [(DDTextMessageAction *)self defaultMessagingApp];
    }
    bundleIdentifier = ;
    v1BundleIdentifier = [bundleIdentifier bundleIdentifier];
    v2 = [v1BundleIdentifier isEqualToString:@"com.apple.MobileSMS"];
  }

  return v2;
}

- (uint64_t)shouldAddDefaultApps
{
  selfCopy = self;
  if (self)
  {
    if (*(self + 64) && [DDTextMessageAction isShowMessageURL:?]|| !dd_isLSTrusted())
    {
      return 0;
    }

    else
    {
      notificationURL = [selfCopy notificationURL];
      if (notificationURL && (*(selfCopy + 233) & 1) == 0)
      {
        defaultMessagingApp = [(DDTextMessageAction *)selfCopy defaultMessagingApp];
        bundleIdentifier = [defaultMessagingApp bundleIdentifier];
        if (bundleIdentifier)
        {
          v6 = [*(selfCopy + 56) objectForKeyedSubscript:@"HeyBarcodeSheet"];
          bOOLValue = [v6 BOOLValue];

          if (bOOLValue)
          {
            v8 = [*(selfCopy + 56) objectForKeyedSubscript:@"135842921"];
            selfCopy = [v8 BOOLValue];
          }

          else
          {
            selfCopy = 1;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }
  }

  return selfCopy;
}

- (void)viewController
{
  if ([(DDTextMessageAction *)self canUseSheet])
  {
    gotLoadHelper_x8__OBJC_CLASS___MFMessageComposeViewController(v8);
    v10 = objc_alloc_init(*(v9 + 2184));
    v11 = dd_userFriendlyEmail(*a2);
    *a3 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:a3 count:1];
    [v10 setRecipients:v12];

    [v10 setBody:self[17]];
    [v10 setServiceId:self[18]];
    [v10 setSuggestions:self[19]];
    [v10 setMessageComposeDelegate:self];
    v13 = *a4;
    *a4 = v10;
  }
}

@end