@interface IDSQueryUtilities
+ (id)URIToQueryFrom:(id)from withPreferredFromURI:(id)i;
+ (id)accountToQueryFrom:(id)from fromURI:(id)i destinationStrings:(id)strings allowLocalAccount:(BOOL)account respectFromURI:(BOOL)rI;
+ (id)accountToQueryFrom:(id)from fromURI:(id)i destinationURIs:(id)is allowLocalAccount:(BOOL)account respectFromURI:(BOOL)rI;
+ (id)prefixedAliasStringToQueryFrom:(id)from withPreferredFromURI:(id)i;
@end

@implementation IDSQueryUtilities

+ (id)accountToQueryFrom:(id)from fromURI:(id)i destinationURIs:(id)is allowLocalAccount:(BOOL)account respectFromURI:(BOOL)rI
{
  rICopy = rI;
  accountCopy = account;
  iCopy = i;
  fromCopy = from;
  v14 = [is __imArrayByApplyingBlock:&stru_100BD9408];
  v15 = [self accountToQueryFrom:fromCopy fromURI:iCopy destinationStrings:v14 allowLocalAccount:accountCopy respectFromURI:rICopy];

  return v15;
}

+ (id)accountToQueryFrom:(id)from fromURI:(id)i destinationStrings:(id)strings allowLocalAccount:(BOOL)account respectFromURI:(BOOL)rI
{
  accountCopy = account;
  rICopy = rI;
  fromCopy = from;
  iCopy = i;
  stringsCopy = strings;
  v65 = objc_alloc_init(NSMutableArray);
  v61 = stringsCopy;
  v11 = [stringsCopy __imArrayByApplyingBlock:&stru_100BD9428];
  v66 = [v11 mutableCopy];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = fromCopy;
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

          unprefixedURIStringsFromRegistration = [v18 unprefixedURIStringsFromRegistration];
          v73[0] = _NSConcreteStackBlock;
          v73[1] = 3221225472;
          v73[2] = sub_10036C894;
          v73[3] = &unk_100BD9450;
          v73[4] = v18;
          v20 = [NSPredicate predicateWithBlock:v73];
          v21 = [unprefixedURIStringsFromRegistration filteredArrayUsingPredicate:v20];

          v13 = [v21 count] != 0;
          unprefixedURIStringsFromRegistration2 = [v18 unprefixedURIStringsFromRegistration];
          [v66 removeObjectsInArray:unprefixedURIStringsFromRegistration2];

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
  if (!iCopy)
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
    if (rICopy)
    {
      v38 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = iCopy;
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
      v79 = iCopy;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Did not find account matching fromURI %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v50 = iCopy;
      IMLogString();
      if (_IMWillLog())
      {
        v50 = iCopy;
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
        firstObject = [v65 firstObject];
LABEL_81:
        v27 = firstObject;
LABEL_82:
        v47 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          smallDescription = [v27 smallDescription];
          *buf = 138412290;
          v79 = smallDescription;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Selected account {registeredAccount: %@}", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          smallDescription2 = [v27 smallDescription];
          MarcoLogMadridLevel();

          smallDescription3 = [v27 smallDescription];
          IMLogString();

          if (_IMWillLog())
          {
            smallDescription4 = [v27 smallDescription];
            _IMAlwaysLog();
          }
        }

        goto LABEL_87;
      }

      if (accountCopy && [v68 isEnabled])
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

    firstObject = v14;
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
    unprefixedURIStringsFromRegistration3 = [v27 unprefixedURIStringsFromRegistration];
    prefixedURI = [(__CFString *)iCopy prefixedURI];
    _stripFZIDPrefix = [prefixedURI _stripFZIDPrefix];
    if (![unprefixedURIStringsFromRegistration3 containsObject:_stripFZIDPrefix])
    {

      goto LABEL_26;
    }

    isUsableForSending = [v27 isUsableForSending];

    if (isUsableForSending)
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
    smallDescription5 = [v34 smallDescription];
    *buf = 138412546;
    v79 = iCopy;
    v80 = 2112;
    v81 = smallDescription5;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Selected account matching fromURI %@ {%@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    smallDescription6 = [v34 smallDescription];
    MarcoLogMadridLevel();

    smallDescription7 = [v34 smallDescription];
    IMLogString();

    if (_IMWillLog())
    {
      smallDescription8 = [v34 smallDescription];
      _IMAlwaysLog();
    }
  }

  v37 = v34;

LABEL_87:

  return v27;
}

+ (id)prefixedAliasStringToQueryFrom:(id)from withPreferredFromURI:(id)i
{
  v4 = [self URIToQueryFrom:from withPreferredFromURI:i];
  prefixedURI = [v4 prefixedURI];

  return prefixedURI;
}

+ (id)URIToQueryFrom:(id)from withPreferredFromURI:(id)i
{
  fromCopy = from;
  iCopy = i;
  if ([fromCopy accountType] == 2)
  {
    v7 = [IDSURI alloc];
    loginID = [fromCopy loginID];
    service = [fromCopy service];
    identifier = [service identifier];
    v11 = [v7 initWithPrefixedURI:loginID withServiceLoggingHint:identifier];
  }

  else
  {
    service2 = [fromCopy service];
    identifier2 = [service2 identifier];
    _IDSPrefersPhoneNumbersForServiceIdentifier();

    if ([fromCopy shouldRegisterUsingDSHandle])
    {
      primaryRegistration = [fromCopy primaryRegistration];
      loginID = [primaryRegistration dsHandle];
    }

    else
    {
      loginID = 0;
    }

    unprefixedURI = [iCopy unprefixedURI];
    unprefixedURIStringsFromRegistration = [fromCopy unprefixedURIStringsFromRegistration];
    service = _IDSCopyCallerIDWithSelfMessagingHint();

    v17 = [IDSURI alloc];
    identifier = [fromCopy service];
    v10Identifier = [identifier identifier];
    v11 = [v17 initWithUnprefixedURI:service withServiceLoggingHint:v10Identifier];
  }

  return v11;
}

@end