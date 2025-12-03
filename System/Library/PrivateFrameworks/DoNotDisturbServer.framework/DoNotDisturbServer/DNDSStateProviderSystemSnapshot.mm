@interface DNDSStateProviderSystemSnapshot
- (BOOL)isEqual:(id)equal;
- (id)_initWithAssertions:(id)assertions activeAssertionUUIDs:(id)ds activeDateIntervalByAssertionUUID:(id)d interruptionBehaviorSetting:(unint64_t)setting lostModeState:(unint64_t)state lastUpdate:(id)update;
- (id)_initWithSnapshot:(id)snapshot;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSStateProviderSystemSnapshot

- (id)_initWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  assertions = [snapshotCopy assertions];
  activeAssertionUUIDs = [snapshotCopy activeAssertionUUIDs];
  activeDateIntervalByAssertionUUID = [snapshotCopy activeDateIntervalByAssertionUUID];
  interruptionBehaviorSetting = [snapshotCopy interruptionBehaviorSetting];
  lostModeState = [snapshotCopy lostModeState];
  lastUpdate = [snapshotCopy lastUpdate];

  v11 = [(DNDSStateProviderSystemSnapshot *)self _initWithAssertions:assertions activeAssertionUUIDs:activeAssertionUUIDs activeDateIntervalByAssertionUUID:activeDateIntervalByAssertionUUID interruptionBehaviorSetting:interruptionBehaviorSetting lostModeState:lostModeState lastUpdate:lastUpdate];
  return v11;
}

- (id)_initWithAssertions:(id)assertions activeAssertionUUIDs:(id)ds activeDateIntervalByAssertionUUID:(id)d interruptionBehaviorSetting:(unint64_t)setting lostModeState:(unint64_t)state lastUpdate:(id)update
{
  assertionsCopy = assertions;
  dsCopy = ds;
  dCopy = d;
  updateCopy = update;
  v30.receiver = self;
  v30.super_class = DNDSStateProviderSystemSnapshot;
  v18 = [(DNDSStateProviderSystemSnapshot *)&v30 init];
  if (v18)
  {
    v19 = [assertionsCopy copy];
    v20 = v19;
    v21 = MEMORY[0x277CBEBF8];
    if (v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v18->_assertions, v22);

    v23 = [dsCopy copy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v21;
    }

    objc_storeStrong(&v18->_activeAssertionUUIDs, v25);

    v26 = [dCopy copy];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v18->_activeDateIntervalByAssertionUUID, v28);

    v18->_interruptionBehaviorSetting = setting;
    v18->_lostModeState = state;
    objc_storeStrong(&v18->_lastUpdate, update);
  }

  return v18;
}

- (unint64_t)hash
{
  assertions = [(DNDSStateProviderSystemSnapshot *)self assertions];
  v4 = [assertions hash];
  activeAssertionUUIDs = [(DNDSStateProviderSystemSnapshot *)self activeAssertionUUIDs];
  v6 = [activeAssertionUUIDs hash] ^ v4;
  activeDateIntervalByAssertionUUID = [(DNDSStateProviderSystemSnapshot *)self activeDateIntervalByAssertionUUID];
  v8 = [activeDateIntervalByAssertionUUID hash];
  v9 = v6 ^ v8 ^ [(DNDSStateProviderSystemSnapshot *)self interruptionBehaviorSetting];
  lostModeState = [(DNDSStateProviderSystemSnapshot *)self lostModeState];
  lastUpdate = [(DNDSStateProviderSystemSnapshot *)self lastUpdate];
  v12 = lostModeState ^ [lastUpdate hash];

  return v9 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      assertions = [(DNDSStateProviderSystemSnapshot *)self assertions];
      assertions2 = [(DNDSStateProviderSystemSnapshot *)v6 assertions];
      if (assertions != assertions2)
      {
        assertions3 = [(DNDSStateProviderSystemSnapshot *)self assertions];
        if (!assertions3)
        {
          v13 = 0;
          goto LABEL_50;
        }

        v10 = assertions3;
        assertions4 = [(DNDSStateProviderSystemSnapshot *)v6 assertions];
        if (!assertions4)
        {
          v13 = 0;
LABEL_49:

          goto LABEL_50;
        }

        assertions5 = [(DNDSStateProviderSystemSnapshot *)self assertions];
        assertions6 = [(DNDSStateProviderSystemSnapshot *)v6 assertions];
        if (![assertions5 isEqual:assertions6])
        {
          v13 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v51 = assertions6;
        v52 = assertions5;
        v53 = assertions4;
        v54 = v10;
      }

      activeAssertionUUIDs = [(DNDSStateProviderSystemSnapshot *)self activeAssertionUUIDs];
      activeAssertionUUIDs2 = [(DNDSStateProviderSystemSnapshot *)v6 activeAssertionUUIDs];
      if (activeAssertionUUIDs != activeAssertionUUIDs2)
      {
        activeAssertionUUIDs3 = [(DNDSStateProviderSystemSnapshot *)self activeAssertionUUIDs];
        if (activeAssertionUUIDs3)
        {
          v17 = activeAssertionUUIDs3;
          activeAssertionUUIDs4 = [(DNDSStateProviderSystemSnapshot *)v6 activeAssertionUUIDs];
          if (activeAssertionUUIDs4)
          {
            v19 = activeAssertionUUIDs4;
            v50 = activeAssertionUUIDs;
            activeAssertionUUIDs5 = [(DNDSStateProviderSystemSnapshot *)self activeAssertionUUIDs];
            assertions6 = [(DNDSStateProviderSystemSnapshot *)v6 activeAssertionUUIDs];
            if (([activeAssertionUUIDs5 isEqual:assertions6] & 1) == 0)
            {

              goto LABEL_46;
            }

            v45 = activeAssertionUUIDs5;
            v46 = v19;
            v47 = v17;
            goto LABEL_17;
          }
        }

        goto LABEL_46;
      }

      v50 = activeAssertionUUIDs;
LABEL_17:
      activeDateIntervalByAssertionUUID = [(DNDSStateProviderSystemSnapshot *)self activeDateIntervalByAssertionUUID];
      activeDateIntervalByAssertionUUID2 = [(DNDSStateProviderSystemSnapshot *)v6 activeDateIntervalByAssertionUUID];
      if (activeDateIntervalByAssertionUUID == activeDateIntervalByAssertionUUID2)
      {
        v48 = activeDateIntervalByAssertionUUID;
        v49 = assertions6;
        goto LABEL_25;
      }

      activeDateIntervalByAssertionUUID3 = [(DNDSStateProviderSystemSnapshot *)self activeDateIntervalByAssertionUUID];
      if (activeDateIntervalByAssertionUUID3)
      {
        v24 = activeDateIntervalByAssertionUUID3;
        activeDateIntervalByAssertionUUID4 = [(DNDSStateProviderSystemSnapshot *)v6 activeDateIntervalByAssertionUUID];
        if (activeDateIntervalByAssertionUUID4)
        {
          v48 = activeDateIntervalByAssertionUUID;
          v49 = assertions6;
          v44 = activeDateIntervalByAssertionUUID4;
          activeDateIntervalByAssertionUUID = [(DNDSStateProviderSystemSnapshot *)self activeDateIntervalByAssertionUUID];
          activeDateIntervalByAssertionUUID5 = [(DNDSStateProviderSystemSnapshot *)v6 activeDateIntervalByAssertionUUID];
          if ([activeDateIntervalByAssertionUUID isEqual:activeDateIntervalByAssertionUUID5])
          {
            v42 = activeDateIntervalByAssertionUUID5;
            v43 = v24;
LABEL_25:
            interruptionBehaviorSetting = [(DNDSStateProviderSystemSnapshot *)self interruptionBehaviorSetting];
            if (interruptionBehaviorSetting == [(DNDSStateProviderSystemSnapshot *)v6 interruptionBehaviorSetting]&& (v28 = [(DNDSStateProviderSystemSnapshot *)self lostModeState], v28 == [(DNDSStateProviderSystemSnapshot *)v6 lostModeState]))
            {
              lastUpdate = [(DNDSStateProviderSystemSnapshot *)self lastUpdate];
              lastUpdate2 = [(DNDSStateProviderSystemSnapshot *)v6 lastUpdate];
              if (lastUpdate != lastUpdate2)
              {
                v41 = lastUpdate2;
                lastUpdate3 = [(DNDSStateProviderSystemSnapshot *)self lastUpdate];
                v32 = v49;
                if (lastUpdate3)
                {
                  v40 = lastUpdate3;
                  lastUpdate4 = [(DNDSStateProviderSystemSnapshot *)v6 lastUpdate];
                  if (lastUpdate4)
                  {
                    v39 = lastUpdate4;
                    lastUpdate5 = [(DNDSStateProviderSystemSnapshot *)self lastUpdate];
                    [(DNDSStateProviderSystemSnapshot *)v6 lastUpdate];
                    v35 = v34 = lastUpdate;
                    v13 = [lastUpdate5 isEqual:v35];

                    lastUpdate = v34;
                    v32 = v49;

                    lastUpdate4 = v39;
                  }

                  else
                  {
                    v13 = 0;
                  }
                }

                else
                {

                  v13 = 0;
                }

                v36 = v48;
                goto LABEL_33;
              }

              v13 = 1;
            }

            else
            {
              v13 = 0;
            }

            v36 = v48;
            v32 = v49;
LABEL_33:
            if (v36 != activeDateIntervalByAssertionUUID2)
            {
            }

            if (v50 != activeAssertionUUIDs2)
            {
            }

LABEL_47:
            assertions4 = v53;
            v10 = v54;
            assertions5 = v52;
            assertions6 = v51;
            if (assertions != assertions2)
            {
              goto LABEL_48;
            }

LABEL_50:

            goto LABEL_51;
          }

          activeDateIntervalByAssertionUUID4 = v44;
          activeDateIntervalByAssertionUUID = v48;
          assertions6 = v49;
        }
      }

      if (v50 != activeAssertionUUIDs2)
      {
      }

LABEL_46:
      v13 = 0;
      goto LABEL_47;
    }

    v13 = 0;
  }

LABEL_51:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  assertions = [(DNDSStateProviderSystemSnapshot *)self assertions];
  activeAssertionUUIDs = [(DNDSStateProviderSystemSnapshot *)self activeAssertionUUIDs];
  activeDateIntervalByAssertionUUID = [(DNDSStateProviderSystemSnapshot *)self activeDateIntervalByAssertionUUID];
  [(DNDSStateProviderSystemSnapshot *)self interruptionBehaviorSetting];
  v8 = DNDStringFromInterruptionBehaviorSetting();
  v9 = DNDSStringFromLostModeState([(DNDSStateProviderSystemSnapshot *)self lostModeState]);
  lastUpdate = [(DNDSStateProviderSystemSnapshot *)self lastUpdate];
  v11 = [v3 stringWithFormat:@"<%@: %p assertions: %@; activeAssertionUUIDs: %@; activeDateIntervalByAssertionUUID: %@; interruptionBehaviorSetting: %@; lostModeState: %@; lastUpdate: %@>", v4, self, assertions, activeAssertionUUIDs, activeDateIntervalByAssertionUUID, v8, v9, lastUpdate];;

  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableStateProviderSystemSnapshot alloc];

  return [(DNDSStateProviderSystemSnapshot *)v4 _initWithSnapshot:self];
}

@end