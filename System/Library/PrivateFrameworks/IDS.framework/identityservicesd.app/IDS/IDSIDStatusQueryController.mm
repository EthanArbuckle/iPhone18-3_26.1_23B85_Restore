@interface IDSIDStatusQueryController
+ (id)sharedInstance;
- (BOOL)hasValidStatusForURI:(id)i fromURI:(id)rI fromService:(id)service;
- (IDSIDStatusQueryController)init;
- (IDSIDStatusQueryController)initWithShouldAllowProxyQueries:(BOOL)queries peerIDManager:(id)manager userDefaults:(id)defaults statusDepencencyProvider:(id)provider;
- (id)_cachedResultsForURIs:(id)is fromURI:(id)i fromService:(id)service reason:(id)reason;
- (id)_loadLegacyCache;
- (id)_plistFilePath;
- (id)currentCacheForService:(id)service;
- (unsigned)_IDStatusForURI:(id)i fromService:(id)service;
- (unsigned)cachedIDStatusForID:(id)d fromURI:(id)i fromService:(id)service respectExpiry:(BOOL)expiry reason:(id)reason;
- (void)_lookupIDStatusForURIs:(id)is fromIdentity:(id)identity fromURI:(id)i fromService:(id)service lightQuery:(BOOL)query allowQuery:(BOOL)allowQuery clientRequestedForceQuery:(BOOL)forceQuery bypassLimit:(BOOL)self0 allowOnMissingEndpoints:(BOOL)self1 reason:(id)self2 completionBlock:(id)self3;
- (void)_sendIDStatusChanges:(id)changes forService:(id)service URI:(id)i success:(BOOL)success error:(id)error;
- (void)_updateCacheWithStatusUpdates:(id)updates fromURI:(id)i fromService:(id)service success:(BOOL)success hadError:(BOOL)error negativeCacheHints:(id)hints;
- (void)_wipeLegacyCache;
- (void)addCompletionBlock:(id)block forUniqueIdentifier:(id)identifier;
- (void)clearCache;
- (void)dealloc;
- (void)infoForIDs:(id)ds fromIdentity:(id)identity fromURI:(id)i fromService:(id)service infoType:(unint64_t)type infoOptions:(id)options lightQuery:(BOOL)query allowQuery:(BOOL)self0 reason:(id)self1 completion:(id)self2;
- (void)noteIncomingID:(id)d fromService:(id)service;
- (void)remoteDevicesForIDs:(id)ds fromIdentity:(id)identity fromURI:(id)i fromService:(id)service lightQuery:(BOOL)query allowQuery:(BOOL)allowQuery reason:(id)reason completionBlock:(id)self0;
- (void)removeCachedEntriesForService:(id)service;
- (void)removeCachedIDStatusForURI:(id)i service:(id)service;
- (void)removeCompletionBlockForUniqueIdentifier:(id)identifier;
- (void)requestIDStatusForID:(id)d fromIdentity:(id)identity fromURI:(id)i fromService:(id)service lightQuery:(BOOL)query allowQuery:(BOOL)allowQuery reason:(id)reason completionBlock:(id)self0;
- (void)requestIDStatusForIDs:(id)ds fromIdentity:(id)identity fromURI:(id)i fromService:(id)service lightQuery:(BOOL)query allowQuery:(BOOL)allowQuery forceQuery:(BOOL)forceQuery bypassLimit:(BOOL)self0 reason:(id)self1 completionBlock:(id)self2;
- (void)setCachedIDStatus:(unsigned int)status ForID:(id)d fromURI:(id)i fromService:(id)service;
@end

@implementation IDSIDStatusQueryController

+ (id)sharedInstance
{
  if (qword_100CBF088 != -1)
  {
    sub_100929CA8();
  }

  v3 = qword_100CBF090;

  return v3;
}

- (IDSIDStatusQueryController)initWithShouldAllowProxyQueries:(BOOL)queries peerIDManager:(id)manager userDefaults:(id)defaults statusDepencencyProvider:(id)provider
{
  managerCopy = manager;
  defaultsCopy = defaults;
  providerCopy = provider;
  v21.receiver = self;
  v21.super_class = IDSIDStatusQueryController;
  v14 = [(IDSIDStatusQueryController *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_peerIDManager, manager);
    objc_storeStrong(&v15->_userDefaults, defaults);
    objc_storeStrong(&v15->_dependencyProvider, provider);
    v15->_allowProxyQueries = queries;
    objc_initWeak(&location, v15);
    peerIDManager = v15->_peerIDManager;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100583560;
    v18[3] = &unk_100BDD3E0;
    objc_copyWeak(&v19, &location);
    [(IDSPeerIDManager *)peerIDManager addCompletionBlock:v18 forToken:@"IDSIDStatusQueryController"];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v15;
}

- (IDSIDStatusQueryController)init
{
  v3 = +[IDSPeerIDManager sharedInstance];
  v4 = +[IMUserDefaults sharedDefaults];
  v5 = objc_alloc_init(IDSIDStatusDependencyProvider);
  v6 = [(IDSIDStatusQueryController *)self initWithShouldAllowProxyQueries:0 peerIDManager:v3 userDefaults:v4 statusDepencencyProvider:v5];

  return v6;
}

- (void)dealloc
{
  [(IDSPeerIDManager *)self->_peerIDManager removeCompletionBlockForToken:@"IDSIDStatusQueryController"];
  [(IDSPeerIDManager *)self->_peerIDManager removePurgeClientDataBlockForToken:@"IDSIDStatusQueryController"];
  v3.receiver = self;
  v3.super_class = IDSIDStatusQueryController;
  [(IDSIDStatusQueryController *)&v3 dealloc];
}

- (void)_updateCacheWithStatusUpdates:(id)updates fromURI:(id)i fromService:(id)service success:(BOOL)success hadError:(BOOL)error negativeCacheHints:(id)hints
{
  successCopy = success;
  updatesCopy = updates;
  iCopy = i;
  serviceCopy = service;
  hintsCopy = hints;
  v66 = updatesCopy;
  v74 = iCopy;
  if ([updatesCopy count])
  {
    prefixedURI = [iCopy prefixedURI];
    v14 = [prefixedURI length];

    if (v14)
    {
      v15 = serviceCopy;
      v16 = v74;
      if ([serviceCopy length])
      {
        [(IDSIDStatusDependencyProvider *)self->_dependencyProvider currentTime];
        v18 = v17;
        v61 = [serviceCopy isEqualToString:@"com.apple.madrid"];
        if (v61)
        {
          v19 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Will add valid expiry", buf, 2u);
          }

          v16 = v74;
          v15 = serviceCopy;
          if (os_log_shim_legacy_logging_enabled())
          {
            MarcoLogMadridLevel();
            IMLogString();
            v16 = v74;
            v15 = serviceCopy;
            if (_IMWillLog())
            {
              _IMAlwaysLog();
              v16 = v74;
              v15 = serviceCopy;
            }
          }
        }

        v20 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v84 = updatesCopy;
          v85 = 2048;
          v86 = v18;
          v87 = 2112;
          v88 = v16;
          v89 = 2112;
          v90 = v15;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Caching ID query responses: %@   date: %f   from URI: %@   from Service: %@ addValidExpiry", buf, 0x2Au);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          MarcoLogMadridLevel();
          v58 = v74;
          v59 = serviceCopy;
          v57 = v18;
          v56 = updatesCopy;
          IMLogString();
          if (_IMWillLog())
          {
            v58 = v74;
            v59 = serviceCopy;
            v57 = v18;
            v56 = updatesCopy;
            _IMAlwaysLog();
          }
        }

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        obj = [updatesCopy allKeys];
        v68 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
        if (v68)
        {
          v65 = *v78;
          do
          {
            for (i = 0; i != v68; i = i + 1)
            {
              if (*v78 != v65)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v77 + 1) + 8 * i);
              v76 = [v66 objectForKey:v22];
              unsignedIntValue = [v76 unsignedIntValue];
              v24 = [v22 isEqualToURI:v74];
              if (unsignedIntValue == 2)
              {
                v25 = v24;
              }

              else
              {
                v25 = 0;
              }

              if (v25 == 1)
              {
                v26 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Trying to cache Invalid for ourselves, ignoring...", buf, 2u);
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
              }

              else
              {
                peerIDManager = [(IDSIDStatusQueryController *)self peerIDManager];
                prefixedURI2 = [v22 prefixedURI];
                v72 = [peerIDManager loadStatusForService:serviceCopy URI:prefixedURI2];

                prefixedURI3 = [v22 prefixedURI];
                v75 = serviceCopy;
                v71 = [NSNumber numberWithDouble:v18];
                v29 = objc_opt_class();
                prefixedURI4 = [v22 prefixedURI];
                v31 = [hintsCopy objectForKey:prefixedURI4];
                if (objc_opt_isKindOfClass())
                {
                  v69 = v31;
                }

                else
                {
                  if (v31)
                  {
                    v32 = +[IMRGLog registration];
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412546;
                      v84 = prefixedURI4;
                      v85 = 2112;
                      v86 = *&v29;
                      _os_log_fault_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, "Failed type check! {key: %@, class: %@}", buf, 0x16u);
                    }
                  }

                  v69 = 0;
                }

                peerIDManager2 = [(IDSIDStatusQueryController *)self peerIDManager];
                v81 = v22;
                v34 = [NSArray arrayWithObjects:&v81 count:1];
                v35 = [peerIDManager2 endpointsForURIs:v34 service:v75 fromURI:v74];
                v36 = [v35 objectForKey:v22];
                v37 = [v36 __imArrayByApplyingBlock:&stru_100BE0A10];
                v38 = [v37 sortedArrayUsingComparator:&stru_100BE0A50];
                firstObject = [v38 firstObject];

                if (firstObject)
                {
                  v40 = v61;
                }

                else
                {
                  v40 = 0;
                }

                if (v40 == 1)
                {
                  [firstObject timeIntervalSinceNow];
                  v41 = [NSNumber numberWithDouble:?];
                }

                else
                {
                  v41 = 0;
                }

                status = [v72 status];
                peerIDManager3 = [(IDSIDStatusQueryController *)self peerIDManager];
                [peerIDManager3 timeToCacheURI:v22 fromURI:v74 service:v75 forStatus:status];
                v45 = v44;

                [IDSBagUtilities timeToCacheResultsForIDStatus:0 forService:v75];
                if (unsignedIntValue)
                {
                  if (unsignedIntValue == 1)
                  {
                    if (v41)
                    {
                      v47 = v41;
                    }

                    else
                    {
                      v47 = 0;
                    }

                    v49 = 1;
                    v48 = 1;
                  }

                  else if (unsignedIntValue == 2)
                  {
                    v47 = 0;
                    v48 = 2;
                    v49 = 1;
                  }

                  else
                  {
                    v49 = 0;
                    v48 = 0;
                    v47 = 0;
                  }
                }

                else
                {
                  v47 = [NSNumber numberWithDouble:v18 + v46 - v45];
                  v49 = 0;
                  v48 = 0;
                }

                v50 = [[IDSCachedIDStatus alloc] initWithURIString:prefixedURI3 service:v75 status:v48 expiry:v47 negativeTTL:v69 lookupDate:v71];
                peerIDManager4 = [(IDSIDStatusQueryController *)self peerIDManager];
                [peerIDManager4 saveStatus:v50];

                if (((v49 | successCopy) & 1) == 0 && !error)
                {
                  v52 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, " => Ignoring update to unknown, just updating the cache", buf, 2u);
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
                }
              }
            }

            v68 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
          }

          while (v68);
        }

        goto LABEL_78;
      }

      v55 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "No fromService, ignoring...", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        IMLogString();
        if (_IMWillLog())
        {
LABEL_77:
          _IMAlwaysLog();
        }
      }
    }

    else
    {
      v54 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "No fromURI, ignoring...", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        IMLogString();
        if (_IMWillLog())
        {
          goto LABEL_77;
        }
      }
    }
  }

  else
  {
    v53 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "No updates, ignoring...", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      IMLogString();
      if (_IMWillLog())
      {
        goto LABEL_77;
      }
    }
  }

LABEL_78:
}

- (unsigned)_IDStatusForURI:(id)i fromService:(id)service
{
  iCopy = i;
  serviceCopy = service;
  if (sub_1005848C4([iCopy FZIDType], iCopy))
  {
    peerIDManager = [(IDSIDStatusQueryController *)self peerIDManager];
    prefixedURI = [iCopy prefixedURI];
    v10 = [peerIDManager loadStatusForService:serviceCopy URI:prefixedURI];

    if (v10)
    {
      status = [v10 status];
    }

    else
    {
      status = 0;
    }
  }

  else
  {
    status = 2;
  }

  return status;
}

- (void)removeCachedEntriesForService:(id)service
{
  serviceCopy = service;
  if (serviceCopy)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing cached entries {service: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v7 = serviceCopy;
      IMLogString();
      if (_IMWillLog())
      {
        v7 = serviceCopy;
        _IMAlwaysLog();
      }
    }

    peerIDManager = [(IDSIDStatusQueryController *)self peerIDManager];
    [peerIDManager deleteAllStatusesForService:serviceCopy];
  }
}

- (void)removeCachedIDStatusForURI:(id)i service:(id)service
{
  iCopy = i;
  serviceCopy = service;
  v8 = serviceCopy;
  if (iCopy && serviceCopy)
  {
    peerIDManager = [(IDSIDStatusQueryController *)self peerIDManager];
    prefixedURI = [iCopy prefixedURI];
    [peerIDManager deleteStatusForService:v8 URI:prefixedURI];
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "removeCachedIDStatusForURI needs a forURI and service -- returning", v12, 2u);
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
  }
}

- (void)noteIncomingID:(id)d fromService:(id)service
{
  dCopy = d;
  serviceCopy = service;
  if ([serviceCopy length])
  {
    fZIDType = [dCopy FZIDType];
    if ([serviceCopy length])
    {
      if (sub_1005848C4(fZIDType, dCopy))
      {
        if ([(IDSIDStatusQueryController *)self _IDStatusForURI:dCopy fromService:serviceCopy]== 2)
        {
          peerIDManager = [(IDSIDStatusQueryController *)self peerIDManager];
          prefixedURI = [dCopy prefixedURI];
          [peerIDManager deleteStatusForService:serviceCopy URI:prefixedURI];
        }

        goto LABEL_26;
      }

      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = dCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " => Bogus ID query for: %@   ignoring this", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        IMLogString();
        if (_IMWillLog())
        {
LABEL_25:
          _IMAlwaysLog();
        }
      }
    }

    else
    {
      v12 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = dCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " => Bogus ID query for: %@   ignoring this", buf, 0xCu);
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

      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " => From Service: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        IMLogString();
        if (_IMWillLog())
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No fromService, ignoring...", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      IMLogString();
      if (_IMWillLog())
      {
        goto LABEL_25;
      }
    }
  }

LABEL_26:
}

- (id)_cachedResultsForURIs:(id)is fromURI:(id)i fromService:(id)service reason:(id)reason
{
  isCopy = is;
  iCopy = i;
  serviceCopy = service;
  reasonCopy = reason;
  v22 = objc_alloc_init(NSMutableDictionary);
  v14 = objc_alloc_init(NSMutableDictionary);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = isCopy;
  v15 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [NSNumber numberWithUnsignedInt:[(IDSIDStatusQueryController *)self cachedIDStatusForID:v19 fromURI:iCopy fromService:serviceCopy reason:reasonCopy, v22]];
        [v14 setObject:v20 forKey:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  [v22 setObject:v14 forKey:serviceCopy];

  return v22;
}

- (BOOL)hasValidStatusForURI:(id)i fromURI:(id)rI fromService:(id)service
{
  iCopy = i;
  rICopy = rI;
  serviceCopy = service;
  if (sub_1005848C4([iCopy FZIDType], iCopy))
  {
    peerIDManager = [(IDSIDStatusQueryController *)self peerIDManager];
    prefixedURI = [rICopy prefixedURI];
    v13 = [peerIDManager loadStatusForService:serviceCopy URI:prefixedURI];

    if ([v13 status] == 2)
    {
      lookupDate = [v13 lookupDate];
      [lookupDate doubleValue];
      v16 = v15;
      Current = CFAbsoluteTimeGetCurrent();
      v18 = +[IDSPeerIDManager sharedInstance];
      v19 = vabdd_f64(Current, v16);
      [v18 timeToCacheURI:iCopy fromURI:rICopy service:serviceCopy forStatus:{objc_msgSend(v13, "status")}];
      v21 = v20;

      v22 = v19 >= v21 || lookupDate == 0;
      v23 = v22;
      if (!v22)
      {
        v24 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110144;
          status = [v13 status];
          v30 = 2048;
          v31 = Current;
          v32 = 2048;
          v33 = v16;
          v34 = 2048;
          v35 = v19;
          v36 = 2048;
          v37 = v21;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " => Not looking up... current status: %d  current time: %f   last looked up: %f  difference: %f  difference needed: %f", buf, 0x30u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          status2 = [v13 status];
          MarcoLogMadridLevel();
          status3 = [v13 status];
          IMLogString();
          if (_IMWillLog())
          {
            [v13 status];
            _IMAlwaysLog();
          }
        }
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)_lookupIDStatusForURIs:(id)is fromIdentity:(id)identity fromURI:(id)i fromService:(id)service lightQuery:(BOOL)query allowQuery:(BOOL)allowQuery clientRequestedForceQuery:(BOOL)forceQuery bypassLimit:(BOOL)self0 allowOnMissingEndpoints:(BOOL)self1 reason:(id)self2 completionBlock:(id)self3
{
  allowQueryCopy = allowQuery;
  queryCopy = query;
  isCopy = is;
  identityCopy = identity;
  iCopy = i;
  serviceCopy = service;
  reasonCopy = reason;
  blockCopy = block;
  selfCopy = self;
  if (!self->_allowProxyQueries)
  {
    if (![isCopy count] || (objc_msgSend(iCopy, "prefixedURI"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, !identityCopy) || !v18)
    {
      v62 = blockCopy;
      if (blockCopy)
      {
        (*(blockCopy + 2))(blockCopy, 0, iCopy, serviceCopy, 0, 0);
      }

      goto LABEL_236;
    }
  }

  v19 = +[IDSTrafficMonitor sharedInstance];
  [v19 noteQueryRequestForService:serviceCopy requestor:@"unknown"];

  v169 = objc_alloc_init(NSMutableArray);
  v177 = objc_alloc_init(NSMutableArray);
  v181 = objc_alloc_init(NSMutableArray);
  v168 = objc_alloc_init(NSMutableArray);
  peerIDManager = [(IDSIDStatusQueryController *)self peerIDManager];
  v173 = [peerIDManager endpointsForURIs:isCopy service:serviceCopy fromURI:iCopy ignoringTTL:1];

  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  obj = isCopy;
  v21 = [obj countByEnumeratingWithState:&v199 objects:v214 count:16];
  if (!v21)
  {
    v171 = 0;
    goto LABEL_95;
  }

  v171 = 0;
  v22 = *v200;
  do
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v200 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v199 + 1) + 8 * i);
      fZIDType = [v24 FZIDType];
      [v181 addObject:v24];
      if (sub_1005848C4(fZIDType, v24))
      {
        if (forceQuery && sub_100587FE0())
        {
          v26 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v207 = v24;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " => Forcing query for URI: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            MarcoLogMadridLevel();
            v150 = v24;
            IMLogString();
            if (_IMWillLog())
            {
              _IMAlwaysLog();
              [v177 addObject:{v24, v24, *&v154, *&v155, *&v156, *&v157, *&v158}];
              continue;
            }
          }

LABEL_88:
          [v177 addObject:{v24, v150, *&v154, *&v155, *&v156, *&v157, *&v158}];
          continue;
        }

        peerIDManager2 = [(IDSIDStatusQueryController *)selfCopy peerIDManager];
        prefixedURI = [v24 prefixedURI];
        v30 = [peerIDManager2 loadStatusForService:serviceCopy URI:prefixedURI];

        if (endpoints)
        {
          v31 = serviceCopy;
          v32 = [IDSServerBag sharedInstanceForBagType:0];
          v33 = [NSString stringWithFormat:@"client-query-allow-for-missing-endpoints-%@", v31];
          v34 = [v32 objectForKey:v33];

          if (v34)
          {
            bOOLValue = [v34 BOOLValue];

            if (!bOOLValue)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v36 = [v31 isEqualToString:@"com.apple.private.alloy.arcade"];

            if ((v36 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          v37 = [v173 objectForKey:v24];
          v38 = v37;
          if (v37)
          {
            v39 = [v37 count] != 0;
          }

          else
          {
            v39 = 0;
          }

          if ([v30 status] == 1 && !v39)
          {
            v40 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v207 = v24;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, " => Missing cached endpoints for valid status for: %@   adding to URIsToQuery", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              MarcoLogMadridLevel();
              v150 = v24;
              IMLogString();
              if (_IMWillLog())
              {
                v150 = v24;
                _IMAlwaysLog();
              }
            }

            [v177 addObject:{v24, v150}];
            if (+[IDSAutoBugCapture isSupported])
            {
              v41 = [NSString stringWithFormat:@"(%@)", v31];
              [IDSAutoBugCapture triggerCaptureWithEvent:107 context:v41 completion:&stru_100BE0A70];
            }

            HIDWORD(v171) = 1;
          }
        }

LABEL_41:
        status = [v30 status];
        lookupDate = [v30 lookupDate];
        expiry = [v30 expiry];
        negativeTTL = [v30 negativeTTL];
        [lookupDate doubleValue];
        v47 = v46;
        [(IDSIDStatusDependencyProvider *)selfCopy->_dependencyProvider currentTime];
        v49 = v48;
        if (negativeTTL)
        {
          [negativeTTL doubleValue];
          goto LABEL_43;
        }

        if (expiry && sub_10058817C())
        {
          [expiry doubleValue];
LABEL_43:
          v51 = v50;
        }

        else
        {
          peerIDManager3 = [(IDSIDStatusQueryController *)selfCopy peerIDManager];
          [peerIDManager3 timeToCacheURI:v24 fromURI:iCopy service:serviceCopy forStatus:status];
          v51 = v53;
        }

        v54 = vabdd_f64(v49, v47);
        status2 = [v30 status];
        if (status2 != 1 || v54 >= v51)
        {
          if (allowQueryCopy)
          {
            if (lookupDate && v54 < v51)
            {
              if (status2)
              {
                v56 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67110144;
                  *v207 = status;
                  *&v207[4] = 2048;
                  *&v207[6] = v49;
                  *&v207[14] = 2048;
                  *&v207[16] = v47;
                  v208 = 2048;
                  v209 = v54;
                  v210 = 2048;
                  v211 = v51;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, " => Not looking up... current status: %d  current time: %f   last looked up: %f  difference: %f  difference needed: %f", buf, 0x30u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  MarcoLogMadridLevel();
                  v156 = v54;
                  v157 = v51;
                  v154 = v49;
                  v155 = v47;
                  v150 = status;
                  IMLogString();
                  if (_IMWillLog())
                  {
                    goto LABEL_57;
                  }
                }
              }

              else
              {
                v61 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67110144;
                  *v207 = status;
                  *&v207[4] = 2048;
                  *&v207[6] = v49;
                  *&v207[14] = 2048;
                  *&v207[16] = v47;
                  v208 = 2048;
                  v209 = v54;
                  v210 = 2048;
                  v211 = v51;
                  _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, " => We can't look up, but can piggyback... current status: %d  current time: %f   last looked up: %f  difference: %f  difference needed: %f", buf, 0x30u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  MarcoLogMadridLevel();
                  v156 = v54;
                  v157 = v51;
                  v154 = v49;
                  v155 = v47;
                  v150 = status;
                  IMLogString();
                  if (_IMWillLog())
                  {
                    v156 = v54;
                    v157 = v51;
                    v154 = v49;
                    v155 = v47;
                    v150 = status;
                    _IMAlwaysLog();
                  }
                }

                [v169 addObject:{v24, v150}];
              }

              goto LABEL_86;
            }

            if (!lookupDate)
            {
              [v168 addObject:v24];
            }

            v60 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413570;
              *v207 = v24;
              *&v207[8] = 1024;
              *&v207[10] = status;
              *&v207[14] = 2048;
              *&v207[16] = v47;
              v208 = 2048;
              v209 = v49;
              v210 = 2048;
              v211 = v54;
              v212 = 2048;
              v213 = v51;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, " => Issuing ID query for URIs: %@   (Current status: %d  Last time: %f   Current time: %f  Difference: %f  Needed Difference: %f)", buf, 0x3Au);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              MarcoLogMadridLevel();
              v157 = v54;
              v158 = v51;
              v155 = v47;
              v156 = v49;
              v150 = v24;
              v154 = *&status;
              IMLogString();
              if (_IMWillLog())
              {
                v157 = v54;
                v158 = v51;
                v155 = v47;
                v156 = v49;
                v150 = v24;
                v154 = *&status;
                _IMAlwaysLog();
              }
            }

            v58 = 1;
          }

          else
          {
            v59 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67110144;
              *v207 = status;
              *&v207[4] = 2048;
              *&v207[6] = v49;
              *&v207[14] = 2048;
              *&v207[16] = v47;
              v208 = 2048;
              v209 = v54;
              v210 = 2048;
              v211 = v51;
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, " => Not looking up, query not allowed... current status: %d  current time: %f   last looked up: %f  difference: %f  difference needed: %f", buf, 0x30u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              MarcoLogMadridLevel();
              v156 = v54;
              v157 = v51;
              v154 = v49;
              v155 = v47;
              v150 = status;
              IMLogString();
              if (_IMWillLog())
              {
LABEL_57:
                v156 = v54;
                v157 = v51;
                v154 = v49;
                v155 = v47;
                v150 = status;
                _IMAlwaysLog();
              }
            }

LABEL_86:
            v58 = 0;
          }
        }

        else
        {
          if ([serviceCopy isEqualToString:@"com.apple.madrid"] & 1) != 0 || (objc_msgSend(serviceCopy, "isEqualToString:", @"com.apple.private.alloy.willow") & 1) != 0 || (objc_msgSend(serviceCopy, "isEqualToString:", @"com.apple.private.alloy.biz"))
          {
            goto LABEL_86;
          }

          v57 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, " => Not looking up... status is Valid", buf, 2u);
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

          v58 = 0;
          LODWORD(v171) = 1;
        }

        if (!v58)
        {
          continue;
        }

        goto LABEL_88;
      }

      v27 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v207 = v24;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " => Bogus ID query for: %@   ignoring this", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        v150 = v24;
        IMLogString();
        if (_IMWillLog())
        {
          v150 = v24;
          _IMAlwaysLog();
        }
      }
    }

    v21 = [obj countByEnumeratingWithState:&v199 objects:v214 count:16];
  }

  while (v21);
LABEL_95:

  v192[0] = _NSConcreteStackBlock;
  v192[1] = 3221225472;
  v192[2] = sub_1005881E8;
  v192[3] = &unk_100BE0A98;
  v178 = iCopy;
  v193 = v178;
  v194 = selfCopy;
  v63 = serviceCopy;
  v195 = v63;
  v160 = blockCopy;
  v198 = v160;
  v161 = reasonCopy;
  v196 = v161;
  v163 = v181;
  v197 = v163;
  v162 = objc_retainBlock(v192);
  v64 = v63;
  v65 = +[IDSDServiceController sharedInstance];
  v170 = [v65 serviceWithIdentifier:v64];

  identifier = v64;
  if ([v170 adHocServiceType])
  {
    v67 = +[IDSDServiceController sharedInstance];
    v68 = [v67 primaryServiceForAdhocServiceType:{objc_msgSend(v170, "adHocServiceType")}];

    identifier = [v68 identifier];
  }

  startQueryDateByTopLevelService = selfCopy->_startQueryDateByTopLevelService;
  if (!startQueryDateByTopLevelService)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v71 = selfCopy->_startQueryDateByTopLevelService;
    selfCopy->_startQueryDateByTopLevelService = Mutable;

    startQueryDateByTopLevelService = selfCopy->_startQueryDateByTopLevelService;
  }

  v150 = [(NSMutableDictionary *)startQueryDateByTopLevelService objectForKeyedSubscript:identifier, v150];
  [v150 timeIntervalSinceNow];
  v73 = v72;
  v74 = sub_1005887E0(identifier);
  v75 = fabs(v73);
  if (v150)
  {
    if (v75 > (3600 * v74))
    {
      v76 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = sub_1005887E0(identifier);
        *buf = 134217984;
        *v207 = v77;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Over %ld hour(s), resetting query per hour(s) count", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        sub_1005887E0(identifier);
        MarcoLogMadridLevel();
        v151 = sub_1005887E0(identifier);
        IMLogString();
        if (_IMWillLog())
        {
          v151 = sub_1005887E0(identifier);
          _IMAlwaysLog();
        }
      }

      numQueriesThisHourByTopLevelService = selfCopy->_numQueriesThisHourByTopLevelService;
      if (!numQueriesThisHourByTopLevelService)
      {
        v79 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v80 = selfCopy->_numQueriesThisHourByTopLevelService;
        selfCopy->_numQueriesThisHourByTopLevelService = v79;

        numQueriesThisHourByTopLevelService = selfCopy->_numQueriesThisHourByTopLevelService;
      }

      [(NSMutableDictionary *)numQueriesThisHourByTopLevelService setObject:&off_100C3CAC0 forKeyedSubscript:identifier, v151];
      reportedRateLimitedThisHour = selfCopy->_reportedRateLimitedThisHour;
      if (!reportedRateLimitedThisHour)
      {
        v82 = objc_alloc_init(NSMutableSet);
        v83 = selfCopy->_reportedRateLimitedThisHour;
        selfCopy->_reportedRateLimitedThisHour = v82;

        reportedRateLimitedThisHour = selfCopy->_reportedRateLimitedThisHour;
      }

      [(NSMutableSet *)reportedRateLimitedThisHour removeObject:identifier];
      goto LABEL_111;
    }
  }

  else
  {
LABEL_111:
    v150 = [(IDSIDStatusDependencyProvider *)selfCopy->_dependencyProvider currentDate];
    [(NSMutableDictionary *)selfCopy->_startQueryDateByTopLevelService setObject:v150 forKeyedSubscript:identifier];
    v84 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v207 = v150;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "New start query date %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v151 = v150;
      IMLogString();
      if (_IMWillLog())
      {
        v151 = v150;
        _IMAlwaysLog();
      }
    }
  }

  v151 = [(NSMutableDictionary *)selfCopy->_numQueriesThisHourByTopLevelService objectForKeyedSubscript:identifier, v151];
  v86 = v151;
  v87 = &off_100C3CAC0;
  if (v151)
  {
    v87 = v151;
  }

  v172 = v87;

  intValue = [v172 intValue];
  v176 = identifier;
  v89 = [IDSServerBag sharedInstanceForBagType:1];
  v176 = [NSString stringWithFormat:@"device-queries-per-hour-%@", v176];
  v91 = [v89 objectForKey:v176];

  if (v91)
  {
    intValue2 = [v91 intValue];
  }

  else if ([v176 isEqualToString:@"com.apple.private.alloy.arcade"])
  {
    intValue2 = 1000;
  }

  else
  {
    intValue2 = 200;
  }

  if (intValue < intValue2 || limit && ((+[IDSServerBag sharedInstanceForBagType:](IDSServerBag, "sharedInstanceForBagType:", 0), v94 = objc_claimAutoreleasedReturnValue(), [v94 objectForKey:@"client-query-allow-bypass-limit"], v95 = objc_claimAutoreleasedReturnValue(), v94, !v95) || (v96 = objc_msgSend(v95, "BOOLValue"), v95, v96)))
  {
    if ([v177 count])
    {
      v93 = 1;
    }

    else
    {
      v93 = [v169 count] != 0;
    }

    if (((v171 ^ 1 | HIDWORD(v171) | (limit && v93)) & 1) == 0)
    {
      newRemoteCredential = [(IDSIDStatusQueryController *)selfCopy _cachedResultsForURIs:v163 fromURI:v178 fromService:v64 reason:v161];
      v115 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v207 = newRemoteCredential;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "We have at least one valid result, returning cached results %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        v1762 = newRemoteCredential;
        IMLogString();
        if (_IMWillLog())
        {
          v1762 = newRemoteCredential;
          _IMAlwaysLog();
        }
      }

      [(IDSIDStatusQueryController *)selfCopy _sendIDStatusChanges:newRemoteCredential forService:v64 URI:v178 success:1 error:0, v1762];
      if (v160)
      {
        v160[2]();
      }

      goto LABEL_234;
    }

    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v102 = v168;
    v103 = [v102 countByEnumeratingWithState:&v188 objects:v205 count:16];
    if (v103)
    {
      v104 = *v189;
      do
      {
        for (j = 0; j != v103; j = j + 1)
        {
          if (*v189 != v104)
          {
            objc_enumerationMutation(v102);
          }

          v106 = *(*(&v188 + 1) + 8 * j);
          v107 = [NSNumber numberWithUnsignedInt:0];
          v108 = [NSDictionary dictionaryWithObject:v107 forKey:v106];

          [(IDSIDStatusQueryController *)selfCopy _updateCacheWithStatusUpdates:v108 fromURI:v178 fromService:v64 success:0 hadError:0 negativeCacheHints:0];
        }

        v103 = [v102 countByEnumeratingWithState:&v188 objects:v205 count:16];
      }

      while (v103);
    }

    if (!identityCopy)
    {
      if (selfCopy->_allowProxyQueries && [v177 count])
      {
        v127 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "Device does not have a cert, attempting to proxy the query", buf, 2u);
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

        newRemoteCredential = [(IDSIDStatusDependencyProvider *)selfCopy->_dependencyProvider newRemoteCredential];
        v184[0] = _NSConcreteStackBlock;
        v184[1] = 3221225472;
        v184[2] = sub_1005888A4;
        v184[3] = &unk_100BE0AC0;
        v184[4] = selfCopy;
        v185 = v178;
        v186 = v64;
        v187 = v160;
        [newRemoteCredential requestIDStatusForURIs:obj service:v186 lightQuery:queryCopy allowQuery:allowQueryCopy completionBlock:v184];

        goto LABEL_234;
      }

      v136 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        v137 = @"NO";
        if (selfCopy->_allowProxyQueries)
        {
          v137 = @"YES";
        }

        *buf = 138412546;
        *v207 = v137;
        *&v207[8] = 2112;
        *&v207[10] = v177;
        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "Device does not have a cert {_allowProxyQueries: %@, URIsToQuery: %@}", buf, 0x16u);
      }

      if (!os_log_shim_legacy_logging_enabled() || ((MarcoLogMadridLevel(), !selfCopy->_allowProxyQueries) ? (v138 = @"NO") : (v138 = @"YES"), v1762 = v138, v154 = *&v177, IMLogString(), (_IMWillLog() & 1) == 0))
      {
        v101 = 0;
LABEL_218:
        if (v171)
        {
          goto LABEL_235;
        }

        goto LABEL_223;
      }

      if (selfCopy->_allowProxyQueries)
      {
        v139 = @"YES";
      }

      else
      {
        v139 = @"NO";
      }

      v1762 = v139;
      v154 = *&v177;
      _IMAlwaysLog();
      if (v171)
      {
        goto LABEL_235;
      }

LABEL_222:
      v101 = 0;
LABEL_223:
      newRemoteCredential = [(IDSIDStatusQueryController *)selfCopy _cachedResultsForURIs:v163 fromURI:v178 fromService:v64 reason:v161, v1762, *&v154];
      v145 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v207 = newRemoteCredential;
        _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "We didn't query anything, returning cached results %@", buf, 0xCu);
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

      v172 = [NSString stringWithFormat:@"Query on the service %@ is being rate limited { numQueriesThisHour: %@ }", v64, v172];
      v147 = v172;
      if (v101)
      {
        v203 = NSLocalizedDescriptionKey;
        v204 = v172;
        v148 = [NSDictionary dictionaryWithObjects:&v204 forKeys:&v203 count:1];
        v149 = [NSError errorWithDomain:IDSPeerIDManagerErrorDomain code:5 userInfo:v148];
      }

      else
      {
        v149 = 0;
      }

      [(IDSIDStatusQueryController *)selfCopy _sendIDStatusChanges:newRemoteCredential forService:v64 URI:v178 success:1 error:v149];
      if (v160)
      {
        v160[2]();
      }

LABEL_234:
      goto LABEL_235;
    }

    v109 = sub_10058817C();
    if (((v109 | !forceQuery) & 1) == 0)
    {
      v109 = sub_100587FE0();
    }

    v110 = @"StatusLookup";
    if (v161)
    {
      v110 = v161;
    }

    v111 = v110;
    v112 = v111;
    if ((v171 & 0x100000000) != 0)
    {
      v113 = [NSString stringWithFormat:@"%@-%@", v111, @"MissingCachedEndpointsForValidStatus"];
    }

    else
    {
      v113 = v111;
    }

    if ([v177 count] || !objc_msgSend(v169, "count"))
    {
      peerIDManager4 = [(IDSIDStatusQueryController *)selfCopy peerIDManager];
      LOBYTE(v1762) = forceQuery;
      v129 = [peerIDManager4 startQueryForURIs:v177 fromIdentity:identityCopy fromURI:v178 fromService:v64 forSending:1 forceToServer:v109 clientRequestedForceQuery:v1762 reason:v113 completionBlock:v162];

      if (!selfCopy->_numQueriesThisHourByTopLevelService)
      {
        v130 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v131 = selfCopy->_numQueriesThisHourByTopLevelService;
        selfCopy->_numQueriesThisHourByTopLevelService = v130;
      }

      v132 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v177 count] + objc_msgSend(v172, "intValue"));
      [(NSMutableDictionary *)selfCopy->_numQueriesThisHourByTopLevelService setObject:v132 forKeyedSubscript:v176];

      v133 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        v134 = [(NSMutableDictionary *)selfCopy->_numQueriesThisHourByTopLevelService objectForKeyedSubscript:v176];
        *buf = 138412546;
        *v207 = v134;
        *&v207[8] = 2112;
        *&v207[10] = v176;
        _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "We're at %@ queries for this hour for service: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v153 = [(NSMutableDictionary *)selfCopy->_numQueriesThisHourByTopLevelService objectForKeyedSubscript:v176];
        MarcoLogMadridLevel();

        v1762 = [(NSMutableDictionary *)selfCopy->_numQueriesThisHourByTopLevelService objectForKeyedSubscript:v176, v153, v176];
        v154 = *&v176;
        IMLogString();

        if (_IMWillLog())
        {
          v1763 = [(NSMutableDictionary *)selfCopy->_numQueriesThisHourByTopLevelService objectForKeyedSubscript:v176, v1762, v176];
          v1762 = v1763;
          v154 = *&v176;
          _IMAlwaysLog();
LABEL_216:
        }
      }
    }

    else
    {
      if ([v169 count])
      {
        v1763 = [[IDSPeerIDQueryContext alloc] initWithSending:1 forceToServer:v109 messaging:0 resultExpected:0 preventNewQuery:1 clientRequestedForceQuery:forceQuery];
        peerIDManager5 = [(IDSIDStatusQueryController *)selfCopy peerIDManager];
        v141 = peerIDManager5;
        if (v161)
        {
          v142 = v161;
        }

        else
        {
          v142 = @"StatusLookupPiggyback";
        }

        v129 = [peerIDManager5 startQueryForURIs:v169 fromIdentity:identityCopy fromURI:v178 fromService:v64 context:v1763 reason:v142 completionBlock:v162];

        if (((v129 | v171 ^ 1) & 1) == 0)
        {
          v143 = [(IDSIDStatusQueryController *)selfCopy _cachedResultsForURIs:v163 fromURI:v178 fromService:v64 reason:v161];
          v144 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v207 = v143;
            _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "We have at least one valid result, returning cached results %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            MarcoLogMadridLevel();
            v1762 = v143;
            IMLogString();
            if (_IMWillLog())
            {
              v1762 = v143;
              _IMAlwaysLog();
            }
          }

          [(IDSIDStatusQueryController *)selfCopy _sendIDStatusChanges:v143 forService:v64 URI:v178 success:1 error:0, v1762];
          if (v160)
          {
            (v160[2])(v160, v143, v178, v64, 1, 0);
          }
        }

        goto LABEL_216;
      }

      v129 = 0;
    }

    if ((v129 | v171))
    {
      goto LABEL_235;
    }

    goto LABEL_222;
  }

  v97 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v207 = v172;
    *&v207[8] = 2112;
    *&v207[10] = v64;
    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "We're at %@ queries for this hour for service: %@, can't do more", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    v1762 = v172;
    v154 = *&v64;
    IMLogString();
    if (_IMWillLog())
    {
      v1762 = v172;
      v154 = *&v64;
      _IMAlwaysLog();
    }
  }

  v98 = selfCopy->_reportedRateLimitedThisHour;
  if (!v98)
  {
    v99 = objc_alloc_init(NSMutableSet);
    v100 = selfCopy->_reportedRateLimitedThisHour;
    selfCopy->_reportedRateLimitedThisHour = v99;

    v98 = selfCopy->_reportedRateLimitedThisHour;
  }

  if (([(NSMutableSet *)v98 containsObject:v176, v1762, *&v154]& 1) != 0)
  {
    v101 = 1;
    goto LABEL_218;
  }

  [(NSMutableSet *)selfCopy->_reportedRateLimitedThisHour addObject:v176];
  if (+[IDSAutoBugCapture isSupported])
  {
    v1764 = [NSString stringWithFormat:@"(%@)", v176];
    [IDSAutoBugCapture triggerCaptureWithEvent:103 context:v1764 completion:&stru_100BE0AE0];
  }

  v117 = [IDSQueryRateLimitedMetric alloc];
  v118 = [NSNumber numberWithDouble:v75];
  v119 = [v117 initWithTopLevelService:v176 count:v172 timeSinceStart:v118];

  v120 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v120 logMetric:v119];

  v121 = objc_alloc_init(NSMutableDictionary);
  v122 = v64;
  if (v122)
  {
    CFDictionarySetValue(v121, @"service", v122);
  }

  v123 = [NSNumber numberWithBool:1];
  if (v123)
  {
    CFDictionarySetValue(v121, @"isRateLimited", v123);
  }

  v124 = v172;
  CFDictionarySetValue(v121, @"numQueriesThisHour", v124);

  v125 = [NSNumber numberWithDouble:v75];
  if (v125)
  {
    CFDictionarySetValue(v121, @"timeSinceStart", v125);
  }

  v126 = +[TransparencyAnalytics logger];
  [v126 logHardFailureForEventNamed:@"IDSQueryMetric" withAttributes:v121];

  if ((v171 & 1) == 0)
  {
    v101 = 1;
    goto LABEL_223;
  }

LABEL_235:

  v62 = blockCopy;
LABEL_236:
}

- (void)requestIDStatusForIDs:(id)ds fromIdentity:(id)identity fromURI:(id)i fromService:(id)service lightQuery:(BOOL)query allowQuery:(BOOL)allowQuery forceQuery:(BOOL)forceQuery bypassLimit:(BOOL)self0 reason:(id)self1 completionBlock:(id)self2
{
  queryCopy = query;
  allowQueryCopy = allowQuery;
  dsCopy = ds;
  identityCopy = identity;
  iCopy = i;
  serviceCopy = service;
  reasonCopy = reason;
  blockCopy = block;
  if (self->_allowProxyQueries)
  {
    goto LABEL_31;
  }

  if ([serviceCopy length])
  {
    prefixedURI = [iCopy prefixedURI];
    v23 = [prefixedURI length];
    if (identityCopy && v23)
    {
      prefixedURI2 = [iCopy prefixedURI];
      v25 = [prefixedURI2 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];

      if (!v25)
      {
LABEL_31:
        *(&v30 + 1) = limit;
        LOBYTE(v30) = forceQuery;
        [IDSIDStatusQueryController _lookupIDStatusForURIs:"_lookupIDStatusForURIs:fromIdentity:fromURI:fromService:lightQuery:allowQuery:clientRequestedForceQuery:bypassLimit:allowOnMissingEndpoints:reason:completionBlock:" fromIdentity:dsCopy fromURI:identityCopy fromService:iCopy lightQuery:serviceCopy allowQuery:queryCopy clientRequestedForceQuery:allowQueryCopy bypassLimit:v30 allowOnMissingEndpoints:reasonCopy reason:blockCopy completionBlock:?];
        goto LABEL_32;
      }
    }

    else
    {
    }
  }

  v26 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = dsCopy;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " => Bogus ID query for: %@   ignoring this request", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    v30 = dsCopy;
    IMLogString();
    if (_IMWillLog())
    {
      v30 = dsCopy;
      _IMAlwaysLog();
    }
  }

  v27 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = iCopy;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " => From URI: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    v30 = iCopy;
    IMLogString();
    if (_IMWillLog())
    {
      v30 = iCopy;
      _IMAlwaysLog();
    }
  }

  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " => From Service: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    v30 = serviceCopy;
    IMLogString();
    if (_IMWillLog())
    {
      v30 = serviceCopy;
      _IMAlwaysLog();
    }
  }

  if (!identityCopy)
  {
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " *** Missing identity, failing query", buf, 2u);
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
  }

  if (!blockCopy)
  {
    goto LABEL_31;
  }

  (*(blockCopy + 2))(blockCopy, 0, iCopy, serviceCopy, 0, 0);
LABEL_32:
}

- (void)requestIDStatusForID:(id)d fromIdentity:(id)identity fromURI:(id)i fromService:(id)service lightQuery:(BOOL)query allowQuery:(BOOL)allowQuery reason:(id)reason completionBlock:(id)self0
{
  queryCopy = query;
  blockCopy = block;
  reasonCopy = reason;
  serviceCopy = service;
  iCopy = i;
  identityCopy = identity;
  v21 = IMSingleObjectArray();
  LOWORD(v20) = 0;
  [(IDSIDStatusQueryController *)self requestIDStatusForIDs:v21 fromIdentity:identityCopy fromURI:iCopy fromService:serviceCopy lightQuery:queryCopy allowQuery:queryCopy forceQuery:v20 bypassLimit:reasonCopy reason:blockCopy completionBlock:?];
}

- (void)setCachedIDStatus:(unsigned int)status ForID:(id)d fromURI:(id)i fromService:(id)service
{
  v8 = *&status;
  dCopy = d;
  iCopy = i;
  serviceCopy = service;
  fZIDType = [dCopy FZIDType];
  if ([serviceCopy length] && (objc_msgSend(iCopy, "prefixedURI"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v15))
  {
    if (sub_1005848C4(fZIDType, dCopy))
    {
      v16 = objc_alloc_init(NSMutableDictionary);
      v17 = [NSNumber numberWithUnsignedInt:v8];
      [v16 setObject:v17 forKey:dCopy];

      [(IDSIDStatusQueryController *)self _updateCacheWithStatusUpdates:v16 fromURI:iCopy fromService:serviceCopy success:1 hadError:0 negativeCacheHints:0];
      goto LABEL_25;
    }

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " => Bogus ID for: %@   ignoring this", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      IMLogString();
      if (_IMWillLog())
      {
LABEL_24:
        _IMAlwaysLog();
      }
    }
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " => Bogus ID for: %@   ignoring this", buf, 0xCu);
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

    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = iCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " => From URI: %@", buf, 0xCu);
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

    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " => From Service: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      IMLogString();
      if (_IMWillLog())
      {
        goto LABEL_24;
      }
    }
  }

LABEL_25:
}

- (unsigned)cachedIDStatusForID:(id)d fromURI:(id)i fromService:(id)service respectExpiry:(BOOL)expiry reason:(id)reason
{
  expiryCopy = expiry;
  dCopy = d;
  iCopy = i;
  serviceCopy = service;
  reasonCopy = reason;
  fZIDType = [dCopy FZIDType];
  if ([serviceCopy length] && (objc_msgSend(iCopy, "prefixedURI"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, v18))
  {
    if (sub_1005848C4(fZIDType, dCopy))
    {
      peerIDManager = [(IDSIDStatusQueryController *)self peerIDManager];
      prefixedURI = [dCopy prefixedURI];
      v21 = [peerIDManager loadStatusForService:serviceCopy URI:prefixedURI];

      if (fZIDType + 1 > 8)
      {
        v22 = 2863311530;
      }

      else
      {
        v22 = dword_1009ABDB8[fZIDType + 1];
      }

      if (@"InternalQueryCacheCheck" != reasonCopy)
      {
        v28 = [[IDSCachedQueryCompletionMetric alloc] initWithService:serviceCopy queryURITypes:v22 queryReason:reasonCopy uriCount:1];
        v29 = +[IDSCoreAnalyticsLogger defaultLogger];
        [v29 logMetric:v28];
      }

      if (!expiryCopy || ![v21 status])
      {
LABEL_43:
        LODWORD(v26) = [v21 status];
        goto LABEL_44;
      }

      lookupDate = [v21 lookupDate];
      v26 = lookupDate;
      if (!lookupDate)
      {
LABEL_44:

        goto LABEL_45;
      }

      [lookupDate doubleValue];
      v32 = v31;
      [(IDSIDStatusDependencyProvider *)self->_dependencyProvider currentTime];
      v34 = v33;
      negativeTTL = [v21 negativeTTL];
      expiry = [v21 expiry];
      v37 = expiry;
      if (negativeTTL)
      {
        v38 = negativeTTL;
      }

      else
      {
        if (!expiry || !sub_10058817C())
        {
          peerIDManager2 = [(IDSIDStatusQueryController *)self peerIDManager];
          [peerIDManager2 timeToCacheURI:dCopy fromURI:iCopy service:serviceCopy forStatus:{objc_msgSend(v21, "status")}];
          v40 = v42;

          goto LABEL_41;
        }

        v38 = v37;
      }

      [v38 doubleValue];
      v40 = v39;
LABEL_41:
      v43 = vabdd_f64(v34, v32);
      if (v43 >= v40)
      {
        v45 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v47 = dCopy;
          v48 = 2112;
          v49 = iCopy;
          v50 = 2048;
          v51 = v43;
          v52 = 2048;
          v53 = v40;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, " => Expired status -- returning unknown {URI: %@, fromURI: %@, difference: %f, timeNeeded: %f}", buf, 0x2Au);
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

        LODWORD(v26) = 0;
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = dCopy;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " => Bogus ID query for: %@   ignoring this", buf, 0xCu);
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

    LODWORD(v26) = 2;
  }

  else
  {
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = dCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " => Bogus ID query for: %@   ignoring this", buf, 0xCu);
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

    v24 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = iCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " => From URI: %@", buf, 0xCu);
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

    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " => From Service: %@", buf, 0xCu);
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

    LODWORD(v26) = 0;
  }

LABEL_45:

  return v26;
}

- (id)currentCacheForService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy length])
  {
    peerIDManager = [(IDSIDStatusQueryController *)self peerIDManager];
    v6 = [peerIDManager loadAllStatusesForService:serviceCopy];

    v7 = +[NSMutableDictionary dictionary];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          if ([v13 status])
          {
            service = [v13 service];
            v15 = [v7 objectForKeyedSubscript:service];

            if (!v15)
            {
              v16 = +[NSMutableDictionary dictionary];
              service2 = [v13 service];
              [v7 setObject:v16 forKeyedSubscript:service2];
            }

            v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 status]);
            service3 = [v13 service];
            v20 = [v7 objectForKeyedSubscript:service3];
            uriString = [v13 uriString];
            [v20 setObject:v18 forKeyedSubscript:uriString];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)remoteDevicesForIDs:(id)ds fromIdentity:(id)identity fromURI:(id)i fromService:(id)service lightQuery:(BOOL)query allowQuery:(BOOL)allowQuery reason:(id)reason completionBlock:(id)self0
{
  queryCopy = query;
  allowQueryCopy = allowQuery;
  dsCopy = ds;
  identityCopy = identity;
  iCopy = i;
  serviceCopy = service;
  reasonCopy = reason;
  blockCopy = block;
  if (!self->_allowProxyQueries)
  {
    if ([serviceCopy length])
    {
      prefixedURI = [iCopy prefixedURI];
      v21 = [prefixedURI length];
      if (identityCopy && v21)
      {
        prefixedURI2 = [iCopy prefixedURI];
        v23 = [prefixedURI2 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];

        if (!v23)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }
    }

    v24 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = dsCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " => Bogus ID query for: %@   ignoring this request", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v32 = dsCopy;
      IMLogString();
      if (_IMWillLog())
      {
        v32 = dsCopy;
        _IMAlwaysLog();
      }
    }

    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = iCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " => From URI: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v32 = iCopy;
      IMLogString();
      if (_IMWillLog())
      {
        v32 = iCopy;
        _IMAlwaysLog();
      }
    }

    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " => From Service: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v32 = serviceCopy;
      IMLogString();
      if (_IMWillLog())
      {
        v32 = serviceCopy;
        _IMAlwaysLog();
      }
    }

    if (!identityCopy)
    {
      v27 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " *** Missing identity, failing query", buf, 2u);
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
    }

    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0, iCopy, serviceCopy, 0, 0);
    }
  }

LABEL_31:
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10058A944;
  v35[3] = &unk_100BE0B08;
  v35[4] = self;
  v36 = dsCopy;
  v37 = serviceCopy;
  v38 = iCopy;
  v39 = blockCopy;
  v28 = blockCopy;
  v29 = iCopy;
  v30 = serviceCopy;
  v31 = dsCopy;
  BYTE2(v32) = 1;
  LOWORD(v32) = 0;
  [IDSIDStatusQueryController _lookupIDStatusForURIs:"_lookupIDStatusForURIs:fromIdentity:fromURI:fromService:lightQuery:allowQuery:clientRequestedForceQuery:bypassLimit:allowOnMissingEndpoints:reason:completionBlock:" fromIdentity:v31 fromURI:identityCopy fromService:v29 lightQuery:v30 allowQuery:queryCopy clientRequestedForceQuery:allowQueryCopy bypassLimit:v32 allowOnMissingEndpoints:reasonCopy reason:v35 completionBlock:?];
}

- (void)infoForIDs:(id)ds fromIdentity:(id)identity fromURI:(id)i fromService:(id)service infoType:(unint64_t)type infoOptions:(id)options lightQuery:(BOOL)query allowQuery:(BOOL)self0 reason:(id)self1 completion:(id)self2
{
  dsCopy = ds;
  identityCopy = identity;
  iCopy = i;
  serviceCopy = service;
  optionsCopy = options;
  reasonCopy = reason;
  completionCopy = completion;
  selfCopy = self;
  if (!self->_allowProxyQueries)
  {
    if ([serviceCopy length])
    {
      prefixedURI = [iCopy prefixedURI];
      v23 = [prefixedURI length];
      if (identityCopy && v23)
      {
        prefixedURI2 = [iCopy prefixedURI];
        v25 = [prefixedURI2 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];

        if (!v25)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }
    }

    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = dsCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " => Bogus ID query for: %@   ignoring this request", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v35 = dsCopy;
      IMLogString();
      if (_IMWillLog())
      {
        v35 = dsCopy;
        _IMAlwaysLog();
      }
    }

    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = iCopy;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " => From URI: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v35 = iCopy;
      IMLogString();
      if (_IMWillLog())
      {
        v35 = iCopy;
        _IMAlwaysLog();
      }
    }

    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " => From Service: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v35 = serviceCopy;
      IMLogString();
      if (_IMWillLog())
      {
        v35 = serviceCopy;
        _IMAlwaysLog();
      }
    }

    if (!identityCopy)
    {
      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " *** Missing identity, failing query", buf, 2u);
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
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, iCopy, serviceCopy, 0, 0);
    }
  }

LABEL_31:
  forceRefresh = [optionsCopy forceRefresh];
  bypassLimit = [optionsCopy bypassLimit];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10058B0A4;
  v43[3] = &unk_100BE0B30;
  v43[4] = selfCopy;
  v44 = dsCopy;
  v45 = serviceCopy;
  v46 = iCopy;
  v47 = optionsCopy;
  v48 = completionCopy;
  typeCopy = type;
  v38 = completionCopy;
  v37 = optionsCopy;
  v32 = iCopy;
  v33 = serviceCopy;
  v34 = dsCopy;
  BYTE2(v36) = 1;
  BYTE1(v36) = bypassLimit;
  LOBYTE(v36) = forceRefresh;
  [IDSIDStatusQueryController _lookupIDStatusForURIs:selfCopy fromIdentity:"_lookupIDStatusForURIs:fromIdentity:fromURI:fromService:lightQuery:allowQuery:clientRequestedForceQuery:bypassLimit:allowOnMissingEndpoints:reason:completionBlock:" fromURI:v34 fromService:identityCopy lightQuery:v32 allowQuery:v33 clientRequestedForceQuery:query bypassLimit:allowQuery allowOnMissingEndpoints:v36 reason:reasonCopy completionBlock:v43];
}

- (void)_sendIDStatusChanges:(id)changes forService:(id)service URI:(id)i success:(BOOL)success error:(id)error
{
  successCopy = success;
  changesCopy = changes;
  serviceCopy = service;
  iCopy = i;
  errorCopy = error;
  v32 = serviceCopy;
  if ([serviceCopy length] && (objc_msgSend(iCopy, "prefixedURI"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v15, v16))
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v18 = @"NO";
      v40 = changesCopy;
      if (successCopy)
      {
        v18 = @"YES";
      }

      v41 = 2112;
      v42 = serviceCopy;
      v43 = 2112;
      v44 = iCopy;
      v45 = 2112;
      v46 = v18;
      v47 = 2112;
      v48 = errorCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending id status changes %@ for service %@ URI %@ success %@ error %@", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v19 = successCopy ? @"YES" : @"NO";
      MarcoLogMadridLevel();
      v30 = v19;
      v31 = errorCopy;
      v28 = v32;
      v29 = iCopy;
      v27 = changesCopy;
      IMLogString();
      if (_IMWillLog())
      {
        v30 = v19;
        v31 = errorCopy;
        v28 = v32;
        v29 = iCopy;
        v27 = changesCopy;
        _IMAlwaysLog();
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = [(NSMutableDictionary *)self->_completionBlocks copy:v27];
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v21)
    {
      v22 = 0;
      v23 = *v35;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [(NSMutableDictionary *)self->_completionBlocks objectForKey:*(*(&v34 + 1) + 8 * i)];

          v22 = v25;
          if (v25)
          {
            (v25)[2](v25, changesCopy, iCopy, v32, successCopy, errorCopy);
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v21);
    }
  }

  else
  {
    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Empty service or URI to send ID status changes", buf, 2u);
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
  }
}

- (void)addCompletionBlock:(id)block forUniqueIdentifier:(id)identifier
{
  blockCopy = block;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (blockCopy)
    {
      v8 = [blockCopy copy];
      if (v8)
      {
        completionBlocks = self->_completionBlocks;
        if (!completionBlocks)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v11 = self->_completionBlocks;
          self->_completionBlocks = Mutable;

          completionBlocks = self->_completionBlocks;
        }

        v12 = objc_retainBlock(v8);
        [(NSMutableDictionary *)completionBlocks setObject:v12 forKey:identifierCopy];
      }

      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_completionBlocks;
        *buf = 138412546;
        v18 = identifierCopy;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Completion block for uniqueID %@ added %@", buf, 0x16u);
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

      goto LABEL_23;
    }

    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Empty completion block for uniqueID %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      IMLogString();
      if (_IMWillLog())
      {
LABEL_22:
        _IMAlwaysLog();
      }
    }
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Empty uniqueID %@ for adding completion block", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      IMLogString();
      if (_IMWillLog())
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:
}

- (void)removeCompletionBlockForUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    [(NSMutableDictionary *)self->_completionBlocks removeObjectForKey:identifierCopy];
    if (![(NSMutableDictionary *)self->_completionBlocks count])
    {
      completionBlocks = self->_completionBlocks;
      self->_completionBlocks = 0;
    }

    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removed completion block for uniqueID %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      IMLogString();
      if (_IMWillLog())
      {
LABEL_13:
        _IMAlwaysLog();
      }
    }
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Empty uniqueID %@ for removing completion block", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      IMLogString();
      if (_IMWillLog())
      {
        goto LABEL_13;
      }
    }
  }
}

- (void)clearCache
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "**** Forcing deleting of peer cache ****", v5, 2u);
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

  peerIDManager = [(IDSIDStatusQueryController *)self peerIDManager];
  [peerIDManager deleteStatusCache];
}

- (id)_plistFilePath
{
  plistCachePath = self->_plistCachePath;
  if (plistCachePath)
  {
    v3 = plistCachePath;
  }

  else
  {
    v4 = NSHomeDirectory();
    v10[0] = v4;
    v10[1] = @"/Library/IdentityServices/";
    v5 = [NSArray arrayWithObjects:v10 count:2];
    v6 = [NSString pathWithComponents:v5];

    v9[0] = v6;
    v9[1] = @"idstatuscache.plist";
    v7 = [NSArray arrayWithObjects:v9 count:2];
    v3 = [NSString pathWithComponents:v7];
  }

  return v3;
}

- (id)_loadLegacyCache
{
  _plistFilePath = [(IDSIDStatusQueryController *)self _plistFilePath];
  v3 = [[NSDictionary alloc] initWithContentsOfFile:_plistFilePath];

  return v3;
}

- (void)_wipeLegacyCache
{
  _plistFilePath = [(IDSIDStatusQueryController *)self _plistFilePath];
  v3 = +[NSFileManager defaultManager];
  v6 = 0;
  [v3 removeItemAtPath:_plistFilePath error:&v6];
  v4 = v6;

  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleted legacy cache with error: %@", buf, 0xCu);
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
}

@end