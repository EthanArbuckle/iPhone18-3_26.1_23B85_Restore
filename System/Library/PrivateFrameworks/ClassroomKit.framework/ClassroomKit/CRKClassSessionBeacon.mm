@interface CRKClassSessionBeacon
- (CRKClassSessionBeacon)init;
- (void)advertiserDidRegisterService;
- (void)advertiserDidUpdateState:(id)state;
- (void)advertiserFailedToRegisterService;
- (void)advertiserPendingServiceOfType:(id)type;
- (void)startAdvertisingClassSessionWithIdentifier:(id)identifier;
- (void)startAdvertisingWithUUID:(id)d IPAddress:(unsigned int)address;
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

- (void)startAdvertisingClassSessionWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(CRKClassSessionBeacon *)self setAdvertisedIdentifier:identifierCopy];
  v8 = 0;
  v9 = 0;
  organizationUUID = [identifierCopy organizationUUID];
  [organizationUUID getUUIDBytes:&v8];

  WORD2(v9) = __rev16([(CRKClassSessionBeacon *)self flags]);
  HIWORD(v9) = __rev16([identifierCopy groupID]);
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v8];
  leaderIP = [identifierCopy leaderIP];

  [(CRKClassSessionBeacon *)self startAdvertisingWithUUID:v6 IPAddress:leaderIP];
}

- (void)startAdvertisingWithUUID:(id)d IPAddress:(unsigned int)address
{
  v23[5] = *MEMORY[0x277D85DE8];
  dCopy = d;
  beaconAdvertisement = [(CRKClassSessionBeacon *)self beaconAdvertisement];

  if (beaconAdvertisement)
  {
    advertiser = [(CRKClassSessionBeacon *)self advertiser];
    beaconAdvertisement2 = [(CRKClassSessionBeacon *)self beaconAdvertisement];
    [advertiser deregisterService:beaconAdvertisement2];
  }

  v10 = *MEMORY[0x277D7BC90];
  v22[0] = *MEMORY[0x277D7BC88];
  v22[1] = v10;
  v11 = *MEMORY[0x277D7BC98];
  v23[0] = &unk_2856727D8;
  v23[1] = v11;
  v22[2] = *MEMORY[0x277D7BCB0];
  uUIDString = [dCopy UUIDString];
  v23[2] = uUIDString;
  v22[3] = *MEMORY[0x277D7BCA0];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(address)];
  v23[3] = v13;
  v22[4] = *MEMORY[0x277D7BCA8];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:address];
  v23[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
  [(CRKClassSessionBeacon *)self setBeaconAdvertisement:v15];

  v16 = _CRKLogBluetooth_1();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    beaconAdvertisement3 = [(CRKClassSessionBeacon *)self beaconAdvertisement];
    v20 = 138543362;
    v21 = beaconAdvertisement3;
    _os_log_impl(&dword_243550000, v16, OS_LOG_TYPE_DEFAULT, "Beacon advertisement %{public}@", &v20, 0xCu);
  }

  advertiser2 = [(CRKClassSessionBeacon *)self advertiser];
  beaconAdvertisement4 = [(CRKClassSessionBeacon *)self beaconAdvertisement];
  [advertiser2 registerService:beaconAdvertisement4];
}

- (void)stopAdvertising
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _CRKLogBluetooth_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    advertisedIdentifier = [(CRKClassSessionBeacon *)self advertisedIdentifier];
    v8 = 138543362;
    v9 = advertisedIdentifier;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "Bluetooth Beacon STOP advertising %{public}@", &v8, 0xCu);
  }

  beaconAdvertisement = [(CRKClassSessionBeacon *)self beaconAdvertisement];

  if (beaconAdvertisement)
  {
    advertiser = [(CRKClassSessionBeacon *)self advertiser];
    beaconAdvertisement2 = [(CRKClassSessionBeacon *)self beaconAdvertisement];
    [advertiser deregisterService:beaconAdvertisement2];
  }

  [(CRKClassSessionBeacon *)self setBeaconAdvertisement:0];
  [(CRKClassSessionBeacon *)self setAdvertising:0];
}

- (void)advertiserDidUpdateState:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = _CRKLogBluetooth_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(stateCopy, "advertiserState")}];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Beacon advertiser updated state %{public}@", &v10, 0xCu);
  }

  if ([stateCopy state] == 3 && !-[CRKClassSessionBeacon isAdvertising](self, "isAdvertising"))
  {
    beaconAdvertisement = [(CRKClassSessionBeacon *)self beaconAdvertisement];

    if (beaconAdvertisement)
    {
      advertiser = [(CRKClassSessionBeacon *)self advertiser];
      beaconAdvertisement2 = [(CRKClassSessionBeacon *)self beaconAdvertisement];
      [advertiser registerService:beaconAdvertisement2];
    }
  }
}

- (void)advertiserDidRegisterService
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _CRKLogBluetooth_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    beaconAdvertisement = [(CRKClassSessionBeacon *)self beaconAdvertisement];
    v5 = 138543362;
    v6 = beaconAdvertisement;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "Beacon advertiser registered service %{public}@", &v5, 0xCu);
  }

  [(CRKClassSessionBeacon *)self setAdvertising:1];
}

- (void)advertiserFailedToRegisterService
{
  v6 = *MEMORY[0x277D85DE8];
  beaconAdvertisement = [self beaconAdvertisement];
  v4 = 138543362;
  v5 = beaconAdvertisement;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Beacon advertiser failed to register service %{public}@", &v4, 0xCu);
}

- (void)advertiserPendingServiceOfType:(id)type
{
  typeCopy = type;
  v4 = _CRKLogBluetooth_1();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CRKClassSessionBeacon *)typeCopy advertiserPendingServiceOfType:v4];
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