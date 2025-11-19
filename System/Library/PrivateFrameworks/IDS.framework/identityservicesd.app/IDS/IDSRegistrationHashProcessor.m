@interface IDSRegistrationHashProcessor
- (IDSRegistrationHashProcessor)initWithAccountController:(id)a3 peerIDManager:(id)a4 negativeRegistrationUpdateCache:(id)a5 notifyDidFlushCacheRateLimiter:(id)a6 registrationKeyManager:(id)a7;
- (IDSRegistrationHashProcessorDelegate)delegate;
- (id)devicesHashForURI:(id)a3 andService:(id)a4;
- (id)senderKeyDistributionManager;
- (void)handleRegistrationUpdateForHash:(id)a3 localURI:(id)a4 remoteURI:(id)a5 service:(id)a6 guid:(id)a7 forceUpdate:(BOOL)a8;
@end

@implementation IDSRegistrationHashProcessor

- (IDSRegistrationHashProcessor)initWithAccountController:(id)a3 peerIDManager:(id)a4 negativeRegistrationUpdateCache:(id)a5 notifyDidFlushCacheRateLimiter:(id)a6 registrationKeyManager:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = IDSRegistrationHashProcessor;
  v17 = [(IDSRegistrationHashProcessor *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accountController, a3);
    objc_storeStrong(&v18->_peerIDManager, a4);
    objc_storeStrong(&v18->_negativeRegistrationUpdateCache, a5);
    objc_storeStrong(&v18->_notifyDidFlushCacheRateLimiter, a6);
    objc_storeStrong(&v18->_registrationKeyManager, a7);
  }

  return v18;
}

- (id)senderKeyDistributionManager
{
  v2 = +[IDSDaemon sharedInstance];
  v3 = [v2 senderKeyDistributionManager];

  return v3;
}

- (id)devicesHashForURI:(id)a3 andService:(id)a4
{
  v6 = a3;
  v35 = a4;
  v7 = [(IDSRegistrationHashProcessor *)self accountController];
  v36 = [v7 appleIDAccountOnService:v35];

  v8 = [v36 lastGDRDate];
  v34 = v8;
  v9 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  [v8 timeIntervalSinceNow];
  v11 = v10 >= 0.0 ? v10 : -v10;
  v12 = [IDSServerBag sharedInstanceForBagType:0];
  v13 = [v12 objectForKey:@"reg-hash-time-since-gdr"];

  v14 = 28800.0;
  if (v13)
  {
    objc_opt_class();
    v9 = v34;
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      v14 = v15;
    }
  }

  else
  {
    v9 = v34;
  }

  if (v11 < v14)
  {
    v16 = objc_alloc_init(NSMutableSet);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v17 = [v36 registeredDevices];
    v18 = [v17 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v18)
    {
      v19 = *v38;
LABEL_12:
      v20 = 0;
      while (1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v37 + 1) + 8 * v20);
        v22 = [v21 URIs];
        v23 = [v22 containsObject:v6];

        if (v23)
        {
          v24 = [v21 publicDeviceIdentity];
          v25 = v24 == 0;

          if (v25)
          {
            v31 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v42 = v21;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Registered device missing public key! -- aborting hash {device: %@}", buf, 0xCu);
            }

            if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
            {
              goto LABEL_33;
            }

LABEL_32:
            _IDSLogV();
LABEL_33:
            v30 = 0;
            goto LABEL_34;
          }

          v26 = [v21 publicDeviceIdentity];
          [v16 addObject:v26];
        }

        if (v18 == ++v20)
        {
          v18 = [v17 countByEnumeratingWithState:&v37 objects:v43 count:16];
          if (v18)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    v27 = [(IDSRegistrationHashProcessor *)self registrationKeyManager];
    v17 = [v27 publicMessageProtectionData];

    if (!v17)
    {
      v32 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Local device missing public key! -- aborting hash", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    [v16 addObject:v17];
    v28 = sub_1006D7178(v16);
    v29 = [v28 SHA256Data];
    v30 = [[NSMutableData alloc] initWithBytes:&unk_1009AC2E8 length:1];
    [v30 appendData:v29];

LABEL_34:
    v9 = v34;
  }

  else
  {
LABEL_22:
    v30 = 0;
  }

  return v30;
}

- (void)handleRegistrationUpdateForHash:(id)a3 localURI:(id)a4 remoteURI:(id)a5 service:(id)a6 guid:(id)a7 forceUpdate:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v95 = a4;
  v15 = a5;
  v96 = a6;
  v16 = a7;
  if (!v14 || v8)
  {
LABEL_35:
    v94 = v16;
    v44 = [v15 prefixedURI];
    v45 = [v44 stringByAppendingFormat:@"-%@", v14];

    v46 = [(IDSRegistrationHashProcessor *)self negativeRegistrationUpdateCache];
    v47 = [v46 underLimitForItem:v45];

    if (!(v47 | v8))
    {
      v58 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        *v107 = v15;
        *&v107[8] = 2112;
        *&v107[10] = v96;
        *&v107[18] = 2112;
        *&v107[20] = v95;
        v108 = 2112;
        v109 = v94;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Received too many registration updates, ignoring {remoteURI: %@, service: %@, localURI: %@, guid: %@}", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      goto LABEL_67;
    }

    v48 = [(IDSRegistrationHashProcessor *)self negativeRegistrationUpdateCache];
    [v48 noteItem:v45];

    v49 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *v107 = v15;
      *&v107[8] = 2112;
      *&v107[10] = v95;
      *&v107[18] = 2112;
      *&v107[20] = v96;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, " => Purging Peer ID Cache for: %@   caller URI: %@   service: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v86 = v95;
      v88 = v96;
      v83 = v15;
      _IDSLogV();
    }

    v50 = [IDSDServiceController sharedInstance:v83];
    v51 = [v96 identifier];
    v91 = [v50 adHocServicesForIdentifier:v51];

    v52 = [v91 __imArrayByApplyingBlock:&stru_100BE5928];
    v53 = v52;
    v54 = &__NSArray0__struct;
    if (v52)
    {
      v54 = v52;
    }

    v93 = v54;

    v55 = [IDSServerBag sharedInstanceForBagType:0];
    v56 = [v55 objectForKey:@"should-clear-id-status-on-130"];

    if (v56 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v57 = [v56 BOOLValue];

      if (!v57)
      {
LABEL_62:
        v69 = [NSMutableArray alloc];
        v70 = [v96 identifier];
        v71 = [v69 initWithObjects:{v70, 0}];

        [v71 addObjectsFromArray:v93];
        v72 = [(IDSRegistrationHashProcessor *)self peerIDManager];
        [v72 forgetPeerTokensForURI:v15 fromURI:v95 services:v71 reason:12];

        v73 = [(IDSRegistrationHashProcessor *)self notifyDidFlushCacheRateLimiter];
        LODWORD(v69) = [v73 underLimitForItem:v45];

        if (v69)
        {
          v74 = [(IDSRegistrationHashProcessor *)self notifyDidFlushCacheRateLimiter];
          [v74 noteItem:v45];

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v76 = [v96 identifier];
          v77 = [v15 prefixedURI];
          v78 = [v95 prefixedURI];
          [WeakRetained registrationHashProcessor:self didFlushCacheForService:v76 remoteURI:v77 localURI:v78 guid:v94];
        }

        v79 = [v96 identifier];
        v80 = [v79 isEqualToString:IDSServiceNameiMessage];

        if (v80)
        {
          v81 = [(IDSRegistrationHashProcessor *)self senderKeyDistributionManager];
          [v81 handleRemoteDeviceUpdateWithRemoteURI:v15 localURI:v95];
        }

LABEL_67:
LABEL_68:
        v16 = v94;
        goto LABEL_69;
      }
    }

    else
    {
    }

    v59 = [v96 identifier];
    v60 = [v59 isEqualToString:@"com.apple.madrid"];

    if (v60)
    {
      v61 = [(IDSRegistrationHashProcessor *)self idStatusQueryController];
      v62 = [v96 identifier];
      [v61 removeCachedIDStatusForURI:v15 service:v62];

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v63 = v93;
      v64 = [v63 countByEnumeratingWithState:&v97 objects:v110 count:16];
      if (v64)
      {
        v65 = *v98;
        do
        {
          for (i = 0; i != v64; i = i + 1)
          {
            if (*v98 != v65)
            {
              objc_enumerationMutation(v63);
            }

            v67 = *(*(&v97 + 1) + 8 * i);
            v68 = [(IDSRegistrationHashProcessor *)self idStatusQueryController];
            [v68 removeCachedIDStatusForURI:v15 service:v67];
          }

          v64 = [v63 countByEnumeratingWithState:&v97 objects:v110 count:16];
        }

        while (v64);
      }
    }

    goto LABEL_62;
  }

  v17 = [v14 length];
  if (v96 && v15 && v95 && v17 >= 0x21)
  {
    v94 = v16;
    v105 = 0;
    [v14 getBytes:&v105 length:1];
    if (v105 != 1)
    {
      v38 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v105;
        v40 = [v14 debugDescription];
        *buf = 67109378;
        *v107 = v39;
        *&v107[4] = 2112;
        *&v107[6] = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Received unsupported query update hash {version: %d, hash: %@}", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v85 = [v14 debugDescription];
        _IDSLogV();
      }

      goto LABEL_68;
    }

    v92 = [v14 subdataWithRange:{1, 32}];
    v18 = [(IDSRegistrationHashProcessor *)self peerIDManager];
    v112 = v15;
    v19 = [NSArray arrayWithObjects:&v112 count:1];
    v20 = [v96 identifier];
    v21 = [v18 endpointsForURIs:v19 service:v20 fromURI:v95];
    v22 = [v21 objectForKey:v15];

    v23 = objc_alloc_init(NSMutableSet);
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v101 objects:v111 count:16];
    if (v25)
    {
      v26 = *v102;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v102 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = [*(*(&v101 + 1) + 8 * j) serializedPublicLegacyIdentity];
          if (v28)
          {
            [v23 addObject:v28];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v101 objects:v111 count:16];
      }

      while (v25);
    }

    v89 = sub_1006D7178(v23);
    v90 = [v89 SHA256Data];
    v29 = [v90 isEqualToData:v92];
    if (v29)
    {
      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v105;
        v32 = [v92 debugDescription];
        v33 = [v90 debugDescription];
        *buf = 67109634;
        *v107 = v31;
        *&v107[4] = 2112;
        *&v107[6] = v32;
        *&v107[14] = 2112;
        v34 = v33;
        *&v107[16] = v33;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Query update hashes match -- doing nothing {version: %d, remoteHash: %@, localHash: %@}", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v35 = v105;
        v36 = [v92 debugDescription];
        v37 = [v90 debugDescription];
        v84 = v36;
        v87 = v37;
        v82 = v35;
        _IDSLogV();
LABEL_33:
      }
    }

    else
    {
      v41 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [v92 debugDescription];
        v43 = [v90 debugDescription];
        *buf = 138412546;
        *v107 = v42;
        *&v107[8] = 2112;
        *&v107[10] = v43;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Query update hash does not match, we should clear {remoteHash: %@, localHash: %@}", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v36 = [v92 debugDescription];
        v37 = [v90 debugDescription];
        v82 = v36;
        v84 = v37;
        _IDSLogV();
        goto LABEL_33;
      }
    }

    v16 = v94;
    if ((v29 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_69:
}

- (IDSRegistrationHashProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end