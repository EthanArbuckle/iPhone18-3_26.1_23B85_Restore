@interface BPSTinkerConnectionTracker
- (BPSTinkerConnectionTracker)initWithDevice:(id)device;
- (BPSTinkerConnectionTrackerDelegate)delegate;
- (void)dealloc;
- (void)reachability:(id)reachability device:(id)device connectionStatus:(unint64_t)status;
- (void)setSelectedDevice:(id)device;
@end

@implementation BPSTinkerConnectionTracker

- (BPSTinkerConnectionTracker)initWithDevice:(id)device
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = BPSTinkerConnectionTracker;
  v6 = [(BPSTinkerConnectionTracker *)&v12 init];
  if (v6)
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      pairingID = [deviceCopy pairingID];
      *buf = 136315394;
      v14 = "[BPSTinkerConnectionTracker initWithDevice:]";
      v15 = 2112;
      v16 = pairingID;
      _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "%s for %@", buf, 0x16u);
    }

    objc_storeStrong(&v6->_selectedDevice, device);
    mEMORY[0x277D37A70] = [MEMORY[0x277D37A70] sharedInstance];
    reachability = v6->_reachability;
    v6->_reachability = mEMORY[0x277D37A70];

    [(PBBridgeIDSReachability *)v6->_reachability addObserver:v6];
  }

  return v6;
}

- (void)setSelectedDevice:(id)device
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = [(NRDevice *)self->_selectedDevice pairingID];
    pairingID2 = [(NRDevice *)deviceCopy pairingID];
    v10 = 136315650;
    v11 = "[BPSTinkerConnectionTracker setSelectedDevice:]";
    v12 = 2112;
    v13 = pairingID;
    v14 = 2112;
    v15 = pairingID2;
    _os_log_impl(&dword_241E74000, v6, OS_LOG_TYPE_DEFAULT, "%s from %@ to %@", &v10, 0x20u);
  }

  if (self->_selectedDevice != deviceCopy)
  {
    objc_storeStrong(&self->_selectedDevice, device);
    mEMORY[0x277D37A70] = [MEMORY[0x277D37A70] sharedInstance];
    -[BPSTinkerConnectionTracker reachability:device:connectionStatus:](self, "reachability:device:connectionStatus:", mEMORY[0x277D37A70], deviceCopy, [mEMORY[0x277D37A70] reachabilityForDevice:deviceCopy]);
  }
}

- (void)dealloc
{
  [(PBBridgeIDSReachability *)self->_reachability removeObserver:self];
  v3.receiver = self;
  v3.super_class = BPSTinkerConnectionTracker;
  [(BPSTinkerConnectionTracker *)&v3 dealloc];
}

- (void)reachability:(id)reachability device:(id)device connectionStatus:(unint64_t)status
{
  v15 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "[BPSTinkerConnectionTracker reachability:device:connectionStatus:]";
    _os_log_impl(&dword_241E74000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  if (self->_selectedDevice == deviceCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__BPSTinkerConnectionTracker_reachability_device_connectionStatus___block_invoke;
    block[3] = &unk_278D238C0;
    statusCopy = status;
    v10 = deviceCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __67__BPSTinkerConnectionTracker_reachability_device_connectionStatus___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = pbb_bridge_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 136446210;
      v14 = "[BPSTinkerConnectionTracker reachability:device:connectionStatus:]_block_invoke";
      _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s device Bluetooth connected", buf, 0xCu);
    }

    v5 = [*(a1 + 32) valueForProperty:*MEMORY[0x277D2BBA8]];
    v9 = pbb_bridge_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Connecting to Apple Watch '%@'...]", v5];
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_241E74000, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
    [WeakRetained didBTConnectDevice:*(a1 + 32)];
  }

  else if (v2 == 2)
  {
    if (v4)
    {
      *buf = 136446210;
      v14 = "[BPSTinkerConnectionTracker reachability:device:connectionStatus:]_block_invoke";
      _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s device IDS connected", buf, 0xCu);
    }

    v5 = [*(a1 + 32) valueForProperty:*MEMORY[0x277D2BBA8]];
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Apple Watch '%@' is connected.]", v5];
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_241E74000, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
    [WeakRetained didIDSConnectDevice:*(a1 + 32)];
  }

  else
  {
    if (v4)
    {
      *buf = 136446210;
      v14 = "[BPSTinkerConnectionTracker reachability:device:connectionStatus:]_block_invoke";
      _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s device disconnected", buf, 0xCu);
    }

    v5 = [*(a1 + 32) valueForProperty:*MEMORY[0x277D2BBA8]];
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Bring Apple Watch '%@' near your iPhone.]", v5];
      *buf = 138412290;
      v14 = v12;
      _os_log_impl(&dword_241E74000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
    [WeakRetained didUpdateAsDisconnectedDevice:*(a1 + 32)];
  }
}

- (BPSTinkerConnectionTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end