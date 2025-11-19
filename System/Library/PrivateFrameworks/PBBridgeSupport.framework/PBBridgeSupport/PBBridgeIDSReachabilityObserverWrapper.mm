@interface PBBridgeIDSReachabilityObserverWrapper
- (PBBridgeIDSReachabilityObserver)observer;
- (void)fireReachability:(id)a3 deviceStatus:(id)a4 devices:(id)a5;
@end

@implementation PBBridgeIDSReachabilityObserverWrapper

- (void)fireReachability:(id)a3 deviceStatus:(id)a4 devices:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  if (WeakRetained)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v9;
    v12 = v9;
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
          v18 = [v17 idsDeviceID];
          v19 = [v10 objectForKeyedSubscript:v18];
          [WeakRetained reachability:v8 device:v19 connectionStatus:{objc_msgSend(v17, "reachability")}];
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    v9 = v21;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (PBBridgeIDSReachabilityObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end