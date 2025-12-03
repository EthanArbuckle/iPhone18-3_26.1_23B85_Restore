@interface MSPSenderStrategy
+ (BOOL)_validateState:(id)state forEvent:(unint64_t)event;
- (BOOL)removeParticipant:(id)participant forReason:(unint64_t)reason;
- (BOOL)setState:(id)state forEvent:(unint64_t)event;
- (MSPSenderStrategy)init;
- (void)_setState:(id)state;
- (void)addParticipants:(id)participants;
- (void)removeParticipants:(id)participants;
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

- (void)_setState:(id)state
{
  v4 = [state copy];
  state = self->_state;
  self->_state = v4;

  MEMORY[0x2821F96F8]();
}

- (void)addParticipants:(id)participants
{
  v16 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    *buf = 138543875;
    v11 = selfCopy;
    v12 = 2048;
    v13 = [participantsCopy count];
    v14 = 2113;
    v15 = participantsCopy;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "[%{public}@] add %lu participants: %{private}@", buf, 0x20u);
  }

  [(NSMutableSet *)self->_participants addObjectsFromArray:participantsCopy];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeParticipants:(id)participants
{
  v23 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v5 = [MEMORY[0x277CBEB98] setWithArray:participantsCopy];
  v6 = [v5 count];
  if (v6 != [participantsCopy count])
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      if (self)
      {
        v8 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      *buf = 138543619;
      v18 = selfCopy;
      v19 = 2113;
      v20 = participantsCopy;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_FAULT, "[%{public}@] - found duplicate handles in array to remove: %{private}@", buf, 0x16u);
    }
  }

  if ([(NSMutableSet *)self->_participants intersectsSet:v5])
  {
    v11 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = MEMORY[0x277CCACA8];
      selfCopy2 = self;
      selfCopy2 = [v12 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

      v15 = [v5 count];
      *buf = 138543875;
      v18 = selfCopy2;
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

- (BOOL)removeParticipant:(id)participant forReason:(unint64_t)reason
{
  v17 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v6 = [(NSMutableSet *)self->_participants containsObject:participantCopy];
  if (v6)
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543619;
      v14 = selfCopy;
      v15 = 2113;
      v16 = participantCopy;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[%{public}@] remove participant: %{private}@", buf, 0x16u);
    }

    [(NSMutableSet *)self->_participants removeObject:participantCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)_validateState:(id)state forEvent:(unint64_t)event
{
  stateCopy = state;
  if (![stateCopy hasGroupIdentifier])
  {
    goto LABEL_21;
  }

  v6 = 1;
  if (event > 4)
  {
    if (event > 7)
    {
      if (event == 8)
      {
        if ([stateCopy hasEtaInfo])
        {
          hasWaypointInfos = [stateCopy hasWaypointInfos];
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      if (event == 9)
      {
        hasWaypointInfos = [stateCopy hasClosed];
        goto LABEL_20;
      }
    }

    else if (event == 5)
    {
      if (![stateCopy hasRouteInfo])
      {
        goto LABEL_21;
      }

      routeInfo = [stateCopy routeInfo];
      if (![routeInfo coordinatesCount])
      {
        routeInfo2 = [stateCopy routeInfo];
        v6 = [routeInfo2 routingPathLegsCount] != 0;
      }
    }

    else if (event == 7)
    {
      hasWaypointInfos = [stateCopy hasArrived];
      goto LABEL_20;
    }
  }

  else if (event < 5)
  {
    if ([stateCopy hasEtaInfo] && objc_msgSend(stateCopy, "hasWaypointInfos"))
    {
      hasWaypointInfos = [stateCopy hasTransportType];
LABEL_20:
      v6 = hasWaypointInfos;
      goto LABEL_22;
    }

LABEL_21:
    v6 = 0;
  }

LABEL_22:

  return v6;
}

- (BOOL)setState:(id)state forEvent:(unint64_t)event
{
  v27 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (![objc_opt_class() _supportsEvent:event])
  {
LABEL_16:
    v17 = 0;
    goto LABEL_21;
  }

  if (([objc_opt_class() _validateState:stateCopy forEvent:event] & 1) == 0)
  {
    v12 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v13 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v13 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      if (event > 9)
      {
        v16 = @"(none)";
      }

      else
      {
        v16 = off_279866058[event];
      }

      *buf = 138543875;
      v22 = selfCopy;
      v23 = 2114;
      v24 = v16;
      v25 = 2113;
      v26 = stateCopy;
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
      selfCopy2 = self;
      selfCopy2 = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

      if (event > 9)
      {
        v11 = @"(none)";
      }

      else
      {
        v11 = off_279866058[event];
      }

      v18 = [(NSMutableSet *)self->_participants count];
      *buf = 138543874;
      v22 = selfCopy2;
      v23 = 2114;
      v24 = v11;
      v25 = 2048;
      v26 = v18;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ (%lu participants)", buf, 0x20u);
    }
  }

  [(MSPSenderStrategy *)self _setState:stateCopy];
  v17 = 1;
LABEL_21:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

@end