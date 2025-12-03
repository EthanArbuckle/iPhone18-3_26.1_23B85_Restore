@interface CRAccNavController
- (CRAccNavController)initWithComponent:(id)component delegate:(id)delegate;
- (CRAccNavControllerDelegate)delegate;
- (NSUUID)uuid;
- (id)description;
- (void)_sendNavInfoFromIndex:(id)index fromSource:(id)source cache:(id)cache;
- (void)delegateUpdatedLaneGuidance:(id)guidance;
- (void)delegateUpdatedLaneGuidances;
- (void)delegateUpdatedManeuver:(id)maneuver;
- (void)delegateUpdatedManeuvers;
- (void)delegateUpdatedRouteGuidance;
- (void)resendInfo;
- (void)reset;
- (void)sendInfo;
- (void)sendLaneGuidances;
- (void)sendManeuvers;
@end

@implementation CRAccNavController

- (void)delegateUpdatedRouteGuidance
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated routeguidance", &v12, 0xCu);
  }

  delegate = [(CRAccNavController *)self delegate];
  routeGuidanceProviding = [delegate routeGuidanceProviding];
  component = [(CRAccNavController *)self component];
  v7 = [routeGuidanceProviding navInfoWithComponent:component];
  [(CRAccNavController *)self setRouteGuidance:v7];

  [(CRAccNavController *)self sendManeuvers];
  [(CRAccNavController *)self sendLaneGuidances];
  delegate2 = [(CRAccNavController *)self delegate];
  routeGuidance = [(CRAccNavController *)self routeGuidance];
  uuid = [(CRAccNavController *)self uuid];
  [delegate2 sendInfo:routeGuidance toComponentUID:uuid];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  component = [(CRAccNavController *)self component];
  uuid = [component uuid];
  v7 = [v3 stringWithFormat:@"<%@: %p component=%@>", v4, self, uuid];

  return v7;
}

- (CRAccNavControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendManeuvers
{
  OUTLINED_FUNCTION_3();
  v12 = *MEMORY[0x277D85DE8];
  delegate = [v0 delegate];
  maneuversProvidingIndexed = [delegate maneuversProvidingIndexed];
  [maneuversProvidingIndexed count];
  sentManeuvers = [OUTLINED_FUNCTION_2() sentManeuvers];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_224A23000, v4, v5, "%{public}@ sendManeuvers done source.count=%lu cache=%{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendLaneGuidances
{
  OUTLINED_FUNCTION_3();
  v12 = *MEMORY[0x277D85DE8];
  delegate = [v0 delegate];
  laneGuidanceProvidingIndexed = [delegate laneGuidanceProvidingIndexed];
  [laneGuidanceProvidingIndexed count];
  sentLaneGuidances = [OUTLINED_FUNCTION_2() sentLaneGuidances];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_224A23000, v4, v5, "%{public}@ sendLaneGuidances done source.count=%lu cache=%{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (NSUUID)uuid
{
  component = [(CRAccNavController *)self component];
  uuid = [component uuid];

  return uuid;
}

- (CRAccNavController)initWithComponent:(id)component delegate:(id)delegate
{
  v31 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = CRAccNavController;
  v9 = [(CRAccNavController *)&v22 init];
  if (v9)
  {
    v10 = CarNavLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      configDescription = [componentCopy configDescription];
      *buf = 138544130;
      v24 = v9;
      v25 = 2114;
      v26 = delegateCopy;
      v27 = 2114;
      v28 = componentCopy;
      v29 = 2114;
      v30 = configDescription;
      _os_log_impl(&dword_224A23000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ init! delegate=%{public}@ component=%{public}@ config=%{public}@", buf, 0x2Au);
    }

    objc_storeStrong(&v9->_component, component);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v12 = [CRAccNavInfoCache alloc];
    component = [componentCopy component];
    v14 = -[CRAccNavInfoCache initWithCountLimit:](v12, "initWithCountLimit:", [component maxCapacity_GuidanceManeuver]);
    sentManeuvers = v9->_sentManeuvers;
    v9->_sentManeuvers = v14;

    v16 = [CRAccNavInfoCache alloc];
    component2 = [componentCopy component];
    v18 = -[CRAccNavInfoCache initWithCountLimit:](v16, "initWithCountLimit:", [component2 maxCapacity_LaneGuidance]);
    sentLaneGuidances = v9->_sentLaneGuidances;
    v9->_sentLaneGuidances = v18;

    [(CRAccNavController *)v9 reset];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)sendInfo
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ sendInfo", &v8, 0xCu);
  }

  [(CRAccNavController *)self sendManeuvers];
  [(CRAccNavController *)self sendLaneGuidances];
  delegate = [(CRAccNavController *)self delegate];
  routeGuidance = [(CRAccNavController *)self routeGuidance];
  uuid = [(CRAccNavController *)self uuid];
  [delegate sendInfo:routeGuidance toComponentUID:uuid];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resendInfo
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sentManeuvers = [(CRAccNavController *)self sentManeuvers];
    v5 = [sentManeuvers count];
    sentLaneGuidances = [(CRAccNavController *)self sentLaneGuidances];
    v7 = [sentLaneGuidances count];
    routeGuidance = [(CRAccNavController *)self routeGuidance];
    v9 = @"YES";
    *buf = 138544130;
    selfCopy = self;
    if (!routeGuidance)
    {
      v9 = @"NO";
    }

    v56 = 2048;
    v57 = v5;
    v58 = 2048;
    v59 = v7;
    v60 = 2114;
    v61 = v9;
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resendInfo sentManeuvers.count=%ld sentLaneGuidances.count=%ld routeGuidance=%{public}@", buf, 0x2Au);
  }

  delegate = [(CRAccNavController *)self delegate];
  component = [(CRAccNavController *)self component];
  v12 = [CRAccNavRouteGuidance resetForComponent:component];
  uuid = [(CRAccNavController *)self uuid];
  [delegate sendInfo:v12 toComponentUID:uuid];

  delegate2 = [(CRAccNavController *)self delegate];
  [delegate2 willSendGuidanceStateLoading];

  delegate3 = [(CRAccNavController *)self delegate];
  component2 = [(CRAccNavController *)self component];
  delegate4 = [(CRAccNavController *)self delegate];
  sourceName = [delegate4 sourceName];
  v19 = sourceName;
  if (sourceName)
  {
    v20 = sourceName;
  }

  else
  {
    v20 = @"Unknown";
  }

  delegate5 = [(CRAccNavController *)self delegate];
  v22 = +[CRAccNavRouteGuidance loadingForComponent:sourceName:sourceSupported:](CRAccNavRouteGuidance, "loadingForComponent:sourceName:sourceSupported:", component2, v20, [delegate5 sourceSupported]);
  uuid2 = [(CRAccNavController *)self uuid];
  [delegate3 sendInfo:v22 toComponentUID:uuid2];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  sentManeuvers2 = [(CRAccNavController *)self sentManeuvers];
  v25 = [sentManeuvers2 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v49;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(sentManeuvers2);
        }

        v29 = *(*(&v48 + 1) + 8 * i);
        delegate6 = [(CRAccNavController *)self delegate];
        uuid3 = [(CRAccNavController *)self uuid];
        [delegate6 sendInfo:v29 toComponentUID:uuid3];
      }

      v26 = [sentManeuvers2 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v26);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  sentLaneGuidances2 = [(CRAccNavController *)self sentLaneGuidances];
  v33 = [sentLaneGuidances2 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v45;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(sentLaneGuidances2);
        }

        v37 = *(*(&v44 + 1) + 8 * j);
        delegate7 = [(CRAccNavController *)self delegate];
        uuid4 = [(CRAccNavController *)self uuid];
        [delegate7 sendInfo:v37 toComponentUID:uuid4];
      }

      v34 = [sentLaneGuidances2 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v34);
  }

  delegate8 = [(CRAccNavController *)self delegate];
  routeGuidance2 = [(CRAccNavController *)self routeGuidance];
  uuid5 = [(CRAccNavController *)self uuid];
  [delegate8 sendInfo:routeGuidance2 toComponentUID:uuid5];

  v43 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ reset", &v11, 0xCu);
  }

  [(CRAccNavController *)self setRouteGuidance:0];
  sentManeuvers = [(CRAccNavController *)self sentManeuvers];
  [sentManeuvers removeAllObjects];

  sentLaneGuidances = [(CRAccNavController *)self sentLaneGuidances];
  [sentLaneGuidances removeAllObjects];

  delegate = [(CRAccNavController *)self delegate];
  component = [(CRAccNavController *)self component];
  v8 = [CRAccNavRouteGuidance resetForComponent:component];
  uuid = [(CRAccNavController *)self uuid];
  [delegate sendInfo:v8 toComponentUID:uuid];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)delegateUpdatedManeuvers
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [(CRAccNavController *)self delegate];
    maneuversProvidingIndexed = [delegate maneuversProvidingIndexed];
    v6 = [maneuversProvidingIndexed count];
    routeGuidance = [(CRAccNavController *)self routeGuidance];
    v22 = 138543874;
    selfCopy = self;
    v24 = 2048;
    v25 = v6;
    v26 = 1024;
    guidanceState = [routeGuidance guidanceState];
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated maneuvers count=%lu guidanceState=%hhu", &v22, 0x1Cu);
  }

  routeGuidance2 = [(CRAccNavController *)self routeGuidance];
  guidanceState2 = [routeGuidance2 guidanceState];

  if (!guidanceState2)
  {
    delegate2 = [(CRAccNavController *)self delegate];
    [delegate2 willSendGuidanceStateLoading];

    component = [(CRAccNavController *)self component];
    delegate3 = [(CRAccNavController *)self delegate];
    sourceName = [delegate3 sourceName];
    v14 = sourceName;
    if (sourceName)
    {
      v15 = sourceName;
    }

    else
    {
      v15 = @"Unknown";
    }

    delegate4 = [(CRAccNavController *)self delegate];
    v17 = +[CRAccNavRouteGuidance loadingForComponent:sourceName:sourceSupported:](CRAccNavRouteGuidance, "loadingForComponent:sourceName:sourceSupported:", component, v15, [delegate4 sourceSupported]);
    [(CRAccNavController *)self setRouteGuidance:v17];

    delegate5 = [(CRAccNavController *)self delegate];
    routeGuidance3 = [(CRAccNavController *)self routeGuidance];
    uuid = [(CRAccNavController *)self uuid];
    [delegate5 sendInfo:routeGuidance3 toComponentUID:uuid];
  }

  [(CRAccNavController *)self sendManeuvers];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)delegateUpdatedManeuver:(id)maneuver
{
  v20 = *MEMORY[0x277D85DE8];
  maneuverCopy = maneuver;
  sentManeuvers = [(CRAccNavController *)self sentManeuvers];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(maneuverCopy, "index")}];
  v7 = [sentManeuvers objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = CarNavLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      selfCopy = self;
      v18 = 1024;
      index = [maneuverCopy index];
      _os_log_impl(&dword_224A23000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated maneuver %d", &v16, 0x12u);
    }

    component = [(CRAccNavController *)self component];
    v10 = [maneuverCopy navInfoWithComponent:component];

    sentManeuvers2 = [(CRAccNavController *)self sentManeuvers];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(maneuverCopy, "index")}];
    [sentManeuvers2 setObject:v10 forKeyedSubscript:v12];

    delegate = [(CRAccNavController *)self delegate];
    uuid = [(CRAccNavController *)self uuid];
    [delegate sendInfo:v10 toComponentUID:uuid];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)delegateUpdatedLaneGuidances
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [(CRAccNavController *)self delegate];
    laneGuidanceProvidingIndexed = [delegate laneGuidanceProvidingIndexed];
    v6 = [laneGuidanceProvidingIndexed count];
    routeGuidance = [(CRAccNavController *)self routeGuidance];
    v22 = 138543874;
    selfCopy = self;
    v24 = 2048;
    v25 = v6;
    v26 = 1024;
    guidanceState = [routeGuidance guidanceState];
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated laneGuidances count=%lu guidanceState=%hhu", &v22, 0x1Cu);
  }

  routeGuidance2 = [(CRAccNavController *)self routeGuidance];
  guidanceState2 = [routeGuidance2 guidanceState];

  if (!guidanceState2)
  {
    delegate2 = [(CRAccNavController *)self delegate];
    [delegate2 willSendGuidanceStateLoading];

    component = [(CRAccNavController *)self component];
    delegate3 = [(CRAccNavController *)self delegate];
    sourceName = [delegate3 sourceName];
    v14 = sourceName;
    if (sourceName)
    {
      v15 = sourceName;
    }

    else
    {
      v15 = @"Unknown";
    }

    delegate4 = [(CRAccNavController *)self delegate];
    v17 = +[CRAccNavRouteGuidance loadingForComponent:sourceName:sourceSupported:](CRAccNavRouteGuidance, "loadingForComponent:sourceName:sourceSupported:", component, v15, [delegate4 sourceSupported]);
    [(CRAccNavController *)self setRouteGuidance:v17];

    delegate5 = [(CRAccNavController *)self delegate];
    routeGuidance3 = [(CRAccNavController *)self routeGuidance];
    uuid = [(CRAccNavController *)self uuid];
    [delegate5 sendInfo:routeGuidance3 toComponentUID:uuid];
  }

  [(CRAccNavController *)self sendLaneGuidances];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)delegateUpdatedLaneGuidance:(id)guidance
{
  v20 = *MEMORY[0x277D85DE8];
  guidanceCopy = guidance;
  sentLaneGuidances = [(CRAccNavController *)self sentLaneGuidances];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(guidanceCopy, "index")}];
  v7 = [sentLaneGuidances objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = CarNavLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      selfCopy = self;
      v18 = 1024;
      index = [guidanceCopy index];
      _os_log_impl(&dword_224A23000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated laneGuidance %d", &v16, 0x12u);
    }

    component = [(CRAccNavController *)self component];
    v10 = [guidanceCopy navInfoWithComponent:component];

    sentLaneGuidances2 = [(CRAccNavController *)self sentLaneGuidances];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(guidanceCopy, "index")}];
    [sentLaneGuidances2 setObject:v10 forKeyedSubscript:v12];

    delegate = [(CRAccNavController *)self delegate];
    uuid = [(CRAccNavController *)self uuid];
    [delegate sendInfo:v10 toComponentUID:uuid];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendNavInfoFromIndex:(id)index fromSource:(id)source cache:(id)cache
{
  v41 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  sourceCopy = source;
  cacheCopy = cache;
  v25 = indexCopy;
  if (indexCopy)
  {
    firstKey = indexCopy;
LABEL_4:
    v11 = 0;
    v12 = 0;
    while (1)
    {
      if (v12 >= [cacheCopy countLimit])
      {
        goto LABEL_14;
      }

      v13 = [cacheCopy objectForKeyedSubscript:firstKey];
      if (v13)
      {
        break;
      }

      v15 = [sourceCopy objectForKeyedSubscript:firstKey];

      if (v15)
      {
        v14 = [sourceCopy objectForKeyedSubscript:firstKey];
        component = [(CRAccNavController *)self component];
        v17 = [v14 navInfoWithComponent:component];

        [cacheCopy setObject:v17 forKeyedSubscript:firstKey];
        delegate = [(CRAccNavController *)self delegate];
        [(CRAccNavController *)self component];
        v20 = v19 = v11;
        uuid = [v20 uuid];
        [delegate sendInfo:v17 toComponentUID:uuid];

        v11 = v19 + 1;
        goto LABEL_10;
      }

LABEL_11:
      ++v12;
      v22 = [sourceCopy keyAfter:firstKey];

      firstKey = v22;
      if (!v22)
      {
        goto LABEL_14;
      }
    }

    v14 = v13;
LABEL_10:

    goto LABEL_11;
  }

  firstKey = [sourceCopy firstKey];
  if (firstKey)
  {
    goto LABEL_4;
  }

  v12 = 0;
  v11 = 0;
LABEL_14:
  v23 = CarNavLogging();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544898;
    selfCopy = self;
    v29 = 2114;
    v30 = v25;
    v31 = 2048;
    v32 = v11;
    v33 = 2048;
    v34 = [sourceCopy count];
    v35 = 2048;
    v36 = cacheCopy;
    v37 = 2048;
    v38 = v12;
    v39 = 2048;
    v40 = [cacheCopy count];
    _os_log_debug_impl(&dword_224A23000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ sendNavInfo fromIndex=%{public}@ sentIndexes=%lu source=%lu cache=(%p)%lu/%lu", buf, 0x48u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end