@interface NSSNewsAnalyticsPBEventAccumulator
- (NSSNewsAnalyticsPBEventAccumulator)init;
- (NSSNewsAnalyticsPBEventAccumulator)initWithEnvelopeDescriptor:(id)a3 sessionManager:(id)a4;
- (NSSNewsAnalyticsSessionManager)sessionManager;
- (id)dequeueEventsIntoEnvelope;
- (void)observeEvent:(id)a3;
- (void)observeEvents:(id)a3;
@end

@implementation NSSNewsAnalyticsPBEventAccumulator

- (NSSNewsAnalyticsPBEventAccumulator)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NSSNewsAnalyticsPBEventAccumulator init]";
    v10 = 2080;
    v11 = "NSSNewsAnalyticsPBEventAccumulator.m";
    v12 = 1024;
    v13 = 83;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF0A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NSSNewsAnalyticsPBEventAccumulator init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSSNewsAnalyticsPBEventAccumulator)initWithEnvelopeDescriptor:(id)a3 sessionManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsPBEventAccumulator initWithEnvelopeDescriptor:sessionManager:];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsPBEventAccumulator initWithEnvelopeDescriptor:sessionManager:];
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = NSSNewsAnalyticsPBEventAccumulator;
  v8 = [(NSSNewsAnalyticsPBEventAccumulator *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    envelopeDescriptor = v8->_envelopeDescriptor;
    v8->_envelopeDescriptor = v9;

    objc_storeWeak(&v8->_sessionManager, v7);
    v11 = objc_opt_new();
    events = v8->_events;
    v8->_events = v11;
  }

  return v8;
}

- (id)dequeueEventsIntoEnvelope
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(NSSNewsAnalyticsPBEventAccumulator *)self events];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(NSSNewsAnalyticsPBEventAccumulator *)self sessionManager];
    v6 = [v5 currentSession];
    v7 = [v6 copy];

    v8 = [(NSSNewsAnalyticsPBEventAccumulator *)self events];
    v9 = [v8 copy];

    v10 = [MEMORY[0x277D35500] nss_sessionBatchWithIdentifier];
    [v10 setSession:v7];
    [v10 setEvents:v9];
    v11 = NSSNewsAnalyticsPBEventAccumulatorLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
      *buf = 67109634;
      v27 = [v12 contentType];
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_25BF0A000, v11, OS_LOG_TYPE_DEBUG, "Preparing an envelope of contentType %d with session %@, events %@", buf, 0x1Cu);
    }

    v13 = [MEMORY[0x277D35468] nss_envelopeWithIdentifier];
    v14 = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
    [v13 setContentTypeVersion:{objc_msgSend(v14, "contentTypeVersion")}];

    v15 = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
    [v13 setContentTypeMinorVersion:{objc_msgSend(v15, "contentTypeMinorVersion")}];

    v16 = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
    [v13 setContentTypePatchVersion:{objc_msgSend(v16, "contentTypePatchVersion")}];

    v17 = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
    [v13 setContentType:{objc_msgSend(v17, "contentType")}];

    v18 = [v10 data];
    v19 = [v18 fc_zlibDeflate];
    [v13 setContent:v19];

    v20 = MEMORY[0x277D2F918];
    v25 = v13;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    [v20 registerEnvelopesAsCreated:v21];

    v22 = [(NSSNewsAnalyticsPBEventAccumulator *)self events];
    [v22 removeAllObjects];
  }

  else
  {
    v13 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)observeEvent:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsPBEventAccumulator observeEvent:];
  }

  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(NSSNewsAnalyticsPBEventAccumulator *)self observeEvents:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)observeEvents:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsPBEventAccumulator observeEvents:];
  }

  if ([v4 count])
  {
    v5 = [(NSSNewsAnalyticsPBEventAccumulator *)self events];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = MEMORY[0x277D2F918];
      v8 = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
      [v7 registerEnvelopeCreationAnticipatedForContentType:{objc_msgSend(v8, "contentType")}];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = NSSNewsAnalyticsPBEventAccumulatorLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = [(NSSNewsAnalyticsPBEventAccumulator *)self envelopeDescriptor];
            v17 = [v16 contentType];
            *buf = 67109378;
            v26 = v17;
            v27 = 2112;
            v28 = v14;
            _os_log_impl(&dword_25BF0A000, v15, OS_LOG_TYPE_DEBUG, "For envelope of contentType %d, processing event %@.", buf, 0x12u);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v11);
    }

    v18 = [(NSSNewsAnalyticsPBEventAccumulator *)self events];
    [v18 addObjectsFromArray:v9];

    v4 = v20;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (NSSNewsAnalyticsSessionManager)sessionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionManager);

  return WeakRetained;
}

- (void)initWithEnvelopeDescriptor:sessionManager:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "envelopeDescriptor", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithEnvelopeDescriptor:sessionManager:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sessionManager", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)observeEvent:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "event", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)observeEvents:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "events", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end