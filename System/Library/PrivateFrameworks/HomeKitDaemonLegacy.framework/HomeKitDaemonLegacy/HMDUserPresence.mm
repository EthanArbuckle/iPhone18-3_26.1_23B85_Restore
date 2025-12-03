@interface HMDUserPresence
- (BOOL)isAtHome;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNotAtHome;
- (HMDUserPresence)initWithCoder:(id)coder;
- (HMDUserPresence)initWithUser:(id)user presenceRegionStatus:(id)status;
- (HMDUserPresence)initWithUser:(id)user presenceRegionStatus:(id)status timeStamp:(id)stamp presenceUpdateReason:(id)reason device:(id)device;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setPresenceRegionStatus:(id)status;
@end

@implementation HMDUserPresence

- (id)attributeDescriptions
{
  v32[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  user = [(HMDUserPresence *)self user];
  userID = [user userID];
  v29 = +[HMDAccountHandleFormatter defaultFormatter];
  v28 = [v3 initWithName:@"UID" value:userID options:2 formatter:v29];
  v32[0] = v28;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  user2 = [(HMDUserPresence *)self user];
  uuid = [user2 uuid];
  v25 = [v4 initWithName:@"UUID" value:uuid];
  v32[1] = v25;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  presenceRegionStatus = [(HMDUserPresence *)self presenceRegionStatus];
  v23 = [v5 initWithName:@"Reg" value:presenceRegionStatus];
  v32[2] = v23;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  updateTimestamp = [(HMDUserPresence *)self updateTimestamp];
  hmf_localTimeDescription = [updateTimestamp hmf_localTimeDescription];
  v9 = [v6 initWithName:@"TS" value:hmf_localTimeDescription];
  v32[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  presenceUpdateReason = [(HMDUserPresence *)self presenceUpdateReason];
  v12 = [v10 initWithName:@"Reason" value:presenceUpdateReason];
  v32[4] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  deviceWhichUpdatedUserPresence = [(HMDUserPresence *)self deviceWhichUpdatedUserPresence];
  v15 = [v13 initWithName:@"Device" value:deviceWhichUpdatedUserPresence];
  v32[5] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  user3 = [(HMDUserPresence *)self user];
  presenceAuthStatus = [user3 presenceAuthStatus];
  v19 = [v16 initWithName:@"Auth" value:presenceAuthStatus];
  v32[6] = v19;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:7];

  v20 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = +[HMDAccountHandleFormatter defaultFormatter];
  user = [(HMDUserPresence *)self user];
  userID = [user userID];
  v7 = [v4 privateStringForObjectValue:userID];
  presenceRegionStatus = [(HMDUserPresence *)self presenceRegionStatus];
  v9 = [v3 stringWithFormat:@"%@/%@", v7, presenceRegionStatus];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  user = [(HMDUserPresence *)self user];
  [coderCopy encodeObject:user forKey:@"HM.user"];

  presenceRegionStatus = [(HMDUserPresence *)self presenceRegionStatus];
  [presenceRegionStatus addToCoder:coderCopy];

  updateTimestamp = [(HMDUserPresence *)self updateTimestamp];
  [coderCopy encodeObject:updateTimestamp forKey:@"PresenceUpdateTimestamp"];
}

- (HMDUserPresence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HMDUserPresence;
  v5 = [(HMDUserPresence *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
    user = v5->_user;
    v5->_user = v6;

    v8 = [HMDUserPresenceRegion regionWithCoder:coderCopy];
    presenceRegionStatus = v5->_presenceRegionStatus;
    v5->_presenceRegionStatus = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PresenceUpdateTimestamp"];
    updateTimestamp = v5->_updateTimestamp;
    v5->_updateTimestamp = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_9;
    }

    user = [(HMDUserPresence *)self user];
    uuid = [user uuid];
    user2 = [(HMDUserPresence *)v6 user];
    uuid2 = [user2 uuid];
    v11 = HMFEqualObjects();

    if (!v11)
    {
      goto LABEL_9;
    }

    presenceRegionStatus = [(HMDUserPresence *)self presenceRegionStatus];
    presenceRegionStatus2 = [(HMDUserPresence *)v6 presenceRegionStatus];
    v14 = HMFEqualObjects();

    if (v14)
    {
      updateTimestamp = [(HMDUserPresence *)self updateTimestamp];
      updateTimestamp2 = [(HMDUserPresence *)v6 updateTimestamp];
      v17 = HMFEqualObjects();
    }

    else
    {
LABEL_9:
      v17 = 0;
    }
  }

  return v17;
}

- (BOOL)isNotAtHome
{
  presenceRegionStatus = [(HMDUserPresence *)self presenceRegionStatus];
  v3 = [presenceRegionStatus value] == 2;

  return v3;
}

- (BOOL)isAtHome
{
  presenceRegionStatus = [(HMDUserPresence *)self presenceRegionStatus];
  v3 = [presenceRegionStatus value] == 1;

  return v3;
}

- (void)setPresenceRegionStatus:(id)status
{
  v23 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = statusCopy;
  if (statusCopy)
  {
    statusCopy = [MEMORY[0x277CBEAA8] date];
  }

  updateTimestamp = self->_updateTimestamp;
  self->_updateTimestamp = statusCopy;

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    presenceRegionStatus = selfCopy->_presenceRegionStatus;
    hmf_localTimeDescription = [(NSDate *)self->_updateTimestamp hmf_localTimeDescription];
    v15 = 138544130;
    v16 = v10;
    v17 = 2112;
    v18 = presenceRegionStatus;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = hmf_localTimeDescription;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating region status from %@ to %@ with update timestamp %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = selfCopy->_presenceRegionStatus;
  selfCopy->_presenceRegionStatus = v5;

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDUserPresence)initWithUser:(id)user presenceRegionStatus:(id)status timeStamp:(id)stamp presenceUpdateReason:(id)reason device:(id)device
{
  userCopy = user;
  statusCopy = status;
  stampCopy = stamp;
  reasonCopy = reason;
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = HMDUserPresence;
  v17 = [(HMDUserPresence *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_user, user);
    objc_storeStrong(&v18->_presenceRegionStatus, status);
    objc_storeStrong(&v18->_updateTimestamp, stamp);
    objc_storeStrong(&v18->_deviceWhichUpdatedUserPresence, device);
    objc_storeStrong(&v18->_presenceUpdateReason, reason);
  }

  return v18;
}

- (HMDUserPresence)initWithUser:(id)user presenceRegionStatus:(id)status
{
  userCopy = user;
  statusCopy = status;
  if (statusCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    date = 0;
  }

  v9 = [(HMDUserPresence *)self initWithUser:userCopy presenceRegionStatus:statusCopy timeStamp:date];

  return v9;
}

@end