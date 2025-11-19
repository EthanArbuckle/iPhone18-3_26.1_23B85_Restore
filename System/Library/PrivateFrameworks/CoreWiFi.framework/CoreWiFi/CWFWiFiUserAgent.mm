@interface CWFWiFiUserAgent
- (BOOL)__updateKeychainPassword:(id)a3 network:(id)a4;
- (CWFWiFiUserAgent)initWithXPCClient:(id)a3 requestParameters:(id)a4;
- (NSArray)nearbyRecommendedNetworks;
- (id)__loadNearbyRecommendedNetworksFromKVS;
- (void)__cancelRecommendedNetworkNotificationTimeout;
- (void)__launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:(id)a3 accessoryName:(id)a4 appBundleID:(id)a5 completion:(id)a6;
- (void)__launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:(id)a3 accessoryName:(id)a4 appBundleID:(id)a5 completion:(id)a6;
- (void)__purgeExpiredCaptiveNetworkCredentials;
- (void)__purgeExpiredNearbyRecommendedNetworks;
- (void)__receivedNearbyRecommendedNetwork:(id)a3;
- (void)__receivedNearbySyncableNetwork:(id)a3;
- (void)__scheduleRecommendedNetworkNotificationTimeout;
- (void)__setupCloudSyncManager;
- (void)__setupEventHandler;
- (void)__setupNearbySyncManager;
- (void)__showWiFiNetworkSharingAskToShareNotificationForClientID:(id)a3 network:(id)a4 accessoryDisplayName:(id)a5 completion:(id)a6;
- (void)__updateNearbyRecommendedNetworks;
- (void)__updateNearbyRecommendedNetworksExpirationTimer;
- (void)activate;
- (void)invalidate;
- (void)pickerDidDismiss:(id)a3;
- (void)pickerDidPresent;
- (void)setNearbyRecommendedNetworks:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation CWFWiFiUserAgent

- (NSArray)nearbyRecommendedNetworks
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_nearbyRecommendedNetworks copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setNearbyRecommendedNetworks:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  nearbyRecommendedNetworks = v5->_nearbyRecommendedNetworks;
  if (nearbyRecommendedNetworks != v4 && (!v4 || !nearbyRecommendedNetworks || ([(NSArray *)nearbyRecommendedNetworks isEqual:v4]& 1) == 0))
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = v5->_nearbyRecommendedNetworks;
      v21 = 138543618;
      v22 = v10;
      v23 = 2114;
      v24 = v4;
      LODWORD(v18) = 22;
      v17 = &v21;
      _os_log_send_and_compose_impl();
    }

    v11 = [(NSArray *)v4 copy];
    v12 = v5->_nearbyRecommendedNetworks;
    v5->_nearbyRecommendedNetworks = v11;

    v13 = objc_alloc_init(CWFXPCEvent);
    [(CWFXPCEvent *)v13 setType:39];
    v14 = [MEMORY[0x1E695DF00] date];
    [(CWFXPCEvent *)v13 setTimestamp:v14];

    if (v4)
    {
      v19 = @"NearbyRecommendedNetworks";
      v20 = v4;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    }

    else
    {
      v15 = 0;
    }

    [(CWFXPCEvent *)v13 setInfo:v15, v17, v18];
    if (v4)
    {
    }

    [(CWFInterface *)v5 sendXPCEvent:v13];
  }

  objc_sync_exit(v5);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)__setupEventHandler
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E0D343B0;
  v3[3] = &unk_1E86E6F30;
  objc_copyWeak(&v4, &location);
  [(CWFInterface *)self setEventHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (BOOL)__updateKeychainPassword:(id)a3 network:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(CWFInterface *)self passwordForKnownNetworkProfile:v7 error:0];
    v9 = v8;
    if (v8)
    {
      if (v8 == v6 || ([v8 isEqual:v6] & 1) != 0)
      {
        v10 = CWFGetOSLog();
        if (v10)
        {
          v11 = CWFGetOSLog();
        }

        else
        {
          v11 = MEMORY[0x1E69E9C10];
          v17 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v7 identifier];
          v19 = [v7 isSystemMode];
          v20 = "user";
          if (v19)
          {
            v20 = "system";
          }

          v42 = 138543618;
          v43 = v18;
          v44 = 2082;
          v45 = v20;
          _os_log_send_and_compose_impl();
        }

        v12 = 0;
        goto LABEL_18;
      }

      v15 = CWFGetOSLog();
      if (v15)
      {
        v16 = CWFGetOSLog();
      }

      else
      {
        v16 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v7 identifier];
        v27 = [v7 isSystemMode];
        v28 = "user";
        if (v27)
        {
          v28 = "system";
        }

        v42 = 138543618;
        v43 = v26;
        v44 = 2082;
        v45 = v28;
        LODWORD(v39) = 22;
        v38 = &v42;
        _os_log_send_and_compose_impl();
      }

      v41 = 0;
      v29 = [(CWFInterface *)self setPassword:v6 knownNetworkProfile:v7 error:&v41];
      v12 = v41;
      if (v29)
      {
LABEL_34:
        v21 = 1;
        goto LABEL_35;
      }

      v33 = CWFGetOSLog();
      if (v33)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v36 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        if ([v7 isSystemMode])
        {
          v37 = "system";
        }

        else
        {
          v37 = "user";
        }

        v35 = [v7 identifier];
        v42 = 136315650;
        v43 = v37;
        v44 = 2114;
        v45 = v35;
        v46 = 2114;
        v47 = v12;
        goto LABEL_49;
      }
    }

    else
    {
      v13 = CWFGetOSLog();
      if (v13)
      {
        v14 = CWFGetOSLog();
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v22 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if ([v7 isSystemMode])
        {
          v23 = "system";
        }

        else
        {
          v23 = "user";
        }

        [v7 identifier];
        v42 = 136446466;
        v43 = v23;
        v45 = v44 = 2114;
        _os_log_send_and_compose_impl();
      }

      v40 = 0;
      v24 = [(CWFInterface *)self setPassword:v6 knownNetworkProfile:v7 error:&v40];
      v12 = v40;
      if (v24)
      {
        v9 = 0;
        goto LABEL_34;
      }

      v32 = CWFGetOSLog();
      if (v32)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v34 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v35 = [v7 identifier];
        v42 = 138543618;
        v43 = v35;
        v44 = 2114;
        v45 = v12;
LABEL_49:
        _os_log_send_and_compose_impl();
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  v9 = 0;
  v12 = 0;
LABEL_19:
  v21 = 0;
LABEL_35:

  v30 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)__receivedNearbySyncableNetwork:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [CWFNetworkProfile alloc];
  recentlyRemovedNetworkKVS = self->_recentlyRemovedNetworkKVS;
  v7 = [v4 knownNetworkProfile];
  v8 = [v7 identifier];
  v9 = [(CWFKeyValueStore *)recentlyRemovedNetworkKVS objectForKey:v8];
  v10 = [(CWFNetworkProfile *)v5 initWithExternalForm:v9];

  v11 = [v4 knownNetworkProfile];
  v12 = [v11 addedAt];

  v13 = [(CWFNetworkProfile *)v10 removedAt];
  [v12 timeIntervalSinceReferenceDate];
  v15 = v14;
  [v13 timeIntervalSinceReferenceDate];
  if (v15 <= v16)
  {
    v42 = CWFGetOSLog();
    if (v42)
    {
      v31 = CWFGetOSLog();
    }

    else
    {
      v31 = MEMORY[0x1E69E9C10];
      v45 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_INFO))
    {
      sub_1E0BCC248(v13);
      v53 = v52 = 138412546;
      v54 = 2112;
      v55 = v4;
      _os_log_send_and_compose_impl();
    }

    v30 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  v17 = [v4 knownNetworkProfile];
  v18 = [v17 copy];

  v19 = [v4 password];

  if (v19)
  {
    v20 = [v4 password];
    v21 = [(CWFWiFiUserAgent *)self __updateKeychainPassword:v20 network:v18];

    v22 = !v21;
  }

  else
  {
    v22 = 1;
  }

  v23 = [v4 knownNetworkProfile];
  v24 = [(CWFInterface *)self knownNetworkProfileMatchingNetworkProfile:v23];

  v25 = CWFGetOSLog();
  v26 = v25;
  if (!v24)
  {
    if (v25)
    {
      v27 = CWFGetOSLog();
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v52 = 138543362;
      v53 = v4;
      _os_log_send_and_compose_impl();
    }

    [v18 setAddReason:19];
    v50 = 0;
    v29 = [(CWFInterface *)self addKnownNetworkProfile:v18 error:&v50];
    v30 = v50;
    if (!v29)
    {
      v44 = CWFGetOSLog();
      if (v44)
      {
        v31 = CWFGetOSLog();
      }

      else
      {
        v31 = MEMORY[0x1E69E9C10];
        v47 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_ERROR))
      {
        v48 = [v18 identifier];
        v52 = 138543618;
        v53 = v48;
        v54 = 2114;
        v55 = v30;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_16;
    }

LABEL_12:
    v31 = objc_alloc_init(CWFAutoJoinParameters);
    [(CWFAutoJoinParameters *)v31 setMode:1];
    [(CWFAutoJoinParameters *)v31 setTrigger:64];
    [(CWFAutoJoinParameters *)v31 setTargetNetworkProfile:v18];
    v32 = [v4 channel];
    if (v32)
    {
      [v4 channel];
      v49 = v4;
      v33 = self;
      v34 = v18;
      v35 = v30;
      v36 = v13;
      v37 = v12;
      v39 = v38 = v10;
      v51 = v39;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
      [(CWFAutoJoinParameters *)v31 setPreferredChannels:v40];

      v10 = v38;
      v12 = v37;
      v13 = v36;
      v30 = v35;
      v18 = v34;
      self = v33;
      v4 = v49;
    }

    else
    {
      [(CWFAutoJoinParameters *)v31 setPreferredChannels:0];
    }

    [(CWFInterface *)self performAutoJoinWithParameters:v31 reply:0];
LABEL_16:

    goto LABEL_17;
  }

  if (v25)
  {
    v43 = CWFGetOSLog();
  }

  else
  {
    v43 = MEMORY[0x1E69E9C10];
    v46 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v52 = 138543362;
    v53 = v4;
    _os_log_send_and_compose_impl();
  }

  v30 = 0;
  if ((v22 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_17:

  v41 = *MEMORY[0x1E69E9840];
}

- (void)__receivedNearbyRecommendedNetwork:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [CWFNetworkProfile alloc];
  recentlyRemovedNetworkKVS = self->_recentlyRemovedNetworkKVS;
  v7 = [v4 knownNetworkProfile];
  v8 = [v7 identifier];
  v9 = [(CWFKeyValueStore *)recentlyRemovedNetworkKVS objectForKey:v8];
  v10 = [(CWFNetworkProfile *)v5 initWithExternalForm:v9];

  v11 = [v4 knownNetworkProfile];
  v12 = [v11 addedAt];

  v13 = [(CWFNetworkProfile *)v10 removedAt];
  [v12 timeIntervalSinceReferenceDate];
  v15 = v14;
  [v13 timeIntervalSinceReferenceDate];
  if (v15 <= v16)
  {
    v35 = CWFGetOSLog();
    if (v35)
    {
      v23 = CWFGetOSLog();
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      sub_1E0BCC248(v13);
      v45 = v44 = 138543618;
      v46 = 2114;
      v47 = v4;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    v17 = [v4 knownNetworkProfile];
    v18 = [(CWFInterface *)self knownNetworkProfileMatchingNetworkProfile:v17];

    if (v18)
    {
      v36 = CWFGetOSLog();
      if (v36)
      {
        v23 = CWFGetOSLog();
      }

      else
      {
        v23 = MEMORY[0x1E69E9C10];
        v38 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v44 = 138543362;
        v45 = v4;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v19 = [v4 captivePortalCredentials];

      v42 = v13;
      if (v19)
      {
        v20 = [v4 captivePortalCredentials];
        v21 = [v4 knownNetworkProfile];
        v43 = 0;
        v22 = [(CWFInterface *)self setCaptivePortalCredentials:v20 knownNetworkProfile:v21 error:&v43];
        v23 = v43;

        if (!v22)
        {
          v24 = CWFGetOSLog();
          if (v24)
          {
            v25 = CWFGetOSLog();
          }

          else
          {
            v25 = MEMORY[0x1E69E9C10];
            v39 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v44 = 138543618;
            v45 = v23;
            v46 = 2114;
            v47 = v4;
            LODWORD(v41) = 22;
            v40 = &v44;
            _os_log_send_and_compose_impl();
          }
        }
      }

      else
      {
        v23 = 0;
      }

      v26 = [v4 password];

      if (v26)
      {
        v27 = [v4 password];
        v28 = [v4 knownNetworkProfile];
        [(CWFWiFiUserAgent *)self __updateKeychainPassword:v27 network:v28];
      }

      nearbyRecommendedNetworksKVS = self->_nearbyRecommendedNetworksKVS;
      v30 = [v4 knownNetworkProfile];
      v31 = [v30 externalForm];
      v32 = [v4 knownNetworkProfile];
      v33 = [v32 identifier];
      [(CWFKeyValueStore *)nearbyRecommendedNetworksKVS setObject:v31 forKey:v33];

      [(CWFKeyValueStore *)self->_nearbyRecommendedNetworksKVS synchronize];
      v13 = v42;
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)__purgeExpiredCaptiveNetworkCredentials
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = sub_1E0BF0B7C();
  if (v4)
  {
    if (!self->_captiveCredentialsExpirationTimer)
    {
      v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_internalQueue);
      captiveCredentialsExpirationTimer = self->_captiveCredentialsExpirationTimer;
      self->_captiveCredentialsExpirationTimer = v5;

      v7 = self->_captiveCredentialsExpirationTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_1E0D3614C;
      handler[3] = &unk_1E86E6010;
      handler[4] = self;
      dispatch_source_set_event_handler(v7, handler);
      dispatch_source_set_timer(self->_captiveCredentialsExpirationTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(self->_captiveCredentialsExpirationTimer);
    }

    [v4 timeIntervalSinceNow];
    if (v8 * 1000000000.0 < 9.22337204e18)
    {
      [v4 timeIntervalSinceNow];
      v2 = (v9 * 1000000000.0);
    }

    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = v2 / 0x3B9ACA00;
      _os_log_send_and_compose_impl();
    }

    v13 = self->_captiveCredentialsExpirationTimer;
    v14 = dispatch_walltime(0, v2);
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)__updateNearbyRecommendedNetworksExpirationTimer
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = [(CWFWiFiUserAgent *)self __loadNearbyRecommendedNetworksFromKVS];
  v4 = [v3 mutableCopy];

  if ([v4 count])
  {
    v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B89D30];
    v27[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    [v4 sortUsingDescriptors:v6];

    if (!self->_nearbyRecommendedNetworksExpirationTimer)
    {
      v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_internalQueue);
      nearbyRecommendedNetworksExpirationTimer = self->_nearbyRecommendedNetworksExpirationTimer;
      self->_nearbyRecommendedNetworksExpirationTimer = v7;

      v9 = self->_nearbyRecommendedNetworksExpirationTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_1E0D364FC;
      handler[3] = &unk_1E86E6010;
      handler[4] = self;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_source_set_timer(self->_nearbyRecommendedNetworksExpirationTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(self->_nearbyRecommendedNetworksExpirationTimer);
    }

    v10 = &unk_1E0D81000;
    if (os_variant_has_internal_content())
    {
      if (_os_feature_enabled_impl())
      {
        v11 = 300.0;
      }

      else
      {
        v11 = 604800.0;
      }
    }

    else
    {
      v11 = 604800.0;
    }

    v12 = [v4 lastObject];
    v13 = [v12 receivedFromDeviceAt];
    [v13 timeIntervalSinceNow];
    if ((v11 + v14) * 1000000000.0 < 9.22337204e18)
    {
      v15 = [v4 lastObject];
      v16 = [v15 receivedFromDeviceAt];
      [v16 timeIntervalSinceNow];
      v10 = ((v11 + v17) * 1000000000.0);
    }

    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134217984;
      v26 = v10 / 0x3B9ACA00;
      _os_log_send_and_compose_impl();
    }

    v21 = self->_nearbyRecommendedNetworksExpirationTimer;
    v22 = dispatch_walltime(0, v10);
    dispatch_source_set_timer(v21, v22, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)__purgeExpiredNearbyRecommendedNetworks
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = 604800;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = 300;
    }

    v27 = v3;
  }

  else
  {
    v27 = 604800;
  }

  v4 = [(CWFWiFiUserAgent *)self __loadNearbyRecommendedNetworksFromKVS];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v8 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 receivedFromDeviceAt];
        [v11 timeIntervalSinceNow];
        v13 = v12;
        v14 = [v10 receivedFromDeviceAt];
        [v14 timeIntervalSinceNow];
        v16 = v15;
        if (v13 < 0.0)
        {
          v16 = -v15;
        }

        if (v16 > v27)
        {
          v17 = CWFGetOSLog();
          if (v17)
          {
            v18 = CWFGetOSLog();
          }

          else
          {
            v20 = v8;
            v18 = v8;
          }

          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_26;
          }

          v32 = 134218242;
          v33 = v27;
          v34 = 2114;
          v35 = v10;
          LODWORD(v26) = 22;
          v25 = &v32;
          goto LABEL_25;
        }

        if ([v10 isNearbyRecommendable])
        {
          continue;
        }

        v19 = CWFGetOSLog();
        if (v19)
        {
          v18 = CWFGetOSLog();
        }

        else
        {
          v21 = v8;
          v18 = v8;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 138543362;
          v33 = v10;
          LODWORD(v26) = 12;
          v25 = &v32;
LABEL_25:
          _os_log_send_and_compose_impl();
        }

LABEL_26:

        nearbyRecommendedNetworksKVS = self->_nearbyRecommendedNetworksKVS;
        v23 = [v10 identifier];
        [(CWFKeyValueStore *)nearbyRecommendedNetworksKVS setObject:0 forKey:v23];
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v6);
  }

  [(CWFKeyValueStore *)self->_nearbyRecommendedNetworksKVS synchronize:v25];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)__updateNearbyRecommendedNetworks
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = [(CWFWiFiUserAgent *)self __loadNearbyRecommendedNetworksFromKVS];
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  v4 = v3;
  if (v2)
  {
    [v3 addObjectsFromArray:v2];
  }

  v21 = v2;
  v20 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B899B0];
  v28[0] = v20;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v4 sortUsingDescriptors:v5];

  v6 = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B8C180];
  [v6 addObject:?];
  v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 selector:sel_compareSupportedSecurityTypes_];
  [v6 addObject:?];
  [v4 sortUsingDescriptors:v6];
  v7 = [MEMORY[0x1E695DFA8] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ([v14 isNearbyRecommendable])
        {
          v15 = [v14 SSID];
          if (v15 && ([v7 containsObject:v15] & 1) == 0)
          {
            [v7 addObject:v15];
            if (!v11)
            {
              v11 = [MEMORY[0x1E695DFA0] orderedSet];
            }

            [v11 addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v16 = [v11 array];
  [(CWFWiFiUserAgent *)self setNearbyRecommendedNetworks:v16];

  [(CWFWiFiUserAgent *)self __updateNearbyRecommendedNetworksExpirationTimer];
  v17 = *MEMORY[0x1E69E9840];
}

- (void)__setupNearbySyncManager
{
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0D36DA4;
  v9[3] = &unk_1E86E7160;
  objc_copyWeak(&v10, &location);
  [(CWFNearbySyncManager *)self->_nearbySyncManager setAllowNearbySyncableNetworkHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D36E64;
  v7[3] = &unk_1E86E98B8;
  objc_copyWeak(&v8, &location);
  [(CWFNearbySyncManager *)self->_nearbySyncManager setAutoJoinAssistEventHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0D37194;
  v5[3] = &unk_1E86E98B8;
  objc_copyWeak(&v6, &location);
  [(CWFNearbySyncManager *)self->_nearbySyncManager setRestoredBackhaulEventHandler:v5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E0D3781C;
  v3[3] = &unk_1E86E98E0;
  objc_copyWeak(&v4, &location);
  [(CWFNearbySyncManager *)self->_nearbySyncManager setConfirmBrokenBackhaulHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)__setupCloudSyncManager
{
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E0D37F08;
  v11[3] = &unk_1E86E7160;
  objc_copyWeak(&v12, &location);
  [(CWFCloudSyncManager *)self->_cloudSyncManager setAllowCloudSyncableNetworkHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0D37FC8;
  v9[3] = &unk_1E86E9908;
  objc_copyWeak(&v10, &location);
  [(CWFCloudSyncManager *)self->_cloudSyncManager setRememberLocalNetworkHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D38178;
  v7[3] = &unk_1E86E9908;
  objc_copyWeak(&v8, &location);
  [(CWFCloudSyncManager *)self->_cloudSyncManager setForgetLocalNetworkHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0D382E8;
  v5[3] = &unk_1E86E9930;
  objc_copyWeak(&v6, &location);
  [(CWFCloudSyncManager *)self->_cloudSyncManager setHasKeychainPasswordHandler:v5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E0D38480;
  v3[3] = &unk_1E86E9958;
  objc_copyWeak(&v4, &location);
  [(CWFCloudSyncManager *)self->_cloudSyncManager setFetchAllLocalNetworksHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)__loadNearbyRecommendedNetworksFromKVS
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(CWFKeyValueStore *)self->_nearbyRecommendedNetworksKVS dictionaryRepresentation];
  v3 = [v2 allValues];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [CWFNetworkProfile alloc];
        v12 = [(CWFNetworkProfile *)v11 initWithExternalForm:v10, v15];
        if (v12)
        {
          if (!v7)
          {
            v7 = [MEMORY[0x1E695DF70] array];
          }

          [v7 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (CWFWiFiUserAgent)initWithXPCClient:(id)a3 requestParameters:(id)a4
{
  location[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v59.receiver = self;
  v59.super_class = CWFWiFiUserAgent;
  v8 = [(CWFInterface *)&v59 initWithXPCClient:v6 requestParameters:v7];
  if (!v8)
  {
    goto LABEL_71;
  }

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.corewifi.user-agent", v9);
  internalQueue = v8->_internalQueue;
  v8->_internalQueue = v10;

  if (!v8->_internalQueue)
  {
    goto LABEL_71;
  }

  v12 = [[CWFKeyValueStore alloc] initWithType:2 identifier:@"com.apple.wifi.removed-networks"];
  recentlyRemovedNetworkKVS = v8->_recentlyRemovedNetworkKVS;
  v8->_recentlyRemovedNetworkKVS = v12;

  if (!v8->_recentlyRemovedNetworkKVS)
  {
    goto LABEL_71;
  }

  v14 = [[CWFKeyValueStore alloc] initWithType:2 identifier:@"com.apple.wifi.nearby-recommended-networks"];
  nearbyRecommendedNetworksKVS = v8->_nearbyRecommendedNetworksKVS;
  v8->_nearbyRecommendedNetworksKVS = v14;

  if (!v8->_nearbyRecommendedNetworksKVS)
  {
    goto LABEL_71;
  }

  objc_initWeak(location, v8);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = sub_1E0D38F80;
  v57[3] = &unk_1E86E8C38;
  objc_copyWeak(&v58, location);
  [(CWFKeyValueStore *)v8->_nearbyRecommendedNetworksKVS setEventHandler:v57];
  objc_destroyWeak(&v58);
  objc_destroyWeak(location);
  v16 = CWFGetOSLog();
  if (v16)
  {
    v17 = CWFGetOSLog();
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = _os_feature_enabled_impl();
    v20 = "DISABLED";
    if (v19)
    {
      v20 = "ENABLED";
    }

    LODWORD(location[0]) = 136446210;
    *(location + 4) = v20;
    LODWORD(v56) = 12;
    v55 = location;
    _os_log_send_and_compose_impl();
  }

  v21 = CWFGetOSLog();
  if (v21)
  {
    v22 = CWFGetOSLog();
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = _os_feature_enabled_impl();
    v25 = "DISABLED";
    if (v24)
    {
      v25 = "ENABLED";
    }

    LODWORD(location[0]) = 136446210;
    *(location + 4) = v25;
    LODWORD(v56) = 12;
    v55 = location;
    _os_log_send_and_compose_impl();
  }

  v26 = CWFGetOSLog();
  if (v26)
  {
    v27 = CWFGetOSLog();
  }

  else
  {
    v27 = MEMORY[0x1E69E9C10];
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      v29 = _os_feature_enabled_impl();
      v30 = "ENABLED";
      if (v29)
      {
        v30 = "ENABLED (testable)";
      }
    }

    else
    {
      v30 = "DISABLED";
    }

    LODWORD(location[0]) = 136446210;
    *(location + 4) = v30;
    LODWORD(v56) = 12;
    v55 = location;
    _os_log_send_and_compose_impl();
  }

  v31 = CWFGetOSLog();
  if (v31)
  {
    v32 = CWFGetOSLog();
  }

  else
  {
    v32 = MEMORY[0x1E69E9C10];
    v33 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    if (_os_feature_enabled_impl())
    {
      v34 = "DISABLED";
      if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
      {
        v34 = "ENABLED";
      }
    }

    else
    {
      v34 = "DISABLED";
    }

    LODWORD(location[0]) = 136446210;
    *(location + 4) = v34;
    LODWORD(v56) = 12;
    v55 = location;
    _os_log_send_and_compose_impl();
  }

  v35 = CWFGetOSLog();
  if (v35)
  {
    v36 = CWFGetOSLog();
  }

  else
  {
    v36 = MEMORY[0x1E69E9C10];
    v37 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    if (_os_feature_enabled_impl())
    {
      v38 = "ENABLED";
      if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
      {
        v38 = "ENABLED (testable)";
      }
    }

    else
    {
      v38 = "DISABLED";
    }

    LODWORD(location[0]) = 136446210;
    *(location + 4) = v38;
    LODWORD(v56) = 12;
    v55 = location;
    _os_log_send_and_compose_impl();
  }

  v39 = CWFGetOSLog();
  if (v39)
  {
    v40 = CWFGetOSLog();
  }

  else
  {
    v40 = MEMORY[0x1E69E9C10];
    v41 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v42 = "DISABLED";
    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      v42 = "ENABLED";
    }

    LODWORD(location[0]) = 136446210;
    *(location + 4) = v42;
    LODWORD(v56) = 12;
    v55 = location;
    _os_log_send_and_compose_impl();
  }

  if (_os_feature_enabled_impl())
  {
    v43 = objc_alloc_init(CWFCloudSyncManager);
    cloudSyncManager = v8->_cloudSyncManager;
    v8->_cloudSyncManager = v43;

    if (v8->_cloudSyncManager)
    {
      [(CWFWiFiUserAgent *)v8 __setupCloudSyncManager];
      goto LABEL_63;
    }

LABEL_71:
    [(CWFWiFiUserAgent *)v8 invalidate:v55];
    v52 = v8;
    v8 = 0;
    goto LABEL_69;
  }

LABEL_63:
  if (_os_feature_enabled_impl())
  {
    v45 = objc_alloc_init(CWFNearbySyncManager);
    nearbySyncManager = v8->_nearbySyncManager;
    v8->_nearbySyncManager = v45;

    [(CWFWiFiUserAgent *)v8 __setupNearbySyncManager];
    [(CWFWiFiUserAgent *)v8 __setupEventHandler];
  }

  if (_os_feature_enabled_impl())
  {
    sub_1E0D39094();
    if (objc_opt_class())
    {
      v47 = [objc_alloc(sub_1E0D39094()) initWithBundleIdentifier:@"com.apple.corewifi.usernotifications"];
      [(CWFWiFiUserAgent *)v8 setUserNotificationCenter:v47];

      v48 = [(CWFWiFiUserAgent *)v8 userNotificationCenter];

      if (v48)
      {
        v49 = [(CWFWiFiUserAgent *)v8 userNotificationCenter];
        [v49 setDelegate:v8];

        v50 = [(CWFWiFiUserAgent *)v8 userNotificationCenter];
        [v50 setWantsNotificationResponsesDelivered];

        v51 = [(CWFWiFiUserAgent *)v8 userNotificationCenter];
        [v51 requestAuthorizationWithOptions:7 completionHandler:&unk_1F5B8C1A0];

        v52 = [(CWFWiFiUserAgent *)v8 userNotificationCenter];
        [v52 removeAllDeliveredNotifications];
LABEL_69:
      }
    }
  }

  v53 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)__cancelRecommendedNetworkNotificationTimeout
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D39344;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)__scheduleRecommendedNetworkNotificationTimeout
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D39420;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)__showWiFiNetworkSharingAskToShareNotificationForClientID:(id)a3 network:(id)a4 accessoryDisplayName:(id)a5 completion:(id)a6
{
  v74[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v58 = a5;
  v57 = a6;
  v12 = [(CWFWiFiUserAgent *)self askToShareUserNotificationRequest];

  if (v12)
  {
    v13 = [(CWFWiFiUserAgent *)self userNotificationCenter];
    v14 = [(CWFWiFiUserAgent *)self askToShareUserNotificationRequest];
    v15 = [v14 identifier];
    v74[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
    [v13 removePendingNotificationRequestsWithIdentifiers:v16];

    v17 = [(CWFWiFiUserAgent *)self userNotificationCenter];
    v18 = [(CWFWiFiUserAgent *)self askToShareUserNotificationRequest];
    v19 = [v18 identifier];
    v73 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
    [v17 removeDeliveredNotificationsWithIdentifiers:v20];

    [(CWFWiFiUserAgent *)self setAskToShareUserNotificationRequest:0];
  }

  v21 = [(CWFWiFiUserAgent *)self presentAskToShareUserNotificationCompletionHandler];

  if (v21)
  {
    v22 = [(CWFWiFiUserAgent *)self presentAskToShareUserNotificationCompletionHandler];
    v23 = *MEMORY[0x1E696A798];
    v24 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x59uLL);
    v25 = CWFErrorWithDescription(v23, 89, v24);
    (v22)[2](v22, v25, 0);
  }

  [(CWFWiFiUserAgent *)self setPresentAskToShareUserNotificationCompletionHandler:v57];
  v66 = 0;
  v67 = &v66;
  v68 = 0x2050000000;
  v26 = qword_1ECE86A08;
  v69 = qword_1ECE86A08;
  if (!qword_1ECE86A08)
  {
    location = MEMORY[0x1E69E9820];
    v62 = 3221225472;
    v63 = sub_1E0D3EE4C;
    v64 = &unk_1E86E5600;
    v65 = &v66;
    sub_1E0D3ED08();
    v67[3] = objc_getClass("UNMutableNotificationContent");
    qword_1ECE86A08 = *(v65[1] + 24);
    v26 = v67[3];
  }

  v27 = v26;
  _Block_object_dispose(&v66, 8);
  v28 = objc_alloc_init(v26);
  if (sub_1E0BF1F78())
  {
    v29 = @"kWiFiLocWiFiNetworkSharingUserNoticationTitleCH";
  }

  else
  {
    v29 = @"kWiFiLocWiFiNetworkSharingUserNoticationTitle";
  }

  v30 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:v29 arguments:0];
  [v28 setTitle:v30];

  v31 = MEMORY[0x1E696AEC0];
  v72[0] = v58;
  v32 = [v11 network];
  v33 = [v32 networkName];
  v72[1] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
  v35 = [v31 localizedUserNotificationStringForKey:@"kWiFiLocWiFiNetworkSharingUserNoticationBody" arguments:v34];
  [v28 setBody:v35];

  v66 = 0;
  v67 = &v66;
  v68 = 0x2050000000;
  v36 = qword_1ECE86A10;
  v69 = qword_1ECE86A10;
  if (!qword_1ECE86A10)
  {
    location = MEMORY[0x1E69E9820];
    v62 = 3221225472;
    v63 = sub_1E0D3EEA0;
    v64 = &unk_1E86E5600;
    v65 = &v66;
    sub_1E0D3ED08();
    v67[3] = objc_getClass("UNNotificationSound");
    qword_1ECE86A10 = *(v65[1] + 24);
    v36 = v67[3];
  }

  v37 = v36;
  _Block_object_dispose(&v66, 8);
  v38 = [v36 defaultSound];
  [v28 setSound:v38];

  [v28 setCategoryIdentifier:@"wifinetworksharing.asktoshare"];
  v66 = 0;
  v67 = &v66;
  v68 = 0x2050000000;
  v39 = qword_1ECE86A18;
  v69 = qword_1ECE86A18;
  if (!qword_1ECE86A18)
  {
    location = MEMORY[0x1E69E9820];
    v62 = 3221225472;
    v63 = sub_1E0D3EEF4;
    v64 = &unk_1E86E5600;
    v65 = &v66;
    sub_1E0D3ED08();
    v67[3] = objc_getClass("UNNotificationIcon");
    qword_1ECE86A18 = *(v65[1] + 24);
    v39 = v67[3];
  }

  v40 = v39;
  _Block_object_dispose(&v66, 8);
  v41 = [v10 bundleID];
  v42 = [v39 iconForApplicationIdentifier:v41];
  [v28 setIcon:v42];

  v70[0] = @"ClientID";
  v43 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
  v71[0] = v43;
  v70[1] = @"AskToShareNetwork";
  v44 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
  v71[1] = v44;
  v70[2] = @"AccessoryDisplayName";
  v71[2] = v58;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:3];
  [v28 setUserInfo:v45];

  [v28 setShouldBackgroundDefaultAction:1];
  v46 = MEMORY[0x1E696AEC0];
  v47 = [v10 accessoryID];
  v48 = [v10 bundleID];
  v49 = [v11 network];
  v50 = [v49 wifiNetworkSharingNetworkID];
  v51 = [v46 stringWithFormat:@"%@/%@/%@", v47, v48, v50];

  v66 = 0;
  v67 = &v66;
  v68 = 0x2050000000;
  v52 = qword_1ECE86A20;
  v69 = qword_1ECE86A20;
  if (!qword_1ECE86A20)
  {
    location = MEMORY[0x1E69E9820];
    v62 = 3221225472;
    v63 = sub_1E0D3EF48;
    v64 = &unk_1E86E5600;
    v65 = &v66;
    sub_1E0D3ED08();
    v67[3] = objc_getClass("UNNotificationRequest");
    qword_1ECE86A20 = *(v65[1] + 24);
    v52 = v67[3];
  }

  v53 = v52;
  _Block_object_dispose(&v66, 8);
  v54 = [v52 requestWithIdentifier:v51 content:v28 trigger:0 destinations:5];
  [(CWFWiFiUserAgent *)self setAskToShareUserNotificationRequest:v54];
  objc_initWeak(&location, self);
  v55 = [(CWFWiFiUserAgent *)self userNotificationCenter];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = sub_1E0D3A030;
  v59[3] = &unk_1E86E99A0;
  objc_copyWeak(&v60, &location);
  [v55 addNotificationRequest:v54 withCompletionHandler:v59];

  objc_destroyWeak(&v60);
  objc_destroyWeak(&location);

  v56 = *MEMORY[0x1E69E9840];
}

- (void)__launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:(id)a3 accessoryName:(id)a4 appBundleID:(id)a5 completion:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a6;
  v8 = [MEMORY[0x1E698F478] interfaceWithIdentifier:@"com.apple.AccessorySetupUI.services.presenter"];
  v9 = [MEMORY[0x1E698E718] protocolForProtocol:&unk_1F5BE84C8];
  [v8 setServer:v9];

  v10 = [MEMORY[0x1E698E718] protocolForProtocol:&unk_1F5BE8528];
  [v8 setClient:v10];

  [v8 setClientMessagingExpectation:0];
  v11 = [MEMORY[0x1E698F4A0] endpointForMachName:@"com.apple.AccessorySetupUI" service:@"com.apple.AccessorySetupUI.services.presenter" instance:0];
  if (v11)
  {
    v12 = [MEMORY[0x1E698F488] connectionWithEndpoint:v11];
    v13 = v12;
    if (v12 && ([v12 conformsToProtocol:&unk_1F5BE85D0] & 1) != 0)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1E0D3A69C;
      v31[3] = &unk_1E86E9A10;
      v32 = v8;
      v33 = self;
      [v13 configureConnection:v31];
      v14 = [(CWFWiFiUserAgent *)self launchAngelConnection];
      [v14 invalidate];

      v15 = [(CWFWiFiUserAgent *)self presentAuthorizationProxCardCompletionHandler];

      if (v15)
      {
        v16 = [(CWFWiFiUserAgent *)self presentAuthorizationProxCardCompletionHandler];
        v16[2](v16, 0, 0);
      }

      [(CWFWiFiUserAgent *)self setLaunchAngelConnection:v13];
      [(CWFWiFiUserAgent *)self setPresentAuthorizationProxCardCompletionHandler:v7];
      [v13 activate];
      v17 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
      v34 = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
      v19 = [v13 remoteTargetWithLaunchingAssertionAttributes:v18];

      v20 = v32;
    }

    else
    {
      v21 = CWFGetOSLog();
      if (v21)
      {
        v22 = CWFGetOSLog();
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v35 = 136446722;
        v36 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:accessoryName:appBundleID:completion:]";
        v37 = 2082;
        v38 = "CWFWiFiUserAgent.m";
        v39 = 1024;
        v40 = 1021;
        _os_log_send_and_compose_impl();
      }

      if (!v7)
      {
        goto LABEL_22;
      }

      v26 = *MEMORY[0x1E696A798];
      v20 = CWFErrorDescription(*MEMORY[0x1E696A798], 2uLL);
      v27 = CWFErrorWithDescription(v26, 2, v20);
      v7[2](v7, v27, 0);
    }

LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v23 = CWFGetOSLog();
  if (v23)
  {
    v24 = CWFGetOSLog();
  }

  else
  {
    v24 = MEMORY[0x1E69E9C10];
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v35 = 136446722;
    v36 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:accessoryName:appBundleID:completion:]";
    v37 = 2082;
    v38 = "CWFWiFiUserAgent.m";
    v39 = 1024;
    v40 = 1014;
    _os_log_send_and_compose_impl();
  }

  if (v7)
  {
    v29 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 2uLL);
    v20 = CWFErrorWithDescription(v29, 2, v13);
    v7[2](v7, v20, 0);
    goto LABEL_21;
  }

LABEL_23:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)__launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:(id)a3 accessoryName:(id)a4 appBundleID:(id)a5 completion:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a6;
  v8 = [MEMORY[0x1E698F478] interfaceWithIdentifier:@"com.apple.AccessorySetupUI.services.presenter"];
  v9 = [MEMORY[0x1E698E718] protocolForProtocol:&unk_1F5BE84C8];
  [v8 setServer:v9];

  v10 = [MEMORY[0x1E698E718] protocolForProtocol:&unk_1F5BE8528];
  [v8 setClient:v10];

  [v8 setClientMessagingExpectation:0];
  v11 = [MEMORY[0x1E698F4A0] endpointForMachName:@"com.apple.AccessorySetupUI" service:@"com.apple.AccessorySetupUI.services.presenter" instance:0];
  if (v11)
  {
    v12 = [MEMORY[0x1E698F488] connectionWithEndpoint:v11];
    v13 = v12;
    if (v12 && ([v12 conformsToProtocol:&unk_1F5BE85D0] & 1) != 0)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1E0D3B1B0;
      v31[3] = &unk_1E86E9A10;
      v32 = v8;
      v33 = self;
      [v13 configureConnection:v31];
      v14 = [(CWFWiFiUserAgent *)self launchAngelConnection];
      [v14 invalidate];

      v15 = [(CWFWiFiUserAgent *)self presentAskToShareProxCardCompletionHandler];

      if (v15)
      {
        v16 = [(CWFWiFiUserAgent *)self presentAskToShareProxCardCompletionHandler];
        v16[2](v16, 0, 0, 0);
      }

      [(CWFWiFiUserAgent *)self setLaunchAngelConnection:v13];
      [(CWFWiFiUserAgent *)self setPresentAskToShareProxCardCompletionHandler:v7];
      [v13 activate];
      v17 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
      v34 = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
      v19 = [v13 remoteTargetWithLaunchingAssertionAttributes:v18];

      v20 = v32;
    }

    else
    {
      v21 = CWFGetOSLog();
      if (v21)
      {
        v22 = CWFGetOSLog();
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v35 = 136446722;
        v36 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:accessoryName:appBundleID:completion:]";
        v37 = 2082;
        v38 = "CWFWiFiUserAgent.m";
        v39 = 1024;
        v40 = 1097;
        _os_log_send_and_compose_impl();
      }

      if (!v7)
      {
        goto LABEL_22;
      }

      v26 = *MEMORY[0x1E696A798];
      v20 = CWFErrorDescription(*MEMORY[0x1E696A798], 2uLL);
      v27 = CWFErrorWithDescription(v26, 2, v20);
      (*(v7 + 2))(v7, v27, 0, 0);
    }

LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v23 = CWFGetOSLog();
  if (v23)
  {
    v24 = CWFGetOSLog();
  }

  else
  {
    v24 = MEMORY[0x1E69E9C10];
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v35 = 136446722;
    v36 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:accessoryName:appBundleID:completion:]";
    v37 = 2082;
    v38 = "CWFWiFiUserAgent.m";
    v39 = 1024;
    v40 = 1090;
    _os_log_send_and_compose_impl();
  }

  if (v7)
  {
    v29 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 2uLL);
    v20 = CWFErrorWithDescription(v29, 2, v13);
    (*(v7 + 2))(v7, v20, 0, 0);
    goto LABEL_21;
  }

LABEL_23:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)activate
{
  objc_initWeak(location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1E0D3BD88;
  v24[3] = &unk_1E86E9A38;
  objc_copyWeak(&v25, location);
  [(CWFInterface *)self setRememberCloudNetworkHandler:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1E0D3C0A8;
  v22[3] = &unk_1E86E9A38;
  objc_copyWeak(&v23, location);
  [(CWFInterface *)self setForgetCloudNetworkHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1E0D3C3C8;
  v20[3] = &unk_1E86E9A60;
  objc_copyWeak(&v21, location);
  [(CWFInterface *)self setQueryCloudNetworksHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1E0D3C62C;
  v18[3] = &unk_1E86E9A88;
  objc_copyWeak(&v19, location);
  [(CWFInterface *)self setDumpLogsHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E0D3CA70;
  v16[3] = &unk_1E86E9A60;
  objc_copyWeak(&v17, location);
  [(CWFInterface *)self setQueryNearbyRecommendedNetworksHandler:v16];
  [(CWFInterface *)self setQueryCaptivePortalCredentialsHandler:&unk_1F5B8C1E0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E0D3CDA8;
  v14[3] = &unk_1E86E9AD0;
  objc_copyWeak(&v15, location);
  [(CWFInterface *)self setSetCaptivePortalCredentialsHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E0D3D224;
  v12[3] = &unk_1E86E9AF8;
  objc_copyWeak(&v13, location);
  [(CWFInterface *)self setNearbyConfirmBrokenBackhaulHandler:v12];
  [(CWFInterface *)self setAllowBrokenBackhaulPersonalHotspotFallbackHandler:&unk_1F5B8C200];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0D3D5E8;
  v10[3] = &unk_1E86E8358;
  objc_copyWeak(&v11, location);
  [(CWFInterface *)self setPresentWiFiNetworkSharingAskToShareUserNotificationHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0D3D754;
  v8[3] = &unk_1E86E8308;
  objc_copyWeak(&v9, location);
  [(CWFInterface *)self setPresentWiFiNetworkSharingAskToShareProxCardHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E0D3D934;
  v6[3] = &unk_1E86E82B8;
  objc_copyWeak(&v7, location);
  [(CWFInterface *)self setPresentWiFiNetworkSharingAuthorizationProxCardHandler:v6];
  v5.receiver = self;
  v5.super_class = CWFWiFiUserAgent;
  [(CWFInterface *)&v5 activate];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D3DB14;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(internalQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(location);
}

- (void)invalidate
{
  [(CWFWiFiUserAgent *)self setAllowCloudSyncableNetworkHandler:0];
  [(CWFWiFiUserAgent *)self setAllowNearbySyncableNetworkHandler:0];
  [(CWFWiFiUserAgent *)self setPresentAskToShareProxCardCompletionHandler:0];
  [(CWFWiFiUserAgent *)self setPresentAskToShareUserNotificationCompletionHandler:0];
  [(CWFCloudSyncManager *)self->_cloudSyncManager invalidate];
  [(CWFNearbySyncManager *)self->_nearbySyncManager invalidate];
  [(CWFKeyValueStore *)self->_recentlyRemovedNetworkKVS invalidate];
  [(CWFKeyValueStore *)self->_nearbyRecommendedNetworksKVS invalidate];
  nearbyRecommendedNetworksExpirationTimer = self->_nearbyRecommendedNetworksExpirationTimer;
  if (nearbyRecommendedNetworksExpirationTimer)
  {
    dispatch_source_cancel(nearbyRecommendedNetworksExpirationTimer);
  }

  captiveCredentialsExpirationTimer = self->_captiveCredentialsExpirationTimer;
  if (captiveCredentialsExpirationTimer)
  {
    dispatch_source_cancel(captiveCredentialsExpirationTimer);
  }

  wifiNetworkSharingAskToShareNotificationStatusTimer = self->_wifiNetworkSharingAskToShareNotificationStatusTimer;
  if (wifiNetworkSharingAskToShareNotificationStatusTimer)
  {
    dispatch_source_cancel(wifiNetworkSharingAskToShareNotificationStatusTimer);
  }

  v6 = [(CWFWiFiUserAgent *)self launchAngelConnection];
  [v6 invalidate];

  v7.receiver = self;
  v7.super_class = CWFWiFiUserAgent;
  [(CWFInterface *)&v7 invalidate];
}

- (void)pickerDidPresent
{
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

- (void)pickerDidDismiss:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v90 = *MEMORY[0x1E69E9840];
  v79 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 notification];
  v10 = [v9 request];
  v11 = [v10 content];
  v81 = [v11 categoryIdentifier];

  v12 = CWFGetOSLog();
  if (v12)
  {
    v13 = CWFGetOSLog();
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v7 actionIdentifier];
    *v87 = 138543618;
    *&v87[4] = v81;
    *&v87[12] = 2114;
    *&v87[14] = v15;
    LODWORD(v77) = 22;
    v76 = v87;
    _os_log_send_and_compose_impl();
  }

  if ([v81 isEqualToString:@"wifinetworksharing.asktoshare"])
  {
    [(CWFWiFiUserAgent *)self __cancelRecommendedNetworkNotificationTimeout];
    v16 = MEMORY[0x1E696ACD0];
    v17 = objc_opt_class();
    v18 = [v7 notification];
    v19 = [v18 request];
    v20 = [v19 content];
    v21 = [v20 userInfo];
    v22 = [v21 objectForKeyedSubscript:@"AskToShareNetwork"];
    v78 = [v16 unarchivedObjectOfClass:v17 fromData:v22 error:0];

    v23 = MEMORY[0x1E696ACD0];
    v24 = objc_opt_class();
    v25 = [v7 notification];
    v26 = [v25 request];
    v27 = [v26 content];
    v28 = [v27 userInfo];
    v29 = [v28 objectForKeyedSubscript:@"ClientID"];
    v30 = [v23 unarchivedObjectOfClass:v24 fromData:v29 error:0];

    v31 = [v7 notification];
    v32 = [v31 request];
    v33 = [v32 content];
    v34 = [v33 userInfo];
    v35 = [v34 objectForKeyedSubscript:@"AccessoryDisplayName"];

    v36 = [v7 actionIdentifier];
    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v37 = qword_1ECE86A28;
    v86 = qword_1ECE86A28;
    if (!qword_1ECE86A28)
    {
      *v87 = MEMORY[0x1E69E9820];
      *&v87[8] = 3221225472;
      *&v87[16] = sub_1E0D3EF9C;
      v88 = &unk_1E86E5600;
      v89 = &v83;
      v38 = sub_1E0D3EFEC();
      v39 = dlsym(v38, "UNNotificationSilenceActionIdentifier");
      *(v89[1] + 24) = v39;
      qword_1ECE86A28 = *(v89[1] + 24);
      v37 = v84[3];
    }

    _Block_object_dispose(&v83, 8);
    if (v37)
    {
      v40 = [v36 isEqualToString:*v37];

      if (v40)
      {
        v41 = CWFGetOSLog();
        if (v41)
        {
          v42 = CWFGetOSLog();
        }

        else
        {
          v42 = MEMORY[0x1E69E9C10];
          v57 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [v78 network];
          *v87 = 138543618;
          *&v87[4] = v30;
          *&v87[12] = 2114;
          *&v87[14] = v58;
          LODWORD(v77) = 22;
          v76 = v87;
          _os_log_send_and_compose_impl();
        }

        v59 = [(CWFWiFiUserAgent *)self presentAskToShareUserNotificationCompletionHandler];

        if (v59)
        {
          v60 = [(CWFWiFiUserAgent *)self presentAskToShareUserNotificationCompletionHandler];
          v60[2](v60, 0, 2);
        }

LABEL_30:
        [(CWFWiFiUserAgent *)self setPresentAskToShareUserNotificationCompletionHandler:0, v76, v77];
        [(CWFWiFiUserAgent *)self setAskToShareUserNotificationRequest:0];
LABEL_41:

        goto LABEL_42;
      }

      v43 = [v7 actionIdentifier];
      v83 = 0;
      v84 = &v83;
      v85 = 0x2020000000;
      v44 = qword_1ECE86A30;
      v86 = qword_1ECE86A30;
      if (!qword_1ECE86A30)
      {
        *v87 = MEMORY[0x1E69E9820];
        *&v87[8] = 3221225472;
        *&v87[16] = sub_1E0D3F09C;
        v88 = &unk_1E86E5600;
        v89 = &v83;
        v45 = sub_1E0D3EFEC();
        v46 = dlsym(v45, "UNNotificationDismissActionIdentifier");
        *(v89[1] + 24) = v46;
        qword_1ECE86A30 = *(v89[1] + 24);
        v44 = v84[3];
      }

      _Block_object_dispose(&v83, 8);
      if (v44)
      {
        v47 = [v43 isEqualToString:*v44];

        if (v47)
        {
          v48 = CWFGetOSLog();
          if (v48)
          {
            v49 = CWFGetOSLog();
          }

          else
          {
            v49 = MEMORY[0x1E69E9C10];
            v61 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v62 = [v78 network];
            *v87 = 138543618;
            *&v87[4] = v30;
            *&v87[12] = 2114;
            *&v87[14] = v62;
            LODWORD(v77) = 22;
            v76 = v87;
            _os_log_send_and_compose_impl();
          }

          v63 = [(CWFWiFiUserAgent *)self presentAskToShareUserNotificationCompletionHandler];

          if (v63)
          {
            v64 = [(CWFWiFiUserAgent *)self presentAskToShareUserNotificationCompletionHandler];
            v64[2](v64, 0, 2);
          }

          goto LABEL_30;
        }

        v50 = [v7 actionIdentifier];
        v83 = 0;
        v84 = &v83;
        v85 = 0x2020000000;
        v51 = qword_1ECE86A38;
        v86 = qword_1ECE86A38;
        if (!qword_1ECE86A38)
        {
          *v87 = MEMORY[0x1E69E9820];
          *&v87[8] = 3221225472;
          *&v87[16] = sub_1E0D3F0EC;
          v88 = &unk_1E86E5600;
          v89 = &v83;
          v52 = sub_1E0D3EFEC();
          v53 = dlsym(v52, "UNNotificationDefaultActionIdentifier");
          *(v89[1] + 24) = v53;
          qword_1ECE86A38 = *(v89[1] + 24);
          v51 = v84[3];
        }

        _Block_object_dispose(&v83, 8);
        if (v51)
        {
          v54 = [v50 isEqualToString:*v51];

          if (v54)
          {
            v55 = CWFGetOSLog();
            if (v55)
            {
              v56 = CWFGetOSLog();
            }

            else
            {
              v56 = MEMORY[0x1E69E9C10];
              v65 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              v66 = [v78 network];
              *v87 = 138543618;
              *&v87[4] = v30;
              *&v87[12] = 2114;
              *&v87[14] = v66;
              _os_log_send_and_compose_impl();
            }

            v67 = [v30 accessoryID];
            v68 = [v30 bundleID];
            v82[0] = MEMORY[0x1E69E9820];
            v82[1] = 3221225472;
            v82[2] = sub_1E0D3E9E8;
            v82[3] = &unk_1E86E9618;
            v82[4] = self;
            [(CWFWiFiUserAgent *)self __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:v67 accessoryName:v35 appBundleID:v68 completion:v82];
          }

          goto LABEL_41;
        }

        v74 = [MEMORY[0x1E696AAA8] currentHandler];
        v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getUNNotificationDefaultActionIdentifier(void)"];
        [v74 handleFailureInFunction:v75 file:@"CWFWiFiUserAgent.m" lineNumber:70 description:{@"%s", dlerror()}];
      }

      else
      {
        v72 = [MEMORY[0x1E696AAA8] currentHandler];
        v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getUNNotificationDismissActionIdentifier(void)"];
        [v72 handleFailureInFunction:v73 file:@"CWFWiFiUserAgent.m" lineNumber:68 description:{@"%s", dlerror()}];
      }
    }

    else
    {
      v70 = [MEMORY[0x1E696AAA8] currentHandler];
      v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getUNNotificationSilenceActionIdentifier(void)"];
      [v70 handleFailureInFunction:v71 file:@"CWFWiFiUserAgent.m" lineNumber:69 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

LABEL_42:
  v8[2](v8);

  v69 = *MEMORY[0x1E69E9840];
}

@end