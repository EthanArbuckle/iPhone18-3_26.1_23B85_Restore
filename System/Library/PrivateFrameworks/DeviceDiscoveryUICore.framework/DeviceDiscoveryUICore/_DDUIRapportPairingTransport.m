@interface _DDUIRapportPairingTransport
- (NSArray)availableDevices;
- (_DDUIRapportPairingTransport)initWithMode:(unint64_t)a3;
- (_DDUIRapportPairingTransport)initWithMode:(unint64_t)a3 companionLinkClient:(id)a4;
- (id)sessionForDevice:(id)a3 bundleID:(id)a4 serviceIdentifier:(id)a5 error:(id *)a6;
- (void)_setupListeningForResponseMessagesIfNeeded;
- (void)activateForDeviceTypes:(unsigned int)a3 withCompletion:(id)a4;
- (void)createListenerMappingForDevice:(id)a3 forServiceIdentifier:(id)a4 completion:(id)a5;
- (void)invalidate;
- (void)setAvailableDevicesChangedHandler:(id)a3;
- (void)setupListeningForSessionsWithHandler:(id)a3;
- (void)shouldReauthenticateDevice:(id)a3 forServiceIdentifier:(id)a4 completion:(id)a5;
@end

@implementation _DDUIRapportPairingTransport

- (_DDUIRapportPairingTransport)initWithMode:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277D44160]);
  v6 = [(_DDUIRapportPairingTransport *)self initWithMode:a3 companionLinkClient:v5];

  return v6;
}

- (_DDUIRapportPairingTransport)initWithMode:(unint64_t)a3 companionLinkClient:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v19.receiver = self;
  v19.super_class = _DDUIRapportPairingTransport;
  v8 = [(_DDUIRapportPairingTransport *)&v19 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D44150]);
    rpClient = v8->_rpClient;
    v8->_rpClient = v9;

    objc_storeStrong(&v8->_client, a4);
    v11 = DDUICorePrimaryQueue();
    [(RPCompanionLinkClient *)v8->_client setDispatchQueue:v11];

    if (a3)
    {
      v12 = 0;
    }

    else
    {
      v12 = 4231174;
    }

    if (_os_feature_enabled_impl())
    {
      v13 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_230EF9000, v13, OS_LOG_TYPE_DEFAULT, "Starting discovery with AWDL enabled", buf, 2u);
      }
    }

    else
    {
      v12 |= 0x400000uLL;
    }

    [(RPCompanionLinkClient *)v8->_client setControlFlags:v12];
    v14 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    transportSessionByUUID = v8->_transportSessionByUUID;
    v8->_transportSessionByUUID = v14;

    v16 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = v8;
      _os_log_impl(&dword_230EF9000, v16, OS_LOG_TYPE_DEFAULT, "[_DDUIRapportPairingTransport init] {self: %p}", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NSArray)availableDevices
{
  v114 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v85 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v91 = self;
  v4 = [(RPCompanionLinkClient *)self->_client activeDevices];
  v5 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v113 = v4;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "Finding available devices among %@", buf, 0xCu);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v104 objects:v111 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v105;
    do
    {
      v9 = 0;
      do
      {
        if (*v105 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v104 + 1) + 8 * v9);
        v11 = [v10 model];
        v12 = v91->_wantedDeviceTypes & DDUIDeviceTypeForModelString(v11);

        if (v12)
        {
          v13 = [v10 sourceVersion];
          if ([v13 length])
          {
            v14 = [v10 sourceVersion];
            v15 = [v14 integerValue];

            if (v15 < 400)
            {
              goto LABEL_34;
            }

            v16 = [v10 idsDeviceIdentifier];
            v17 = v89;
            if (v16)
            {
              v17 = [v10 idsDeviceIdentifier];
              if ([v85 containsObject:v17])
              {
                v89 = v17;

                goto LABEL_14;
              }
            }

            v26 = [v10 idsDeviceIdentifier];
            v89 = v17;
            if (v26)
            {

LABEL_26:
              if (v16)
              {
              }
            }

            else
            {
              v29 = [v10 identifier];
              if (!v29)
              {
                goto LABEL_26;
              }

              v30 = v29;
              v31 = [v10 identifier];
              v32 = [v85 containsObject:v31];

              if (v16)
              {

                if ((v32 & 1) == 0)
                {
                  goto LABEL_28;
                }
              }

              else if (!v32)
              {
                goto LABEL_28;
              }

LABEL_14:
              if (([v10 statusFlags] & 4) == 0)
              {
                goto LABEL_34;
              }

              if ([v3 count])
              {
                v18 = 0;
                while (1)
                {
                  v19 = [v3 objectAtIndexedSubscript:v18];
                  v20 = [v19 idsDeviceIdentifier];
                  v21 = [v10 idsDeviceIdentifier];
                  if (!v21)
                  {
                    break;
                  }

                  v22 = v21;
                  v23 = [v20 isEqual:v21];

                  if (v23)
                  {
                    goto LABEL_19;
                  }

LABEL_20:
                  if (++v18 >= [v3 count])
                  {
                    goto LABEL_28;
                  }
                }

                v24 = [v10 identifier];
                v25 = [v20 isEqual:v24];

                if ((v25 & 1) == 0)
                {
                  goto LABEL_20;
                }

LABEL_19:
                [v3 removeObjectAtIndex:v18--];
                goto LABEL_20;
              }
            }

LABEL_28:
            v27 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v113 = v10;
              _os_log_impl(&dword_230EF9000, v27, OS_LOG_TYPE_DEFAULT, "Found acceptable device %@", buf, 0xCu);
            }

            [v3 addObject:v10];
            v13 = [v10 idsDeviceIdentifier];
            if (v13)
            {
              [v85 addObject:v13];
            }

            else
            {
              v28 = [v10 identifier];
              [v85 addObject:v28];
            }
          }
        }

LABEL_34:
        ++v9;
      }

      while (v9 != v7);
      v33 = [obj countByEnumeratingWithState:&v104 objects:v111 count:16];
      v7 = v33;
    }

    while (v33);
  }

  v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v35 = [(_DDUIRapportPairingTransport *)v91 previousAvailableDevices];
  v36 = [v35 countByEnumeratingWithState:&v100 objects:v110 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v101;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v101 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v100 + 1) + 8 * i);
        v41 = [v40 idsDeviceIdentifier];
        if (v41)
        {
          [v34 addObject:v41];
        }

        else
        {
          v42 = [v40 identifier];
          [v34 addObject:v42];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v100 objects:v110 count:16];
    }

    while (v37);
  }

  v90 = [v85 mutableCopy];
  [v90 minusSet:v34];
  v43 = [v34 mutableCopy];
  [v43 minusSet:v85];
  v83 = v34;
  v86 = [v34 mutableCopy];
  [v86 unionSet:v85];
  v44 = [(_DDUIRapportPairingTransport *)v91 previousAvailableDevices];
  v45 = [v44 mutableCopy];
  v46 = v45;
  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = [MEMORY[0x277CBEB18] array];
  }

  v48 = v47;

  if ([v48 count])
  {
    v49 = 0;
    do
    {
      v50 = [v48 objectAtIndexedSubscript:v49];
      v51 = [v50 idsDeviceIdentifier];
      v52 = v51;
      if (v51)
      {
        v53 = v51;
      }

      else
      {
        v53 = [v50 identifier];
      }

      v54 = v53;

      if ([v43 containsObject:v54])
      {
        [v48 removeObjectAtIndex:v49--];
      }

      ++v49;
    }

    while (v49 < [v48 count]);
  }

  v82 = v43;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  subsystem = v3;
  v55 = [subsystem countByEnumeratingWithState:&v96 objects:v109 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v97;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v97 != v57)
        {
          objc_enumerationMutation(subsystem);
        }

        v59 = *(*(&v96 + 1) + 8 * j);
        v60 = [v59 idsDeviceIdentifier];
        if (v60)
        {
          v61 = v60;
          v62 = [v90 containsObject:v60];

          if (v62)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v63 = [v59 identifier];
          v64 = [v90 containsObject:v63];

          if (v64)
          {
LABEL_71:
            [v48 addObject:v59];
            continue;
          }
        }

        v65 = [v59 idsDeviceIdentifier];
        v66 = [v86 containsObject:v65];

        if (v66 && [v48 count])
        {
          v67 = 0;
          while (1)
          {
            v68 = [v59 idsDeviceIdentifier];
            v69 = [v48 objectAtIndexedSubscript:v67];
            v70 = [v69 idsDeviceIdentifier];
            v71 = [v68 isEqual:v70];

            if (v71)
            {
              break;
            }

            if (++v67 >= [v48 count])
            {
              goto LABEL_80;
            }
          }

          [v48 replaceObjectAtIndex:v67 withObject:v59];
        }

LABEL_80:
        ;
      }

      v56 = [subsystem countByEnumeratingWithState:&v96 objects:v109 count:16];
    }

    while (v56);
  }

  v72 = [v48 copy];
  objc_autoreleasePoolPop(context);
  [(_DDUIRapportPairingTransport *)v91 setPreviousAvailableDevices:v72];
  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v74 = v72;
  v75 = [v74 countByEnumeratingWithState:&v92 objects:v108 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v93;
    do
    {
      for (k = 0; k != v76; ++k)
      {
        if (*v93 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v79 = [[_DDUIRapportDevice alloc] initWithRPCompanionLinkDevice:*(*(&v92 + 1) + 8 * k)];
        [v73 addObject:v79];
      }

      v76 = [v74 countByEnumeratingWithState:&v92 objects:v108 count:16];
    }

    while (v76);
  }

  v80 = *MEMORY[0x277D85DE8];

  return v73;
}

- (void)invalidate
{
  [(RPCompanionLinkClient *)self->_client invalidate];
  client = self->_client;
  self->_client = 0;
}

- (void)setAvailableDevicesChangedHandler:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_availableDevicesChangedHandler != v4)
  {
    v5 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _Block_copy(v4);
      *buf = 134218242;
      v18 = self;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport set devices changed handler {self: %p, availableDevicesChangedHandler: %@}", buf, 0x16u);
    }

    v7 = _Block_copy(v4);
    availableDevicesChangedHandler = self->_availableDevicesChangedHandler;
    self->_availableDevicesChangedHandler = v7;

    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66___DDUIRapportPairingTransport_setAvailableDevicesChangedHandler___block_invoke;
    v14[3] = &unk_2788F5958;
    objc_copyWeak(&v16, buf);
    v9 = v4;
    v15 = v9;
    [(RPCompanionLinkClient *)self->_client setDeviceFoundHandler:v14];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66___DDUIRapportPairingTransport_setAvailableDevicesChangedHandler___block_invoke_2;
    v11[3] = &unk_2788F5958;
    objc_copyWeak(&v13, buf);
    v12 = v9;
    [(RPCompanionLinkClient *)self->_client setDeviceLostHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)sessionForDevice:(id)a3 bundleID:(id)a4 serviceIdentifier:(id)a5 error:(id *)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 134218498;
    v32 = self;
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_230EF9000, v12, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport creating transport session {self: %p, device: %@, serviceIdentifier %@}", &v31, 0x20u);
  }

  v13 = [[_DDUIRapportOutgoingTransportSession alloc] initWithServiceIdentifier:v10];
  v14 = objc_alloc_init(MEMORY[0x277D44170]);
  v15 = [v9 identifier];
  [v14 setIdentifier:v15];

  v16 = objc_alloc_init(MEMORY[0x277D44160]);
  [(_DDUIRapportOutgoingTransportSession *)v13 setClient:v16];

  v17 = DDUICorePrimaryQueue();
  v18 = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [v18 setDispatchQueue:v17];

  v19 = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [v19 setServiceType:@"com.apple.devicediscoveryui.rapportwake"];

  v20 = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [v20 setDestinationDevice:v14];

  v21 = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [v21 setUseCase:327680];

  v22 = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [v22 setBleClientUseCase:327680];

  v23 = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [v23 setAppID:v11];

  if (_os_feature_enabled_impl())
  {
    v24 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_230EF9000, v24, OS_LOG_TYPE_DEFAULT, "Creating session with AWDL enabled", &v31, 2u);
    }

    v25 = 262;
  }

  else
  {
    v25 = 4194566;
  }

  v26 = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [v26 setControlFlags:{objc_msgSend(v26, "controlFlags") | v25}];

  transportSessionByUUID = self->_transportSessionByUUID;
  v28 = [(_DDUIRapportOutgoingTransportSession *)v13 sessionID];
  [(NSMapTable *)transportSessionByUUID setObject:v13 forKey:v28];

  [(_DDUIRapportPairingTransport *)self _setupListeningForResponseMessagesIfNeeded];
  v29 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)activateForDeviceTypes:(unsigned int)a3 withCompletion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = DDUIDeviceTypeString(a3);
    v9 = _Block_copy(v6);
    *buf = 134218498;
    v16 = self;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_230EF9000, v7, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport activating {self: %p, deviceTypes: %@, completion: %@}", buf, 0x20u);
  }

  self->_wantedDeviceTypes = a3;
  client = self->_client;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70___DDUIRapportPairingTransport_activateForDeviceTypes_withCompletion___block_invoke;
  v13[3] = &unk_2788F5980;
  v13[4] = self;
  v14 = v6;
  v11 = v6;
  [(RPCompanionLinkClient *)client activateWithCompletion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setupListeningForResponseMessagesIfNeeded
{
  if (!self->_listeningForResponses)
  {
    self->_listeningForResponses = 1;
    objc_initWeak(&location, self);
    client = self->_client;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __74___DDUIRapportPairingTransport__setupListeningForResponseMessagesIfNeeded__block_invoke;
    v4[3] = &unk_2788F59A8;
    objc_copyWeak(&v5, &location);
    [(RPCompanionLinkClient *)client registerRequestID:@"DDUI-pair-resp" options:0 handler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)setupListeningForSessionsWithHandler:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _Block_copy(v4);
    *buf = 134218242;
    v19 = self;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport setup listening {self: %p, incomingSessionHandler: %@}", buf, 0x16u);
  }

  client = self->_client;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69___DDUIRapportPairingTransport_setupListeningForSessionsWithHandler___block_invoke;
  v14[3] = &unk_2788F59D0;
  objc_copyWeak(&v16, &location);
  v14[4] = self;
  v8 = v4;
  v15 = v8;
  [(RPCompanionLinkClient *)client registerRequestID:@"DDUI-pair-init" options:0 handler:v14];
  v9 = self->_client;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69___DDUIRapportPairingTransport_setupListeningForSessionsWithHandler___block_invoke_33;
  v12[3] = &unk_2788F59F8;
  v12[4] = self;
  v10 = v8;
  v13 = v10;
  [(RPCompanionLinkClient *)v9 registerRequestID:@"_ccConfirmStart" options:0 handler:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)shouldReauthenticateDevice:(id)a3 forServiceIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_DDUIRapportPairingTransport *)self rpClient];
  v12 = [v10 identifier];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91___DDUIRapportPairingTransport_shouldReauthenticateDevice_forServiceIdentifier_completion___block_invoke;
  v14[3] = &unk_2788F5A20;
  v15 = v8;
  v13 = v8;
  [v11 queryDeviceToListenerMapping:v9 deviceID:v12 completion:v14];
}

- (void)createListenerMappingForDevice:(id)a3 forServiceIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_DDUIRapportPairingTransport *)self rpClient];
  v12 = [v10 identifier];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95___DDUIRapportPairingTransport_createListenerMappingForDevice_forServiceIdentifier_completion___block_invoke;
  v14[3] = &unk_2788F5A20;
  v15 = v8;
  v13 = v8;
  [v11 createDeviceToListenerMapping:v9 deviceID:v12 completion:v14];
}

@end