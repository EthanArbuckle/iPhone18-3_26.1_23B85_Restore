@interface DDRTaskResetSystemConfiguration
- (void)run;
@end

@implementation DDRTaskResetSystemConfiguration

- (void)run
{
  v2 = SCPreferencesCreateWithAuthorization(0, @"com.apple.devicedatareset.reset", 0, 0);
  if (!v2)
  {
    v6 = DDRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100008E4C(v6);
    }

    goto LABEL_90;
  }

  v3 = v2;
  v4 = +[MCProfileConnection sharedConnection];
  managedSystemConfigurationServiceIDs = [v4 managedSystemConfigurationServiceIDs];

  v6 = managedSystemConfigurationServiceIDs;
  if (!SCPreferencesLock(v3, 1u))
  {
    SCPreferencesSynchronize(v3);
    if (!SCPreferencesLock(v3, 1u))
    {
      v11 = DDRLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100008DD0();
      }

      goto LABEL_89;
    }
  }

  ServiceID = SCNetworkSetCopyCurrent(v3);
  v8 = ServiceID;
  if (!ServiceID)
  {
    v9 = 0;
    goto LABEL_10;
  }

  ServiceID = SCNetworkSetCopySelectedVPNService();
  v9 = ServiceID;
  if (!ServiceID)
  {
LABEL_10:
    v10 = 1;
    goto LABEL_11;
  }

  ServiceID = SCNetworkServiceGetServiceID(ServiceID);
  v10 = 0;
LABEL_11:
  v11 = ServiceID;
  if (![v6 count])
  {
    v40 = 0;
    if (v8)
    {
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  v65 = v10;
  v66 = v9;
  v67 = v11;
  v68 = v6;
  v69 = v8;
  [NSSet setWithArray:v6];
  cf2 = prefs = v3;
  v12 = SCNetworkSetCopyAll(v3);
  v13 = [(__CFArray *)v12 count];
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = v13 & 0x7FFFFFFF;
    do
    {
      v16 = [(__CFArray *)v12 objectAtIndex:v14];
      v17 = cf2;
      v18 = SCNetworkSetCopyServices(v16);
      v19 = [(__CFArray *)v18 count];
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = v19 & 0x7FFFFFFF;
        do
        {
          v22 = [(__CFArray *)v18 objectAtIndex:v20];
          v23 = SCNetworkServiceGetServiceID(v22);
          if (([v17 containsObject:v23] & 1) == 0 && !SCNetworkSetRemoveService(v16, v22))
          {
            v24 = DDRLogForCategory(0);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = SCError();
              v26 = SCErrorString(v25);
              *buf = 138543618;
              v82 = v23;
              v83 = 2082;
              *v84 = v26;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to remove service %{public}@: %{public}s", buf, 0x16u);
            }
          }

          ++v20;
        }

        while (v21 != v20);
      }

      ++v14;
    }

    while (v14 != v15);
  }

  v27 = cf2;
  v28 = SCNetworkServiceCopyAll(prefs);
  v29 = [(__CFArray *)v28 count];
  if (v29 >= 1)
  {
    v30 = (v29 & 0x7FFFFFFF) - 1;
    do
    {
      v31 = [(__CFArray *)v28 objectAtIndex:v30];
      v32 = SCNetworkServiceGetServiceID(v31);
      if (([v27 containsObject:v32] & 1) == 0)
      {
        v33 = SCNetworkServiceRemove(v31);
        v34 = DDRLogForCategory(0);
        v35 = v34;
        if (v33)
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v82 = "removeServicesGlobally";
            v83 = 1024;
            *v84 = v30;
            *&v84[4] = 2112;
            *&v84[6] = v32;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s removed %d %@", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v37 = SCError();
          v38 = SCErrorString(v37);
          *buf = 138543618;
          v82 = v32;
          v83 = 2082;
          *v84 = v38;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to remove service %{public}@: %{public}s", buf, 0x16u);
        }
      }

      v36 = v30-- + 1;
    }

    while (v36 > 1);
  }

  v3 = prefs;
  v39 = SCPreferencesPathGetValue(prefs, @"/");
  v40 = [[NSMutableDictionary alloc] initWithDictionary:v39];
  allKeys = [v40 allKeys];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v42 = [allKeys countByEnumeratingWithState:&v76 objects:buf count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v77;
    do
    {
      for (i = 0; i != v43; i = i + 1)
      {
        if (*v77 != v44)
        {
          objc_enumerationMutation(allKeys);
        }

        v46 = *(*(&v76 + 1) + 8 * i);
        if (([v46 isEqualToString:kSCPrefNetworkServices] & 1) == 0)
        {
          [v40 removeObjectForKey:v46];
        }
      }

      v43 = [allKeys countByEnumeratingWithState:&v76 objects:buf count:16];
    }

    while (v43);
  }

  v11 = v67;
  v8 = v69;
  if (!v69 || ([v27 containsObject:v67] & 1) != 0)
  {
    goto LABEL_68;
  }

  v63 = v39;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v47 = v68;
  v48 = [v47 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (!v48)
  {
    goto LABEL_67;
  }

  v49 = v48;
  v50 = *v73;
  v64 = kSCNetworkInterfaceTypeVPN;
  while (2)
  {
    for (j = 0; j != v49; j = j + 1)
    {
      if (*v73 != v50)
      {
        objc_enumerationMutation(v47);
      }

      v52 = SCNetworkServiceCopy(v3, *(*(&v72 + 1) + 8 * j));
      if (v52)
      {
        v53 = v52;
        Interface = SCNetworkServiceGetInterface(v52);
        if (Interface)
        {
          v55 = Interface;
          InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
          if (!CFEqual(InterfaceType, kSCNetworkInterfaceTypePPP))
          {
            if (CFEqual(InterfaceType, v64))
            {
              goto LABEL_66;
            }

            v59 = InterfaceType;
            v60 = kSCNetworkInterfaceTypeIPSec;
            goto LABEL_57;
          }

          v57 = SCNetworkInterfaceGetInterface(v55);
          if (v57)
          {
            v58 = SCNetworkInterfaceGetInterfaceType(v57);
            if (CFEqual(v58, kSCNetworkInterfaceTypeL2TP))
            {
              goto LABEL_66;
            }

            v59 = v58;
            v60 = kSCNetworkInterfaceTypePPTP;
LABEL_57:
            if (CFEqual(v59, v60))
            {
LABEL_66:
              v8 = v69;
              SCNetworkSetSetSelectedVPNService();
              CFRelease(v53);
              v3 = prefs;
              goto LABEL_67;
            }
          }
        }

        CFRelease(v53);
        v3 = prefs;
        continue;
      }
    }

    v49 = [v47 countByEnumeratingWithState:&v72 objects:v80 count:16];
    v8 = v69;
    if (v49)
    {
      continue;
    }

    break;
  }

LABEL_67:

  v11 = v67;
  v39 = v63;
LABEL_68:

  v6 = v68;
  v9 = v66;
  v10 = v65;
  if (v8)
  {
LABEL_69:
    CFRelease(v8);
  }

LABEL_70:
  if ((v10 & 1) == 0)
  {
    CFRelease(v9);
  }

  if (!v40)
  {
    v40 = objc_alloc_init(NSMutableDictionary);
  }

  if (SCPreferencesPathSetValue(v3, @"/", v40))
  {
    if (SCPreferencesCommitChanges(v3))
    {
      if (SCPreferencesApplyChanges(v3))
      {
        if (!SCPreferencesUnlock(v3))
        {
          v61 = DDRLogForCategory(0);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            sub_100008BE0();
          }

          goto LABEL_82;
        }

        goto LABEL_88;
      }

      v62 = DDRLogForCategory(0);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        sub_100008C5C();
      }
    }

    else
    {
      v62 = DDRLogForCategory(0);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        sub_100008CD8();
      }
    }

    SCPreferencesUnlock(v3);
    goto LABEL_88;
  }

  v61 = DDRLogForCategory(0);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    sub_100008D54();
  }

LABEL_82:

LABEL_88:
LABEL_89:

  CFRelease(v3);
LABEL_90:
}

@end