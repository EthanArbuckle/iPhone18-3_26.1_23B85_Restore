@interface PSYSyncSession
- (BOOL)isEqual:(id)a3;
- (PSYSyncSession)initWithCoder:(id)a3;
- (PSYSyncSession)initWithPairingIdentifier:(id)a3 switchIndex:(int64_t)a4 sessionIdentifier:(id)a5 syncSessionType:(unint64_t)a6 supportsMigrationSync:(BOOL)a7 activities:(id)a8 state:(unint64_t)a9;
- (double)sessionProgress;
- (id)_deepCopy;
- (id)activityForService:(id)a3;
- (id)completedActivities;
- (id)completedActivityLabelsSet;
- (id)description;
- (id)firstIncompleteActivity;
- (id)incompleteActivities;
- (id)runningActivities;
- (id)syncSessionByReplacingActivity:(id)a3;
- (id)syncSessionByUpdatingActivities:(id)a3;
- (id)syncSessionByUpdatingSyncSessionState:(unint64_t)a3;
- (unint64_t)hash;
- (unint64_t)syncSessionType;
- (void)encodeWithCoder:(id)a3;
- (void)setActivities:(id)a3;
@end

@implementation PSYSyncSession

- (id)_deepCopy
{
  v3 = objc_alloc_init(objc_opt_class());
  v4 = [(PSYSyncSession *)self pairingIdentifier];
  [v3 setPairingIdentifier:v4];

  [v3 setSwitchIndex:{-[PSYSyncSession switchIndex](self, "switchIndex")}];
  v5 = [(PSYSyncSession *)self sessionIdentifier];
  [v3 setSessionIdentifier:v5];

  [v3 setSyncSessionType:{-[PSYSyncSession syncSessionType](self, "syncSessionType")}];
  [v3 setSupportsMigrationSync:{-[PSYSyncSession supportsMigrationSync](self, "supportsMigrationSync")}];
  v6 = objc_alloc(MEMORY[0x277CBEA60]);
  v7 = [(PSYSyncSession *)self activities];
  v8 = [v6 initWithArray:v7 copyItems:1];
  [v3 setActivities:v8];

  [v3 setSyncSessionState:{-[PSYSyncSession syncSessionState](self, "syncSessionState")}];

  return v3;
}

- (PSYSyncSession)initWithPairingIdentifier:(id)a3 switchIndex:(int64_t)a4 sessionIdentifier:(id)a5 syncSessionType:(unint64_t)a6 supportsMigrationSync:(BOOL)a7 activities:(id)a8 state:(unint64_t)a9
{
  v16 = a3;
  v17 = a5;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = PSYSyncSession;
  v19 = [(PSYSyncSession *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_pairingIdentifier, a3);
    v20->_switchIndex = a4;
    objc_storeStrong(&v20->_sessionIdentifier, a5);
    v20->_supportsMigrationSync = a7;
    v20->_syncSessionType = a6;
    v21 = [v18 copy];
    activities = v20->_activities;
    v20->_activities = v21;

    v20->_syncSessionState = a9;
  }

  return v20;
}

- (PSYSyncSession)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PSYSyncSession;
  v5 = [(PSYSyncSession *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingIdentifier"];
    pairingIdentifier = v5->_pairingIdentifier;
    v5->_pairingIdentifier = v6;

    v5->_switchIndex = [v4 decodeIntegerForKey:@"switchIndex"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v8;

    v5->_syncSessionType = [v4 decodeIntegerForKey:@"syncSessionType"];
    v5->_supportsMigrationSync = [v4 decodeBoolForKey:@"isMigrationSync"];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"activities"];

    [(PSYSyncSession *)v5 setActivities:v13];
    v5->_syncSessionState = [v4 decodeIntegerForKey:@"syncSessionState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  pairingIdentifier = self->_pairingIdentifier;
  v5 = a3;
  [v5 encodeObject:pairingIdentifier forKey:@"pairingIdentifier"];
  [v5 encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
  [v5 encodeInteger:self->_syncSessionType forKey:@"syncSessionType"];
  [v5 encodeBool:self->_supportsMigrationSync forKey:@"isMigrationSync"];
  [v5 encodeObject:self->_activities forKey:@"activities"];
  [v5 encodeInteger:self->_syncSessionState forKey:@"syncSessionState"];
  [v5 encodeInteger:self->_switchIndex forKey:@"switchIndex"];
}

- (void)setActivities:(id)a3
{
  if (self->_activities != a3)
  {
    v5 = a3;
    v6 = [v5 copy];
    activities = self->_activities;
    self->_activities = v6;

    v10 = [v5 valueForKeyPath:@"activityInfo.label"];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v10];

    activityMap = self->_activityMap;
    self->_activityMap = v8;
  }
}

- (id)firstIncompleteActivity
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(PSYSyncSession *)self activities];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 activityState] != 2)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)runningActivities
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PSYSyncSession *)self activities];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 activityState] == 1)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)incompleteActivities
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PSYSyncSession *)self activities];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 activityState] != 2)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)completedActivities
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PSYSyncSession *)self activities];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 activityState] == 2)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)completedActivityLabelsSet
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(PSYSyncSession *)self activities];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 activityState] == 2)
        {
          v10 = [v9 activityInfo];
          v11 = [v10 label];
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)activityForService:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_activityMap;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [(NSDictionary *)self->_activityMap objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v9), v16];
      v11 = [v10 activityInfo];
      v12 = [v11 machServiceName];
      v13 = [v12 isEqual:v4];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)syncSessionByUpdatingActivities:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = v5;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v5 = [(PSYSyncSession *)v10 syncSessionByReplacingActivity:*(*(&v13 + 1) + 8 * v9)];

        ++v9;
        v10 = v5;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)syncSessionByReplacingActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityInfo];
  v6 = [v5 label];

  activities = self->_activities;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __49__PSYSyncSession_syncSessionByReplacingActivity___block_invoke;
  v21[3] = &unk_2799FB9E8;
  v8 = v6;
  v22 = v8;
  v9 = [(NSArray *)activities indexOfObjectPassingTest:v21];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = v9;
    v12 = [(NSArray *)self->_activities objectAtIndexedSubscript:v9];
    if ([v12 isEqual:v4])
    {
      v10 = self;
    }

    else
    {
      v13 = [(NSArray *)self->_activities count];
      v14 = malloc_type_calloc(v13, 8uLL, 0x80040B8603338uLL);
      if (!v14)
      {
        v18 = psy_log();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

        if (v19)
        {
          v20 = psy_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [PSYSyncSession syncSessionByReplacingActivity:v20];
          }
        }

        abort();
      }

      v15 = v14;
      [(NSArray *)self->_activities getObjects:v14 range:0, v13];
      v15[v11] = v4;
      v10 = [(PSYSyncSession *)self _deepCopy];
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:v13];
      [(PSYSyncSession *)v10 setActivities:v16];
      free(v15);
    }
  }

  return v10;
}

uint64_t __49__PSYSyncSession_syncSessionByReplacingActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activityInfo];
  v4 = [v3 label];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (id)syncSessionByUpdatingSyncSessionState:(unint64_t)a3
{
  if (self->_syncSessionState == a3)
  {
    v4 = self;
  }

  else
  {
    v4 = objc_alloc_init(objc_opt_class());
    objc_storeStrong(&v4->_pairingIdentifier, self->_pairingIdentifier);
    v4->_switchIndex = self->_switchIndex;
    objc_storeStrong(&v4->_sessionIdentifier, self->_sessionIdentifier);
    [(PSYSyncSession *)v4 setActivities:self->_activities];
    v4->_syncSessionType = self->_syncSessionType;
    v4->_supportsMigrationSync = self->_supportsMigrationSync;
    v4->_syncSessionState = a3;
  }

  return v4;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_sessionIdentifier hash];
  v4 = [(NSUUID *)self->_pairingIdentifier hash]^ v3;
  return v4 ^ [(NSArray *)self->_activities hash]^ self->_switchIndex;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (v5->_syncSessionType == self->_syncSessionType && v5->_supportsMigrationSync == self->_supportsMigrationSync && v5->_syncSessionState == self->_syncSessionState && [(NSUUID *)v5->_pairingIdentifier isEqual:self->_pairingIdentifier]&& v6->_switchIndex == self->_switchIndex && [(NSUUID *)v6->_sessionIdentifier isEqual:self->_sessionIdentifier])
      {
        v7 = [(NSArray *)v6->_activities isEqualToArray:self->_activities];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (double)sessionProgress
{
  v22 = *MEMORY[0x277D85DE8];
  result = 1.0;
  if (self->_syncSessionState != 2)
  {
    v4 = [(NSArray *)self->_activities count];
    if (v4)
    {
      v5 = v4;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = self->_activities;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v18;
        v11 = 0.0;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            if ([v13 activityState] == 2)
            {
              ++v9;
            }

            else if ([v13 activityState] == 1)
            {
              [v13 activityProgress];
              v11 = v11 + v14;
            }
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v8);
        v15 = v9;
      }

      else
      {
        v15 = 0.0;
        v11 = 0.0;
      }

      result = v15 / v5 + v11 / v5;
    }

    else
    {
      result = 0.0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)description
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSUUID *)self->_pairingIdentifier UUIDString];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_switchIndex];
  v8 = [(NSUUID *)self->_sessionIdentifier UUIDString];
  v9 = NSStringfromPSYSyncSessionType(self->_syncSessionType);
  if (self->_supportsMigrationSync)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  syncSessionState = self->_syncSessionState;
  if (syncSessionState > 2)
  {
    v12 = &stru_286FBD918;
  }

  else
  {
    v12 = off_2799FBA08[syncSessionState];
  }

  [(PSYSyncSession *)self sessionProgress];
  [v3 appendFormat:@"<%@ %p;\n\tpairingID=%@[%@] session=%@ type=%@ migration=%@ state='%@' progress=%1.3f activities:\n", v5, self, v6, v7, v8, v9, v10, v12, v13];

  v40 = 0;
  v34 = [MEMORY[0x277D37B38] getDropoutCounter:&v40];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = self->_activities;
  v14 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        v19 = [@"\t" mutableCopy];
        v20 = [v18 activityInfo];
        v21 = [v20 label];
        v22 = [v21 stringByReplacingOccurrencesOfString:@"com.apple.pairedsync." withString:&stru_286FBD918];

        v23 = [v18 activityState];
        v24 = &stru_286FBD918;
        if (v23 <= 2)
        {
          v24 = off_2799FBA08[v23];
        }

        [v19 appendFormat:@"%@ '%@'", v22, v24];
        if ([v18 activityState] != 1)
        {
          if (![v18 activityState])
          {
            v25 = 63;
            goto LABEL_26;
          }

          v27 = [v18 sawADropout] == 0;
          goto LABEL_22;
        }

        if ([v18 sawADropout])
        {
          v25 = 49;
        }

        else
        {
          v25 = 63;
        }

        if ([v18 startDropoutCount])
        {
          v26 = [v18 startDropoutCount];
          v27 = ((v26 != v40) | v34 & 1) == 0;
LABEL_22:
          if (v27)
          {
            v25 = 48;
          }

          else
          {
            v25 = 49;
          }
        }

LABEL_26:
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@" X%c", v25];
        [v19 appendString:v28];

        if ([v18 activityState] == 1)
        {
          [v18 activityProgress];
          [v19 appendFormat:@"; progress=%1.3f", v29];
        }

        else if ([v18 activityState] == 2)
        {
          v30 = [v18 error];

          if (v30)
          {
            v31 = [v18 error];
            [v19 appendFormat:@"; error=%@", v31];
          }
        }

        [v3 appendString:v19];
        [v3 appendString:@"\n"];
      }

      v15 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v15);
  }

  [v3 appendString:@">"];
  v32 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)syncSessionType
{
  if (self->_syncSessionType == 2)
  {
    syncSessionType = 0;
  }

  else
  {
    syncSessionType = self->_syncSessionType;
  }

  if (self->_supportsMigrationSync)
  {
    return self->_syncSessionType;
  }

  else
  {
    return syncSessionType;
  }
}

@end