@interface GKNearbyDevice
+ (id)nearbyDeviceWithID:(id)d;
- (void)sendDictionary:(id)dictionary withCompletionHandler:(id)handler;
@end

@implementation GKNearbyDevice

+ (id)nearbyDeviceWithID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(self);
  [v5 setDeviceID:dCopy];

  [v5 setState:0];
  [v5 setUsePeerDiscovery:0];

  return v5;
}

- (void)sendDictionary:(id)dictionary withCompletionHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "GKMatchMaker+Nearby: sendDictionary:", buf, 2u);
  }

  v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dictionaryCopy];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v10 setObject:uUIDString forKeyedSubscript:@"UUID"];

  v13 = +[GKLocalPlayer localPlayer];
  internal = [v13 internal];
  playerID = [internal playerID];

  if (playerID)
  {
    [v10 setObject:playerID forKey:@"playerID"];
  }

  deviceID = [(GKNearbyDevice *)self deviceID];
  v37 = 0;
  v17 = [MEMORY[0x277CCAC58] dataWithPropertyList:v10 format:200 options:0 error:&v37];
  v18 = v37;
  if (!v17)
  {
    if (!os_log_GKGeneral)
    {
      v29 = GKOSLoggers();
    }

    v30 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [(GKNearbyDevice *)v30 sendDictionary:dictionaryCopy withCompletionHandler:v18];
      if (!handlerCopy)
      {
        goto LABEL_22;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_22;
    }

    handlerCopy[2](handlerCopy, v18);
    goto LABEL_22;
  }

  if (!os_log_GKGeneral)
  {
    v19 = GKOSLoggers();
  }

  v20 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v20, OS_LOG_TYPE_INFO, "GKMatchMaker+Nearby: sendDictionary: Sending Dictionary to device", buf, 2u);
  }

  v32 = v18;
  if (!os_log_GKGeneral)
  {
    v21 = GKOSLoggers();
  }

  v22 = handlerCopy;
  v23 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v24 = v23;
    v25 = [GKMatchmaker descriptionForNearbyDictionary:dictionaryCopy];
    *buf = 138412546;
    v39 = v25;
    v40 = 2112;
    v41 = deviceID;
    _os_log_impl(&dword_227904000, v24, OS_LOG_TYPE_INFO, "Sending dictionary %@ to deviceID: %@", buf, 0x16u);
  }

  v26 = +[GKDaemonProxy proxyForLocalPlayer];
  multiplayerService = [v26 multiplayerService];
  usePeerDiscovery = [(GKNearbyDevice *)self usePeerDiscovery];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __55__GKNearbyDevice_sendDictionary_withCompletionHandler___block_invoke;
  v33[3] = &unk_2785DDC60;
  v34 = dictionaryCopy;
  v35 = deviceID;
  v36 = v22;
  [multiplayerService sendDataToParticipant:0 deviceID:v35 data:v17 usePeerDiscovery:usePeerDiscovery handler:v33];

  handlerCopy = v22;
  v18 = v32;
LABEL_22:

  v31 = *MEMORY[0x277D85DE8];
}

void __55__GKNearbyDevice_sendDictionary_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "GKMatchMaker+Nearby: sendDictionary: sendDataToParticipant", v9, 2u);
  }

  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __55__GKNearbyDevice_sendDictionary_withCompletionHandler___block_invoke_cold_1(a1, v7, v3);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)sendDictionary:(uint64_t)a3 withCompletionHandler:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [GKMatchmaker descriptionForNearbyDictionary:a2];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a3;
  _os_log_error_impl(&dword_227904000, v5, OS_LOG_TYPE_ERROR, "GKMatchMaker+Nearby:sendDictionary: Error creating query data for dictionary: %@, error = %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __55__GKNearbyDevice_sendDictionary_withCompletionHandler___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [GKMatchmaker descriptionForNearbyDictionary:v5];
  v8 = *(a1 + 40);
  v10 = 138412802;
  v11 = v7;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = a3;
  _os_log_error_impl(&dword_227904000, v6, OS_LOG_TYPE_ERROR, "Error sending dictionary %@ to deviceID: %@, error = %@", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

@end