@interface HMDUserPresence
- (BOOL)isAtHome;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNotAtHome;
- (HMDUserPresence)initWithCoder:(id)a3;
- (HMDUserPresence)initWithUser:(id)a3 presenceRegionStatus:(id)a4;
- (HMDUserPresence)initWithUser:(id)a3 presenceRegionStatus:(id)a4 timeStamp:(id)a5 presenceUpdateReason:(id)a6 device:(id)a7;
- (HMDUserPresenceRegion)presenceRegionStatus;
- (NSDate)lastLocalActivityTimeStamp;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
- (void)setLastLocalActivityTimeStamp:(id)a3;
- (void)setPresenceRegionStatus:(id)a3;
@end

@implementation HMDUserPresence

- (id)attributeDescriptions
{
  v35[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v34 = [(HMDUserPresence *)self user];
  v33 = [v34 userID];
  v32 = +[HMDAccountHandleFormatter defaultFormatter];
  v31 = [v3 initWithName:@"UID" value:v33 options:2 formatter:v32];
  v35[0] = v31;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v30 = [(HMDUserPresence *)self user];
  v29 = [v30 uuid];
  v28 = [v4 initWithName:@"UUID" value:v29];
  v35[1] = v28;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v27 = [(HMDUserPresence *)self presenceRegionStatus];
  v26 = [v5 initWithName:@"Reg" value:v27];
  v35[2] = v26;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v25 = [(HMDUserPresence *)self updateTimestamp];
  v24 = [v25 hmf_localTimeDescription];
  v7 = [v6 initWithName:@"TS" value:v24];
  v35[3] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDUserPresence *)self presenceUpdateReason];
  v10 = [v8 initWithName:@"Reason" value:v9];
  v35[4] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMDUserPresence *)self deviceWhichUpdatedUserPresence];
  v13 = [v11 initWithName:@"Device" value:v12];
  v35[5] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMDUserPresence *)self lastLocalActivityTimeStamp];
  v16 = [v14 initWithName:@"lastAccess" value:v15];
  v35[6] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [(HMDUserPresence *)self user];
  v19 = [v18 presenceAuthStatus];
  v20 = [v17 initWithName:@"Auth" value:v19];
  v35[7] = v20;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:8];

  v21 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = +[HMDAccountHandleFormatter defaultFormatter];
  v5 = [(HMDUserPresence *)self user];
  v6 = [v5 userID];
  v7 = [v4 privateStringForObjectValue:v6];
  v8 = [(HMDUserPresence *)self presenceRegionStatus];
  v9 = [v3 stringWithFormat:@"%@/%@", v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserPresence *)self user];
  [v4 encodeObject:v5 forKey:@"HM.user"];

  v6 = [(HMDUserPresence *)self presenceRegionStatus];
  [v6 addToCoder:v4];

  v7 = [(HMDUserPresence *)self updateTimestamp];
  [v4 encodeObject:v7 forKey:@"PresenceUpdateTimestamp"];
}

- (HMDUserPresence)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDUserPresence;
  v5 = [(HMDUserPresence *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
    user = v5->_user;
    v5->_user = v6;

    v8 = [HMDUserPresenceRegion regionWithCoder:v4];
    presenceRegionStatus = v5->_presenceRegionStatus;
    v5->_presenceRegionStatus = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PresenceUpdateTimestamp"];
    updateTimestamp = v5->_updateTimestamp;
    v5->_updateTimestamp = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

    v7 = [(HMDUserPresence *)self user];
    v8 = [v7 uuid];
    v9 = [(HMDUserPresence *)v6 user];
    v10 = [v9 uuid];
    v11 = HMFEqualObjects();

    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = [(HMDUserPresence *)self presenceRegionStatus];
    v13 = [(HMDUserPresence *)v6 presenceRegionStatus];
    v14 = HMFEqualObjects();

    if (v14)
    {
      v15 = [(HMDUserPresence *)self updateTimestamp];
      v16 = [(HMDUserPresence *)v6 updateTimestamp];
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
  v2 = [(HMDUserPresence *)self presenceRegionStatus];
  v3 = [v2 value] == 2;

  return v3;
}

- (BOOL)isAtHome
{
  v2 = [(HMDUserPresence *)self presenceRegionStatus];
  v3 = [v2 value] == 1;

  return v3;
}

- (void)setPresenceRegionStatus:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
  }

  updateTimestamp = self->_updateTimestamp;
  self->_updateTimestamp = v4;

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    presenceRegionStatus = v8->_presenceRegionStatus;
    v12 = [(NSDate *)self->_updateTimestamp hmf_localTimeDescription];
    v15 = 138544130;
    v16 = v10;
    v17 = 2112;
    v18 = presenceRegionStatus;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating region status from %@ to %@ with update timestamp %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = v8->_presenceRegionStatus;
  v8->_presenceRegionStatus = v5;

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDUserPresenceRegion)presenceRegionStatus
{
  v3 = [(HMDUserPresence *)self user];
  v4 = [v3 isRestrictedGuest];

  presenceRegionStatus = self->_presenceRegionStatus;
  if (!v4)
  {
    v9 = presenceRegionStatus;
    goto LABEL_9;
  }

  if (!presenceRegionStatus)
  {
    v8 = 0;
    goto LABEL_8;
  }

  if (!-[HMDUserPresenceRegion value](presenceRegionStatus, "value") || (-[HMDUserPresence user](self, "user"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isAccessCurrentlyAllowedBySchedule], v6, v7))
  {
    v8 = self->_presenceRegionStatus;
LABEL_8:
    v9 = v8;
    goto LABEL_9;
  }

  v9 = [HMDUserPresenceRegion regionWithValue:2];
LABEL_9:

  return v9;
}

- (void)setLastLocalActivityTimeStamp:(id)a3
{
  v8 = a3;
  v4 = [(HMDUserPresence *)self presenceRegionStatus];
  v5 = [v4 value];

  if (v5 == 1)
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  lastLocalActivityTimeStamp = self->_lastLocalActivityTimeStamp;
  self->_lastLocalActivityTimeStamp = v6;
}

- (NSDate)lastLocalActivityTimeStamp
{
  v3 = [(HMDUserPresence *)self presenceRegionStatus];
  v4 = [v3 value];

  if (v4 == 1)
  {
    v5 = self->_lastLocalActivityTimeStamp;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HMDUserPresence)initWithUser:(id)a3 presenceRegionStatus:(id)a4 timeStamp:(id)a5 presenceUpdateReason:(id)a6 device:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HMDUserPresence;
  v17 = [(HMDUserPresence *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_user, a3);
    objc_storeStrong(&v18->_presenceRegionStatus, a4);
    objc_storeStrong(&v18->_updateTimestamp, a5);
    objc_storeStrong(&v18->_deviceWhichUpdatedUserPresence, a7);
    objc_storeStrong(&v18->_presenceUpdateReason, a6);
  }

  return v18;
}

- (HMDUserPresence)initWithUser:(id)a3 presenceRegionStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(HMDUserPresence *)self initWithUser:v6 presenceRegionStatus:v7 timeStamp:v8];

  return v9;
}

@end