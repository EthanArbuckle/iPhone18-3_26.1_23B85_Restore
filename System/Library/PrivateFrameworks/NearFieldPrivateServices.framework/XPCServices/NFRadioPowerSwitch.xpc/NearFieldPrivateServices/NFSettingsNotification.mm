@interface NFSettingsNotification
- (id)_getLocalizedText:(id)a3 withBundle:(id)a4;
- (void)_requestUserNotificationWithCompletion:(id)a3 popupInterval:(double)a4;
@end

@implementation NFSettingsNotification

- (id)_getLocalizedText:(id)a3 withBundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v8)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v54 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v58 = 45;
      if (isMetaClass)
      {
        v58 = 43;
      }

      v54(3, "%c[%{public}s %{public}s]:%i Failed to get bundle", v58, ClassName, Name, 44);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v59 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = object_getClass(self);
      if (class_isMetaClass(v60))
      {
        v61 = 43;
      }

      else
      {
        v61 = 45;
      }

      *buf = 67109890;
      v65 = v61;
      v66 = 2082;
      v67 = object_getClassName(self);
      v68 = 2082;
      v69 = sel_getName(a2);
      v70 = 1024;
      v71 = 44;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get bundle", buf, 0x22u);
    }

    goto LABEL_45;
  }

  if (!v7)
  {
    v7 = @"NFC_RADIO_DISABLED_TITLE";
  }

  v10 = [v8 localizedStringForKey:v7 value:@"Translation missing" table:@"LowPowerMode_NFC_Localizable"];
  if ([v10 isEqualToString:@"Translation missing"])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v12 = v11;
      v13 = object_getClass(self);
      v14 = class_isMetaClass(v13);
      v15 = object_getClassName(self);
      v16 = sel_getName(a2);
      v17 = [v9 localizations];
      v18 = 45;
      if (v14)
      {
        v18 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i Available locs are  %@", v18, v15, v16, 54, v17);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(self);
      v23 = sel_getName(a2);
      v24 = [v9 localizations];
      *buf = 67110146;
      v65 = v21;
      v66 = 2082;
      v67 = v22;
      v68 = 2082;
      v69 = v23;
      v70 = 1024;
      v71 = 54;
      v72 = 2112;
      v73 = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Available locs are  %@", buf, 0x2Cu);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFLogGetLogger();
    if (v25)
    {
      v26 = v25;
      v27 = object_getClass(self);
      v28 = class_isMetaClass(v27);
      v29 = object_getClassName(self);
      v30 = sel_getName(a2);
      v31 = [v9 preferredLocalizations];
      v32 = 45;
      if (v28)
      {
        v32 = 43;
      }

      v26(3, "%c[%{public}s %{public}s]:%i Prefered loc is %@", v32, v29, v30, 55, v31);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = object_getClass(self);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      v36 = object_getClassName(self);
      v37 = sel_getName(a2);
      v38 = [v9 preferredLocalizations];
      *buf = 67110146;
      v65 = v35;
      v66 = 2082;
      v67 = v36;
      v68 = 2082;
      v69 = v37;
      v70 = 1024;
      v71 = 55;
      v72 = 2112;
      v73 = v38;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Prefered loc is %@", buf, 0x2Cu);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFLogGetLogger();
    if (v39)
    {
      v40 = v39;
      v41 = object_getClass(self);
      v42 = class_isMetaClass(v41);
      v43 = object_getClassName(self);
      v44 = sel_getName(a2);
      v45 = +[NSLocale preferredLanguages];
      v46 = 45;
      if (v42)
      {
        v46 = 43;
      }

      v40(3, "%c[%{public}s %{public}s]:%i Current loc is %@", v46, v43, v44, 56, v45);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v47 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = object_getClass(self);
      if (class_isMetaClass(v48))
      {
        v49 = 43;
      }

      else
      {
        v49 = 45;
      }

      v50 = object_getClassName(self);
      v51 = sel_getName(a2);
      v52 = +[NSLocale preferredLanguages];
      *buf = 67110146;
      v65 = v49;
      v66 = 2082;
      v67 = v50;
      v68 = 2082;
      v69 = v51;
      v70 = 1024;
      v71 = 56;
      v72 = 2112;
      v73 = v52;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Current loc is %@", buf, 0x2Cu);
    }
  }

  if (!v10)
  {
LABEL_45:
    v7 = v7;
    v10 = v7;
  }

  return v10;
}

- (void)_requestUserNotificationWithCompletion:(id)a3 popupInterval:(double)a4
{
  v7 = a3;
  error = 0;
  v8 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/NearField.framework"];
  [v8 load];
  v115[0] = kCFUserNotificationAlertHeaderKey;
  v9 = [(NFSettingsNotification *)self _getLocalizedText:@"NFC_RADIO_DISABLED_TITLE" withBundle:v8];
  v116[0] = v9;
  v115[1] = kCFUserNotificationAlertMessageKey;
  v10 = [(NFSettingsNotification *)self _getLocalizedText:@"NFC_RADIO_DISABLED_GOTO_SETTINGS" withBundle:v8];
  v116[1] = v10;
  v115[2] = kCFUserNotificationDefaultButtonTitleKey;
  v11 = [(NFSettingsNotification *)self _getLocalizedText:@"NFC_RADIO_DISABLED_OK" withBundle:v8];
  v116[2] = v11;
  v115[3] = kCFUserNotificationAlternateButtonTitleKey;
  v12 = [(NFSettingsNotification *)self _getLocalizedText:@"NFC_RADIO_DISABLED_CANCEL" withBundle:v8];
  v115[4] = kCFUserNotificationAlertTopMostKey;
  v116[3] = v12;
  v116[4] = &__kCFBooleanTrue;
  v13 = &NFLogGetLogger_ptr;
  v14 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:5];

  [v8 unload];
  v15 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v14);
  v16 = v15;
  if (!v15 || error)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v34 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v39 = 45;
      if (isMetaClass)
      {
        v39 = 43;
      }

      v34(3, "%c[%{public}s %{public}s]:%i Couldn't create notification! %d", v39, ClassName, Name, 87, error);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = object_getClass(self);
      if (class_isMetaClass(v41))
      {
        v42 = 43;
      }

      else
      {
        v42 = 45;
      }

      v43 = object_getClassName(self);
      v44 = sel_getName(a2);
      *buf = 67110146;
      v102 = v42;
      v103 = 2082;
      v104 = v43;
      v105 = 2082;
      v106 = v44;
      v107 = 1024;
      v108 = 87;
      v109 = 1024;
      LODWORD(v110) = error;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Couldn't create notification! %d", buf, 0x28u);
    }

    v45 = [NSError alloc];
    v46 = [NSString stringWithUTF8String:"nfcd"];
    v113 = NSLocalizedDescriptionKey;
    v47 = [NSString stringWithUTF8String:"No resources"];
    v114 = v47;
    v48 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
    v49 = [v45 initWithDomain:v46 code:34 userInfo:v48];
    v7[2](v7, v49, 0);
  }

  else
  {
    responseFlags = 0;
    if (CFUserNotificationReceiveResponse(v15, a4, &responseFlags))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v18 = v17;
        v19 = object_getClass(self);
        v20 = class_isMetaClass(v19);
        v21 = object_getClassName(self);
        v92 = sel_getName(a2);
        v22 = 45;
        if (v20)
        {
          v22 = 43;
        }

        v18(3, "%c[%{public}s %{public}s]:%i Failed to display radio status alert.", v22, v21, v92, 99);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = object_getClass(self);
        if (class_isMetaClass(v24))
        {
          v25 = 43;
        }

        else
        {
          v25 = 45;
        }

        v26 = object_getClassName(self);
        v27 = sel_getName(a2);
        *buf = 67109890;
        v102 = v25;
        v103 = 2082;
        v104 = v26;
        v105 = 2082;
        v106 = v27;
        v107 = 1024;
        v108 = 99;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to display radio status alert.", buf, 0x22u);
      }

      v28 = [NSError alloc];
      v29 = [NSString stringWithUTF8String:"nfcd"];
      v111 = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithUTF8String:"No resources"];
      v112 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      v32 = [v28 initWithDomain:v29 code:34 userInfo:v31];
      v7[2](v7, v32, 0);
    }

    else
    {
      if (responseFlags)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v50 = NFLogGetLogger();
        if (v50)
        {
          v51 = v50;
          v52 = object_getClass(self);
          v53 = class_isMetaClass(v52);
          v54 = object_getClassName(self);
          v93 = sel_getName(a2);
          v55 = 45;
          if (v53)
          {
            v55 = 43;
          }

          v51(6, "%c[%{public}s %{public}s]:%i No action taken", v55, v54, v93, 125);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v56 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = object_getClass(self);
          if (class_isMetaClass(v57))
          {
            v58 = 43;
          }

          else
          {
            v58 = 45;
          }

          v59 = object_getClassName(self);
          v60 = sel_getName(a2);
          *buf = 67109890;
          v102 = v58;
          v103 = 2082;
          v104 = v59;
          v105 = 2082;
          v106 = v60;
          v107 = 1024;
          v108 = 125;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No action taken", buf, 0x22u);
        }

        v29 = 0;
        v61 = 3;
      }

      else
      {
        v56 = [NSURL URLWithString:@"prefs:root=General&path=NFC_LINK"];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v62 = NFLogGetLogger();
        if (v62)
        {
          v63 = v62;
          v64 = object_getClass(self);
          v65 = class_isMetaClass(v64);
          v90 = object_getClassName(self);
          v94 = sel_getName(a2);
          v66 = 45;
          if (v65)
          {
            v66 = 43;
          }

          v13 = &NFLogGetLogger_ptr;
          v63(6, "%c[%{public}s %{public}s]:%i Launching URL: %@", v66, v90, v94, 114, v56);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v67 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v68 = object_getClass(self);
          v96 = v56;
          v69 = v13;
          if (class_isMetaClass(v68))
          {
            v70 = 43;
          }

          else
          {
            v70 = 45;
          }

          v71 = object_getClassName(self);
          v72 = sel_getName(a2);
          *buf = 67110146;
          v102 = v70;
          v13 = v69;
          v56 = v96;
          v103 = 2082;
          v104 = v71;
          v105 = 2082;
          v106 = v72;
          v107 = 1024;
          v108 = 114;
          v109 = 2112;
          v110 = v96;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Launching URL: %@", buf, 0x2Cu);
        }

        v73 = +[LSApplicationWorkspace defaultWorkspace];
        v74 = [v73 openSensitiveURL:v56 withOptions:0];

        if (v74)
        {
          v29 = 0;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v75 = NFLogGetLogger();
          if (v75)
          {
            v76 = v75;
            v77 = object_getClass(self);
            v78 = class_isMetaClass(v77);
            v79 = object_getClassName(self);
            v95 = sel_getName(a2);
            v80 = 45;
            if (v78)
            {
              v80 = 43;
            }

            v91 = v79;
            v13 = &NFLogGetLogger_ptr;
            v76(3, "%c[%{public}s %{public}s]:%i Failed to open URL", v80, v91, v95, 117);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v81 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v82 = object_getClass(self);
            if (class_isMetaClass(v82))
            {
              v83 = 43;
            }

            else
            {
              v83 = 45;
            }

            v84 = object_getClassName(self);
            v85 = sel_getName(a2);
            *buf = 67109890;
            v102 = v83;
            v103 = 2082;
            v104 = v84;
            v105 = 2082;
            v106 = v85;
            v107 = 1024;
            v108 = 117;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open URL", buf, 0x22u);
          }

          v86 = [NSError alloc];
          v87 = [NSString stringWithUTF8String:"nfcd"];
          v99 = NSLocalizedDescriptionKey;
          v88 = [NSString stringWithUTF8String:"No resources"];
          v100 = v88;
          v89 = [v13[59] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
          v29 = [v86 initWithDomain:v87 code:34 userInfo:v89];
        }

        v61 = 2;
      }

      v7[2](v7, v29, v61);
    }
  }
}

@end