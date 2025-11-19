@interface CRKClassSessionBeacon
- (CRKClassSessionBeacon)init;
- (void)advertiserDidRegisterService;
- (void)advertiserDidUpdateState:(id)a3;
- (void)advertiserFailedToRegisterService;
- (void)advertiserPendingServiceOfType:(id)a3;
- (void)startAdvertisingClassSessionWithIdentifier:(id)a3;
- (void)startAdvertisingWithUUID:(id)a3 IPAddress:(unsigned int)a4;
- (void)stopAdvertising;
@end

@implementation CRKClassSessionBeacon

- (CRKClassSessionBeacon)init
{
  v7.receiver = self;
  v7.super_class = CRKClassSessionBeacon;
  v2 = [(CRKClassSessionBeacon *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D7BC60]);
    v4 = [v3 initWithDelegate:v2 queue:MEMORY[0x277D85CD0]];
    advertiser = v2->_advertiser;
    v2->_advertiser = v4;
  }

  return v2;
}

- (void)startAdvertisingClassSessionWithIdentifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(CRKClassSessionBeacon *)self setAdvertisedIdentifier:v4];
  v8 = 0;
  v9 = 0;
  v5 = [v4 organizationUUID];
  [v5 getUUIDBytes:&v8];

  WORD2(v9) = __rev16([(CRKClassSessionBeacon *)self flags]);
  HIWORD(v9) = __rev16([v4 groupID]);
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v8];
  v7 = [v4 leaderIP];

  [(CRKClassSessionBeacon *)self startAdvertisingWithUUID:v6 IPAddress:v7];
}

- (void)startAdvertisingWithUUID:(id)a3 IPAddress:(unsigned int)a4
{
  v23[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CRKClassSessionBeacon *)self beaconAdvertisement];

  if (v7)
  {
    v8 = [(CRKClassSessionBeacon *)self advertiser];
    v9 = [(CRKClassSessionBeacon *)self beaconAdvertisement];
    [v8 deregisterService:v9];
  }

  v10 = *MEMORY[0x277D7BC90];
  v22[0] = *MEMORY[0x277D7BC88];
  v22[1] = v10;
  v11 = *MEMORY[0x277D7BC98];
  v23[0] = &unk_2856727D8;
  v23[1] = v11;
  v22[2] = *MEMORY[0x277D7BCB0];
  v12 = [v6 UUIDString];
  v23[2] = v12;
  v22[3] = *MEMORY[0x277D7BCA0];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(a4)];
  v23[3] = v13;
  v22[4] = *MEMORY[0x277D7BCA8];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a4];
  v23[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
  [(CRKClassSessionBeacon *)self setBeaconAdvertisement:v15];

  v16 = _CRKLogBluetooth_1();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(CRKClassSessionBeacon *)self beaconAdvertisement];
    v20 = 138543362;
    v21 = v17;
    _os_log_impl(&dword_243550000, v16, OS_LOG_TYPE_DEFAULT, "Beacon advertisement %{public}@", &v20, 0xCu);
  }

  v18 = [(CRKClassSessionBeacon *)self advertiser];
  v19 = [(CRKClassSessionBeacon *)self beaconAdvertisement];
  [v18 registerService:v19];
}

- (void)stopAdvertising
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _CRKLogBluetooth_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CRKClassSessionBeacon *)self advertisedIdentifier];
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "Bluetooth Beacon STOP advertising %{public}@", &v8, 0xCu);
  }

  v5 = [(CRKClassSessionBeacon *)self beaconAdvertisement];

  if (v5)
  {
    v6 = [(CRKClassSessionBeacon *)self advertiser];
    v7 = [(CRKClassSessionBeacon *)self beaconAdvertisement];
    [v6 deregisterService:v7];
  }

  [(CRKClassSessionBeacon *)self setBeaconAdvertisement:0];
  [(CRKClassSessionBeacon *)self setAdvertising:0];
}

- (void)advertiserDidUpdateState:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CRKLogBluetooth_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "advertiserState")}];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Beacon advertiser updated state %{public}@", &v10, 0xCu);
  }

  if ([v4 state] == 3 && !-[CRKClassSessionBeacon isAdvertising](self, "isAdvertising"))
  {
    v7 = [(CRKClassSessionBeacon *)self beaconAdvertisement];

    if (v7)
    {
      v8 = [(CRKClassSessionBeacon *)self advertiser];
      v9 = [(CRKClassSessionBeacon *)self beaconAdvertisement];
      [v8 registerService:v9];
    }
  }
}

- (void)advertiserDidRegisterService
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _CRKLogBluetooth_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CRKClassSessionBeacon *)self beaconAdvertisement];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "Beacon advertiser registered service %{public}@", &v5, 0xCu);
  }

  [(CRKClassSessionBeacon *)self setAdvertising:1];
}

- (void)advertiserFailedToRegisterService
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 beaconAdvertisement];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Beacon advertiser failed to register service %{public}@", &v4, 0xCu);
}

- (void)advertiserPendingServiceOfType:(id)a3
{
  v3 = a3;
  v4 = _CRKLogBluetooth_1();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CRKClassSessionBeacon *)v3 advertiserPendingServiceOfType:v4];
  }
}

- (void)advertiserPendingServiceOfType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Beacon advertiser pending to service %{public}@", &v2, 0xCu);
}

@end