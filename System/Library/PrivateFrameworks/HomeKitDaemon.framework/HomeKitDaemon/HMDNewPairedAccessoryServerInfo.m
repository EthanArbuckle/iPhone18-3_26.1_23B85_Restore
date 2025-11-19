@interface HMDNewPairedAccessoryServerInfo
- (HMDHome)home;
- (HMDNewPairedAccessoryServerInfo)initWithServer:(id)a3 home:(id)a4 primaryAccessoryUUID:(id)a5 certificationStatus:(int64_t)a6 hostAccessory:(id)a7 networkCredential:(id)a8 pairingEvent:(id)a9;
- (id)description;
@end

@implementation HMDNewPairedAccessoryServerInfo

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HMDNewPairedAccessoryServerInfo;
  v4 = [(HMDNewPairedAccessoryServerInfo *)&v10 description];
  v5 = [(HMDNewPairedAccessoryServerInfo *)self primaryAccessoryUUID];
  v6 = [(HMDNewPairedAccessoryServerInfo *)self server];
  v7 = [v6 identifier];
  v8 = [v3 stringWithFormat:@"%@ [%@/%@]", v4, v5, v7];

  return v8;
}

- (HMDNewPairedAccessoryServerInfo)initWithServer:(id)a3 home:(id)a4 primaryAccessoryUUID:(id)a5 certificationStatus:(int64_t)a6 hostAccessory:(id)a7 networkCredential:(id)a8 pairingEvent:(id)a9
{
  v24 = a3;
  v15 = a4;
  v23 = a5;
  v22 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = HMDNewPairedAccessoryServerInfo;
  v18 = [(HMDNewPairedAccessoryServerInfo *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_server, a3);
    objc_storeWeak(&v19->_home, v15);
    objc_storeStrong(&v19->_primaryAccessoryUUID, a5);
    v19->_certificationStatus = a6;
    objc_storeStrong(&v19->_networkCredential, a8);
    objc_storeStrong(&v19->_hostAccessory, a7);
    objc_storeStrong(&v19->_pairingEvent, a9);
  }

  return v19;
}

@end