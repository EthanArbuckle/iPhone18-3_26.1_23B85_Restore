@interface HMDHomePresenceUpdate
- (HMDHomePresenceUpdate)initWithHomePresence:(id)a3 userPresence:(id)a4 update:(BOOL)a5 causingDevice:(id)a6;
- (id)shortDescription;
@end

@implementation HMDHomePresenceUpdate

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDHomePresenceUpdate *)self homePresence];
  v5 = [(HMDHomePresenceUpdate *)self userPresence];
  [(HMDHomePresenceUpdate *)self isUpdate];
  v6 = HMFBooleanToString();
  v7 = [(HMDHomePresenceUpdate *)self causingDevice];
  v8 = [v3 stringWithFormat:@"[Home-Presence-Update: %@/%@/%@/%@", v4, v5, v6, v7];

  return v8;
}

- (HMDHomePresenceUpdate)initWithHomePresence:(id)a3 userPresence:(id)a4 update:(BOOL)a5 causingDevice:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HMDHomePresenceUpdate;
  v14 = [(HMDHomePresenceUpdate *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_homePresence, a3);
    objc_storeStrong(&v15->_userPresence, a4);
    v15->_update = a5;
    objc_storeStrong(&v15->_causingDevice, a6);
  }

  return v15;
}

@end