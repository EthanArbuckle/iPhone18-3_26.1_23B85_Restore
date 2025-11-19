@interface DNDSStateProvider
- (DNDSStateProvider)initWithModeConfigurationManager:(id)a3;
- (id)recalculateStateForSnapshot:(id)a3;
@end

@implementation DNDSStateProvider

- (DNDSStateProvider)initWithModeConfigurationManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DNDSStateProvider;
  v6 = [(DNDSStateProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeConfigurationManager, a3);
  }

  return v7;
}

- (id)recalculateStateForSnapshot:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v79 = a3;
  [(DNDSStateProvider *)self setLastSystemSnapshot:?];
  v3 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [v79 activeAssertionUUIDs];
    *buf = 138543362;
    v91 = v5;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Calculate DND state for snapshot: activeAssertionUUIDs=%{public}@", buf, 0xCu);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v6 = [v79 assertions];
  v7 = [v6 countByEnumeratingWithState:&v84 objects:v89 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v85;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v85 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = DNDSLogStateProvider;
        if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(&v84 + 1) + 8 * i);
          *buf = 138543362;
          v91 = v12;
          _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "assertion for snapshot: assertion=%{public}@", buf, 0xCu);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v84 objects:v89 count:16];
    }

    while (v8);
  }

  v13 = [v79 activeAssertionUUIDs];
  if ([v13 count])
  {
    v14 = [v79 lostModeState];

    if (v14 != 1)
    {
      if ([v79 interruptionBehaviorSetting] == 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  v15 = 0;
LABEL_19:
  v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = objc_alloc_init(DNDSModeResolutionService);
  v75 = [(DNDSModeResolutionService *)v16 recalculateModeForSnapshot:v79];
  v17 = [v79 assertions];
  v18 = [v17 count];

  if (!v18)
  {
    v58 = [MEMORY[0x277CBEAA8] distantFuture];
    v59 = 0;
    goto LABEL_52;
  }

  v67 = v15;
  v68 = v16;
  v73 = [MEMORY[0x277CBEAA8] distantPast];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = [v79 assertions];
  v77 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
  if (!v77)
  {
    v70 = 0;
    goto LABEL_51;
  }

  v70 = 0;
  v76 = *v81;
  v19 = v75;
  do
  {
    for (j = 0; j != v77; ++j)
    {
      if (*v81 != v76)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v80 + 1) + 8 * j);
      v22 = [v79 activeDateIntervalByAssertionUUID];
      v23 = [v21 UUID];
      v24 = [v22 objectForKey:v23];

      v25 = [v21 details];
      v26 = [v25 userVisibleEndDate];

      v27 = [v21 details];
      v28 = [v27 lifetime];
      v29 = [v28 lifetimeType];

      v30 = [v79 activeAssertionUUIDs];
      v31 = [v21 UUID];
      v32 = [v30 containsObject:v31];

      if (v32)
      {
        v33 = objc_alloc(MEMORY[0x277D05AA8]);
        v34 = [v21 source];
        [v34 clientIdentifier];
        v35 = v29;
        v37 = v36 = v26;
        [v21 details];
        v39 = v38 = v24;
        v40 = [v39 modeIdentifier];
        v41 = v33;
        v42 = v35;
        v43 = [v41 initWithClientIdentifier:v37 modeIdentifier:v40 lifetimeType:v35 activeDateInterval:v38 userVisibleEndDate:v36];

        v26 = v36;
        [v71 addObject:v43];
        if (v36)
        {
          v44 = v36;
        }

        else
        {
          v44 = [v38 endDate];
        }

        v47 = v44;
        v19 = v75;
        v24 = v38;

        v29 = v42;
        if (v75)
        {
LABEL_33:
          v78 = v26;
          v48 = [v21 details];
          v49 = [v48 modeIdentifier];
          if (v49 == v19)
          {
            v56 = 0;
          }

          else
          {
            v74 = v24;
            v50 = [v21 details];
            v51 = [v50 modeIdentifier];
            if (v51)
            {
              v52 = [v21 details];
              v53 = [v52 modeIdentifier];
              v54 = v29;
              v55 = [v53 isEqual:v75];

              v19 = v75;
              v56 = v55 ^ 1;
              v29 = v54;
            }

            else
            {
              v56 = 1;
            }

            v24 = v74;
          }

          v26 = v78;
          if (!v47)
          {
            goto LABEL_46;
          }

          goto LABEL_43;
        }
      }

      else
      {
        v45 = [v79 activeAssertionUUIDs];
        v46 = [v45 count];

        if (v46)
        {
          v47 = 0;
          if (v19)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v47 = [v24 startDate];
          if (v19)
          {
            goto LABEL_33;
          }
        }
      }

      v56 = 0;
      if (!v47)
      {
        goto LABEL_46;
      }

LABEL_43:
      if ((v56 & 1) == 0 && [v73 compare:v47] == -1)
      {
        v57 = v47;

        v70 = v29;
        v73 = v57;
      }

LABEL_46:
    }

    v77 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
  }

  while (v77);
LABEL_51:

  v15 = v67;
  v16 = v68;
  v58 = v73;
  v59 = v70;
LABEL_52:
  if (v75)
  {
    v60 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationForModeIdentifier:v75 withError:0];
  }

  else
  {
    v60 = 0;
  }

  v61 = objc_alloc(MEMORY[0x277D05AA0]);
  v62 = [v79 lastUpdate];
  v63 = [v61 initWithSuppressionState:v15 activeModeAssertionMetadata:v71 startDate:v62 userVisibleTransitionDate:v58 userVisibleTransitionLifetimeType:v59 activeModeConfiguration:v60];

  v64 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v91 = v63;
    _os_log_impl(&dword_24912E000, v64, OS_LOG_TYPE_DEFAULT, "Current DND state was calculated: state=%{private}@", buf, 0xCu);
  }

  [(DNDSStateProvider *)self setLastCalculatedState:v63];

  v65 = *MEMORY[0x277D85DE8];

  return v63;
}

@end