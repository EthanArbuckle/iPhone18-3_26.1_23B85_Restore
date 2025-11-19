@interface IDSQueryUtilities
+ (id)URIToQueryFrom:(id)a3 withPreferredFromURI:(id)a4;
+ (id)accountToQueryFrom:(id)a3 fromURI:(id)a4 destinationStrings:(id)a5 allowLocalAccount:(BOOL)a6 respectFromURI:(BOOL)a7;
+ (id)accountToQueryFrom:(id)a3 fromURI:(id)a4 destinationURIs:(id)a5 allowLocalAccount:(BOOL)a6 respectFromURI:(BOOL)a7;
+ (id)prefixedAliasStringToQueryFrom:(id)a3 withPreferredFromURI:(id)a4;
@end

@implementation IDSQueryUtilities

+ (id)accountToQueryFrom:(id)a3 fromURI:(id)a4 destinationURIs:(id)a5 allowLocalAccount:(BOOL)a6 respectFromURI:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [a5 __imArrayByApplyingBlock:&stru_100BD9408];
  v15 = [a1 accountToQueryFrom:v13 fromURI:v12 destinationStrings:v14 allowLocalAccount:v8 respectFromURI:v7];

  return v15;
}

+ (id)accountToQueryFrom:(id)a3 fromURI:(id)a4 destinationStrings:(id)a5 allowLocalAccount:(BOOL)a6 respectFromURI:(BOOL)a7
{
  v59 = a6;
  v60 = a7;
  v9 = a3;
  v64 = a4;
  v10 = a5;
  v65 = objc_alloc_init(NSMutableArray);
  v61 = v10;
  v11 = [v10 __imArrayByApplyingBlock:&stru_100BD9428];
  v66 = [v11 mutableCopy];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v12)
  {
    v68 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *v75;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v75 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v74 + 1) + 8 * i);
        if ([v17 accountType] == 1)
        {
          v18 = v17;

          v19 = [v18 unprefixedURIStringsFromRegistration];
          v73[0] = _NSConcreteStackBlock;
          v73[1] = 3221225472;
          v73[2] = sub_10036C894;
          v73[3] = &unk_100BD9450;
          v73[4] = v18;
          v20 = [NSPredicate predicateWithBlock:v73];
          v21 = [v19 filteredArrayUsingPredicate:v20];

          v13 = [v21 count] != 0;
          v22 = [v18 unprefixedURIStringsFromRegistration];
          [v66 removeObjectsInArray:v22];

          v14 = v18;
        }

        else if ([v17 accountType] || !objc_msgSend(v17, "isUsableForSending"))
        {
          v23 = v17;

          v68 = v23;
        }

        else
        {
          [v65 addObject:v17];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v12);
  }

  else
  {
    v68 = 0;
    v13 = 0;
    v14 = 0;
  }

  v62 = [v66 count];
  if (!v64)
  {
    goto LABEL_51;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v63 = obj;
  v24 = [v63 countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (!v24)
  {
LABEL_28:

LABEL_39:
    if (v60)
    {
      v38 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = v64;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Did not find account matching fromURI to respect %@ -- returning nil", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        IMLogString();
        if (_IMWillLog())
        {
          _IMAlwaysLog();
        }
      }

      v27 = 0;
      goto LABEL_87;
    }

    v39 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v64;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Did not find account matching fromURI %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v50 = v64;
      IMLogString();
      if (_IMWillLog())
      {
        v50 = v64;
        _IMAlwaysLog();
      }
    }

LABEL_51:
    [v65 sortUsingComparator:{&stru_100BD9490, v50}];
    v40 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = @"YES";
      if (v62)
      {
        v42 = @"YES";
      }

      else
      {
        v42 = @"NO";
      }

      if (!v13)
      {
        v41 = @"NO";
      }

      *buf = 138412546;
      v79 = v42;
      v80 = 2112;
      v81 = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Selecting account {forOutsideiCloudMessaging: %@, iCloudUsableForOutside: %@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v43 = v62 ? @"YES" : @"NO";
      v44 = v13 ? @"YES" : @"NO";
      MarcoLogMadridLevel();
      v51 = v43;
      v55 = v44;
      IMLogString();
      if (_IMWillLog())
      {
        v51 = v43;
        v55 = v44;
        _IMAlwaysLog();
      }
    }

    if (!v14 || v62 != 0 && !v13 || ![v14 isUsableForSending])
    {
      if ([v65 count])
      {
        v45 = [v65 firstObject];
LABEL_81:
        v27 = v45;
LABEL_82:
        v47 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [v27 smallDescription];
          *buf = 138412290;
          v79 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Selected account {registeredAccount: %@}", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          v52 = [v27 smallDescription];
          MarcoLogMadridLevel();

          v53 = [v27 smallDescription];
          IMLogString();

          if (_IMWillLog())
          {
            v54 = [v27 smallDescription];
            _IMAlwaysLog();
          }
        }

        goto LABEL_87;
      }

      if (v59 && [v68 isEnabled])
      {
        v27 = v68;
        v46 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Selected local account", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          MarcoLogMadridLevel();
          IMLogString();
          if (_IMWillLog())
          {
            _IMAlwaysLog();
          }
        }

        goto LABEL_82;
      }

      if (!v14)
      {
        v27 = 0;
        goto LABEL_82;
      }
    }

    v45 = v14;
    goto LABEL_81;
  }

  v25 = *v70;
LABEL_19:
  v26 = 0;
  while (1)
  {
    if (*v70 != v25)
    {
      objc_enumerationMutation(v63);
    }

    v27 = *(*(&v69 + 1) + 8 * v26);
    v28 = [v27 unprefixedURIStringsFromRegistration];
    v29 = [(__CFString *)v64 prefixedURI];
    v30 = [v29 _stripFZIDPrefix];
    if (![v28 containsObject:v30])
    {

      goto LABEL_26;
    }

    v31 = [v27 isUsableForSending];

    if (v31)
    {
      break;
    }

LABEL_26:
    if (v24 == ++v26)
    {
      v24 = [v63 countByEnumeratingWithState:&v69 objects:v82 count:16];
      if (v24)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  v32 = [v27 accountType] != 1;
  if (v32 || v62 == 0 || v13)
  {
    v33 = v27;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  if (!v34)
  {
    goto LABEL_39;
  }

  v35 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [v34 smallDescription];
    *buf = 138412546;
    v79 = v64;
    v80 = 2112;
    v81 = v36;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Selected account matching fromURI %@ {%@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v56 = [v34 smallDescription];
    MarcoLogMadridLevel();

    v57 = [v34 smallDescription];
    IMLogString();

    if (_IMWillLog())
    {
      v58 = [v34 smallDescription];
      _IMAlwaysLog();
    }
  }

  v37 = v34;

LABEL_87:

  return v27;
}

+ (id)prefixedAliasStringToQueryFrom:(id)a3 withPreferredFromURI:(id)a4
{
  v4 = [a1 URIToQueryFrom:a3 withPreferredFromURI:a4];
  v5 = [v4 prefixedURI];

  return v5;
}

+ (id)URIToQueryFrom:(id)a3 withPreferredFromURI:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 accountType] == 2)
  {
    v7 = [IDSURI alloc];
    v8 = [v5 loginID];
    v9 = [v5 service];
    v10 = [v9 identifier];
    v11 = [v7 initWithPrefixedURI:v8 withServiceLoggingHint:v10];
  }

  else
  {
    v12 = [v5 service];
    v13 = [v12 identifier];
    _IDSPrefersPhoneNumbersForServiceIdentifier();

    if ([v5 shouldRegisterUsingDSHandle])
    {
      v14 = [v5 primaryRegistration];
      v8 = [v14 dsHandle];
    }

    else
    {
      v8 = 0;
    }

    v15 = [v6 unprefixedURI];
    v16 = [v5 unprefixedURIStringsFromRegistration];
    v9 = _IDSCopyCallerIDWithSelfMessagingHint();

    v17 = [IDSURI alloc];
    v10 = [v5 service];
    v18 = [v10 identifier];
    v11 = [v17 initWithUnprefixedURI:v9 withServiceLoggingHint:v18];
  }

  return v11;
}

@end