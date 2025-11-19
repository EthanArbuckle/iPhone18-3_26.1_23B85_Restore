@interface IDSIDStatusQueryController
+ (id)sharedInstance;
- (BOOL)hasValidStatusForURI:(id)a3 fromURI:(id)a4 fromService:(id)a5;
- (IDSIDStatusQueryController)init;
- (IDSIDStatusQueryController)initWithShouldAllowProxyQueries:(BOOL)a3 peerIDManager:(id)a4 userDefaults:(id)a5 statusDepencencyProvider:(id)a6;
- (id)_cachedResultsForURIs:(id)a3 fromURI:(id)a4 fromService:(id)a5 reason:(id)a6;
- (id)_loadLegacyCache;
- (id)_plistFilePath;
- (id)currentCacheForService:(id)a3;
- (unsigned)_IDStatusForURI:(id)a3 fromService:(id)a4;
- (unsigned)cachedIDStatusForID:(id)a3 fromURI:(id)a4 fromService:(id)a5 respectExpiry:(BOOL)a6 reason:(id)a7;
- (void)_lookupIDStatusForURIs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 lightQuery:(BOOL)a7 allowQuery:(BOOL)a8 clientRequestedForceQuery:(BOOL)a9 bypassLimit:(BOOL)a10 allowOnMissingEndpoints:(BOOL)a11 reason:(id)a12 completionBlock:(id)a13;
- (void)_sendIDStatusChanges:(id)a3 forService:(id)a4 URI:(id)a5 success:(BOOL)a6 error:(id)a7;
- (void)_updateCacheWithStatusUpdates:(id)a3 fromURI:(id)a4 fromService:(id)a5 success:(BOOL)a6 hadError:(BOOL)a7 negativeCacheHints:(id)a8;
- (void)_wipeLegacyCache;
- (void)addCompletionBlock:(id)a3 forUniqueIdentifier:(id)a4;
- (void)clearCache;
- (void)dealloc;
- (void)infoForIDs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 infoType:(unint64_t)a7 infoOptions:(id)a8 lightQuery:(BOOL)a9 allowQuery:(BOOL)a10 reason:(id)a11 completion:(id)a12;
- (void)noteIncomingID:(id)a3 fromService:(id)a4;
- (void)remoteDevicesForIDs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 lightQuery:(BOOL)a7 allowQuery:(BOOL)a8 reason:(id)a9 completionBlock:(id)a10;
- (void)removeCachedEntriesForService:(id)a3;
- (void)removeCachedIDStatusForURI:(id)a3 service:(id)a4;
- (void)removeCompletionBlockForUniqueIdentifier:(id)a3;
- (void)requestIDStatusForID:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 lightQuery:(BOOL)a7 allowQuery:(BOOL)a8 reason:(id)a9 completionBlock:(id)a10;
- (void)requestIDStatusForIDs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 lightQuery:(BOOL)a7 allowQuery:(BOOL)a8 forceQuery:(BOOL)a9 bypassLimit:(BOOL)a10 reason:(id)a11 completionBlock:(id)a12;
- (void)setCachedIDStatus:(unsigned int)a3 ForID:(id)a4 fromURI:(id)a5 fromService:(id)a6;
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

- (IDSIDStatusQueryController)initWithShouldAllowProxyQueries:(BOOL)a3 peerIDManager:(id)a4 userDefaults:(id)a5 statusDepencencyProvider:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = IDSIDStatusQueryController;
  v14 = [(IDSIDStatusQueryController *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_peerIDManager, a4);
    objc_storeStrong(&v15->_userDefaults, a5);
    objc_storeStrong(&v15->_dependencyProvider, a6);
    v15->_allowProxyQueries = a3;
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

- (void)_updateCacheWithStatusUpdates:(id)a3 fromURI:(id)a4 fromService:(id)a5 success:(BOOL)a6 hadError:(BOOL)a7 negativeCacheHints:(id)a8
{
  v62 = a6;
  v11 = a3;
  v12 = a4;
  v67 = a5;
  v63 = a8;
  v66 = v11;
  v74 = v12;
  if ([v11 count])
  {
    v13 = [v12 prefixedURI];
    v14 = [v13 length];

    if (v14)
    {
      v15 = v67;
      v16 = v74;
      if ([v67 length])
      {
        [(IDSIDStatusDependencyProvider *)self->_dependencyProvider currentTime];
        v18 = v17;
        v61 = [v67 isEqualToString:@"com.apple.madrid"];
        if (v61)
        {
          v19 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Will add valid expiry", buf, 2u);
          }

          v16 = v74;
          v15 = v67;
          if (os_log_shim_legacy_logging_enabled())
          {
            MarcoLogMadridLevel();
            IMLogString();
            v16 = v74;
            v15 = v67;
            if (_IMWillLog())
            {
              _IMAlwaysLog();
              v16 = v74;
              v15 = v67;
            }
          }
        }

        v20 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v84 = v11;
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
          v59 = v67;
          v57 = v18;
          v56 = v11;
          IMLogString();
          if (_IMWillLog())
          {
            v58 = v74;
            v59 = v67;
            v57 = v18;
            v56 = v11;
            _IMAlwaysLog();
          }
        }

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        obj = [v11 allKeys];
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
              v23 = [v76 unsignedIntValue];
              v24 = [v22 isEqualToURI:v74];
              if (v23 == 2)
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
                v27 = [(IDSIDStatusQueryController *)self peerIDManager];
                v28 = [v22 prefixedURI];
                v72 = [v27 loadStatusForService:v67 URI:v28];

                v70 = [v22 prefixedURI];
                v75 = v67;
                v71 = [NSNumber numberWithDouble:v18];
                v29 = objc_opt_class();
                v30 = [v22 prefixedURI];
                v31 = [v63 objectForKey:v30];
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
                      v84 = v30;
                      v85 = 2112;
                      v86 = *&v29;
                      _os_log_fault_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, "Failed type check! {key: %@, class: %@}", buf, 0x16u);
                    }
                  }

                  v69 = 0;
                }

                v33 = [(IDSIDStatusQueryController *)self peerIDManager];
                v81 = v22;
                v34 = [NSArray arrayWithObjects:&v81 count:1];
                v35 = [v33 endpointsForURIs:v34 service:v75 fromURI:v74];
                v36 = [v35 objectForKey:v22];
                v37 = [v36 __imArrayByApplyingBlock:&stru_100BE0A10];
                v38 = [v37 sortedArrayUsingComparator:&stru_100BE0A50];
                v39 = [v38 firstObject];

                if (v39)
                {
                  v40 = v61;
                }

                else
                {
                  v40 = 0;
                }

                if (v40 == 1)
                {
                  [v39 timeIntervalSinceNow];
                  v41 = [NSNumber numberWithDouble:?];
                }

                else
                {
                  v41 = 0;
                }

                v42 = [v72 status];
                v43 = [(IDSIDStatusQueryController *)self peerIDManager];
                [v43 timeToCacheURI:v22 fromURI:v74 service:v75 forStatus:v42];
                v45 = v44;

                [IDSBagUtilities timeToCacheResultsForIDStatus:0 forService:v75];
                if (v23)
                {
                  if (v23 == 1)
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

                  else if (v23 == 2)
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

                v50 = [[IDSCachedIDStatus alloc] initWithURIString:v70 service:v75 status:v48 expiry:v47 negativeTTL:v69 lookupDate:v71];
                v51 = [(IDSIDStatusQueryController *)self peerIDManager];
                [v51 saveStatus:v50];

                if (((v49 | v62) & 1) == 0 && !a7)
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

- (unsigned)_IDStatusForURI:(id)a3 fromService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (sub_1005848C4([v6 FZIDType], v6))
  {
    v8 = [(IDSIDStatusQueryController *)self peerIDManager];
    v9 = [v6 prefixedURI];
    v10 = [v8 loadStatusForService:v7 URI:v9];

    if (v10)
    {
      v11 = [v10 status];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 2;
  }

  return v11;
}

- (void)removeCachedEntriesForService:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing cached entries {service: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v7 = v4;
      IMLogString();
      if (_IMWillLog())
      {
        v7 = v4;
        _IMAlwaysLog();
      }
    }

    v6 = [(IDSIDStatusQueryController *)self peerIDManager];
    [v6 deleteAllStatusesForService:v4];
  }
}

- (void)removeCachedIDStatusForURI:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(IDSIDStatusQueryController *)self peerIDManager];
    v10 = [v6 prefixedURI];
    [v9 deleteStatusForService:v8 URI:v10];
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

- (void)noteIncomingID:(id)a3 fromService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = [v6 FZIDType];
    if ([v7 length])
    {
      if (sub_1005848C4(v8, v6))
      {
        if ([(IDSIDStatusQueryController *)self _IDStatusForURI:v6 fromService:v7]== 2)
        {
          v9 = [(IDSIDStatusQueryController *)self peerIDManager];
          v10 = [v6 prefixedURI];
          [v9 deleteStatusForService:v7 URI:v10];
        }

        goto LABEL_26;
      }

      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v6;
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
        v16 = v6;
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
        v16 = v7;
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

- (id)_cachedResultsForURIs:(id)a3 fromURI:(id)a4 fromService:(id)a5 reason:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22 = objc_alloc_init(NSMutableDictionary);
  v14 = objc_alloc_init(NSMutableDictionary);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v10;
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
        v20 = [NSNumber numberWithUnsignedInt:[(IDSIDStatusQueryController *)self cachedIDStatusForID:v19 fromURI:v11 fromService:v12 reason:v13, v22]];
        [v14 setObject:v20 forKey:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  [v22 setObject:v14 forKey:v12];

  return v22;
}

- (BOOL)hasValidStatusForURI:(id)a3 fromURI:(id)a4 fromService:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (sub_1005848C4([v8 FZIDType], v8))
  {
    v11 = [(IDSIDStatusQueryController *)self peerIDManager];
    v12 = [v9 prefixedURI];
    v13 = [v11 loadStatusForService:v10 URI:v12];

    if ([v13 status] == 2)
    {
      v14 = [v13 lookupDate];
      [v14 doubleValue];
      v16 = v15;
      Current = CFAbsoluteTimeGetCurrent();
      v18 = +[IDSPeerIDManager sharedInstance];
      v19 = vabdd_f64(Current, v16);
      [v18 timeToCacheURI:v8 fromURI:v9 service:v10 forStatus:{objc_msgSend(v13, "status")}];
      v21 = v20;

      v22 = v19 >= v21 || v14 == 0;
      v23 = v22;
      if (!v22)
      {
        v24 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110144;
          v29 = [v13 status];
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
          v26 = [v13 status];
          MarcoLogMadridLevel();
          v27 = [v13 status];
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

- (void)_lookupIDStatusForURIs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 lightQuery:(BOOL)a7 allowQuery:(BOOL)a8 clientRequestedForceQuery:(BOOL)a9 bypassLimit:(BOOL)a10 allowOnMissingEndpoints:(BOOL)a11 reason:(id)a12 completionBlock:(id)a13
{
  v175 = a8;
  v159 = a7;
  v167 = a3;
  v166 = a4;
  v174 = a5;
  v180 = a6;
  v164 = a12;
  v165 = a13;
  v183 = self;
  if (!self->_allowProxyQueries)
  {
    if (![v167 count] || (objc_msgSend(v174, "prefixedURI"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, !v166) || !v18)
    {
      v62 = v165;
      if (v165)
      {
        (*(v165 + 2))(v165, 0, v174, v180, 0, 0);
      }

      goto LABEL_236;
    }
  }

  v19 = +[IDSTrafficMonitor sharedInstance];
  [v19 noteQueryRequestForService:v180 requestor:@"unknown"];

  v169 = objc_alloc_init(NSMutableArray);
  v177 = objc_alloc_init(NSMutableArray);
  v181 = objc_alloc_init(NSMutableArray);
  v168 = objc_alloc_init(NSMutableArray);
  v20 = [(IDSIDStatusQueryController *)self peerIDManager];
  v173 = [v20 endpointsForURIs:v167 service:v180 fromURI:v174 ignoringTTL:1];

  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  obj = v167;
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
      v25 = [v24 FZIDType];
      [v181 addObject:v24];
      if (sub_1005848C4(v25, v24))
      {
        if (a9 && sub_100587FE0())
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

        v28 = [(IDSIDStatusQueryController *)v183 peerIDManager];
        v29 = [v24 prefixedURI];
        v30 = [v28 loadStatusForService:v180 URI:v29];

        if (a11)
        {
          v31 = v180;
          v32 = [IDSServerBag sharedInstanceForBagType:0];
          v33 = [NSString stringWithFormat:@"client-query-allow-for-missing-endpoints-%@", v31];
          v34 = [v32 objectForKey:v33];

          if (v34)
          {
            v35 = [v34 BOOLValue];

            if (!v35)
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
        v42 = [v30 status];
        v43 = [v30 lookupDate];
        v44 = [v30 expiry];
        v45 = [v30 negativeTTL];
        [v43 doubleValue];
        v47 = v46;
        [(IDSIDStatusDependencyProvider *)v183->_dependencyProvider currentTime];
        v49 = v48;
        if (v45)
        {
          [v45 doubleValue];
          goto LABEL_43;
        }

        if (v44 && sub_10058817C())
        {
          [v44 doubleValue];
LABEL_43:
          v51 = v50;
        }

        else
        {
          v52 = [(IDSIDStatusQueryController *)v183 peerIDManager];
          [v52 timeToCacheURI:v24 fromURI:v174 service:v180 forStatus:v42];
          v51 = v53;
        }

        v54 = vabdd_f64(v49, v47);
        v55 = [v30 status];
        if (v55 != 1 || v54 >= v51)
        {
          if (v175)
          {
            if (v43 && v54 < v51)
            {
              if (v55)
              {
                v56 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67110144;
                  *v207 = v42;
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
                  v150 = v42;
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
                  *v207 = v42;
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
                  v150 = v42;
                  IMLogString();
                  if (_IMWillLog())
                  {
                    v156 = v54;
                    v157 = v51;
                    v154 = v49;
                    v155 = v47;
                    v150 = v42;
                    _IMAlwaysLog();
                  }
                }

                [v169 addObject:{v24, v150}];
              }

              goto LABEL_86;
            }

            if (!v43)
            {
              [v168 addObject:v24];
            }

            v60 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413570;
              *v207 = v24;
              *&v207[8] = 1024;
              *&v207[10] = v42;
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
              v154 = *&v42;
              IMLogString();
              if (_IMWillLog())
              {
                v157 = v54;
                v158 = v51;
                v155 = v47;
                v156 = v49;
                v150 = v24;
                v154 = *&v42;
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
              *v207 = v42;
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
              v150 = v42;
              IMLogString();
              if (_IMWillLog())
              {
LABEL_57:
                v156 = v54;
                v157 = v51;
                v154 = v49;
                v155 = v47;
                v150 = v42;
                _IMAlwaysLog();
              }
            }

LABEL_86:
            v58 = 0;
          }
        }

        else
        {
          if ([v180 isEqualToString:@"com.apple.madrid"] & 1) != 0 || (objc_msgSend(v180, "isEqualToString:", @"com.apple.private.alloy.willow") & 1) != 0 || (objc_msgSend(v180, "isEqualToString:", @"com.apple.private.alloy.biz"))
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
  v178 = v174;
  v193 = v178;
  v194 = v183;
  v63 = v180;
  v195 = v63;
  v160 = v165;
  v198 = v160;
  v161 = v164;
  v196 = v161;
  v163 = v181;
  v197 = v163;
  v162 = objc_retainBlock(v192);
  v64 = v63;
  v65 = +[IDSDServiceController sharedInstance];
  v170 = [v65 serviceWithIdentifier:v64];

  v66 = v64;
  if ([v170 adHocServiceType])
  {
    v67 = +[IDSDServiceController sharedInstance];
    v68 = [v67 primaryServiceForAdhocServiceType:{objc_msgSend(v170, "adHocServiceType")}];

    v66 = [v68 identifier];
  }

  startQueryDateByTopLevelService = v183->_startQueryDateByTopLevelService;
  if (!startQueryDateByTopLevelService)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v71 = v183->_startQueryDateByTopLevelService;
    v183->_startQueryDateByTopLevelService = Mutable;

    startQueryDateByTopLevelService = v183->_startQueryDateByTopLevelService;
  }

  v182 = [(NSMutableDictionary *)startQueryDateByTopLevelService objectForKeyedSubscript:v66, v150];
  [v182 timeIntervalSinceNow];
  v73 = v72;
  v74 = sub_1005887E0(v66);
  v75 = fabs(v73);
  if (v182)
  {
    if (v75 > (3600 * v74))
    {
      v76 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = sub_1005887E0(v66);
        *buf = 134217984;
        *v207 = v77;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Over %ld hour(s), resetting query per hour(s) count", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        sub_1005887E0(v66);
        MarcoLogMadridLevel();
        v151 = sub_1005887E0(v66);
        IMLogString();
        if (_IMWillLog())
        {
          v151 = sub_1005887E0(v66);
          _IMAlwaysLog();
        }
      }

      numQueriesThisHourByTopLevelService = v183->_numQueriesThisHourByTopLevelService;
      if (!numQueriesThisHourByTopLevelService)
      {
        v79 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v80 = v183->_numQueriesThisHourByTopLevelService;
        v183->_numQueriesThisHourByTopLevelService = v79;

        numQueriesThisHourByTopLevelService = v183->_numQueriesThisHourByTopLevelService;
      }

      [(NSMutableDictionary *)numQueriesThisHourByTopLevelService setObject:&off_100C3CAC0 forKeyedSubscript:v66, v151];
      reportedRateLimitedThisHour = v183->_reportedRateLimitedThisHour;
      if (!reportedRateLimitedThisHour)
      {
        v82 = objc_alloc_init(NSMutableSet);
        v83 = v183->_reportedRateLimitedThisHour;
        v183->_reportedRateLimitedThisHour = v82;

        reportedRateLimitedThisHour = v183->_reportedRateLimitedThisHour;
      }

      [(NSMutableSet *)reportedRateLimitedThisHour removeObject:v66];
      goto LABEL_111;
    }
  }

  else
  {
LABEL_111:
    v182 = [(IDSIDStatusDependencyProvider *)v183->_dependencyProvider currentDate];
    [(NSMutableDictionary *)v183->_startQueryDateByTopLevelService setObject:v182 forKeyedSubscript:v66];
    v84 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v207 = v182;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "New start query date %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v151 = v182;
      IMLogString();
      if (_IMWillLog())
      {
        v151 = v182;
        _IMAlwaysLog();
      }
    }
  }

  v85 = [(NSMutableDictionary *)v183->_numQueriesThisHourByTopLevelService objectForKeyedSubscript:v66, v151];
  v86 = v85;
  v87 = &off_100C3CAC0;
  if (v85)
  {
    v87 = v85;
  }

  v172 = v87;

  v88 = [v172 intValue];
  v176 = v66;
  v89 = [IDSServerBag sharedInstanceForBagType:1];
  v90 = [NSString stringWithFormat:@"device-queries-per-hour-%@", v176];
  v91 = [v89 objectForKey:v90];

  if (v91)
  {
    v92 = [v91 intValue];
  }

  else if ([v176 isEqualToString:@"com.apple.private.alloy.arcade"])
  {
    v92 = 1000;
  }

  else
  {
    v92 = 200;
  }

  if (v88 < v92 || a10 && ((+[IDSServerBag sharedInstanceForBagType:](IDSServerBag, "sharedInstanceForBagType:", 0), v94 = objc_claimAutoreleasedReturnValue(), [v94 objectForKey:@"client-query-allow-bypass-limit"], v95 = objc_claimAutoreleasedReturnValue(), v94, !v95) || (v96 = objc_msgSend(v95, "BOOLValue"), v95, v96)))
  {
    if ([v177 count])
    {
      v93 = 1;
    }

    else
    {
      v93 = [v169 count] != 0;
    }

    if (((v171 ^ 1 | HIDWORD(v171) | (a10 && v93)) & 1) == 0)
    {
      v114 = [(IDSIDStatusQueryController *)v183 _cachedResultsForURIs:v163 fromURI:v178 fromService:v64 reason:v161];
      v115 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v207 = v114;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "We have at least one valid result, returning cached results %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        v152 = v114;
        IMLogString();
        if (_IMWillLog())
        {
          v152 = v114;
          _IMAlwaysLog();
        }
      }

      [(IDSIDStatusQueryController *)v183 _sendIDStatusChanges:v114 forService:v64 URI:v178 success:1 error:0, v152];
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

          [(IDSIDStatusQueryController *)v183 _updateCacheWithStatusUpdates:v108 fromURI:v178 fromService:v64 success:0 hadError:0 negativeCacheHints:0];
        }

        v103 = [v102 countByEnumeratingWithState:&v188 objects:v205 count:16];
      }

      while (v103);
    }

    if (!v166)
    {
      if (v183->_allowProxyQueries && [v177 count])
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

        v114 = [(IDSIDStatusDependencyProvider *)v183->_dependencyProvider newRemoteCredential];
        v184[0] = _NSConcreteStackBlock;
        v184[1] = 3221225472;
        v184[2] = sub_1005888A4;
        v184[3] = &unk_100BE0AC0;
        v184[4] = v183;
        v185 = v178;
        v186 = v64;
        v187 = v160;
        [v114 requestIDStatusForURIs:obj service:v186 lightQuery:v159 allowQuery:v175 completionBlock:v184];

        goto LABEL_234;
      }

      v136 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        v137 = @"NO";
        if (v183->_allowProxyQueries)
        {
          v137 = @"YES";
        }

        *buf = 138412546;
        *v207 = v137;
        *&v207[8] = 2112;
        *&v207[10] = v177;
        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "Device does not have a cert {_allowProxyQueries: %@, URIsToQuery: %@}", buf, 0x16u);
      }

      if (!os_log_shim_legacy_logging_enabled() || ((MarcoLogMadridLevel(), !v183->_allowProxyQueries) ? (v138 = @"NO") : (v138 = @"YES"), v152 = v138, v154 = *&v177, IMLogString(), (_IMWillLog() & 1) == 0))
      {
        v101 = 0;
LABEL_218:
        if (v171)
        {
          goto LABEL_235;
        }

        goto LABEL_223;
      }

      if (v183->_allowProxyQueries)
      {
        v139 = @"YES";
      }

      else
      {
        v139 = @"NO";
      }

      v152 = v139;
      v154 = *&v177;
      _IMAlwaysLog();
      if (v171)
      {
        goto LABEL_235;
      }

LABEL_222:
      v101 = 0;
LABEL_223:
      v114 = [(IDSIDStatusQueryController *)v183 _cachedResultsForURIs:v163 fromURI:v178 fromService:v64 reason:v161, v152, *&v154];
      v145 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v207 = v114;
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

      v146 = [NSString stringWithFormat:@"Query on the service %@ is being rate limited { numQueriesThisHour: %@ }", v64, v172];
      v147 = v146;
      if (v101)
      {
        v203 = NSLocalizedDescriptionKey;
        v204 = v146;
        v148 = [NSDictionary dictionaryWithObjects:&v204 forKeys:&v203 count:1];
        v149 = [NSError errorWithDomain:IDSPeerIDManagerErrorDomain code:5 userInfo:v148];
      }

      else
      {
        v149 = 0;
      }

      [(IDSIDStatusQueryController *)v183 _sendIDStatusChanges:v114 forService:v64 URI:v178 success:1 error:v149];
      if (v160)
      {
        v160[2]();
      }

LABEL_234:
      goto LABEL_235;
    }

    v109 = sub_10058817C();
    if (((v109 | !a9) & 1) == 0)
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
      v128 = [(IDSIDStatusQueryController *)v183 peerIDManager];
      LOBYTE(v152) = a9;
      v129 = [v128 startQueryForURIs:v177 fromIdentity:v166 fromURI:v178 fromService:v64 forSending:1 forceToServer:v109 clientRequestedForceQuery:v152 reason:v113 completionBlock:v162];

      if (!v183->_numQueriesThisHourByTopLevelService)
      {
        v130 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v131 = v183->_numQueriesThisHourByTopLevelService;
        v183->_numQueriesThisHourByTopLevelService = v130;
      }

      v132 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v177 count] + objc_msgSend(v172, "intValue"));
      [(NSMutableDictionary *)v183->_numQueriesThisHourByTopLevelService setObject:v132 forKeyedSubscript:v176];

      v133 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        v134 = [(NSMutableDictionary *)v183->_numQueriesThisHourByTopLevelService objectForKeyedSubscript:v176];
        *buf = 138412546;
        *v207 = v134;
        *&v207[8] = 2112;
        *&v207[10] = v176;
        _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "We're at %@ queries for this hour for service: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v153 = [(NSMutableDictionary *)v183->_numQueriesThisHourByTopLevelService objectForKeyedSubscript:v176];
        MarcoLogMadridLevel();

        v152 = [(NSMutableDictionary *)v183->_numQueriesThisHourByTopLevelService objectForKeyedSubscript:v176, v153, v176];
        v154 = *&v176;
        IMLogString();

        if (_IMWillLog())
        {
          v135 = [(NSMutableDictionary *)v183->_numQueriesThisHourByTopLevelService objectForKeyedSubscript:v176, v152, v176];
          v152 = v135;
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
        v135 = [[IDSPeerIDQueryContext alloc] initWithSending:1 forceToServer:v109 messaging:0 resultExpected:0 preventNewQuery:1 clientRequestedForceQuery:a9];
        v140 = [(IDSIDStatusQueryController *)v183 peerIDManager];
        v141 = v140;
        if (v161)
        {
          v142 = v161;
        }

        else
        {
          v142 = @"StatusLookupPiggyback";
        }

        v129 = [v140 startQueryForURIs:v169 fromIdentity:v166 fromURI:v178 fromService:v64 context:v135 reason:v142 completionBlock:v162];

        if (((v129 | v171 ^ 1) & 1) == 0)
        {
          v143 = [(IDSIDStatusQueryController *)v183 _cachedResultsForURIs:v163 fromURI:v178 fromService:v64 reason:v161];
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
            v152 = v143;
            IMLogString();
            if (_IMWillLog())
            {
              v152 = v143;
              _IMAlwaysLog();
            }
          }

          [(IDSIDStatusQueryController *)v183 _sendIDStatusChanges:v143 forService:v64 URI:v178 success:1 error:0, v152];
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
    v152 = v172;
    v154 = *&v64;
    IMLogString();
    if (_IMWillLog())
    {
      v152 = v172;
      v154 = *&v64;
      _IMAlwaysLog();
    }
  }

  v98 = v183->_reportedRateLimitedThisHour;
  if (!v98)
  {
    v99 = objc_alloc_init(NSMutableSet);
    v100 = v183->_reportedRateLimitedThisHour;
    v183->_reportedRateLimitedThisHour = v99;

    v98 = v183->_reportedRateLimitedThisHour;
  }

  if (([(NSMutableSet *)v98 containsObject:v176, v152, *&v154]& 1) != 0)
  {
    v101 = 1;
    goto LABEL_218;
  }

  [(NSMutableSet *)v183->_reportedRateLimitedThisHour addObject:v176];
  if (+[IDSAutoBugCapture isSupported])
  {
    v116 = [NSString stringWithFormat:@"(%@)", v176];
    [IDSAutoBugCapture triggerCaptureWithEvent:103 context:v116 completion:&stru_100BE0AE0];
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

  v62 = v165;
LABEL_236:
}

- (void)requestIDStatusForIDs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 lightQuery:(BOOL)a7 allowQuery:(BOOL)a8 forceQuery:(BOOL)a9 bypassLimit:(BOOL)a10 reason:(id)a11 completionBlock:(id)a12
{
  v31 = a7;
  v32 = a8;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a11;
  v21 = a12;
  if (self->_allowProxyQueries)
  {
    goto LABEL_31;
  }

  if ([v19 length])
  {
    v22 = [v18 prefixedURI];
    v23 = [v22 length];
    if (v17 && v23)
    {
      v24 = [v18 prefixedURI];
      v25 = [v24 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];

      if (!v25)
      {
LABEL_31:
        *(&v30 + 1) = a10;
        LOBYTE(v30) = a9;
        [IDSIDStatusQueryController _lookupIDStatusForURIs:"_lookupIDStatusForURIs:fromIdentity:fromURI:fromService:lightQuery:allowQuery:clientRequestedForceQuery:bypassLimit:allowOnMissingEndpoints:reason:completionBlock:" fromIdentity:v16 fromURI:v17 fromService:v18 lightQuery:v19 allowQuery:v31 clientRequestedForceQuery:v32 bypassLimit:v30 allowOnMissingEndpoints:v20 reason:v21 completionBlock:?];
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
    v34 = v16;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " => Bogus ID query for: %@   ignoring this request", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    v30 = v16;
    IMLogString();
    if (_IMWillLog())
    {
      v30 = v16;
      _IMAlwaysLog();
    }
  }

  v27 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v18;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " => From URI: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    v30 = v18;
    IMLogString();
    if (_IMWillLog())
    {
      v30 = v18;
      _IMAlwaysLog();
    }
  }

  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v19;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " => From Service: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    v30 = v19;
    IMLogString();
    if (_IMWillLog())
    {
      v30 = v19;
      _IMAlwaysLog();
    }
  }

  if (!v17)
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

  if (!v21)
  {
    goto LABEL_31;
  }

  (*(v21 + 2))(v21, 0, v18, v19, 0, 0);
LABEL_32:
}

- (void)requestIDStatusForID:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 lightQuery:(BOOL)a7 allowQuery:(BOOL)a8 reason:(id)a9 completionBlock:(id)a10
{
  v10 = a7;
  v15 = a10;
  v16 = a9;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v21 = IMSingleObjectArray();
  LOWORD(v20) = 0;
  [(IDSIDStatusQueryController *)self requestIDStatusForIDs:v21 fromIdentity:v19 fromURI:v18 fromService:v17 lightQuery:v10 allowQuery:v10 forceQuery:v20 bypassLimit:v16 reason:v15 completionBlock:?];
}

- (void)setCachedIDStatus:(unsigned int)a3 ForID:(id)a4 fromURI:(id)a5 fromService:(id)a6
{
  v8 = *&a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 FZIDType];
  if ([v12 length] && (objc_msgSend(v11, "prefixedURI"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v15))
  {
    if (sub_1005848C4(v13, v10))
    {
      v16 = objc_alloc_init(NSMutableDictionary);
      v17 = [NSNumber numberWithUnsignedInt:v8];
      [v16 setObject:v17 forKey:v10];

      [(IDSIDStatusQueryController *)self _updateCacheWithStatusUpdates:v16 fromURI:v11 fromService:v12 success:1 hadError:0 negativeCacheHints:0];
      goto LABEL_25;
    }

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v10;
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
      v23 = v10;
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
      v23 = v11;
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
      v23 = v12;
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

- (unsigned)cachedIDStatusForID:(id)a3 fromURI:(id)a4 fromService:(id)a5 respectExpiry:(BOOL)a6 reason:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [v12 FZIDType];
  if ([v14 length] && (objc_msgSend(v13, "prefixedURI"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, v18))
  {
    if (sub_1005848C4(v16, v12))
    {
      v19 = [(IDSIDStatusQueryController *)self peerIDManager];
      v20 = [v12 prefixedURI];
      v21 = [v19 loadStatusForService:v14 URI:v20];

      if (v16 + 1 > 8)
      {
        v22 = 2863311530;
      }

      else
      {
        v22 = dword_1009ABDB8[v16 + 1];
      }

      if (@"InternalQueryCacheCheck" != v15)
      {
        v28 = [[IDSCachedQueryCompletionMetric alloc] initWithService:v14 queryURITypes:v22 queryReason:v15 uriCount:1];
        v29 = +[IDSCoreAnalyticsLogger defaultLogger];
        [v29 logMetric:v28];
      }

      if (!v8 || ![v21 status])
      {
LABEL_43:
        LODWORD(v26) = [v21 status];
        goto LABEL_44;
      }

      v30 = [v21 lookupDate];
      v26 = v30;
      if (!v30)
      {
LABEL_44:

        goto LABEL_45;
      }

      [v30 doubleValue];
      v32 = v31;
      [(IDSIDStatusDependencyProvider *)self->_dependencyProvider currentTime];
      v34 = v33;
      v35 = [v21 negativeTTL];
      v36 = [v21 expiry];
      v37 = v36;
      if (v35)
      {
        v38 = v35;
      }

      else
      {
        if (!v36 || !sub_10058817C())
        {
          v41 = [(IDSIDStatusQueryController *)self peerIDManager];
          [v41 timeToCacheURI:v12 fromURI:v13 service:v14 forStatus:{objc_msgSend(v21, "status")}];
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
          v47 = v12;
          v48 = 2112;
          v49 = v13;
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
      v47 = v12;
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
      v47 = v12;
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
      v47 = v13;
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
      v47 = v14;
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

- (id)currentCacheForService:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IDSIDStatusQueryController *)self peerIDManager];
    v6 = [v5 loadAllStatusesForService:v4];

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
            v14 = [v13 service];
            v15 = [v7 objectForKeyedSubscript:v14];

            if (!v15)
            {
              v16 = +[NSMutableDictionary dictionary];
              v17 = [v13 service];
              [v7 setObject:v16 forKeyedSubscript:v17];
            }

            v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 status]);
            v19 = [v13 service];
            v20 = [v7 objectForKeyedSubscript:v19];
            v21 = [v13 uriString];
            [v20 setObject:v18 forKeyedSubscript:v21];
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

- (void)remoteDevicesForIDs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 lightQuery:(BOOL)a7 allowQuery:(BOOL)a8 reason:(id)a9 completionBlock:(id)a10
{
  v33 = a7;
  v34 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v19 = a10;
  if (!self->_allowProxyQueries)
  {
    if ([v17 length])
    {
      v20 = [v16 prefixedURI];
      v21 = [v20 length];
      if (v15 && v21)
      {
        v22 = [v16 prefixedURI];
        v23 = [v22 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];

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
      v41 = v14;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " => Bogus ID query for: %@   ignoring this request", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v32 = v14;
      IMLogString();
      if (_IMWillLog())
      {
        v32 = v14;
        _IMAlwaysLog();
      }
    }

    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v16;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " => From URI: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v32 = v16;
      IMLogString();
      if (_IMWillLog())
      {
        v32 = v16;
        _IMAlwaysLog();
      }
    }

    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v17;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " => From Service: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v32 = v17;
      IMLogString();
      if (_IMWillLog())
      {
        v32 = v17;
        _IMAlwaysLog();
      }
    }

    if (!v15)
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

    if (v19)
    {
      (*(v19 + 2))(v19, 0, v16, v17, 0, 0);
    }
  }

LABEL_31:
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10058A944;
  v35[3] = &unk_100BE0B08;
  v35[4] = self;
  v36 = v14;
  v37 = v17;
  v38 = v16;
  v39 = v19;
  v28 = v19;
  v29 = v16;
  v30 = v17;
  v31 = v14;
  BYTE2(v32) = 1;
  LOWORD(v32) = 0;
  [IDSIDStatusQueryController _lookupIDStatusForURIs:"_lookupIDStatusForURIs:fromIdentity:fromURI:fromService:lightQuery:allowQuery:clientRequestedForceQuery:bypassLimit:allowOnMissingEndpoints:reason:completionBlock:" fromIdentity:v31 fromURI:v15 fromService:v29 lightQuery:v30 allowQuery:v33 clientRequestedForceQuery:v34 bypassLimit:v32 allowOnMissingEndpoints:v18 reason:v35 completionBlock:?];
}

- (void)infoForIDs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 infoType:(unint64_t)a7 infoOptions:(id)a8 lightQuery:(BOOL)a9 allowQuery:(BOOL)a10 reason:(id)a11 completion:(id)a12
{
  v39 = a3;
  v42 = a4;
  v41 = a5;
  v18 = a6;
  v19 = a8;
  v40 = a11;
  v20 = a12;
  v21 = self;
  if (!self->_allowProxyQueries)
  {
    if ([v18 length])
    {
      v22 = [v41 prefixedURI];
      v23 = [v22 length];
      if (v42 && v23)
      {
        v24 = [v41 prefixedURI];
        v25 = [v24 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];

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
      v51 = v39;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " => Bogus ID query for: %@   ignoring this request", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v35 = v39;
      IMLogString();
      if (_IMWillLog())
      {
        v35 = v39;
        _IMAlwaysLog();
      }
    }

    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v41;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " => From URI: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v35 = v41;
      IMLogString();
      if (_IMWillLog())
      {
        v35 = v41;
        _IMAlwaysLog();
      }
    }

    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v18;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " => From Service: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v35 = v18;
      IMLogString();
      if (_IMWillLog())
      {
        v35 = v18;
        _IMAlwaysLog();
      }
    }

    if (!v42)
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

    if (v20)
    {
      (*(v20 + 2))(v20, 0, v41, v18, 0, 0);
    }
  }

LABEL_31:
  v30 = [v19 forceRefresh];
  v31 = [v19 bypassLimit];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10058B0A4;
  v43[3] = &unk_100BE0B30;
  v43[4] = v21;
  v44 = v39;
  v45 = v18;
  v46 = v41;
  v47 = v19;
  v48 = v20;
  v49 = a7;
  v38 = v20;
  v37 = v19;
  v32 = v41;
  v33 = v18;
  v34 = v39;
  BYTE2(v36) = 1;
  BYTE1(v36) = v31;
  LOBYTE(v36) = v30;
  [IDSIDStatusQueryController _lookupIDStatusForURIs:v21 fromIdentity:"_lookupIDStatusForURIs:fromIdentity:fromURI:fromService:lightQuery:allowQuery:clientRequestedForceQuery:bypassLimit:allowOnMissingEndpoints:reason:completionBlock:" fromURI:v34 fromService:v42 lightQuery:v32 allowQuery:v33 clientRequestedForceQuery:a9 bypassLimit:a10 allowOnMissingEndpoints:v36 reason:v40 completionBlock:v43];
}

- (void)_sendIDStatusChanges:(id)a3 forService:(id)a4 URI:(id)a5 success:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v33 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v32 = v12;
  if ([v12 length] && (objc_msgSend(v13, "prefixedURI"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v15, v16))
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v18 = @"NO";
      v40 = v33;
      if (v8)
      {
        v18 = @"YES";
      }

      v41 = 2112;
      v42 = v12;
      v43 = 2112;
      v44 = v13;
      v45 = 2112;
      v46 = v18;
      v47 = 2112;
      v48 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending id status changes %@ for service %@ URI %@ success %@ error %@", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v19 = v8 ? @"YES" : @"NO";
      MarcoLogMadridLevel();
      v30 = v19;
      v31 = v14;
      v28 = v32;
      v29 = v13;
      v27 = v33;
      IMLogString();
      if (_IMWillLog())
      {
        v30 = v19;
        v31 = v14;
        v28 = v32;
        v29 = v13;
        v27 = v33;
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
            (v25)[2](v25, v33, v13, v32, v8, v14);
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

- (void)addCompletionBlock:(id)a3 forUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 copy];
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
        [(NSMutableDictionary *)completionBlocks setObject:v12 forKey:v7];
      }

      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_completionBlocks;
        *buf = 138412546;
        v18 = v7;
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
      v18 = v7;
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

- (void)removeCompletionBlockForUniqueIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableDictionary *)self->_completionBlocks removeObjectForKey:v4];
    if (![(NSMutableDictionary *)self->_completionBlocks count])
    {
      completionBlocks = self->_completionBlocks;
      self->_completionBlocks = 0;
    }

    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
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

  v4 = [(IDSIDStatusQueryController *)self peerIDManager];
  [v4 deleteStatusCache];
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
  v2 = [(IDSIDStatusQueryController *)self _plistFilePath];
  v3 = [[NSDictionary alloc] initWithContentsOfFile:v2];

  return v3;
}

- (void)_wipeLegacyCache
{
  v2 = [(IDSIDStatusQueryController *)self _plistFilePath];
  v3 = +[NSFileManager defaultManager];
  v6 = 0;
  [v3 removeItemAtPath:v2 error:&v6];
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