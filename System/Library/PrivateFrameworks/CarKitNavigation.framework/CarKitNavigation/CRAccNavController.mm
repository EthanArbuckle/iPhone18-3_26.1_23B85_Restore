@interface CRAccNavController
- (CRAccNavController)initWithComponent:(id)a3 delegate:(id)a4;
- (CRAccNavControllerDelegate)delegate;
- (NSUUID)uuid;
- (id)description;
- (void)_sendNavInfoFromIndex:(id)a3 fromSource:(id)a4 cache:(id)a5;
- (void)delegateUpdatedLaneGuidance:(id)a3;
- (void)delegateUpdatedLaneGuidances;
- (void)delegateUpdatedManeuver:(id)a3;
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
    v13 = self;
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated routeguidance", &v12, 0xCu);
  }

  v4 = [(CRAccNavController *)self delegate];
  v5 = [v4 routeGuidanceProviding];
  v6 = [(CRAccNavController *)self component];
  v7 = [v5 navInfoWithComponent:v6];
  [(CRAccNavController *)self setRouteGuidance:v7];

  [(CRAccNavController *)self sendManeuvers];
  [(CRAccNavController *)self sendLaneGuidances];
  v8 = [(CRAccNavController *)self delegate];
  v9 = [(CRAccNavController *)self routeGuidance];
  v10 = [(CRAccNavController *)self uuid];
  [v8 sendInfo:v9 toComponentUID:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRAccNavController *)self component];
  v6 = [v5 uuid];
  v7 = [v3 stringWithFormat:@"<%@: %p component=%@>", v4, self, v6];

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
  v1 = [v0 delegate];
  v2 = [v1 maneuversProvidingIndexed];
  [v2 count];
  v3 = [OUTLINED_FUNCTION_2() sentManeuvers];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_224A23000, v4, v5, "%{public}@ sendManeuvers done source.count=%lu cache=%{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendLaneGuidances
{
  OUTLINED_FUNCTION_3();
  v12 = *MEMORY[0x277D85DE8];
  v1 = [v0 delegate];
  v2 = [v1 laneGuidanceProvidingIndexed];
  [v2 count];
  v3 = [OUTLINED_FUNCTION_2() sentLaneGuidances];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_224A23000, v4, v5, "%{public}@ sendLaneGuidances done source.count=%lu cache=%{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (NSUUID)uuid
{
  v2 = [(CRAccNavController *)self component];
  v3 = [v2 uuid];

  return v3;
}

- (CRAccNavController)initWithComponent:(id)a3 delegate:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = CRAccNavController;
  v9 = [(CRAccNavController *)&v22 init];
  if (v9)
  {
    v10 = CarNavLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 configDescription];
      *buf = 138544130;
      v24 = v9;
      v25 = 2114;
      v26 = v8;
      v27 = 2114;
      v28 = v7;
      v29 = 2114;
      v30 = v11;
      _os_log_impl(&dword_224A23000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ init! delegate=%{public}@ component=%{public}@ config=%{public}@", buf, 0x2Au);
    }

    objc_storeStrong(&v9->_component, a3);
    objc_storeWeak(&v9->_delegate, v8);
    v12 = [CRAccNavInfoCache alloc];
    v13 = [v7 component];
    v14 = -[CRAccNavInfoCache initWithCountLimit:](v12, "initWithCountLimit:", [v13 maxCapacity_GuidanceManeuver]);
    sentManeuvers = v9->_sentManeuvers;
    v9->_sentManeuvers = v14;

    v16 = [CRAccNavInfoCache alloc];
    v17 = [v7 component];
    v18 = -[CRAccNavInfoCache initWithCountLimit:](v16, "initWithCountLimit:", [v17 maxCapacity_LaneGuidance]);
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
    v9 = self;
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ sendInfo", &v8, 0xCu);
  }

  [(CRAccNavController *)self sendManeuvers];
  [(CRAccNavController *)self sendLaneGuidances];
  v4 = [(CRAccNavController *)self delegate];
  v5 = [(CRAccNavController *)self routeGuidance];
  v6 = [(CRAccNavController *)self uuid];
  [v4 sendInfo:v5 toComponentUID:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resendInfo
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CRAccNavController *)self sentManeuvers];
    v5 = [v4 count];
    v6 = [(CRAccNavController *)self sentLaneGuidances];
    v7 = [v6 count];
    v8 = [(CRAccNavController *)self routeGuidance];
    v9 = @"YES";
    *buf = 138544130;
    v55 = self;
    if (!v8)
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

  v10 = [(CRAccNavController *)self delegate];
  v11 = [(CRAccNavController *)self component];
  v12 = [CRAccNavRouteGuidance resetForComponent:v11];
  v13 = [(CRAccNavController *)self uuid];
  [v10 sendInfo:v12 toComponentUID:v13];

  v14 = [(CRAccNavController *)self delegate];
  [v14 willSendGuidanceStateLoading];

  v15 = [(CRAccNavController *)self delegate];
  v16 = [(CRAccNavController *)self component];
  v17 = [(CRAccNavController *)self delegate];
  v18 = [v17 sourceName];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"Unknown";
  }

  v21 = [(CRAccNavController *)self delegate];
  v22 = +[CRAccNavRouteGuidance loadingForComponent:sourceName:sourceSupported:](CRAccNavRouteGuidance, "loadingForComponent:sourceName:sourceSupported:", v16, v20, [v21 sourceSupported]);
  v23 = [(CRAccNavController *)self uuid];
  [v15 sendInfo:v22 toComponentUID:v23];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v24 = [(CRAccNavController *)self sentManeuvers];
  v25 = [v24 countByEnumeratingWithState:&v48 objects:v53 count:16];
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
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v48 + 1) + 8 * i);
        v30 = [(CRAccNavController *)self delegate];
        v31 = [(CRAccNavController *)self uuid];
        [v30 sendInfo:v29 toComponentUID:v31];
      }

      v26 = [v24 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v26);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v32 = [(CRAccNavController *)self sentLaneGuidances];
  v33 = [v32 countByEnumeratingWithState:&v44 objects:v52 count:16];
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
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v44 + 1) + 8 * j);
        v38 = [(CRAccNavController *)self delegate];
        v39 = [(CRAccNavController *)self uuid];
        [v38 sendInfo:v37 toComponentUID:v39];
      }

      v34 = [v32 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v34);
  }

  v40 = [(CRAccNavController *)self delegate];
  v41 = [(CRAccNavController *)self routeGuidance];
  v42 = [(CRAccNavController *)self uuid];
  [v40 sendInfo:v41 toComponentUID:v42];

  v43 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = self;
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ reset", &v11, 0xCu);
  }

  [(CRAccNavController *)self setRouteGuidance:0];
  v4 = [(CRAccNavController *)self sentManeuvers];
  [v4 removeAllObjects];

  v5 = [(CRAccNavController *)self sentLaneGuidances];
  [v5 removeAllObjects];

  v6 = [(CRAccNavController *)self delegate];
  v7 = [(CRAccNavController *)self component];
  v8 = [CRAccNavRouteGuidance resetForComponent:v7];
  v9 = [(CRAccNavController *)self uuid];
  [v6 sendInfo:v8 toComponentUID:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)delegateUpdatedManeuvers
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CRAccNavController *)self delegate];
    v5 = [v4 maneuversProvidingIndexed];
    v6 = [v5 count];
    v7 = [(CRAccNavController *)self routeGuidance];
    v22 = 138543874;
    v23 = self;
    v24 = 2048;
    v25 = v6;
    v26 = 1024;
    v27 = [v7 guidanceState];
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated maneuvers count=%lu guidanceState=%hhu", &v22, 0x1Cu);
  }

  v8 = [(CRAccNavController *)self routeGuidance];
  v9 = [v8 guidanceState];

  if (!v9)
  {
    v10 = [(CRAccNavController *)self delegate];
    [v10 willSendGuidanceStateLoading];

    v11 = [(CRAccNavController *)self component];
    v12 = [(CRAccNavController *)self delegate];
    v13 = [v12 sourceName];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = @"Unknown";
    }

    v16 = [(CRAccNavController *)self delegate];
    v17 = +[CRAccNavRouteGuidance loadingForComponent:sourceName:sourceSupported:](CRAccNavRouteGuidance, "loadingForComponent:sourceName:sourceSupported:", v11, v15, [v16 sourceSupported]);
    [(CRAccNavController *)self setRouteGuidance:v17];

    v18 = [(CRAccNavController *)self delegate];
    v19 = [(CRAccNavController *)self routeGuidance];
    v20 = [(CRAccNavController *)self uuid];
    [v18 sendInfo:v19 toComponentUID:v20];
  }

  [(CRAccNavController *)self sendManeuvers];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)delegateUpdatedManeuver:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRAccNavController *)self sentManeuvers];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "index")}];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = CarNavLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = self;
      v18 = 1024;
      v19 = [v4 index];
      _os_log_impl(&dword_224A23000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated maneuver %d", &v16, 0x12u);
    }

    v9 = [(CRAccNavController *)self component];
    v10 = [v4 navInfoWithComponent:v9];

    v11 = [(CRAccNavController *)self sentManeuvers];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "index")}];
    [v11 setObject:v10 forKeyedSubscript:v12];

    v13 = [(CRAccNavController *)self delegate];
    v14 = [(CRAccNavController *)self uuid];
    [v13 sendInfo:v10 toComponentUID:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)delegateUpdatedLaneGuidances
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CRAccNavController *)self delegate];
    v5 = [v4 laneGuidanceProvidingIndexed];
    v6 = [v5 count];
    v7 = [(CRAccNavController *)self routeGuidance];
    v22 = 138543874;
    v23 = self;
    v24 = 2048;
    v25 = v6;
    v26 = 1024;
    v27 = [v7 guidanceState];
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated laneGuidances count=%lu guidanceState=%hhu", &v22, 0x1Cu);
  }

  v8 = [(CRAccNavController *)self routeGuidance];
  v9 = [v8 guidanceState];

  if (!v9)
  {
    v10 = [(CRAccNavController *)self delegate];
    [v10 willSendGuidanceStateLoading];

    v11 = [(CRAccNavController *)self component];
    v12 = [(CRAccNavController *)self delegate];
    v13 = [v12 sourceName];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = @"Unknown";
    }

    v16 = [(CRAccNavController *)self delegate];
    v17 = +[CRAccNavRouteGuidance loadingForComponent:sourceName:sourceSupported:](CRAccNavRouteGuidance, "loadingForComponent:sourceName:sourceSupported:", v11, v15, [v16 sourceSupported]);
    [(CRAccNavController *)self setRouteGuidance:v17];

    v18 = [(CRAccNavController *)self delegate];
    v19 = [(CRAccNavController *)self routeGuidance];
    v20 = [(CRAccNavController *)self uuid];
    [v18 sendInfo:v19 toComponentUID:v20];
  }

  [(CRAccNavController *)self sendLaneGuidances];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)delegateUpdatedLaneGuidance:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRAccNavController *)self sentLaneGuidances];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "index")}];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = CarNavLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = self;
      v18 = 1024;
      v19 = [v4 index];
      _os_log_impl(&dword_224A23000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated laneGuidance %d", &v16, 0x12u);
    }

    v9 = [(CRAccNavController *)self component];
    v10 = [v4 navInfoWithComponent:v9];

    v11 = [(CRAccNavController *)self sentLaneGuidances];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "index")}];
    [v11 setObject:v10 forKeyedSubscript:v12];

    v13 = [(CRAccNavController *)self delegate];
    v14 = [(CRAccNavController *)self uuid];
    [v13 sendInfo:v10 toComponentUID:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendNavInfoFromIndex:(id)a3 fromSource:(id)a4 cache:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v25 = v7;
  if (v7)
  {
    v10 = v7;
LABEL_4:
    v11 = 0;
    v12 = 0;
    while (1)
    {
      if (v12 >= [v9 countLimit])
      {
        goto LABEL_14;
      }

      v13 = [v9 objectForKeyedSubscript:v10];
      if (v13)
      {
        break;
      }

      v15 = [v8 objectForKeyedSubscript:v10];

      if (v15)
      {
        v14 = [v8 objectForKeyedSubscript:v10];
        v16 = [(CRAccNavController *)self component];
        v17 = [v14 navInfoWithComponent:v16];

        [v9 setObject:v17 forKeyedSubscript:v10];
        v18 = [(CRAccNavController *)self delegate];
        [(CRAccNavController *)self component];
        v20 = v19 = v11;
        v21 = [v20 uuid];
        [v18 sendInfo:v17 toComponentUID:v21];

        v11 = v19 + 1;
        goto LABEL_10;
      }

LABEL_11:
      ++v12;
      v22 = [v8 keyAfter:v10];

      v10 = v22;
      if (!v22)
      {
        goto LABEL_14;
      }
    }

    v14 = v13;
LABEL_10:

    goto LABEL_11;
  }

  v10 = [v8 firstKey];
  if (v10)
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
    v28 = self;
    v29 = 2114;
    v30 = v25;
    v31 = 2048;
    v32 = v11;
    v33 = 2048;
    v34 = [v8 count];
    v35 = 2048;
    v36 = v9;
    v37 = 2048;
    v38 = v12;
    v39 = 2048;
    v40 = [v9 count];
    _os_log_debug_impl(&dword_224A23000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ sendNavInfo fromIndex=%{public}@ sentIndexes=%lu source=%lu cache=(%p)%lu/%lu", buf, 0x48u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end