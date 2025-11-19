@interface MKFCKOutgoingInvitation
- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
@end

@implementation MKFCKOutgoingInvitation

- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (![(MKFCKModel *)self copyPropertiesFromLocalModel:v7 context:v8])
  {
    goto LABEL_19;
  }

  v9 = v7;
  v10 = v8;
  v11 = v10;
  v12 = self != 0;
  if (self)
  {
    v13 = [v9 pendingUser];
    if (v13)
    {
      v14 = [(MKFCKModel *)MKFCKUser fetchWithLocalModel:v13 context:v11];
      if (v14)
      {
        v15 = [(MKFCKOutgoingInvitation *)self pendingUser];

        if (v15 != v14)
        {
          context = objc_autoreleasePoolPush();
          v16 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138543874;
            v34 = v29;
            v35 = 2112;
            v36 = v14;
            v37 = 2112;
            v38 = v16;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Linking user [%@] to invitation : [%@]", buf, 0x20u);
          }

          objc_autoreleasePoolPop(context);
          [(MKFCKOutgoingInvitation *)v16 setPendingUser:v14];
        }
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        v18 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543874;
          v34 = v30;
          v35 = 2112;
          v36 = v9;
          v37 = 2112;
          v38 = v13;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship between outgoing invitation and pending user yet: %@.pendingUser = %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(contexta);
      }
    }

    if ([(MKFCKHomeObject *)self _exportSiblingRelationshipsFromLocalModel:v9 localRelationship:@"allowedAccessories_" context:v11])
    {
      v20 = [v9 weekDayScheduleRules];
      v21 = [(MKFCKOutgoingInvitation *)self guestWeekDayScheduleRules];
      v22 = [MKFCKGuest _dictionaryRepresentationFromWeekDayScheduleRules:v20 cloudWeekDayScheduleRulesDictionary:v21];

      v23 = [(MKFCKOutgoingInvitation *)self guestWeekDayScheduleRules];
      LOBYTE(v21) = HMFEqualObjects();

      if ((v21 & 1) == 0)
      {
        [(MKFCKOutgoingInvitation *)self setGuestWeekDayScheduleRules:v22];
      }

      v24 = [v9 yearDayScheduleRules];
      v25 = [(MKFCKOutgoingInvitation *)self guestYearDayScheduleRules];
      v9 = [MKFCKGuest _dictionaryRepresentationFromYearDayScheduleRules:v24 cloudYearDayScheduleRulesDictionary:v25];

      v26 = [(MKFCKOutgoingInvitation *)self guestYearDayScheduleRules];
      LOBYTE(v24) = HMFEqualObjects();

      if ((v24 & 1) == 0)
      {
        [(MKFCKOutgoingInvitation *)self setGuestYearDayScheduleRules:v9];
      }

      goto LABEL_18;
    }

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

LABEL_18:
LABEL_20:

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (![(MKFCKModel *)self copyPropertiesIntoLocalModel:v7 context:v8])
  {
    goto LABEL_18;
  }

  v9 = v7;
  v10 = v8;
  if (self)
  {
    v11 = [(MKFCKOutgoingInvitation *)self pendingUser];
    if (v11)
    {
      v12 = [(MKFCKOutgoingInvitation *)self pendingUser];
      v13 = [v12 fetchLocalModelWithContext:v10];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (v15)
      {
        v16 = [v9 pendingUser];

        if (v16 != v15)
        {
          [v9 setPendingUser:v15];
        }
      }

      else
      {
        v17 = objc_autoreleasePoolPush();
        v18 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v20 = v32 = v17;
          *buf = 138543874;
          v34 = v20;
          v35 = 2112;
          v36 = v18;
          v37 = 2112;
          v38 = 0;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship between outgoing invitation and pending user yet: %@.pendingUser = %@", buf, 0x20u);

          v17 = v32;
        }

        objc_autoreleasePoolPop(v17);
      }
    }

    if ([(MKFCKHomeObject *)self _importSiblingRelationshipsIntoLocalModel:v9 localRelationship:@"allowedAccessories_" context:v10])
    {
      v21 = v10;
      v22 = v9;
      v23 = [v22 entity];
      v24 = [v23 relationshipsByName];
      v25 = [v24 objectForKeyedSubscript:@"weekDayScheduleRules_"];
      v26 = [MKFCKGuest _importWeekDayScheduleRulesIntoLocalModel:v22 fromCloudModel:self localRelationship:v25 cloudAttributeName:@"guestWeekDayScheduleRules" parentRelationshipName:@"invitation" context:v21];

      if (v26)
      {
        v27 = v21;
        v28 = v22;
        v9 = [v28 entity];
        v10 = [v9 relationshipsByName];
        v29 = [v10 objectForKeyedSubscript:@"yearDayScheduleRules_"];
        LOBYTE(self) = [MKFCKGuest _importYearDayScheduleRulesIntoLocalModel:v28 fromCloudModel:self localRelationship:v29 cloudAttributeName:@"guestYearDayScheduleRules" parentRelationshipName:@"invitation" context:v27];

        goto LABEL_17;
      }
    }

LABEL_18:
    LOBYTE(self) = 0;
    goto LABEL_19;
  }

LABEL_17:

LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
  return self;
}

@end