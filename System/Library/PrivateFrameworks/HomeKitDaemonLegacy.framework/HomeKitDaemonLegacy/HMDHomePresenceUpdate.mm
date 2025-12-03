@interface HMDHomePresenceUpdate
- (HMDHomePresenceUpdate)initWithHomePresence:(id)presence userPresence:(id)userPresence update:(BOOL)update causingDevice:(id)device;
- (id)shortDescription;
@end

@implementation HMDHomePresenceUpdate

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  homePresence = [(HMDHomePresenceUpdate *)self homePresence];
  userPresence = [(HMDHomePresenceUpdate *)self userPresence];
  [(HMDHomePresenceUpdate *)self isUpdate];
  v6 = HMFBooleanToString();
  causingDevice = [(HMDHomePresenceUpdate *)self causingDevice];
  v8 = [v3 stringWithFormat:@"[Home-Presence-Update: %@/%@/%@/%@", homePresence, userPresence, v6, causingDevice];

  return v8;
}

- (HMDHomePresenceUpdate)initWithHomePresence:(id)presence userPresence:(id)userPresence update:(BOOL)update causingDevice:(id)device
{
  presenceCopy = presence;
  userPresenceCopy = userPresence;
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = HMDHomePresenceUpdate;
  v14 = [(HMDHomePresenceUpdate *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_homePresence, presence);
    objc_storeStrong(&v15->_userPresence, userPresence);
    v15->_update = update;
    objc_storeStrong(&v15->_causingDevice, device);
  }

  return v15;
}

@end