@interface GEOAPWebPortal
@end

@implementation GEOAPWebPortal

void __71__GEOAPWebPortal_captureWebPlaceCardAnalyticEvent_analyticSessionType___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v26 = v3;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = a1;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (!v6)
    {
      goto LABEL_21;
    }

    v7 = v6;
    v8 = *v29;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = GEOGetWebPortalAnalyticsLog();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          *buf = 0;
          v15 = v14;
          v16 = "'WebPlaceCardStates' has unexpected entry; must drop it";
          v17 = 2;
LABEL_15:
          _os_log_impl(&dword_1AB634000, v15, OS_LOG_TYPE_ERROR, v16, buf, v17);
          goto LABEL_19;
        }

        v11 = [GEOAPStateFactory pipelineStateTypeForPipelineStateName:v10];
        if (!v11)
        {
          v14 = GEOGetWebPortalAnalyticsLog();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          *buf = 138412290;
          v33[0] = v10;
          v15 = v14;
          v16 = "'WebPlaceCardStates' has unexpected add-on state name (%@); must drop it";
          v17 = 12;
          goto LABEL_15;
        }

        v12 = v11;
        v13 = +[GEOAPStateFactory sharedFactory];
        v14 = [v13 stateForType:v12];

        if (v14)
        {
          [*(v27 + 40) addLogMsgState:v14];
        }

        else
        {
          v18 = GEOGetWebPortalAnalyticsLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v33[0] = v10;
            _os_log_impl(&dword_1AB634000, v18, OS_LOG_TYPE_ERROR, "state (%@) could not be constructed", buf, 0xCu);
          }

          v14 = 0;
        }

LABEL_19:
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (!v7)
      {
LABEL_21:

        v4 = v26;
        [*(v27 + 40) addLogMsgState:v26];
        v19 = *(v27 + 56);
        v20 = *(v27 + 60);
        v21 = GEOMakeGEOAPBatchID();
        [GEOAPPortal populateCommonEventValues:*(v27 + 40)];
        [GEOAPPortal reportLogMsgEvent:*(v27 + 40) uploadBatchId:v21 completion:0 completionQueue:0];
        goto LABEL_25;
      }
    }
  }

  v22 = GEOGetWebPortalAnalyticsLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = *(a1 + 56);
    v24 = *(a1 + 48);
    *buf = 67109378;
    LODWORD(v33[0]) = v23;
    WORD2(v33[0]) = 2112;
    *(v33 + 6) = v24;
    _os_log_impl(&dword_1AB634000, v22, OS_LOG_TYPE_ERROR, "session state (%d : %@) could not be constructed", buf, 0x12u);
  }

LABEL_25:
  v25 = *MEMORY[0x1E69E9840];
}

@end