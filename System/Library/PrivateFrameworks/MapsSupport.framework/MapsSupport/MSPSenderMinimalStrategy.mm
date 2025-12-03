@interface MSPSenderMinimalStrategy
+ (double)_etaRefreshIntervalForState:(id)state;
- (BOOL)removeParticipant:(id)participant forReason:(unint64_t)reason;
- (MSPSenderMinimalStrategy)initWithGroupSession:(id)session;
- (id)_filteredParticipantsForState:(id)state event:(unint64_t)event;
- (void)_sendInitialStateIfNeeded;
- (void)_setState:(id)state;
- (void)addParticipants:(id)participants;
- (void)didFetchCapabilitiesForParticipants:(id)participants;
- (void)removeParticipants:(id)participants;
@end

@implementation MSPSenderMinimalStrategy

- (MSPSenderMinimalStrategy)initWithGroupSession:(id)session
{
  v7.receiver = self;
  v7.super_class = MSPSenderMinimalStrategy;
  v3 = [(MSPSenderIDSStrategy *)&v7 initWithGroupSession:session];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    participantsNeedingInitialState = v3->_participantsNeedingInitialState;
    v3->_participantsNeedingInitialState = v4;
  }

  return v3;
}

+ (double)_etaRefreshIntervalForState:(id)state
{
  v3 = MEMORY[0x277CBEAA8];
  etaInfo = [state etaInfo];
  [etaInfo etaTimestamp];
  v5 = [v3 dateWithTimeIntervalSinceReferenceDate:?];

  [v5 timeIntervalSinceNow];
  GEOConfigGetDouble();
  GEOConfigGetDouble();
  v7 = v6;

  return v7;
}

- (void)_setState:(id)state
{
  v4.receiver = self;
  v4.super_class = MSPSenderMinimalStrategy;
  [(MSPSenderStrategy *)&v4 _setState:state];
  [(MSPSenderMinimalStrategy *)self _sendInitialStateIfNeeded];
}

- (void)_sendInitialStateIfNeeded
{
  v54 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->super.super._participants count]&& [(NSMutableSet *)self->_participantsNeedingInitialState count])
  {
    v3 = [(GEOSharedNavState *)self->super.super._state copy];
    v4 = [objc_opt_class() _validateState:v3 forEvent:3];
    v5 = MSPGetSharedTripLog();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      v40 = v3;
      if (v6)
      {
        v7 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v7 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

        participantsNeedingInitialState = self->_participantsNeedingInitialState;
        v11 = selfCopy;
        v12 = [(NSMutableSet *)participantsNeedingInitialState count];
        v13 = self->_participantsNeedingInitialState;

        *buf = 138543875;
        v47 = selfCopy;
        v48 = 2048;
        v49 = v12;
        v50 = 2113;
        v51 = v13;
        _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "[%{public}@] Need to send initial state to %lu participants: %{private}@", buf, 0x20u);
      }

      v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[NSMutableSet count](self->_participantsNeedingInitialState, "count")}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v14 = self->_participantsNeedingInitialState;
      v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v42;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v42 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v41 + 1) + 8 * i);
            capabilitiesByParticipant = [(MSPSenderIDSStrategy *)self capabilitiesByParticipant];
            v21 = [capabilitiesByParticipant objectForKeyedSubscript:v19];
            v22 = [v21 count];

            if (v22)
            {
              [v5 addObject:v19];
            }
          }

          v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v16);
      }

      v23 = [v5 count];
      v3 = v40;
      if (v23 != [(NSMutableSet *)self->_participantsNeedingInitialState count])
      {
        v24 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy2 = [v25 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

          v28 = selfCopy2;
          v29 = [v5 count];
          v30 = [(NSMutableSet *)self->_participantsNeedingInitialState count];

          *buf = 138543874;
          v47 = selfCopy2;
          v48 = 2048;
          v49 = v29;
          v50 = 2048;
          v51 = v30;
          _os_log_impl(&dword_25813A000, v24, OS_LOG_TYPE_INFO, "[%{public}@] only %lu/%lu participants are currently reachable for initial state", buf, 0x20u);
        }
      }

      if ([v5 count])
      {
        [(NSMutableSet *)self->_participantsNeedingInitialState minusSet:v5];
        [(MSPSenderIDSStrategy *)self _sendUpdatedWaypoints:v40 to:v5];
      }
    }

    else if (v6)
    {
      v31 = MEMORY[0x277CCACA8];
      selfCopy3 = self;
      selfCopy3 = [v31 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];

      v34 = [(NSMutableSet *)self->_participantsNeedingInitialState count];
      if ([v3 waypointInfosCount])
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      v36 = v35;
      if ([v3 etaInfosCount])
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v38 = v37;
      *buf = 138544130;
      v47 = selfCopy3;
      v48 = 2048;
      v49 = v34;
      v50 = 2114;
      v51 = v36;
      v52 = 2114;
      v53 = v38;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "[%{public}@] Need to send initial state to %lu participants, but initial state isn't ready (hasWaypoints: %{public}@, hasETAInfos: %{public}@)", buf, 0x2Au);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)addParticipants:(id)participants
{
  v5.receiver = self;
  v5.super_class = MSPSenderMinimalStrategy;
  participantsCopy = participants;
  [(MSPSenderIDSStrategy *)&v5 addParticipants:participantsCopy];
  [(NSMutableSet *)self->_participantsNeedingInitialState addObjectsFromArray:participantsCopy, v5.receiver, v5.super_class];

  [(MSPSenderMinimalStrategy *)self _sendInitialStateIfNeeded];
}

- (void)removeParticipants:(id)participants
{
  v7.receiver = self;
  v7.super_class = MSPSenderMinimalStrategy;
  participantsCopy = participants;
  [(MSPSenderStrategy *)&v7 removeParticipants:participantsCopy];
  participantsNeedingInitialState = self->_participantsNeedingInitialState;
  v6 = [MEMORY[0x277CBEB98] setWithArray:{participantsCopy, v7.receiver, v7.super_class}];

  [(NSMutableSet *)participantsNeedingInitialState minusSet:v6];
}

- (BOOL)removeParticipant:(id)participant forReason:(unint64_t)reason
{
  v21 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  if ([objc_opt_class() _supportsEvent:9] && -[NSMutableSet containsObject:](self->super.super._participants, "containsObject:", participantCopy))
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543618;
      v18 = selfCopy;
      v19 = 2048;
      reasonCopy = reason;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[%{public}@] will remove and send stopped with reason: %lu", buf, 0x16u);
    }

    v11 = [(GEOSharedNavState *)self->super.super._state copy];
    [v11 setClosed:1];
    [v11 setClosureReason:reason];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [v11 setClosedTimestamp:?];
    v12 = [MEMORY[0x277CBEB98] setWithObject:participantCopy];
    [(MSPSenderIDSStrategy *)self _sendStoppedUpdate:v11 to:v12];
  }

  v16.receiver = self;
  v16.super_class = MSPSenderMinimalStrategy;
  v13 = [(MSPSenderStrategy *)&v16 removeParticipant:participantCopy forReason:reason];
  if (v13)
  {
    [(NSMutableSet *)self->_participantsNeedingInitialState removeObject:participantCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)didFetchCapabilitiesForParticipants:(id)participants
{
  v7.receiver = self;
  v7.super_class = MSPSenderMinimalStrategy;
  participantsCopy = participants;
  [(MSPSenderIDSStrategy *)&v7 didFetchCapabilitiesForParticipants:participantsCopy];
  participantsNeedingInitialState = self->_participantsNeedingInitialState;
  v6 = [MEMORY[0x277CBEB98] setWithArray:{participantsCopy, v7.receiver, v7.super_class}];

  LODWORD(participantsNeedingInitialState) = [(NSMutableSet *)participantsNeedingInitialState intersectsSet:v6];
  if (participantsNeedingInitialState)
  {
    [(MSPSenderMinimalStrategy *)self _sendInitialStateIfNeeded];
  }
}

- (id)_filteredParticipantsForState:(id)state event:(unint64_t)event
{
  v8.receiver = self;
  v8.super_class = MSPSenderMinimalStrategy;
  v5 = [(MSPSenderIDSStrategy *)&v8 _filteredParticipantsForState:state event:event];
  v6 = [v5 mutableCopy];

  [v6 minusSet:self->_participantsNeedingInitialState];

  return v6;
}

@end