@interface MSPSenderLiveStrategy
- (BOOL)_removeAllTokensForParticipant:(id)a3;
- (BOOL)_removeToken:(id)a3;
- (BOOL)removeParticipant:(id)a3 forReason:(unint64_t)a4;
- (MSPSenderLiveStrategy)initWithGroupSession:(id)a3;
- (id)_filteredParticipantsForState:(id)a3 event:(unint64_t)a4;
- (void)_recordTokenForHandle:(id)a3;
- (void)_sendInitialRouteIfNeeded;
- (void)_setState:(id)a3;
- (void)addParticipants:(id)a3;
- (void)didFetchCapabilitiesForParticipants:(id)a3;
- (void)removeParticipants:(id)a3;
@end

@implementation MSPSenderLiveStrategy

- (MSPSenderLiveStrategy)initWithGroupSession:(id)a3
{
  v9.receiver = self;
  v9.super_class = MSPSenderLiveStrategy;
  v3 = [(MSPSenderIDSStrategy *)&v9 initWithGroupSession:a3];
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

- (void)addParticipants:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MSPSenderLiveStrategy;
  [(MSPSenderIDSStrategy *)&v15 addParticipants:v4];
  [(NSMutableSet *)self->_participantsNeedingRoute addObjectsFromArray:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
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

- (void)_recordTokenForHandle:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IDSCopyAddressDestinationForDestination();
  v6 = v4;
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
        v12 = self;
        v13 = [v11 stringWithFormat:@"%@<%p>", objc_opt_class(), v12];

        *buf = 138543875;
        v16 = v13;
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

- (void)removeParticipants:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(MSPSenderLiveStrategy *)self removeParticipant:*(*(&v10 + 1) + 8 * v8++) forReason:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeParticipant:(id)a3 forReason:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = MSPSenderLiveStrategy;
  v7 = [(MSPSenderStrategy *)&v12 removeParticipant:v6 forReason:a4];
  if (v7)
  {
    [(NSMutableSet *)self->_participantsNeedingRoute removeObject:v6];
  }

  v8 = IDSCopyAddressDestinationForDestination();
  if ([v6 isEqualToString:v8])
  {
    v9 = [(MSPSenderLiveStrategy *)self _removeAllTokensForParticipant:v8];
  }

  else
  {
    v9 = [(MSPSenderLiveStrategy *)self _removeToken:v6];
  }

  v10 = v7 | v9;

  return v10 & 1;
}

- (BOOL)_removeToken:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IDSCopyAddressDestinationForDestination();
  if ([v5 length] && (objc_msgSend(v5, "isEqualToString:", v4) & 1) == 0)
  {
    v7 = [(NSMutableDictionary *)self->_tokensByHandle objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7 && [v7 containsObject:v4])
    {
      v9 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = self;
        v12 = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), v11];

        *buf = 138543875;
        v20 = v12;
        v21 = 2113;
        v22 = v4;
        v23 = 2113;
        v24 = v5;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "[%{public}@] removing token %{private}@ for %{private}@", buf, 0x20u);
      }

      [v8 removeObject:v4];
      [(NSMutableSet *)self->_participantsNeedingRoute removeObject:v4];
      if (![v8 count])
      {
        v13 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = MEMORY[0x277CCACA8];
          v15 = self;
          v16 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), v15];

          *buf = 138543619;
          v20 = v16;
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

- (BOOL)_removeAllTokensForParticipant:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
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
          v10 = self;
          v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];

          *buf = 138543619;
          v18 = v11;
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
          v13 = self;
          v14 = [v12 stringWithFormat:@"%@<%p>", objc_opt_class(), v13];
        }

        else
        {
          v14 = @"<nil>";
        }

        *buf = 138543619;
        v18 = v14;
        v19 = 2113;
        v20 = v4;
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

- (void)_setState:(id)a3
{
  v4.receiver = self;
  v4.super_class = MSPSenderLiveStrategy;
  [(MSPSenderStrategy *)&v4 _setState:a3];
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
        v8 = self;
        v9 = [v7 stringWithFormat:@"%@<%p>", objc_opt_class(), v8];

        participantsNeedingRoute = self->_participantsNeedingRoute;
        v11 = v9;
        v12 = [(NSMutableSet *)participantsNeedingRoute count];
        v13 = self->_participantsNeedingRoute;

        *buf = 138543874;
        v43 = v9;
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
            v20 = [(MSPSenderIDSStrategy *)self capabilitiesByParticipant];
            v21 = [v20 objectForKeyedSubscript:v19];
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
          v26 = self;
          v27 = [v25 stringWithFormat:@"%@<%p>", objc_opt_class(), v26];

          v28 = v27;
          v29 = [v6 count];
          v30 = [(NSMutableSet *)self->_participantsNeedingRoute count];

          *buf = 138543874;
          v43 = v27;
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
      v32 = self;
      v33 = [v31 stringWithFormat:@"%@<%p>", objc_opt_class(), v32];

      v34 = [(NSMutableSet *)self->_participantsNeedingRoute count];
      *buf = 138543618;
      v43 = v33;
      v44 = 2048;
      v45 = v34;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Need to send route to %lu participants, but state doesn't have routeInfo", buf, 0x16u);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)didFetchCapabilitiesForParticipants:(id)a3
{
  v7.receiver = self;
  v7.super_class = MSPSenderLiveStrategy;
  v4 = a3;
  [(MSPSenderIDSStrategy *)&v7 didFetchCapabilitiesForParticipants:v4];
  participantsNeedingRoute = self->_participantsNeedingRoute;
  v6 = [MEMORY[0x277CBEB98] setWithArray:{v4, v7.receiver, v7.super_class}];

  LODWORD(participantsNeedingRoute) = [(NSMutableSet *)participantsNeedingRoute intersectsSet:v6];
  if (participantsNeedingRoute)
  {
    [(MSPSenderLiveStrategy *)self _sendInitialRouteIfNeeded];
  }
}

- (id)_filteredParticipantsForState:(id)a3 event:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = MSPSenderLiveStrategy;
  v5 = [(MSPSenderIDSStrategy *)&v8 _filteredParticipantsForState:a3 event:a4];
  v6 = [v5 mutableCopy];

  [v6 minusSet:self->_participantsNeedingRoute];

  return v6;
}

@end