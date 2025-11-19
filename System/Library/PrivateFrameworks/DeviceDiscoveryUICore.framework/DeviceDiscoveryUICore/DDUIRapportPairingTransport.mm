@interface DDUIRapportPairingTransport
@end

@implementation DDUIRapportPairingTransport

void __66___DDUIRapportPairingTransport_setAvailableDevicesChangedHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained availableDevices];
    (*(v3 + 16))(v3, v4);

    WeakRetained = v5;
  }
}

void __66___DDUIRapportPairingTransport_setAvailableDevicesChangedHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained availableDevices];
    (*(v3 + 16))(v3, v4);

    WeakRetained = v5;
  }
}

void __70___DDUIRapportPairingTransport_activateForDeviceTypes_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport activated {self: %p, inError: %@}", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void __74___DDUIRapportPairingTransport__setupListeningForResponseMessagesIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = [v6 objectForKeyedSubscript:@"info"];
    v10 = [v6 objectForKeyedSubscript:@"sesID"];
    v11 = [v6 objectForKeyedSubscript:@"msgID"];
    v12 = [WeakRetained[5] objectForKey:v10];
    v13 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134218498;
        v17 = WeakRetained;
        v18 = 2112;
        v19 = v11;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_230EF9000, v14, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport - incoming ResponderMessage w/ session {self: %p, messageID: %@, inRequest: %@}", &v16, 0x20u);
      }

      (*(v7 + 2))(v7, 0, 0, 0);
      [v12 handleIncomingMessage:v9 withMessageID:v11];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 134218498;
        v17 = WeakRetained;
        v18 = 2112;
        v19 = v11;
        v20 = 2112;
        v21 = v6;
        _os_log_error_impl(&dword_230EF9000, v14, OS_LOG_TYPE_ERROR, "_DDUIRapportPairingTransport - incoming ResponderMessage w/o session {self: %p, messageID: %@, inRequest: %@}", &v16, 0x20u);
      }

      (*(v7 + 2))(v7, 0, 0, 0);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __69___DDUIRapportPairingTransport_setupListeningForSessionsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = [v7 objectForKeyedSubscript:@"info"];
    v12 = [v7 objectForKeyedSubscript:@"sesID"];
    v13 = [v7 objectForKeyedSubscript:@"msgID"];
    if (v12)
    {
      (*(v9 + 2))(v9, 0, 0, 0);
      v14 = [WeakRetained[5] objectForKey:v12];
      v15 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        if (v16)
        {
          v17 = *(a1 + 32);
          v24 = 134218498;
          v25 = v17;
          v26 = 2112;
          v27 = v13;
          v28 = 2112;
          v29 = v7;
          _os_log_impl(&dword_230EF9000, v15, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport - incoming InitiatorMessage w/ session {self: %p, messageID: %@, inRequest: %@}", &v24, 0x20u);
        }

        v18 = [(_DDUIRapportIncomingTransportSession *)v14 messageHandler];

        if (v18)
        {
          v19 = [(_DDUIRapportIncomingTransportSession *)v14 messageHandler];
          (v19)[2](v19, v11);
        }
      }

      else
      {
        if (v16)
        {
          v22 = *(a1 + 32);
          v24 = 134218498;
          v25 = v22;
          v26 = 2112;
          v27 = v13;
          v28 = 2112;
          v29 = v7;
          _os_log_impl(&dword_230EF9000, v15, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport - incoming InitiatorMessage w/o session {self: %p, messageID: %@, inRequest: %@}", &v24, 0x20u);
        }

        v14 = [[_DDUIRapportIncomingTransportSession alloc] initWithOptions:v8];
        [(_DDUIRapportIncomingTransportSession *)v14 setSessionID:v12];
        [(_DDUIRapportIncomingTransportSession *)v14 setClient:WeakRetained[3]];
        [(_DDUIRapportIncomingTransportSession *)v14 setSessionType:0];
        [WeakRetained[5] setObject:v14 forKey:v12];
        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      v20 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 32);
        v24 = 134218498;
        v25 = v21;
        v26 = 2112;
        v27 = v13;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_230EF9000, v20, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport - incoming InitiatorMessage missing sessionID, ignoring {self: %p, messageID: %@, inRequest: %@}", &v24, 0x20u);
      }

      (*(v9 + 2))(v9, 0, 0, 0);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __69___DDUIRapportPairingTransport_setupListeningForSessionsWithHandler___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"sesID"];
  v8 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v12 = 134218498;
    v13 = v9;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport - incoming continuity camera InitiatorMessage w/o session {self: %p, sessionID: %@, inRequest: %@}", &v12, 0x20u);
  }

  v10 = [[_DDUIRapportIncomingTransportSession alloc] initWithOptions:v6];
  [(_DDUIRapportIncomingTransportSession *)v10 setSessionID:v7];
  [(_DDUIRapportIncomingTransportSession *)v10 setClient:*(*(a1 + 32) + 24)];
  [(_DDUIRapportIncomingTransportSession *)v10 setSessionType:1];
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __91___DDUIRapportPairingTransport_shouldReauthenticateDevice_forServiceIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __91___DDUIRapportPairingTransport_shouldReauthenticateDevice_forServiceIdentifier_completion___block_invoke_cold_1(v6, v7);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __95___DDUIRapportPairingTransport_createListenerMappingForDevice_forServiceIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __95___DDUIRapportPairingTransport_createListenerMappingForDevice_forServiceIdentifier_completion___block_invoke_cold_1(v6, v7);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __91___DDUIRapportPairingTransport_shouldReauthenticateDevice_forServiceIdentifier_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_230EF9000, a2, OS_LOG_TYPE_ERROR, "Could not query listener mapping with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __95___DDUIRapportPairingTransport_createListenerMappingForDevice_forServiceIdentifier_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_230EF9000, a2, OS_LOG_TYPE_ERROR, "Could not create device listener mapping with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end