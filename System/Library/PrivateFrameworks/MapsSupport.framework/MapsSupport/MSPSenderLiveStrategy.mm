@interface MSPSenderLiveStrategy
- (BOOL)_removeAllTokensForParticipant:(id)participant;
- (BOOL)_removeToken:(id)token;
- (BOOL)removeParticipant:(id)participant forReason:(unint64_t)reason;
- (MSPSenderLiveStrategy)initWithGroupSession:(id)session;
- (id)_filteredParticipantsForState:(id)state event:(unint64_t)event;
- (void)_recordTokenForHandle:(id)handle;
- (void)_sendInitialRouteIfNeeded;
- (void)_setState:(id)state;
- (void)addParticipants:(id)participants;
- (void)didFetchCapabilitiesForParticipants:(id)participants;
- (void)removeParticipants:(id)participants;
@end

@implementation MSPSenderLiveStrategy

- (MSPSenderLiveStrategy)initWithGroupSession:(id)session
{
  v9.receiver = self;
  v9.super_class = MSPSenderLiveStrategy;
  v3 = [(MSPSenderIDSStrategy *)&v9 initWithGroupSession:session];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    participantsNeedingRoute = v3->_participantsNeedingRoute;
    v3->_participantsNeedingRoute = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    tokensByHandle = v3->_tokensByHandle;
    v3->_tokensByHandle = v6;
  }

  return v3;
}

- (void)addParticipants:(id)participants
{
  v17 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v15.receiver = self;
  v15.super_class = MSPSenderLiveStrategy;
  [(MSPSenderIDSStrategy *)&v15 addParticipants:participantsCopy];
  [(NSMutableSet *)self->_participantsNeedingRoute addObjectsFromArray:participantsCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = participantsCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(MSPSenderLiveStrategy *)self _recordTokenForHandle:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  [(MSPSenderLiveStrategy *)self _sendInitialRouteIfNeeded];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_recordTokenForHandle:(id)handle
{
  v21 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v5 = IDSCopyAddressDestinationForDestination();
  v6 = handleCopy;
  v7 = v5;
  if (v6 | v7)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(NSMutableDictionary *)self->_tokensByHandle objectForKeyedSubscript:v7];
      if (!v9)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
        [(NSMutableDictionary *)self->_tokensByHandle setObject:v9 forKeyedSubscript:v7];
      }

      v10 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v11 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

        *buf = 138543875;
        v16 = selfCopy;
        v17 = 2113;
        v18 = v6;
        v19 = 2113;
        v20 = v7;
        _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_INFO, "[%{public}@] adding token %{private}@ for %{private}@", buf, 0x20u);
      }

      [v9 addObject:v6];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeParticipants:(id)participants
{
  v15 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [participantsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(participantsCopy);
        }

        [(MSPSenderLiveStrategy *)self removeParticipant:*(*(&v10 + 1) + 8 * v8++) forReason:0];
      }

      while (v6 != v8);
      v6 = [participantsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeParticipant:(id)participant forReason:(unint64_t)reason
{
  participantCopy = participant;
  v12.receiver = self;
  v12.super_class = MSPSenderLiveStrategy;
  v7 = [(MSPSenderStrategy *)&v12 removeParticipant:participantCopy forReason:reason];
  if (v7)
  {
    [(NSMutableSet *)self->_participantsNeedingRoute removeObject:participantCopy];
  }

  v8 = IDSCopyAddressDestinationForDestination();
  if ([participantCopy isEqualToString:v8])
  {
    v9 = [(MSPSenderLiveStrategy *)self _removeAllTokensForParticipant:v8];
  }

  else
  {
    v9 = [(MSPSenderLiveStrategy *)self _removeToken:participantCopy];
  }

  v10 = v7 | v9;

  return v10 & 1;
}

- (BOOL)_removeToken:(id)token
{
  v25 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v5 = IDSCopyAddressDestinationForDestination();
  if ([v5 length] && (objc_msgSend(v5, "isEqualToString:", tokenCopy) & 1) == 0)
  {
    v7 = [(NSMutableDictionary *)self->_tokensByHandle objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7 && [v7 containsObject:tokenCopy])
    {
      v9 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

        *buf = 138543875;
        v20 = selfCopy;
        v21 = 2113;
        v22 = tokenCopy;
        v23 = 2113;
        v24 = v5;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "[%{public}@] removing token %{private}@ for %{private}@", buf, 0x20u);
      }

      [v8 removeObject:tokenCopy];
      [(NSMutableSet *)self->_participantsNeedingRoute removeObject:tokenCopy];
      if (![v8 count])
      {
        v13 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy2 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

          *buf = 138543619;
          v20 = selfCopy2;
          v21 = 2113;
          v22 = v5;
          _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_INFO, "[%{public}@] clearing token storage for %{private}@", buf, 0x16u);
        }

        [(NSMutableDictionary *)self->_tokensByHandle setObject:0 forKeyedSubscript:v5];
      }

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_removeAllTokensForParticipant:(id)participant
{
  v21 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  if ([participantCopy length])
  {
    v5 = IDSCopyAddressDestinationForDestination();
    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_tokensByHandle objectForKeyedSubscript:v5];
      v7 = v6 != 0;
      if (v6)
      {
        v8 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = MEMORY[0x277CCACA8];
          selfCopy = self;
          selfCopy = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

          *buf = 138543619;
          v18 = selfCopy;
          v19 = 2113;
          v20 = v5;
          _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[%{public}@] removing all tokens for %{private}@", buf, 0x16u);
        }

        [(NSMutableSet *)self->_participantsNeedingRoute minusSet:v6];
        [(NSMutableDictionary *)self->_tokensByHandle setObject:0 forKeyedSubscript:v5];
        v7 = 1;
      }
    }

    else
    {
      v6 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        if (self)
        {
          v12 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy2 = [v12 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
        }

        else
        {
          selfCopy2 = @"<nil>";
        }

        *buf = 138543619;
        v18 = selfCopy2;
        v19 = 2113;
        v20 = participantCopy;
        _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_FAULT, "[%{public}@] unable to get handle from participant %{private}@", buf, 0x16u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_setState:(id)state
{
  v4.receiver = self;
  v4.super_class = MSPSenderLiveStrategy;
  [(MSPSenderStrategy *)&v4 _setState:state];
  [(MSPSenderLiveStrategy *)self _sendInitialRouteIfNeeded];
}

- (void)_sendInitialRouteIfNeeded
{
  v48 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->super.super._participants count]&& [(NSMutableSet *)self->_participantsNeedingRoute count]&& [(GEOSharedNavState *)self->super.super._state hasRouteInfo])
  {
    v3 = [(GEOSharedNavState *)self->super.super._state copy];
    v4 = [objc_opt_class() _validateState:v3 forEvent:5];
    v5 = MSPGetSharedTripLog();
    v6 = v5;
    if (v4)
    {
      v36 = v3;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v7 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

        participantsNeedingRoute = self->_participantsNeedingRoute;
        v11 = selfCopy;
        v12 = [(NSMutableSet *)participantsNeedingRoute count];
        v13 = self->_participantsNeedingRoute;

        *buf = 138543874;
        v43 = selfCopy;
        v44 = 2048;
        v45 = v12;
        v46 = 2112;
        v47 = v13;
        _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[%{public}@] Need to send route to %lu participants: %@", buf, 0x20u);
      }

      v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[NSMutableSet count](self->_participantsNeedingRoute, "count")}];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v14 = self->_participantsNeedingRoute;
      v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v38;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v38 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v37 + 1) + 8 * i);
            capabilitiesByParticipant = [(MSPSenderIDSStrategy *)self capabilitiesByParticipant];
            v21 = [capabilitiesByParticipant objectForKeyedSubscript:v19];
            v22 = [v21 count];

            if (v22)
            {
              [v6 addObject:v19];
            }
          }

          v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v16);
      }

      v23 = [v6 count];
      v3 = v36;
      if (v23 != [(NSMutableSet *)self->_participantsNeedingRoute count])
      {
        v24 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy2 = [v25 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

          v28 = selfCopy2;
          v29 = [v6 count];
          v30 = [(NSMutableSet *)self->_participantsNeedingRoute count];

          *buf = 138543874;
          v43 = selfCopy2;
          v44 = 2048;
          v45 = v29;
          v46 = 2048;
          v47 = v30;
          _os_log_impl(&dword_25813A000, v24, OS_LOG_TYPE_INFO, "[%{public}@] only %lu/%lu participants are currently reachable for route", buf, 0x20u);
        }
      }

      if ([v6 count])
      {
        [(NSMutableSet *)self->_participantsNeedingRoute minusSet:v6];
        [(MSPSenderIDSStrategy *)self _sendRouteUpdate:v36 to:v6];
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v31 = MEMORY[0x277CCACA8];
      selfCopy3 = self;
      selfCopy3 = [v31 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];

      v34 = [(NSMutableSet *)self->_participantsNeedingRoute count];
      *buf = 138543618;
      v43 = selfCopy3;
      v44 = 2048;
      v45 = v34;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Need to send route to %lu participants, but state doesn't have routeInfo", buf, 0x16u);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)didFetchCapabilitiesForParticipants:(id)participants
{
  v7.receiver = self;
  v7.super_class = MSPSenderLiveStrategy;
  participantsCopy = participants;
  [(MSPSenderIDSStrategy *)&v7 didFetchCapabilitiesForParticipants:participantsCopy];
  participantsNeedingRoute = self->_participantsNeedingRoute;
  v6 = [MEMORY[0x277CBEB98] setWithArray:{participantsCopy, v7.receiver, v7.super_class}];

  LODWORD(participantsNeedingRoute) = [(NSMutableSet *)participantsNeedingRoute intersectsSet:v6];
  if (participantsNeedingRoute)
  {
    [(MSPSenderLiveStrategy *)self _sendInitialRouteIfNeeded];
  }
}

- (id)_filteredParticipantsForState:(id)state event:(unint64_t)event
{
  v8.receiver = self;
  v8.super_class = MSPSenderLiveStrategy;
  v5 = [(MSPSenderIDSStrategy *)&v8 _filteredParticipantsForState:state event:event];
  v6 = [v5 mutableCopy];

  [v6 minusSet:self->_participantsNeedingRoute];

  return v6;
}

@end