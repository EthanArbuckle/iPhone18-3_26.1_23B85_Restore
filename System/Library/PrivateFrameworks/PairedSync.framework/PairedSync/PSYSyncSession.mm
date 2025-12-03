@interface PSYSyncSession
- (BOOL)isEqual:(id)equal;
- (PSYSyncSession)initWithCoder:(id)coder;
- (PSYSyncSession)initWithPairingIdentifier:(id)identifier switchIndex:(int64_t)index sessionIdentifier:(id)sessionIdentifier syncSessionType:(unint64_t)type supportsMigrationSync:(BOOL)sync activities:(id)activities state:(unint64_t)state;
- (double)sessionProgress;
- (id)_deepCopy;
- (id)activityForService:(id)service;
- (id)completedActivities;
- (id)completedActivityLabelsSet;
- (id)description;
- (id)firstIncompleteActivity;
- (id)incompleteActivities;
- (id)runningActivities;
- (id)syncSessionByReplacingActivity:(id)activity;
- (id)syncSessionByUpdatingActivities:(id)activities;
- (id)syncSessionByUpdatingSyncSessionState:(unint64_t)state;
- (unint64_t)hash;
- (unint64_t)syncSessionType;
- (void)encodeWithCoder:(id)coder;
- (void)setActivities:(id)activities;
@end

@implementation PSYSyncSession

- (id)_deepCopy
{
  v3 = objc_alloc_init(objc_opt_class());
  pairingIdentifier = [(PSYSyncSession *)self pairingIdentifier];
  [v3 setPairingIdentifier:pairingIdentifier];

  [v3 setSwitchIndex:{-[PSYSyncSession switchIndex](self, "switchIndex")}];
  sessionIdentifier = [(PSYSyncSession *)self sessionIdentifier];
  [v3 setSessionIdentifier:sessionIdentifier];

  [v3 setSyncSessionType:{-[PSYSyncSession syncSessionType](self, "syncSessionType")}];
  [v3 setSupportsMigrationSync:{-[PSYSyncSession supportsMigrationSync](self, "supportsMigrationSync")}];
  v6 = objc_alloc(MEMORY[0x277CBEA60]);
  activities = [(PSYSyncSession *)self activities];
  v8 = [v6 initWithArray:activities copyItems:1];
  [v3 setActivities:v8];

  [v3 setSyncSessionState:{-[PSYSyncSession syncSessionState](self, "syncSessionState")}];

  return v3;
}

- (PSYSyncSession)initWithPairingIdentifier:(id)identifier switchIndex:(int64_t)index sessionIdentifier:(id)sessionIdentifier syncSessionType:(unint64_t)type supportsMigrationSync:(BOOL)sync activities:(id)activities state:(unint64_t)state
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  activitiesCopy = activities;
  v24.receiver = self;
  v24.super_class = PSYSyncSession;
  v19 = [(PSYSyncSession *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_pairingIdentifier, identifier);
    v20->_switchIndex = index;
    objc_storeStrong(&v20->_sessionIdentifier, sessionIdentifier);
    v20->_supportsMigrationSync = sync;
    v20->_syncSessionType = type;
    v21 = [activitiesCopy copy];
    activities = v20->_activities;
    v20->_activities = v21;

    v20->_syncSessionState = state;
  }

  return v20;
}

- (PSYSyncSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PSYSyncSession;
  v5 = [(PSYSyncSession *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingIdentifier"];
    pairingIdentifier = v5->_pairingIdentifier;
    v5->_pairingIdentifier = v6;

    v5->_switchIndex = [coderCopy decodeIntegerForKey:@"switchIndex"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v8;

    v5->_syncSessionType = [coderCopy decodeIntegerForKey:@"syncSessionType"];
    v5->_supportsMigrationSync = [coderCopy decodeBoolForKey:@"isMigrationSync"];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"activities"];

    [(PSYSyncSession *)v5 setActivities:v13];
    v5->_syncSessionState = [coderCopy decodeIntegerForKey:@"syncSessionState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  pairingIdentifier = self->_pairingIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:pairingIdentifier forKey:@"pairingIdentifier"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
  [coderCopy encodeInteger:self->_syncSessionType forKey:@"syncSessionType"];
  [coderCopy encodeBool:self->_supportsMigrationSync forKey:@"isMigrationSync"];
  [coderCopy encodeObject:self->_activities forKey:@"activities"];
  [coderCopy encodeInteger:self->_syncSessionState forKey:@"syncSessionState"];
  [coderCopy encodeInteger:self->_switchIndex forKey:@"switchIndex"];
}

- (void)setActivities:(id)activities
{
  if (self->_activities != activities)
  {
    activitiesCopy = activities;
    v6 = [activitiesCopy copy];
    activities = self->_activities;
    self->_activities = v6;

    v10 = [activitiesCopy valueForKeyPath:@"activityInfo.label"];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:activitiesCopy forKeys:v10];

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
  activities = [(PSYSyncSession *)self activities];
  v3 = [activities countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(activities);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 activityState] != 2)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [activities countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  activities = [(PSYSyncSession *)self activities];
  v5 = [activities countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(activities);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 activityState] == 1)
        {
          [array addObject:v9];
        }
      }

      v6 = [activities countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)incompleteActivities
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  activities = [(PSYSyncSession *)self activities];
  v5 = [activities countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(activities);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 activityState] != 2)
        {
          [array addObject:v9];
        }
      }

      v6 = [activities countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)completedActivities
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  activities = [(PSYSyncSession *)self activities];
  v5 = [activities countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(activities);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 activityState] == 2)
        {
          [array addObject:v9];
        }
      }

      v6 = [activities countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)completedActivityLabelsSet
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  activities = [(PSYSyncSession *)self activities];
  v5 = [activities countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(activities);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 activityState] == 2)
        {
          activityInfo = [v9 activityInfo];
          label = [activityInfo label];
          [v3 addObject:label];
        }
      }

      v6 = [activities countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)activityForService:(id)service
{
  v21 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
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
      activityInfo = [v10 activityInfo];
      machServiceName = [activityInfo machServiceName];
      v13 = [machServiceName isEqual:serviceCopy];

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

- (id)syncSessionByUpdatingActivities:(id)activities
{
  v18 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  selfCopy = self;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [activitiesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = selfCopy;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(activitiesCopy);
        }

        selfCopy = [(PSYSyncSession *)v10 syncSessionByReplacingActivity:*(*(&v13 + 1) + 8 * v9)];

        ++v9;
        v10 = selfCopy;
      }

      while (v7 != v9);
      v7 = [activitiesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (id)syncSessionByReplacingActivity:(id)activity
{
  activityCopy = activity;
  activityInfo = [activityCopy activityInfo];
  label = [activityInfo label];

  activities = self->_activities;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __49__PSYSyncSession_syncSessionByReplacingActivity___block_invoke;
  v21[3] = &unk_2799FB9E8;
  v8 = label;
  v22 = v8;
  v9 = [(NSArray *)activities indexOfObjectPassingTest:v21];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = 0;
  }

  else
  {
    v11 = v9;
    v12 = [(NSArray *)self->_activities objectAtIndexedSubscript:v9];
    if ([v12 isEqual:activityCopy])
    {
      selfCopy = self;
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
      v15[v11] = activityCopy;
      selfCopy = [(PSYSyncSession *)self _deepCopy];
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:v13];
      [(PSYSyncSession *)selfCopy setActivities:v16];
      free(v15);
    }
  }

  return selfCopy;
}

uint64_t __49__PSYSyncSession_syncSessionByReplacingActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activityInfo];
  v4 = [v3 label];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (id)syncSessionByUpdatingSyncSessionState:(unint64_t)state
{
  if (self->_syncSessionState == state)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = objc_alloc_init(objc_opt_class());
    objc_storeStrong(&selfCopy->_pairingIdentifier, self->_pairingIdentifier);
    selfCopy->_switchIndex = self->_switchIndex;
    objc_storeStrong(&selfCopy->_sessionIdentifier, self->_sessionIdentifier);
    [(PSYSyncSession *)selfCopy setActivities:self->_activities];
    selfCopy->_syncSessionType = self->_syncSessionType;
    selfCopy->_supportsMigrationSync = self->_supportsMigrationSync;
    selfCopy->_syncSessionState = state;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_sessionIdentifier hash];
  v4 = [(NSUUID *)self->_pairingIdentifier hash]^ v3;
  return v4 ^ [(NSArray *)self->_activities hash]^ self->_switchIndex;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
  string = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uUIDString = [(NSUUID *)self->_pairingIdentifier UUIDString];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_switchIndex];
  uUIDString2 = [(NSUUID *)self->_sessionIdentifier UUIDString];
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
  [string appendFormat:@"<%@ %p;\n\tpairingID=%@[%@] session=%@ type=%@ migration=%@ state='%@' progress=%1.3f activities:\n", v5, self, uUIDString, v7, uUIDString2, v9, v10, v12, v13];

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
        activityInfo = [v18 activityInfo];
        label = [activityInfo label];
        v22 = [label stringByReplacingOccurrencesOfString:@"com.apple.pairedsync." withString:&stru_286FBD918];

        activityState = [v18 activityState];
        v24 = &stru_286FBD918;
        if (activityState <= 2)
        {
          v24 = off_2799FBA08[activityState];
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
          startDropoutCount = [v18 startDropoutCount];
          v27 = ((startDropoutCount != v40) | v34 & 1) == 0;
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
          error = [v18 error];

          if (error)
          {
            error2 = [v18 error];
            [v19 appendFormat:@"; error=%@", error2];
          }
        }

        [string appendString:v19];
        [string appendString:@"\n"];
      }

      v15 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v15);
  }

  [string appendString:@">"];
  v32 = *MEMORY[0x277D85DE8];

  return string;
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