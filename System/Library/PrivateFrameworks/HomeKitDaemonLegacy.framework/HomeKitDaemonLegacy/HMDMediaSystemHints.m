@interface HMDMediaSystemHints
- (HMDMediaSystemHints)initWithMediaSystemHomeUUIDString:(id)a3 mediaSystemUUIDString:(id)a4 peerAccessoryUUIDString:(id)a5 peerAccessoryRoleString:(id)a6;
- (id)description;
@end

@implementation HMDMediaSystemHints

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HMDMediaSystemHints *)self mediaSystemHomeUUIDString];
  v6 = [(HMDMediaSystemHints *)self mediaSystemUUIDString];
  v7 = [(HMDMediaSystemHints *)self peerAccessoryUUIDString];
  v8 = [(HMDMediaSystemHints *)self peerAccessoryRoleString];
  v9 = [v3 stringWithFormat:@"%@ (HomeUUID: %@, MediaSystemUUID: %@, PeerAccessoryUUID: %@, PeerRole: %@)", v4, v5, v6, v7, v8];

  return v9;
}

- (HMDMediaSystemHints)initWithMediaSystemHomeUUIDString:(id)a3 mediaSystemUUIDString:(id)a4 peerAccessoryUUIDString:(id)a5 peerAccessoryRoleString:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDMediaSystemHints;
  v15 = [(HMDMediaSystemHints *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mediaSystemHomeUUIDString, a3);
    objc_storeStrong(&v16->_mediaSystemUUIDString, a4);
    objc_storeStrong(&v16->_peerAccessoryUUIDString, a5);
    objc_storeStrong(&v16->_peerAccessoryRoleString, a6);
  }

  return v16;
}

@end