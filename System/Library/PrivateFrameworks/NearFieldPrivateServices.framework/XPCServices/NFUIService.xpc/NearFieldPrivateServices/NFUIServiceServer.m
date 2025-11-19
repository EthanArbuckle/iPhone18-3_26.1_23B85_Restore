@interface NFUIServiceServer
- (void)runService:(id)a3 callback:(id)a4;
- (void)showPaymentSessionGotoSettingsPrompt:(id)a3;
@end

@implementation NFUIServiceServer

- (void)runService:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 valueForKey:@"Action"];
  v9 = [v6 valueForKey:@"Parameter"];
  v10 = [v6 valueForKey:@"UserData"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v25 = v10;
    if (Logger)
    {
      v28 = Logger;
      Class = object_getClass(self);
      v30 = v8;
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v32 = !isMetaClass;
      v8 = v30;
      v33 = 45;
      if (!v32)
      {
        v33 = 43;
      }

      v28(3, "%c[%{public}s %{public}s]:%i Unknown action for context %@", v33, ClassName, Name, 34, v25);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = object_getClass(self);
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      *buf = 67110146;
      v169 = v36;
      v170 = 2082;
      v171 = object_getClassName(self);
      v172 = 2082;
      v173 = sel_getName(a2);
      v174 = 1024;
      v175 = 34;
      v176 = 2112;
      v177 = v25;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown action for context %@", buf, 0x2Cu);
    }

    v190 = NSLocalizedDescriptionKey;
    v191 = @"Invalid parameter";
    v37 = &v191;
    v38 = &v190;
LABEL_25:
    v39 = [NSDictionary dictionaryWithObjects:v37 forKeys:v38 count:1];
    v40 = 2;
    goto LABEL_26;
  }

  v156 = v8;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v12 = v11;
    v13 = object_getClass(self);
    v14 = class_isMetaClass(v13);
    v15 = v7;
    v16 = v9;
    v17 = object_getClassName(self);
    v142 = sel_getName(a2);
    v18 = 45;
    if (v14)
    {
      v18 = 43;
    }

    v135 = v17;
    v9 = v16;
    v7 = v15;
    v12(6, "%c[%{public}s %{public}s]:%i Got message %@ for context %@", v18, v135, v142, 39, v156, v10);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = object_getClass(self);
    v21 = v7;
    v22 = v9;
    if (class_isMetaClass(v20))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    *buf = 67110402;
    v169 = v23;
    v9 = v22;
    v7 = v21;
    v170 = 2082;
    v171 = object_getClassName(self);
    v172 = 2082;
    v173 = sel_getName(a2);
    v174 = 1024;
    v175 = 39;
    v176 = 2112;
    v177 = v156;
    v178 = 2112;
    v179 = v10;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Got message %@ for context %@", buf, 0x36u);
  }

  v8 = v156;
  if ([v156 isEqualToString:@"CoreNFCUI_Activate"])
  {
    v24 = +[NFServiceCoreNFCUI instance];
    v162[0] = _NSConcreteStackBlock;
    v162[1] = 3221225472;
    v162[2] = sub_100005830;
    v162[3] = &unk_10000C730;
    v163 = v7;
    v25 = v10;
    [v24 activate:self context:v10 withCompletion:v162];

    v26 = v163;
LABEL_14:

    goto LABEL_27;
  }

  if ([v156 isEqualToString:@"CoreNFCUI_Mode"])
  {
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v42 = [v9 integerValue];
      v43 = +[NFServiceCoreNFCUI instance];
      [v43 setUIOperationMode:0];

      if (v42 == 3)
      {
        v108 = +[NFServiceCoreNFCUI instance];
        [v108 setUIOperationMode:1];

        v109 = +[NFServiceCoreNFCUI instance];
        [v109 setUIMode:20];

        (*(v7 + 2))(v7, 0, 0);
        v25 = v10;
        v8 = v156;
        goto LABEL_27;
      }

      v8 = v156;
      if (v42 == 2)
      {
        v44 = +[NFServiceCoreNFCUI instance];
        v45 = v44;
        v46 = 30;
        goto LABEL_93;
      }

      if (v42 == 1)
      {
        v44 = +[NFServiceCoreNFCUI instance];
        v45 = v44;
        v46 = 20;
LABEL_93:
        [v44 setUIMode:v46];
        goto LABEL_94;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v110 = NFLogGetLogger();
      if (v110)
      {
        v111 = v110;
        v112 = object_getClass(self);
        v113 = class_isMetaClass(v112);
        v114 = v7;
        v115 = v9;
        v116 = object_getClassName(self);
        v147 = sel_getName(a2);
        v32 = !v113;
        v8 = v156;
        v117 = 45;
        if (!v32)
        {
          v117 = 43;
        }

        v140 = v116;
        v9 = v115;
        v7 = v114;
        v111(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v117, v140, v147, 75);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v118 = NFSharedLogGetLogger();
      v25 = v10;
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        v119 = object_getClass(self);
        if (class_isMetaClass(v119))
        {
          v120 = 43;
        }

        else
        {
          v120 = 45;
        }

        v121 = object_getClassName(self);
        v122 = sel_getName(a2);
        *buf = 67109890;
        v169 = v120;
        v170 = 2082;
        v171 = v121;
        v172 = 2082;
        v173 = v122;
        v174 = 1024;
        v175 = 75;
        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
      }

      v186 = NSLocalizedDescriptionKey;
      v187 = @"Invalid parameter";
      v37 = &v187;
      v38 = &v186;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFLogGetLogger();
      if (v49)
      {
        v50 = v49;
        v51 = object_getClass(self);
        v52 = class_isMetaClass(v51);
        v53 = v7;
        v54 = v9;
        v55 = object_getClassName(self);
        v144 = sel_getName(a2);
        v32 = !v52;
        v8 = v156;
        v56 = 45;
        if (!v32)
        {
          v56 = 43;
        }

        v137 = v55;
        v9 = v54;
        v7 = v53;
        v50(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v56, v137, v144, 51);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v57 = NFSharedLogGetLogger();
      v25 = v10;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = object_getClass(self);
        if (class_isMetaClass(v58))
        {
          v59 = 43;
        }

        else
        {
          v59 = 45;
        }

        v60 = object_getClassName(self);
        v61 = sel_getName(a2);
        *buf = 67109890;
        v169 = v59;
        v170 = 2082;
        v171 = v60;
        v172 = 2082;
        v173 = v61;
        v174 = 1024;
        v175 = 51;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
      }

      v188 = NSLocalizedDescriptionKey;
      v189 = @"Invalid parameter";
      v37 = &v189;
      v38 = &v188;
    }

    goto LABEL_25;
  }

  if ([v156 isEqualToString:@"CoreNFCUI_TagCount"])
  {
    v25 = v10;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = v9;
        v48 = +[NFServiceCoreNFCUI instance];
        [v48 tagCount:v47];

        (*(v7 + 2))(v7, 0, 0);
LABEL_76:

        goto LABEL_27;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v63 = NFLogGetLogger();
    if (v63)
    {
      v64 = v63;
      v65 = object_getClass(self);
      v66 = class_isMetaClass(v65);
      v67 = v7;
      v68 = v9;
      v69 = object_getClassName(self);
      v145 = sel_getName(a2);
      v32 = !v66;
      v8 = v156;
      v70 = 45;
      if (!v32)
      {
        v70 = 43;
      }

      v138 = v69;
      v9 = v68;
      v7 = v67;
      v64(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v70, v138, v145, 85);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v71 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = object_getClass(self);
      if (class_isMetaClass(v72))
      {
        v73 = 43;
      }

      else
      {
        v73 = 45;
      }

      v74 = object_getClassName(self);
      v75 = sel_getName(a2);
      *buf = 67109890;
      v169 = v73;
      v170 = 2082;
      v171 = v74;
      v172 = 2082;
      v173 = v75;
      v174 = 1024;
      v175 = 85;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
    }

    v184 = NSLocalizedDescriptionKey;
    v185 = @"Invalid parameter";
    v76 = &v185;
    v77 = &v184;
    goto LABEL_75;
  }

  if ([v156 isEqualToString:@"CoreNFCUI_ScanText"])
  {
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = v9;
        v62 = +[NFServiceCoreNFCUI instance];
        [v62 setPurpose:v47];

        (*(v7 + 2))(v7, 0, 0);
        v25 = v10;
        goto LABEL_76;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v78 = NFLogGetLogger();
    if (v78)
    {
      v79 = v78;
      v80 = object_getClass(self);
      v81 = class_isMetaClass(v80);
      v82 = v7;
      v83 = v9;
      v84 = object_getClassName(self);
      v146 = sel_getName(a2);
      v32 = !v81;
      v8 = v156;
      v85 = 45;
      if (!v32)
      {
        v85 = 43;
      }

      v139 = v84;
      v9 = v83;
      v7 = v82;
      v79(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v85, v139, v146, 99);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v86 = NFSharedLogGetLogger();
    v25 = v10;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v87 = object_getClass(self);
      if (class_isMetaClass(v87))
      {
        v88 = 43;
      }

      else
      {
        v88 = 45;
      }

      v89 = object_getClassName(self);
      v90 = sel_getName(a2);
      *buf = 67109890;
      v169 = v88;
      v170 = 2082;
      v171 = v89;
      v172 = 2082;
      v173 = v90;
      v174 = 1024;
      v175 = 99;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
    }

    v182 = NSLocalizedDescriptionKey;
    v183 = @"Invalid parameter";
    v76 = &v183;
    v77 = &v182;
LABEL_75:
    v47 = [NSDictionary dictionaryWithObjects:v76 forKeys:v77 count:1];
    v91 = [NSError errorWithDomain:@"NFUIService" code:2 userInfo:v47];
    (*(v7 + 2))(v7, 0, v91);

    goto LABEL_76;
  }

  if ([v156 isEqualToString:@"CoreNFCUI_Invalidate"])
  {
    v45 = +[NFServiceCoreNFCUI instance];
    [v45 invalidate];
LABEL_94:

    (*(v7 + 2))(v7, 0, 0);
    v25 = v10;
    goto LABEL_27;
  }

  v25 = v10;
  if (![v156 isEqualToString:@"launchBundle"])
  {
    if ([v156 isEqualToString:@"CoreNFCShowPaymentSessionGotoSettingsPrompt"])
    {
      (*(v7 + 2))(v7, 0, 0);
      v123 = dispatch_get_global_queue(25, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000597C;
      block[3] = &unk_10000C780;
      block[4] = self;
      v159 = v6;
      dispatch_async(v123, block);

      v26 = v159;
      goto LABEL_14;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v125 = NFLogGetLogger();
    if (v125)
    {
      v126 = v125;
      v127 = object_getClass(self);
      v128 = class_isMetaClass(v127);
      v141 = object_getClassName(self);
      v148 = sel_getName(a2);
      v32 = !v128;
      v8 = v156;
      v129 = 45;
      if (!v32)
      {
        v129 = 43;
      }

      v126(3, "%c[%{public}s %{public}s]:%i Unknown action %@", v129, v141, v148, 147, v156);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v130 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
    {
      v131 = object_getClass(self);
      if (class_isMetaClass(v131))
      {
        v132 = 43;
      }

      else
      {
        v132 = 45;
      }

      v133 = object_getClassName(self);
      v134 = sel_getName(a2);
      *buf = 67110146;
      v169 = v132;
      v170 = 2082;
      v171 = v133;
      v172 = 2082;
      v173 = v134;
      v174 = 1024;
      v175 = 147;
      v176 = 2112;
      v177 = v8;
      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown action %@", buf, 0x2Cu);
    }

    v164 = NSLocalizedDescriptionKey;
    v165 = @"Unknown Action";
    v39 = [NSDictionary dictionaryWithObjects:&v165 forKeys:&v164 count:1];
    v40 = 1;
LABEL_26:
    v41 = [NSError errorWithDomain:@"NFUIService" code:v40 userInfo:v39];
    (*(v7 + 2))(v7, 0, v41);

    goto LABEL_27;
  }

  v92 = [v6 NF_stringForKey:@"launchBundleIdentifier"];
  v155 = [v6 NF_numberForKey:@"launchReason"];
  v154 = [v6 NF_numberForKey:@"walletDomain"];
  if (v92 && [v92 lengthOfBytesUsingEncoding:4] && v155 && v154)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v93 = NFLogGetLogger();
    if (v93)
    {
      v94 = v93;
      v95 = object_getClass(self);
      v152 = class_isMetaClass(v95);
      v153 = object_getClassName(self);
      v151 = sel_getName(a2);
      v149 = [v155 unsignedIntegerValue];
      v150 = [v154 integerValue];
      v96 = 43;
      if (!v152)
      {
        v96 = 45;
      }

      v94(6, "%c[%{public}s %{public}s]:%i Launching %{public}@, reason=%lu, domain=%lu", v96, v153, v151, 123, v92, v149, v150);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v97 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v98 = object_getClass(self);
      if (class_isMetaClass(v98))
      {
        v99 = 43;
      }

      else
      {
        v99 = 45;
      }

      v100 = object_getClassName(self);
      v101 = sel_getName(a2);
      v102 = v9;
      v103 = [v155 unsignedIntegerValue];
      v104 = [v154 integerValue];
      *buf = 67110658;
      v169 = v99;
      v170 = 2082;
      v171 = v100;
      v172 = 2082;
      v173 = v101;
      v174 = 1024;
      v175 = 123;
      v176 = 2114;
      v177 = v92;
      v178 = 2048;
      v179 = v103;
      v9 = v102;
      v25 = v10;
      v180 = 2048;
      v181 = v104;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Launching %{public}@, reason=%lu, domain=%lu", buf, 0x40u);
    }

    v105 = [v154 integerValue] != 0;
    v106 = [v155 unsignedIntegerValue];
    v160[0] = _NSConcreteStackBlock;
    v160[1] = 3221225472;
    v160[2] = sub_100005848;
    v160[3] = &unk_10000C758;
    v161 = v7;
    [_TtC11NFUIService26NFWindowSceneEventLauncher launchBundleWithIdentifier:v92 reason:v106 domain:v105 completion:v160];
    v107 = v161;
    v8 = v156;
  }

  else
  {
    v166 = NSLocalizedDescriptionKey;
    v167 = @"Invalid parameter";
    v107 = [NSDictionary dictionaryWithObjects:&v167 forKeys:&v166 count:1];
    v124 = [NSError errorWithDomain:@"NFUIService" code:2 userInfo:v107];
    (*(v7 + 2))(v7, 0, v124);
  }

LABEL_27:
}

- (void)showPaymentSessionGotoSettingsPrompt:(id)a3
{
  v65 = a3;
  context = objc_autoreleasePoolPush();
  v81[0] = kCFUserNotificationAlertHeaderKey;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"PaymentReaderGoToSettingsPromptTitle" value:&stru_10000CA20 table:@"CoreNFC_Localizable"];
  v82[0] = v5;
  v81[1] = kCFUserNotificationAlertMessageKey;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"PaymentReaderGoToSettingsPromptMessage" value:&stru_10000CA20 table:@"CoreNFC_Localizable"];
  v82[1] = v7;
  v81[2] = kCFUserNotificationDefaultButtonTitleKey;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"PaymentReaderGoToSettingsPromptGoToSettingsButton" value:&stru_10000CA20 table:@"CoreNFC_Localizable"];
  v82[2] = v9;
  v81[3] = kCFUserNotificationAlternateButtonTitleKey;
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"PaymentReaderGoToSettingsPromptDismissButton" value:&stru_10000CA20 table:@"CoreNFC_Localizable"];
  v81[4] = kCFUserNotificationAlertTopMostKey;
  v82[3] = v11;
  v82[4] = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:5];

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v14 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v18 = 45;
    if (isMetaClass)
    {
      v18 = 43;
    }

    v14(6, "%c[%{public}s %{public}s]:%i Posting user notification", v18, ClassName, Name, 180);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
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

    *buf = 67109890;
    v71 = v21;
    v72 = 2082;
    v73 = object_getClassName(self);
    v74 = 2082;
    v75 = sel_getName(a2);
    v76 = 1024;
    v77 = 180;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Posting user notification", buf, 0x22u);
  }

  error = 0;
  v22 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &error, v12);
  v23 = v22;
  if (!v22 || error)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v51 = NFLogGetLogger();
    if (v51)
    {
      v52 = v51;
      v53 = object_getClass(self);
      v54 = class_isMetaClass(v53);
      v55 = object_getClassName(self);
      v56 = sel_getName(a2);
      v57 = 45;
      if (v54)
      {
        v57 = 43;
      }

      v52(3, "%c[%{public}s %{public}s]:%i Couldn't create notification! %d", v57, v55, v56, 184, error);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v58 = object_getClass(self);
      if (class_isMetaClass(v58))
      {
        v59 = 43;
      }

      else
      {
        v59 = 45;
      }

      v60 = object_getClassName(self);
      v61 = sel_getName(a2);
      *buf = 67110146;
      v71 = v59;
      v72 = 2082;
      v73 = v60;
      v74 = 2082;
      v75 = v61;
      v76 = 1024;
      v77 = 184;
      v78 = 1024;
      *v79 = error;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Couldn't create notification! %d", buf, 0x28u);
    }

    goto LABEL_41;
  }

  responseFlags = 0;
  error = CFUserNotificationReceiveResponse(v22, 0.0, &responseFlags);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFLogGetLogger();
  if (v24)
  {
    v25 = v24;
    v26 = object_getClass(self);
    v27 = class_isMetaClass(v26);
    v28 = object_getClassName(self);
    v29 = sel_getName(a2);
    v30 = 45;
    if (v27)
    {
      v30 = 43;
    }

    v25(6, "%c[%{public}s %{public}s]:%i Received notification response %d (error %d)", v30, v28, v29, 191, responseFlags, error);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v31 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = object_getClass(self);
    if (class_isMetaClass(v32))
    {
      v33 = 43;
    }

    else
    {
      v33 = 45;
    }

    v34 = object_getClassName(self);
    v35 = sel_getName(a2);
    *buf = 67110402;
    v71 = v33;
    v72 = 2082;
    v73 = v34;
    v74 = 2082;
    v75 = v35;
    v76 = 1024;
    v77 = 191;
    v78 = 1024;
    *v79 = responseFlags;
    *&v79[4] = 1024;
    *&v79[6] = error;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Received notification response %d (error %d)", buf, 0x2Eu);
  }

  if ((responseFlags & 3) == 0)
  {
    v36 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/%@", v65];
    v37 = [NSURL URLWithString:v36];

    v38 = +[LSApplicationWorkspace defaultWorkspace];
    v67 = 0;
    [v38 openSensitiveURL:v37 withOptions:&__NSDictionary0__struct error:&v67];
    v39 = v67;

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFLogGetLogger();
    if (v40)
    {
      v41 = v40;
      v42 = object_getClass(self);
      v43 = class_isMetaClass(v42);
      v44 = object_getClassName(self);
      v63 = sel_getName(a2);
      v45 = 45;
      if (v43)
      {
        v45 = 43;
      }

      v41(6, "%c[%{public}s %{public}s]:%i Launched to %@ error %@", v45, v44, v63, 199, v65, v39);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = object_getClass(self);
      if (class_isMetaClass(v47))
      {
        v48 = 43;
      }

      else
      {
        v48 = 45;
      }

      v49 = object_getClassName(self);
      v50 = sel_getName(a2);
      *buf = 67110402;
      v71 = v48;
      v72 = 2082;
      v73 = v49;
      v74 = 2082;
      v75 = v50;
      v76 = 1024;
      v77 = 199;
      v78 = 2112;
      *v79 = v65;
      *&v79[8] = 2112;
      v80 = v39;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Launched to %@ error %@", buf, 0x36u);
    }

LABEL_41:
  }

  objc_autoreleasePoolPop(context);
}

@end