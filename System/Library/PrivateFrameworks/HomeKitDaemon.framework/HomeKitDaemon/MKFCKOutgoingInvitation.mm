@interface MKFCKOutgoingInvitation
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
@end

@implementation MKFCKOutgoingInvitation

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  if (![(MKFCKModel *)self copyPropertiesFromLocalModel:modelCopy context:contextCopy])
  {
    goto LABEL_19;
  }

  v9 = modelCopy;
  v10 = contextCopy;
  v11 = v10;
  v12 = self != 0;
  if (self)
  {
    pendingUser = [v9 pendingUser];
    if (pendingUser)
    {
      v14 = [(MKFCKModel *)MKFCKUser fetchWithLocalModel:pendingUser context:v11];
      if (v14)
      {
        pendingUser2 = [(MKFCKOutgoingInvitation *)self pendingUser];

        if (pendingUser2 != v14)
        {
          context = objc_autoreleasePoolPush();
          selfCopy = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138543874;
            v34 = v29;
            v35 = 2112;
            v36 = v14;
            v37 = 2112;
            v38 = selfCopy;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Linking user [%@] to invitation : [%@]", buf, 0x20u);
          }

          objc_autoreleasePoolPop(context);
          [(MKFCKOutgoingInvitation *)selfCopy setPendingUser:v14];
        }
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543874;
          v34 = v30;
          v35 = 2112;
          v36 = v9;
          v37 = 2112;
          v38 = pendingUser;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship between outgoing invitation and pending user yet: %@.pendingUser = %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(contexta);
      }
    }

    if ([(MKFCKHomeObject *)self _exportSiblingRelationshipsFromLocalModel:v9 localRelationship:@"allowedAccessories_" context:v11])
    {
      weekDayScheduleRules = [v9 weekDayScheduleRules];
      guestWeekDayScheduleRules = [(MKFCKOutgoingInvitation *)self guestWeekDayScheduleRules];
      v22 = [MKFCKGuest _dictionaryRepresentationFromWeekDayScheduleRules:weekDayScheduleRules cloudWeekDayScheduleRulesDictionary:guestWeekDayScheduleRules];

      guestWeekDayScheduleRules2 = [(MKFCKOutgoingInvitation *)self guestWeekDayScheduleRules];
      LOBYTE(guestWeekDayScheduleRules) = HMFEqualObjects();

      if ((guestWeekDayScheduleRules & 1) == 0)
      {
        [(MKFCKOutgoingInvitation *)self setGuestWeekDayScheduleRules:v22];
      }

      yearDayScheduleRules = [v9 yearDayScheduleRules];
      guestYearDayScheduleRules = [(MKFCKOutgoingInvitation *)self guestYearDayScheduleRules];
      v9 = [MKFCKGuest _dictionaryRepresentationFromYearDayScheduleRules:yearDayScheduleRules cloudYearDayScheduleRulesDictionary:guestYearDayScheduleRules];

      guestYearDayScheduleRules2 = [(MKFCKOutgoingInvitation *)self guestYearDayScheduleRules];
      LOBYTE(yearDayScheduleRules) = HMFEqualObjects();

      if ((yearDayScheduleRules & 1) == 0)
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

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  if (![(MKFCKModel *)self copyPropertiesIntoLocalModel:modelCopy context:contextCopy])
  {
    goto LABEL_18;
  }

  entity2 = modelCopy;
  relationshipsByName2 = contextCopy;
  if (self)
  {
    pendingUser = [(MKFCKOutgoingInvitation *)self pendingUser];
    if (pendingUser)
    {
      pendingUser2 = [(MKFCKOutgoingInvitation *)self pendingUser];
      v13 = [pendingUser2 fetchLocalModelWithContext:relationshipsByName2];

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
        pendingUser3 = [entity2 pendingUser];

        if (pendingUser3 != v15)
        {
          [entity2 setPendingUser:v15];
        }
      }

      else
      {
        v17 = objc_autoreleasePoolPush();
        selfCopy = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v20 = v32 = v17;
          *buf = 138543874;
          v34 = v20;
          v35 = 2112;
          v36 = selfCopy;
          v37 = 2112;
          v38 = 0;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship between outgoing invitation and pending user yet: %@.pendingUser = %@", buf, 0x20u);

          v17 = v32;
        }

        objc_autoreleasePoolPop(v17);
      }
    }

    if ([(MKFCKHomeObject *)self _importSiblingRelationshipsIntoLocalModel:entity2 localRelationship:@"allowedAccessories_" context:relationshipsByName2])
    {
      v21 = relationshipsByName2;
      v22 = entity2;
      entity = [v22 entity];
      relationshipsByName = [entity relationshipsByName];
      v25 = [relationshipsByName objectForKeyedSubscript:@"weekDayScheduleRules_"];
      v26 = [MKFCKGuest _importWeekDayScheduleRulesIntoLocalModel:v22 fromCloudModel:self localRelationship:v25 cloudAttributeName:@"guestWeekDayScheduleRules" parentRelationshipName:@"invitation" context:v21];

      if (v26)
      {
        v27 = v21;
        v28 = v22;
        entity2 = [v28 entity];
        relationshipsByName2 = [entity2 relationshipsByName];
        v29 = [relationshipsByName2 objectForKeyedSubscript:@"yearDayScheduleRules_"];
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