@interface MSPSenderStrategy
+ (BOOL)_validateState:(id)a3 forEvent:(unint64_t)a4;
- (BOOL)removeParticipant:(id)a3 forReason:(unint64_t)a4;
- (BOOL)setState:(id)a3 forEvent:(unint64_t)a4;
- (MSPSenderStrategy)init;
- (void)_setState:(id)a3;
- (void)addParticipants:(id)a3;
- (void)removeParticipants:(id)a3;
@end

@implementation MSPSenderStrategy

- (MSPSenderStrategy)init
{
  v6.receiver = self;
  v6.super_class = MSPSenderStrategy;
  v2 = [(MSPSenderStrategy *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    participants = v2->_participants;
    v2->_participants = v3;
  }

  return v2;
}

- (void)_setState:(id)a3
{
  v4 = [a3 copy];
  state = self->_state;
  self->_state = v4;

  MEMORY[0x2821F96F8]();
}

- (void)addParticipants:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = self;
      v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
    }

    else
    {
      v8 = @"<nil>";
    }

    *buf = 138543875;
    v11 = v8;
    v12 = 2048;
    v13 = [v4 count];
    v14 = 2113;
    v15 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "[%{public}@] add %lu participants: %{private}@", buf, 0x20u);
  }

  [(NSMutableSet *)self->_participants addObjectsFromArray:v4];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeParticipants:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v6 = [v5 count];
  if (v6 != [v4 count])
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      if (self)
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = self;
        v10 = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), v9];
      }

      else
      {
        v10 = @"<nil>";
      }

      *buf = 138543619;
      v18 = v10;
      v19 = 2113;
      v20 = v4;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_FAULT, "[%{public}@] - found duplicate handles in array to remove: %{private}@", buf, 0x16u);
    }
  }

  if ([(NSMutableSet *)self->_participants intersectsSet:v5])
  {
    v11 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = self;
      v14 = [v12 stringWithFormat:@"%@<%p>", objc_opt_class(), v13];

      v15 = [v5 count];
      *buf = 138543875;
      v18 = v14;
      v19 = 2048;
      v20 = v15;
      v21 = 2113;
      v22 = v5;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_INFO, "[%{public}@] remove %lu participants: %{private}@", buf, 0x20u);
    }

    [(NSMutableSet *)self->_participants minusSet:v5];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeParticipant:(id)a3 forReason:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(NSMutableSet *)self->_participants containsObject:v5];
  if (v6)
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = self;
      v10 = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), v9];

      *buf = 138543619;
      v14 = v10;
      v15 = 2113;
      v16 = v5;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[%{public}@] remove participant: %{private}@", buf, 0x16u);
    }

    [(NSMutableSet *)self->_participants removeObject:v5];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)_validateState:(id)a3 forEvent:(unint64_t)a4
{
  v5 = a3;
  if (![v5 hasGroupIdentifier])
  {
    goto LABEL_21;
  }

  v6 = 1;
  if (a4 > 4)
  {
    if (a4 > 7)
    {
      if (a4 == 8)
      {
        if ([v5 hasEtaInfo])
        {
          v7 = [v5 hasWaypointInfos];
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      if (a4 == 9)
      {
        v7 = [v5 hasClosed];
        goto LABEL_20;
      }
    }

    else if (a4 == 5)
    {
      if (![v5 hasRouteInfo])
      {
        goto LABEL_21;
      }

      v8 = [v5 routeInfo];
      if (![v8 coordinatesCount])
      {
        v9 = [v5 routeInfo];
        v6 = [v9 routingPathLegsCount] != 0;
      }
    }

    else if (a4 == 7)
    {
      v7 = [v5 hasArrived];
      goto LABEL_20;
    }
  }

  else if (a4 < 5)
  {
    if ([v5 hasEtaInfo] && objc_msgSend(v5, "hasWaypointInfos"))
    {
      v7 = [v5 hasTransportType];
LABEL_20:
      v6 = v7;
      goto LABEL_22;
    }

LABEL_21:
    v6 = 0;
  }

LABEL_22:

  return v6;
}

- (BOOL)setState:(id)a3 forEvent:(unint64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![objc_opt_class() _supportsEvent:a4])
  {
LABEL_16:
    v17 = 0;
    goto LABEL_21;
  }

  if (([objc_opt_class() _validateState:v6 forEvent:a4] & 1) == 0)
  {
    v12 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v13 = MEMORY[0x277CCACA8];
        v14 = self;
        v15 = [v13 stringWithFormat:@"%@<%p>", objc_opt_class(), v14];
      }

      else
      {
        v15 = @"<nil>";
      }

      if (a4 > 9)
      {
        v16 = @"(none)";
      }

      else
      {
        v16 = off_279866058[a4];
      }

      *buf = 138543875;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      v25 = 2113;
      v26 = v6;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@: incoming state failed validation: %{private}@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  if ([(NSMutableSet *)self->_participants count])
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = self;
      v10 = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), v9];

      if (a4 > 9)
      {
        v11 = @"(none)";
      }

      else
      {
        v11 = off_279866058[a4];
      }

      v18 = [(NSMutableSet *)self->_participants count];
      *buf = 138543874;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      v25 = 2048;
      v26 = v18;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ (%lu participants)", buf, 0x20u);
    }
  }

  [(MSPSenderStrategy *)self _setState:v6];
  v17 = 1;
LABEL_21:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

@end