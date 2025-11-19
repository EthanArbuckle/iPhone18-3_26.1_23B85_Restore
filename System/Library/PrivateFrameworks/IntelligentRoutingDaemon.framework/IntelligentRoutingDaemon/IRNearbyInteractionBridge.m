@interface IRNearbyInteractionBridge
- (IRProximityBridgeDelegateProtocol)delegate;
- (double)_nearbyObjectDistance:(id)a3;
- (void)_updateRegionToDelegate:(id)a3;
- (void)invalidate;
- (void)run;
- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 didRemoveNearbyObjects:(id)a4 withReason:(int64_t)a5;
- (void)session:(id)a3 didUpdateNearbyObjects:(id)a4;
- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6;
- (void)sessionDidStartRunning:(id)a3;
- (void)sessionSuspensionEnded:(id)a3;
- (void)sessionWasSuspended:(id)a3;
@end

@implementation IRNearbyInteractionBridge

- (void)invalidate
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_25543D000, a2, OS_LOG_TYPE_DEBUG, "#nearby-interaction-bridge, Invalidate NI session: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  v3 = [(IRNearbyInteractionBridge *)self niSession];

  if (!v3)
  {
    if (self->_isObserver)
    {
      v4 = [MEMORY[0x277CD8A68] observerSession];
    }

    else
    {
      v4 = objc_opt_new();
    }

    v5 = v4;
    [(IRNearbyInteractionBridge *)self setNiSession:v4];

    v6 = [(IRNearbyInteractionBridge *)self niSession];
    [v6 setDelegate:self];
  }

  v7 = [(IRNearbyInteractionBridge *)self niSession];
  [v7 runWithConfiguration:self->_niConfiguration];
}

- (void)sessionWasSuspended:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(IRNearbyInteractionBridge *)self delegate];
  v5 = [(IRNearbyInteractionBridge *)self name];
  [v4 didBridgeSuspendStartedWithName:v5];

  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(IRNearbyInteractionBridge *)self name];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#nearby-interaction-bridge, [%@] sessionWasSuspended", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sessionSuspensionEnded:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(IRNearbyInteractionBridge *)self delegate];
  v5 = [(IRNearbyInteractionBridge *)self name];
  [v4 didBridgeSuspendEndedWithName:v5];

  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(IRNearbyInteractionBridge *)self name];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#nearby-interaction-bridge, [%@] sessionSuspensionEnded", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sessionDidStartRunning:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(IRNearbyInteractionBridge *)self name];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_DEFAULT, "#nearby-interaction-bridge, [%@] sessionDidStartRunning", &v10, 0xCu);
  }

  v7 = [(IRNearbyInteractionBridge *)self delegate];
  v8 = [(IRNearbyInteractionBridge *)self name];
  [v7 didBridgeRunSuccesfully:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = a4;
    v9 = [(IRNearbyInteractionBridge *)self name];
    v10 = [v8 debugDescription];

    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#nearby-interaction-bridge, [%@] session:didInvalidateWithError %@", &v14, 0x16u);
  }

  v11 = [(IRNearbyInteractionBridge *)self delegate];
  v12 = [(IRNearbyInteractionBridge *)self name];
  [v11 didBridgeFail:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (double)_nearbyObjectDistance:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CD8A20];
  [v4 distance];
  if (v5 == v6 || ([v4 distance], v7 < 0.0))
  {
    v8 = 1000.0;
  }

  else
  {
    v10 = [(IRNearbyInteractionBridge *)self binaryRegionThreshold];

    [v4 distance];
    v8 = v11;
    if (v10)
    {
      v12 = [(IRNearbyInteractionBridge *)self binaryRegionThreshold];
      [v12 doubleValue];
      v13 = &kProximityProviderDistanceFar;
      if (v14 >= v8)
      {
        v13 = &kProximityProviderDistanceNear;
      }

      v8 = *v13;
    }
  }

  return v8;
}

- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [IRNearbyDeviceDO alloc];
  [(IRNearbyInteractionBridge *)self _nearbyObjectDistance:v5];
  v8 = v7;
  v9 = [v5 deviceIdentifer];
  v10 = [(IRNearbyInteractionBridge *)self name];
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [(IRNearbyDeviceDO *)v6 initWithRange:v9 idsIdentifier:0 mediaRemoteIdentifier:v10 proximityType:v11 measurementDate:v8];

  [(IRNearbyInteractionBridge *)self _updateRegionToDelegate:v12];
  v13 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
  {
    v15 = v13;
    v16 = [(IRNearbyInteractionBridge *)self name];
    v17 = [v5 deviceIdentifier];
    v18 = 138412802;
    v19 = v16;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v17;
    _os_log_debug_impl(&dword_25543D000, v15, OS_LOG_TYPE_DEBUG, "#nearby-interaction-bridge, [%@] session:didDiscoverNearbyObject: %@, %@", &v18, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([(IRNearbyInteractionBridge *)self trackRegion])
  {
    v12 = [IRNearbyDeviceDO alloc];
    [(IRNearbyInteractionBridge *)self _nearbyObjectDistance:v9];
    v14 = v13;
    v15 = [v9 deviceIdentifer];
    v16 = [(IRNearbyInteractionBridge *)self name];
    v17 = [MEMORY[0x277CBEAA8] now];
    v18 = [(IRNearbyDeviceDO *)v12 initWithRange:v15 idsIdentifier:0 mediaRemoteIdentifier:v16 proximityType:v17 measurementDate:v14];

    [(IRNearbyInteractionBridge *)self _updateRegionToDelegate:v18];
    v19 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [(IRNearbyInteractionBridge *)self name];
      v22 = [v9 deviceIdentifier];
      v24 = 138413314;
      v25 = v21;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v22;
      _os_log_impl(&dword_25543D000, v20, OS_LOG_TYPE_DEFAULT, "#nearby-interaction-bridge, [%@] didUpdateRegion to %@ from %@ for %@ with deviceIdentifier: %@", &v24, 0x34u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 didUpdateNearbyObjects:(id)a4
{
  v5 = a4;
  if ([(IRNearbyInteractionBridge *)self trackUpdates])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__IRNearbyInteractionBridge_session_didUpdateNearbyObjects___block_invoke;
    v6[3] = &unk_2797E1010;
    v6[4] = self;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

void __60__IRNearbyInteractionBridge_session_didUpdateNearbyObjects___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [IRNearbyDeviceDO alloc];
  [*(a1 + 32) _nearbyObjectDistance:v3];
  v6 = v5;
  v7 = [v3 deviceIdentifer];
  v8 = [*(a1 + 32) name];
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = [(IRNearbyDeviceDO *)v4 initWithRange:v7 idsIdentifier:0 mediaRemoteIdentifier:v8 proximityType:v9 measurementDate:v6];

  v11 = [*(a1 + 32) delegate];
  v12 = [*(a1 + 32) name];
  [v11 didUpdateNearbyDevice:v10 withName:v12];

  v13 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    v16 = v13;
    v17 = [v15 name];
    v18 = MEMORY[0x277CCABB0];
    [(IRNearbyDeviceDO *)v10 range];
    v19 = [v18 numberWithDouble:?];
    v20 = 138412802;
    v21 = v17;
    v22 = 2112;
    v23 = v3;
    v24 = 2112;
    v25 = v19;
    _os_log_debug_impl(&dword_25543D000, v16, OS_LOG_TYPE_DEBUG, "#nearby-interaction-bridge, [%@] didUpdateNearbyObject to %@ , distance = %@", &v20, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 didRemoveNearbyObjects:(id)a4 withReason:(int64_t)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__IRNearbyInteractionBridge_session_didRemoveNearbyObjects_withReason___block_invoke;
  v5[3] = &unk_2797E1010;
  v5[4] = self;
  [a4 enumerateObjectsUsingBlock:v5];
}

void __71__IRNearbyInteractionBridge_session_didRemoveNearbyObjects_withReason___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [IRNearbyDeviceDO alloc];
  v5 = [v3 deviceIdentifer];
  v6 = [*(a1 + 32) name];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [(IRNearbyDeviceDO *)v4 initWithRange:v5 idsIdentifier:0 mediaRemoteIdentifier:v6 proximityType:v7 measurementDate:1000.0];

  v9 = [*(a1 + 32) delegate];
  v10 = [*(a1 + 32) name];
  [v9 didRemoveDevice:v8 withName:v10];

  v11 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = v11;
    v14 = [v12 name];
    v15 = MEMORY[0x277CCABB0];
    [(IRNearbyDeviceDO *)v8 range];
    v16 = [v15 numberWithDouble:?];
    v18 = 138412802;
    v19 = v14;
    v20 = 2112;
    v21 = v3;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&dword_25543D000, v13, OS_LOG_TYPE_DEFAULT, "#nearby-interaction-bridge, [%@] didRemoveDevice to %@ , distance = %@", &v18, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateRegionToDelegate:(id)a3
{
  v12 = a3;
  v4 = [(IRNearbyInteractionBridge *)self delegate];
  if (v4)
  {
    [v12 range];
    v6 = v5;
    v7 = +[IRPreferences shared];
    v8 = [v7 nearbyDeviceRegionThreshold];
    [v8 doubleValue];
    v10 = v9;

    v11 = [(IRNearbyInteractionBridge *)self name];
    if (v6 >= v10)
    {
      [v4 didRemoveDevice:v12 withName:v11];
    }

    else
    {
      [v4 didUpdateNearbyDevice:v12 withName:v11];
    }
  }
}

- (IRProximityBridgeDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end