@interface HMDMediaSystemHints
- (HMDMediaSystemHints)initWithMediaSystemHomeUUIDString:(id)string mediaSystemUUIDString:(id)dString peerAccessoryUUIDString:(id)iDString peerAccessoryRoleString:(id)roleString;
- (id)description;
@end

@implementation HMDMediaSystemHints

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  mediaSystemHomeUUIDString = [(HMDMediaSystemHints *)self mediaSystemHomeUUIDString];
  mediaSystemUUIDString = [(HMDMediaSystemHints *)self mediaSystemUUIDString];
  peerAccessoryUUIDString = [(HMDMediaSystemHints *)self peerAccessoryUUIDString];
  peerAccessoryRoleString = [(HMDMediaSystemHints *)self peerAccessoryRoleString];
  v9 = [v3 stringWithFormat:@"%@ (HomeUUID: %@, MediaSystemUUID: %@, PeerAccessoryUUID: %@, PeerRole: %@)", v4, mediaSystemHomeUUIDString, mediaSystemUUIDString, peerAccessoryUUIDString, peerAccessoryRoleString];

  return v9;
}

- (HMDMediaSystemHints)initWithMediaSystemHomeUUIDString:(id)string mediaSystemUUIDString:(id)dString peerAccessoryUUIDString:(id)iDString peerAccessoryRoleString:(id)roleString
{
  stringCopy = string;
  dStringCopy = dString;
  iDStringCopy = iDString;
  roleStringCopy = roleString;
  v18.receiver = self;
  v18.super_class = HMDMediaSystemHints;
  v15 = [(HMDMediaSystemHints *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mediaSystemHomeUUIDString, string);
    objc_storeStrong(&v16->_mediaSystemUUIDString, dString);
    objc_storeStrong(&v16->_peerAccessoryUUIDString, iDString);
    objc_storeStrong(&v16->_peerAccessoryRoleString, roleString);
  }

  return v16;
}

@end