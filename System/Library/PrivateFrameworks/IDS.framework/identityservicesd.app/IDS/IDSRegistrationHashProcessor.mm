@interface IDSRegistrationHashProcessor
- (IDSRegistrationHashProcessor)initWithAccountController:(id)controller peerIDManager:(id)manager negativeRegistrationUpdateCache:(id)cache notifyDidFlushCacheRateLimiter:(id)limiter registrationKeyManager:(id)keyManager;
- (IDSRegistrationHashProcessorDelegate)delegate;
- (id)devicesHashForURI:(id)i andService:(id)service;
- (id)senderKeyDistributionManager;
- (void)handleRegistrationUpdateForHash:(id)hash localURI:(id)i remoteURI:(id)rI service:(id)service guid:(id)guid forceUpdate:(BOOL)update;
@end

@implementation IDSRegistrationHashProcessor

- (IDSRegistrationHashProcessor)initWithAccountController:(id)controller peerIDManager:(id)manager negativeRegistrationUpdateCache:(id)cache notifyDidFlushCacheRateLimiter:(id)limiter registrationKeyManager:(id)keyManager
{
  controllerCopy = controller;
  managerCopy = manager;
  cacheCopy = cache;
  limiterCopy = limiter;
  keyManagerCopy = keyManager;
  v21.receiver = self;
  v21.super_class = IDSRegistrationHashProcessor;
  v17 = [(IDSRegistrationHashProcessor *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accountController, controller);
    objc_storeStrong(&v18->_peerIDManager, manager);
    objc_storeStrong(&v18->_negativeRegistrationUpdateCache, cache);
    objc_storeStrong(&v18->_notifyDidFlushCacheRateLimiter, limiter);
    objc_storeStrong(&v18->_registrationKeyManager, keyManager);
  }

  return v18;
}

- (id)senderKeyDistributionManager
{
  v2 = +[IDSDaemon sharedInstance];
  senderKeyDistributionManager = [v2 senderKeyDistributionManager];

  return senderKeyDistributionManager;
}

- (id)devicesHashForURI:(id)i andService:(id)service
{
  iCopy = i;
  serviceCopy = service;
  accountController = [(IDSRegistrationHashProcessor *)self accountController];
  v36 = [accountController appleIDAccountOnService:serviceCopy];

  lastGDRDate = [v36 lastGDRDate];
  v34 = lastGDRDate;
  v9 = lastGDRDate;
  if (!lastGDRDate)
  {
    goto LABEL_22;
  }

  [lastGDRDate timeIntervalSinceNow];
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
    registeredDevices = [v36 registeredDevices];
    v18 = [registeredDevices countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v18)
    {
      v19 = *v38;
LABEL_12:
      v20 = 0;
      while (1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(registeredDevices);
        }

        v21 = *(*(&v37 + 1) + 8 * v20);
        uRIs = [v21 URIs];
        v23 = [uRIs containsObject:iCopy];

        if (v23)
        {
          publicDeviceIdentity = [v21 publicDeviceIdentity];
          v25 = publicDeviceIdentity == 0;

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

          publicDeviceIdentity2 = [v21 publicDeviceIdentity];
          [v16 addObject:publicDeviceIdentity2];
        }

        if (v18 == ++v20)
        {
          v18 = [registeredDevices countByEnumeratingWithState:&v37 objects:v43 count:16];
          if (v18)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    registrationKeyManager = [(IDSRegistrationHashProcessor *)self registrationKeyManager];
    registeredDevices = [registrationKeyManager publicMessageProtectionData];

    if (!registeredDevices)
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

    [v16 addObject:registeredDevices];
    v28 = sub_1006D7178(v16);
    sHA256Data = [v28 SHA256Data];
    v30 = [[NSMutableData alloc] initWithBytes:&unk_1009AC2E8 length:1];
    [v30 appendData:sHA256Data];

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

- (void)handleRegistrationUpdateForHash:(id)hash localURI:(id)i remoteURI:(id)rI service:(id)service guid:(id)guid forceUpdate:(BOOL)update
{
  updateCopy = update;
  hashCopy = hash;
  iCopy = i;
  rICopy = rI;
  serviceCopy = service;
  guidCopy = guid;
  if (!hashCopy || updateCopy)
  {
LABEL_35:
    v94 = guidCopy;
    prefixedURI = [rICopy prefixedURI];
    hashCopy = [prefixedURI stringByAppendingFormat:@"-%@", hashCopy];

    negativeRegistrationUpdateCache = [(IDSRegistrationHashProcessor *)self negativeRegistrationUpdateCache];
    v47 = [negativeRegistrationUpdateCache underLimitForItem:hashCopy];

    if (!(v47 | updateCopy))
    {
      v58 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        *v107 = rICopy;
        *&v107[8] = 2112;
        *&v107[10] = serviceCopy;
        *&v107[18] = 2112;
        *&v107[20] = iCopy;
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

    negativeRegistrationUpdateCache2 = [(IDSRegistrationHashProcessor *)self negativeRegistrationUpdateCache];
    [negativeRegistrationUpdateCache2 noteItem:hashCopy];

    v49 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *v107 = rICopy;
      *&v107[8] = 2112;
      *&v107[10] = iCopy;
      *&v107[18] = 2112;
      *&v107[20] = serviceCopy;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, " => Purging Peer ID Cache for: %@   caller URI: %@   service: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v86 = iCopy;
      v88 = serviceCopy;
      v83 = rICopy;
      _IDSLogV();
    }

    v50 = [IDSDServiceController sharedInstance:v83];
    identifier = [serviceCopy identifier];
    v91 = [v50 adHocServicesForIdentifier:identifier];

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
      bOOLValue = [v56 BOOLValue];

      if (!bOOLValue)
      {
LABEL_62:
        v69 = [NSMutableArray alloc];
        identifier2 = [serviceCopy identifier];
        v71 = [v69 initWithObjects:{identifier2, 0}];

        [v71 addObjectsFromArray:v93];
        peerIDManager = [(IDSRegistrationHashProcessor *)self peerIDManager];
        [peerIDManager forgetPeerTokensForURI:rICopy fromURI:iCopy services:v71 reason:12];

        notifyDidFlushCacheRateLimiter = [(IDSRegistrationHashProcessor *)self notifyDidFlushCacheRateLimiter];
        LODWORD(v69) = [notifyDidFlushCacheRateLimiter underLimitForItem:hashCopy];

        if (v69)
        {
          notifyDidFlushCacheRateLimiter2 = [(IDSRegistrationHashProcessor *)self notifyDidFlushCacheRateLimiter];
          [notifyDidFlushCacheRateLimiter2 noteItem:hashCopy];

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          identifier3 = [serviceCopy identifier];
          prefixedURI2 = [rICopy prefixedURI];
          prefixedURI3 = [iCopy prefixedURI];
          [WeakRetained registrationHashProcessor:self didFlushCacheForService:identifier3 remoteURI:prefixedURI2 localURI:prefixedURI3 guid:v94];
        }

        identifier4 = [serviceCopy identifier];
        v80 = [identifier4 isEqualToString:IDSServiceNameiMessage];

        if (v80)
        {
          senderKeyDistributionManager = [(IDSRegistrationHashProcessor *)self senderKeyDistributionManager];
          [senderKeyDistributionManager handleRemoteDeviceUpdateWithRemoteURI:rICopy localURI:iCopy];
        }

LABEL_67:
LABEL_68:
        guidCopy = v94;
        goto LABEL_69;
      }
    }

    else
    {
    }

    identifier5 = [serviceCopy identifier];
    v60 = [identifier5 isEqualToString:@"com.apple.madrid"];

    if (v60)
    {
      idStatusQueryController = [(IDSRegistrationHashProcessor *)self idStatusQueryController];
      identifier6 = [serviceCopy identifier];
      [idStatusQueryController removeCachedIDStatusForURI:rICopy service:identifier6];

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
            idStatusQueryController2 = [(IDSRegistrationHashProcessor *)self idStatusQueryController];
            [idStatusQueryController2 removeCachedIDStatusForURI:rICopy service:v67];
          }

          v64 = [v63 countByEnumeratingWithState:&v97 objects:v110 count:16];
        }

        while (v64);
      }
    }

    goto LABEL_62;
  }

  v17 = [hashCopy length];
  if (serviceCopy && rICopy && iCopy && v17 >= 0x21)
  {
    v94 = guidCopy;
    v105 = 0;
    [hashCopy getBytes:&v105 length:1];
    if (v105 != 1)
    {
      v38 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v105;
        v40 = [hashCopy debugDescription];
        *buf = 67109378;
        *v107 = v39;
        *&v107[4] = 2112;
        *&v107[6] = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Received unsupported query update hash {version: %d, hash: %@}", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v85 = [hashCopy debugDescription];
        _IDSLogV();
      }

      goto LABEL_68;
    }

    v92 = [hashCopy subdataWithRange:{1, 32}];
    peerIDManager2 = [(IDSRegistrationHashProcessor *)self peerIDManager];
    v112 = rICopy;
    v19 = [NSArray arrayWithObjects:&v112 count:1];
    identifier7 = [serviceCopy identifier];
    v21 = [peerIDManager2 endpointsForURIs:v19 service:identifier7 fromURI:iCopy];
    v22 = [v21 objectForKey:rICopy];

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

          serializedPublicLegacyIdentity = [*(*(&v101 + 1) + 8 * j) serializedPublicLegacyIdentity];
          if (serializedPublicLegacyIdentity)
          {
            [v23 addObject:serializedPublicLegacyIdentity];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v101 objects:v111 count:16];
      }

      while (v25);
    }

    v89 = sub_1006D7178(v23);
    sHA256Data = [v89 SHA256Data];
    v29 = [sHA256Data isEqualToData:v92];
    if (v29)
    {
      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v105;
        v32 = [v92 debugDescription];
        v33 = [sHA256Data debugDescription];
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
        v37 = [sHA256Data debugDescription];
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
        v43 = [sHA256Data debugDescription];
        *buf = 138412546;
        *v107 = v42;
        *&v107[8] = 2112;
        *&v107[10] = v43;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Query update hash does not match, we should clear {remoteHash: %@, localHash: %@}", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v36 = [v92 debugDescription];
        v37 = [sHA256Data debugDescription];
        v82 = v36;
        v84 = v37;
        _IDSLogV();
        goto LABEL_33;
      }
    }

    guidCopy = v94;
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