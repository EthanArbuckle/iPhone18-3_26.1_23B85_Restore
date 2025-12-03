@interface HMDNewPairedAccessoryServerInfo
- (HMDHome)home;
- (HMDNewPairedAccessoryServerInfo)initWithServer:(id)server home:(id)home primaryAccessoryUUID:(id)d certificationStatus:(int64_t)status hostAccessory:(id)accessory networkCredential:(id)credential pairingEvent:(id)event;
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
  primaryAccessoryUUID = [(HMDNewPairedAccessoryServerInfo *)self primaryAccessoryUUID];
  server = [(HMDNewPairedAccessoryServerInfo *)self server];
  identifier = [server identifier];
  v8 = [v3 stringWithFormat:@"%@ [%@/%@]", v4, primaryAccessoryUUID, identifier];

  return v8;
}

- (HMDNewPairedAccessoryServerInfo)initWithServer:(id)server home:(id)home primaryAccessoryUUID:(id)d certificationStatus:(int64_t)status hostAccessory:(id)accessory networkCredential:(id)credential pairingEvent:(id)event
{
  serverCopy = server;
  homeCopy = home;
  dCopy = d;
  accessoryCopy = accessory;
  credentialCopy = credential;
  eventCopy = event;
  v25.receiver = self;
  v25.super_class = HMDNewPairedAccessoryServerInfo;
  v18 = [(HMDNewPairedAccessoryServerInfo *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_server, server);
    objc_storeWeak(&v19->_home, homeCopy);
    objc_storeStrong(&v19->_primaryAccessoryUUID, d);
    v19->_certificationStatus = status;
    objc_storeStrong(&v19->_networkCredential, credential);
    objc_storeStrong(&v19->_hostAccessory, accessory);
    objc_storeStrong(&v19->_pairingEvent, event);
  }

  return v19;
}

@end