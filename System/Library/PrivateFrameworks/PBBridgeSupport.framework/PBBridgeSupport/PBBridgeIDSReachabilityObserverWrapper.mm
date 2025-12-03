@interface PBBridgeIDSReachabilityObserverWrapper
- (PBBridgeIDSReachabilityObserver)observer;
- (void)fireReachability:(id)reachability deviceStatus:(id)status devices:(id)devices;
@end

@implementation PBBridgeIDSReachabilityObserverWrapper

- (void)fireReachability:(id)reachability deviceStatus:(id)status devices:(id)devices
{
  v27 = *MEMORY[0x277D85DE8];
  reachabilityCopy = reachability;
  statusCopy = status;
  devicesCopy = devices;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  if (WeakRetained)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = statusCopy;
    v12 = statusCopy;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          idsDeviceID = [v17 idsDeviceID];
          v19 = [devicesCopy objectForKeyedSubscript:idsDeviceID];
          [WeakRetained reachability:reachabilityCopy device:v19 connectionStatus:{objc_msgSend(v17, "reachability")}];
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    statusCopy = v21;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (PBBridgeIDSReachabilityObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end