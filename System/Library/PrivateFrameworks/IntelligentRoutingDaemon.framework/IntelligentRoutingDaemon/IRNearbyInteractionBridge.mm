@interface IRNearbyInteractionBridge
- (IRProximityBridgeDelegateProtocol)delegate;
- (double)_nearbyObjectDistance:(id)distance;
- (void)_updateRegionToDelegate:(id)delegate;
- (void)invalidate;
- (void)run;
- (void)session:(id)session didDiscoverNearbyObject:(id)object;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason;
- (void)session:(id)session didUpdateNearbyObjects:(id)objects;
- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)sessionDidStartRunning:(id)running;
- (void)sessionSuspensionEnded:(id)ended;
- (void)sessionWasSuspended:(id)suspended;
@end

@implementation IRNearbyInteractionBridge

- (void)invalidate
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(self + 24);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_25543D000, a2, OS_LOG_TYPE_DEBUG, "#nearby-interaction-bridge, Invalidate NI session: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  niSession = [(IRNearbyInteractionBridge *)self niSession];

  if (!niSession)
  {
    if (self->_isObserver)
    {
      observerSession = [MEMORY[0x277CD8A68] observerSession];
    }

    else
    {
      observerSession = objc_opt_new();
    }

    v5 = observerSession;
    [(IRNearbyInteractionBridge *)self setNiSession:observerSession];

    niSession2 = [(IRNearbyInteractionBridge *)self niSession];
    [niSession2 setDelegate:self];
  }

  niSession3 = [(IRNearbyInteractionBridge *)self niSession];
  [niSession3 runWithConfiguration:self->_niConfiguration];
}

- (void)sessionWasSuspended:(id)suspended
{
  v12 = *MEMORY[0x277D85DE8];
  delegate = [(IRNearbyInteractionBridge *)self delegate];
  name = [(IRNearbyInteractionBridge *)self name];
  [delegate didBridgeSuspendStartedWithName:name];

  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    name2 = [(IRNearbyInteractionBridge *)self name];
    v10 = 138412290;
    v11 = name2;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#nearby-interaction-bridge, [%@] sessionWasSuspended", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sessionSuspensionEnded:(id)ended
{
  v12 = *MEMORY[0x277D85DE8];
  delegate = [(IRNearbyInteractionBridge *)self delegate];
  name = [(IRNearbyInteractionBridge *)self name];
  [delegate didBridgeSuspendEndedWithName:name];

  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    name2 = [(IRNearbyInteractionBridge *)self name];
    v10 = 138412290;
    v11 = name2;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#nearby-interaction-bridge, [%@] sessionSuspensionEnded", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sessionDidStartRunning:(id)running
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    name = [(IRNearbyInteractionBridge *)self name];
    v10 = 138412290;
    v11 = name;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_DEFAULT, "#nearby-interaction-bridge, [%@] sessionDidStartRunning", &v10, 0xCu);
  }

  delegate = [(IRNearbyInteractionBridge *)self delegate];
  name2 = [(IRNearbyInteractionBridge *)self name];
  [delegate didBridgeRunSuccesfully:name2];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    errorCopy = error;
    name = [(IRNearbyInteractionBridge *)self name];
    v10 = [errorCopy debugDescription];

    v14 = 138412546;
    v15 = name;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#nearby-interaction-bridge, [%@] session:didInvalidateWithError %@", &v14, 0x16u);
  }

  delegate = [(IRNearbyInteractionBridge *)self delegate];
  name2 = [(IRNearbyInteractionBridge *)self name];
  [delegate didBridgeFail:name2];

  v13 = *MEMORY[0x277D85DE8];
}

- (double)_nearbyObjectDistance:(id)distance
{
  distanceCopy = distance;
  v5 = *MEMORY[0x277CD8A20];
  [distanceCopy distance];
  if (v5 == v6 || ([distanceCopy distance], v7 < 0.0))
  {
    v8 = 1000.0;
  }

  else
  {
    binaryRegionThreshold = [(IRNearbyInteractionBridge *)self binaryRegionThreshold];

    [distanceCopy distance];
    v8 = v11;
    if (binaryRegionThreshold)
    {
      binaryRegionThreshold2 = [(IRNearbyInteractionBridge *)self binaryRegionThreshold];
      [binaryRegionThreshold2 doubleValue];
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

- (void)session:(id)session didDiscoverNearbyObject:(id)object
{
  v24 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v6 = [IRNearbyDeviceDO alloc];
  [(IRNearbyInteractionBridge *)self _nearbyObjectDistance:objectCopy];
  v8 = v7;
  deviceIdentifer = [objectCopy deviceIdentifer];
  name = [(IRNearbyInteractionBridge *)self name];
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [(IRNearbyDeviceDO *)v6 initWithRange:deviceIdentifer idsIdentifier:0 mediaRemoteIdentifier:name proximityType:v11 measurementDate:v8];

  [(IRNearbyInteractionBridge *)self _updateRegionToDelegate:v12];
  v13 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
  {
    v15 = v13;
    name2 = [(IRNearbyInteractionBridge *)self name];
    deviceIdentifier = [objectCopy deviceIdentifier];
    v18 = 138412802;
    v19 = name2;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = deviceIdentifier;
    _os_log_debug_impl(&dword_25543D000, v15, OS_LOG_TYPE_DEBUG, "#nearby-interaction-bridge, [%@] session:didDiscoverNearbyObject: %@, %@", &v18, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  v34 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  if ([(IRNearbyInteractionBridge *)self trackRegion])
  {
    v12 = [IRNearbyDeviceDO alloc];
    [(IRNearbyInteractionBridge *)self _nearbyObjectDistance:objectCopy];
    v14 = v13;
    deviceIdentifer = [objectCopy deviceIdentifer];
    name = [(IRNearbyInteractionBridge *)self name];
    v17 = [MEMORY[0x277CBEAA8] now];
    v18 = [(IRNearbyDeviceDO *)v12 initWithRange:deviceIdentifer idsIdentifier:0 mediaRemoteIdentifier:name proximityType:v17 measurementDate:v14];

    [(IRNearbyInteractionBridge *)self _updateRegionToDelegate:v18];
    v19 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      name2 = [(IRNearbyInteractionBridge *)self name];
      deviceIdentifier = [objectCopy deviceIdentifier];
      v24 = 138413314;
      v25 = name2;
      v26 = 2112;
      v27 = regionCopy;
      v28 = 2112;
      v29 = previousRegionCopy;
      v30 = 2112;
      v31 = objectCopy;
      v32 = 2112;
      v33 = deviceIdentifier;
      _os_log_impl(&dword_25543D000, v20, OS_LOG_TYPE_DEFAULT, "#nearby-interaction-bridge, [%@] didUpdateRegion to %@ from %@ for %@ with deviceIdentifier: %@", &v24, 0x34u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session didUpdateNearbyObjects:(id)objects
{
  objectsCopy = objects;
  if ([(IRNearbyInteractionBridge *)self trackUpdates])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__IRNearbyInteractionBridge_session_didUpdateNearbyObjects___block_invoke;
    v6[3] = &unk_2797E1010;
    v6[4] = self;
    [objectsCopy enumerateObjectsUsingBlock:v6];
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

- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__IRNearbyInteractionBridge_session_didRemoveNearbyObjects_withReason___block_invoke;
  v5[3] = &unk_2797E1010;
  v5[4] = self;
  [objects enumerateObjectsUsingBlock:v5];
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

- (void)_updateRegionToDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(IRNearbyInteractionBridge *)self delegate];
  if (delegate)
  {
    [delegateCopy range];
    v6 = v5;
    v7 = +[IRPreferences shared];
    nearbyDeviceRegionThreshold = [v7 nearbyDeviceRegionThreshold];
    [nearbyDeviceRegionThreshold doubleValue];
    v10 = v9;

    name = [(IRNearbyInteractionBridge *)self name];
    if (v6 >= v10)
    {
      [delegate didRemoveDevice:delegateCopy withName:name];
    }

    else
    {
      [delegate didUpdateNearbyDevice:delegateCopy withName:name];
    }
  }
}

- (IRProximityBridgeDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end