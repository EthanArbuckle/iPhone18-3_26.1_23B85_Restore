@interface GKTurnBasedEventHandler
+ (GKTurnBasedEventHandler)sharedTurnBasedEventHandler;
- (GKTurnBasedEventHandler)init;
- (NSObject)delegate;
- (void)lookForEvent;
@end

@implementation GKTurnBasedEventHandler

+ (GKTurnBasedEventHandler)sharedTurnBasedEventHandler
{
  if (sharedTurnBasedEventHandler_once != -1)
  {
    +[GKTurnBasedEventHandler sharedTurnBasedEventHandler];
  }

  v3 = sharedTurnBasedEventHandler_sSharedTurnBasedEventHandler;

  return v3;
}

uint64_t __54__GKTurnBasedEventHandler_sharedTurnBasedEventHandler__block_invoke()
{
  sharedTurnBasedEventHandler_sSharedTurnBasedEventHandler = objc_alloc_init(GKTurnBasedEventHandler);

  return MEMORY[0x2821F96F8]();
}

- (GKTurnBasedEventHandler)init
{
  v7.receiver = self;
  v7.super_class = GKTurnBasedEventHandler;
  v2 = [(GKTurnBasedEventHandler *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("GKTurnBasedEventHandler.lookForEventQueue", v3);
    lookForEventQueue = v2->_lookForEventQueue;
    v2->_lookForEventQueue = v4;
  }

  return v2;
}

- (void)lookForEvent
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke;
  v2[3] = &unk_2785DD760;
  v2[4] = self;
  [GKActivity named:@"lookForEvent" execute:v2];
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_2;
  v6[3] = &unk_2785DEBA8;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, v6);
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 500, "-[GKTurnBasedEventHandler lookForEvent]_block_invoke_2"];
  v3 = [GKDispatchGroup dispatchGroupWithName:v2];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_3;
  v7[3] = &unk_2785DD910;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  [v6 perform:v7];
  [v6 wait];
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 turnBasedService];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_4;
  v10[3] = &unk_2785E00B8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v3;
  v9 = v3;
  [v5 getNextTurnBasedEventWithHandler:v10];
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_4(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  if (v13)
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_4_cold_1();
    }
  }

  v15 = [MEMORY[0x277CCA9A0] defaultCenter];
  v16 = +[GKLocalPlayer localPlayer];
  if (v11)
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v18, OS_LOG_TYPE_INFO, "lookForEvent:TBG MatchID Found, attempting to load TBG Match Details", buf, 2u);
    }

    v19 = *(a1 + 32);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_191;
    v33[3] = &unk_2785E0068;
    v20 = &v34;
    v34 = v11;
    v41 = a4;
    v21 = &v35;
    v35 = *(a1 + 32);
    v36 = v15;
    v37 = v16;
    v42 = a5;
    v22 = *(a1 + 48);
    v38 = *(a1 + 40);
    v39 = v22;
    v40 = v12;
    v23 = v16;
    [v19 perform:v33];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v24 = GKOSLoggers();
    }

    v25 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v25, OS_LOG_TYPE_INFO, "lookForEvent:Posting Notifiation: GKInternalTurnBasedGameEventNotification", buf, 2u);
    }

    [v15 postNotificationName:@"GKInternalTurnBasedGameEvent" object:0];
    v26 = *(a1 + 32);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_207;
    v30[3] = &unk_2785DD910;
    v20 = &v31;
    v31 = v16;
    v21 = v32;
    v27 = *(a1 + 48);
    v28 = *(a1 + 40);
    v32[0] = v27;
    v32[1] = v28;
    v29 = v16;
    [v26 perform:v30];
  }

  (*(*(a1 + 56) + 16))();
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_191(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_2_193;
  v13[3] = &unk_2785E0040;
  v20 = *(a1 + 88);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v21 = *(a1 + 96);
  v11 = *(a1 + 72);
  v16 = *(a1 + 64);
  v17 = v11;
  v18 = *(a1 + 80);
  v19 = v3;
  v12 = v3;
  [GKTurnBasedMatch loadTurnBasedMatchWithDetailsForMatchID:v4 withCompletionHandler:v13];
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_2_193(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = *(a1 + 96);
    if (v8 <= 87)
    {
      if (v8 > 81)
      {
        if (v8 == 82)
        {
          if (!os_log_GKGeneral)
          {
            v33 = GKOSLoggers();
          }

          v34 = os_log_GKTrace;
          if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_227904000, v34, OS_LOG_TYPE_INFO, "lookForEvent:TBG Command: GKPushCommandTurnBasedComplete", buf, 2u);
          }

          [*(a1 + 40) postNotificationName:@"GKInternalTurnBasedGameEvent" object:*(a1 + 48)];
          v64[0] = MEMORY[0x277D85DD0];
          v64[1] = 3221225472;
          v64[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_200;
          v64[3] = &unk_2785DF3E0;
          v65 = *(a1 + 56);
          v66 = v5;
          v35 = *(a1 + 72);
          v36 = *(a1 + 64);
          v67 = v35;
          v68 = v36;
          dispatch_async(MEMORY[0x277D85CD0], v64);

          v13 = v65;
          goto LABEL_60;
        }

        if (v8 != 85)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v8 == 80)
        {
          if (!os_log_GKGeneral)
          {
            v26 = GKOSLoggers();
          }

          v27 = os_log_GKTrace;
          if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_227904000, v27, OS_LOG_TYPE_INFO, "lookForEvent:TBG Command: GKPushCommandTurnBasedInvite", buf, 2u);
          }

          v28 = *(a1 + 32);
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_194;
          v74[3] = &unk_2785E0018;
          v75 = v5;
          v29 = *(a1 + 40);
          v30 = *(a1 + 48);
          *&v31 = *(a1 + 56);
          *(&v31 + 1) = *(a1 + 64);
          v78 = *(a1 + 104);
          *&v32 = v29;
          *(&v32 + 1) = v30;
          v76 = v32;
          v77 = v31;
          [v28 perform:v74];

          v13 = v75;
          goto LABEL_60;
        }

        if (v8 != 81)
        {
          goto LABEL_61;
        }

        if (!os_log_GKGeneral)
        {
          v14 = GKOSLoggers();
        }

        v15 = os_log_GKTrace;
        if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_227904000, v15, OS_LOG_TYPE_INFO, "lookForEvent:TBG Command: GKPushCommandTurnBasedTurn", buf, 2u);
        }
      }

      if (!os_log_GKGeneral)
      {
        v16 = GKOSLoggers();
      }

      v17 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "lookForEvent:TBG Command: GKPushCommandTurnBasedMatchChanged", buf, 2u);
      }
    }

    else
    {
      if (v8 <= 89)
      {
        if (v8 == 88)
        {
          if (!os_log_GKGeneral)
          {
            v41 = GKOSLoggers();
          }

          v42 = os_log_GKTrace;
          if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_227904000, v42, OS_LOG_TYPE_INFO, "lookForEvent:TBG Command: GKPushCommandExchangeRequested", buf, 2u);
          }

          [*(a1 + 40) postNotificationName:@"GKInternalTurnBasedGameEvent" object:*(a1 + 48)];
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_203;
          v59[3] = &unk_2785DF3E0;
          v60 = v5;
          v61 = *(a1 + 80);
          v43 = *(a1 + 56);
          v44 = *(a1 + 64);
          v62 = v43;
          v63 = v44;
          dispatch_async(MEMORY[0x277D85CD0], v59);

          v13 = v60;
        }

        else
        {
          if (!os_log_GKGeneral)
          {
            v22 = GKOSLoggers();
          }

          v23 = os_log_GKTrace;
          if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_227904000, v23, OS_LOG_TYPE_INFO, "lookForEvent:TBG Command: GKPushCommandExchangeCompleted", buf, 2u);
          }

          [*(a1 + 40) postNotificationName:@"GKInternalTurnBasedGameEvent" object:*(a1 + 48)];
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_204;
          v54[3] = &unk_2785DF3E0;
          v55 = v5;
          v56 = *(a1 + 80);
          v24 = *(a1 + 56);
          v25 = *(a1 + 64);
          v57 = v24;
          v58 = v25;
          dispatch_async(MEMORY[0x277D85CD0], v54);

          v13 = v55;
        }

        goto LABEL_60;
      }

      if (v8 == 90)
      {
        if (!os_log_GKGeneral)
        {
          v37 = GKOSLoggers();
        }

        v38 = os_log_GKTrace;
        if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_227904000, v38, OS_LOG_TYPE_INFO, "lookForEvent:TBG Command: GKPushCommandExchangeCanceled", buf, 2u);
        }

        [*(a1 + 40) postNotificationName:@"GKInternalTurnBasedGameEvent" object:*(a1 + 48)];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_205;
        v49[3] = &unk_2785DF3E0;
        v50 = v5;
        v51 = *(a1 + 80);
        v39 = *(a1 + 56);
        v40 = *(a1 + 64);
        v52 = v39;
        v53 = v40;
        dispatch_async(MEMORY[0x277D85CD0], v49);

        v13 = v50;
        goto LABEL_60;
      }

      if (v8 != 91)
      {
        if (v8 != 92)
        {
          goto LABEL_61;
        }

        if (!os_log_GKGeneral)
        {
          v9 = GKOSLoggers();
        }

        v10 = os_log_GKTrace;
        if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "lookForEvent:TBG Command: GKPushCommandExchangeSelected", buf, 2u);
        }

        [*(a1 + 40) postNotificationName:@"GKInternalTurnBasedGameEvent" object:*(a1 + 48)];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_206;
        block[3] = &unk_2785DDB40;
        v46 = *(a1 + 56);
        v11 = v5;
        v12 = *(a1 + 64);
        v47 = v11;
        v48 = v12;
        dispatch_async(MEMORY[0x277D85CD0], block);

        v13 = v46;
LABEL_60:

        goto LABEL_61;
      }
    }

    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    v19 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v19, OS_LOG_TYPE_INFO, "lookForEvent:TBG Command: GKPushCommandTurnReminder", buf, 2u);
    }

    [*(a1 + 40) postNotificationName:@"GKInternalTurnBasedGameEvent" object:*(a1 + 48)];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_199;
    v69[3] = &unk_2785DFFC8;
    v70 = *(a1 + 56);
    v20 = v5;
    v73 = *(a1 + 104);
    v21 = *(a1 + 64);
    v71 = v20;
    v72 = v21;
    dispatch_async(MEMORY[0x277D85CD0], v69);

    v13 = v70;
    goto LABEL_60;
  }

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_2_193_cold_1();
  }

LABEL_61:
  (*(*(a1 + 88) + 16))();
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_194(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_2_195;
  v11[3] = &unk_2785DFFF0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v15 = *(a1 + 72);
  *&v8 = v7;
  *(&v8 + 1) = *(a1 + 64);
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v12 = v9;
  v13 = v8;
  v14 = v3;
  v10 = v3;
  [v4 acceptInviteWithCompletionHandler:v11];
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_2_195(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!a3)
  {
    [*(a1 + 32) postNotificationName:@"GKInternalTurnBasedGameEvent" object:*(a1 + 40)];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_3_196;
    v11[3] = &unk_2785DFFC8;
    v12 = *(a1 + 48);
    v9 = v8;
    v15 = *(a1 + 72);
    v10 = *(a1 + 56);
    v13 = v9;
    v14 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v5, v6, v7);
}

uint64_t __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_3_196(uint64_t a1)
{
  v2 = [*(a1 + 32) eventEmitter];
  [v2 player:*(a1 + 32) receivedTurnEventForMatch:*(a1 + 40) didBecomeActive:*(a1 + 56)];

  [*(a1 + 48) callTurnEventForMatch:*(a1 + 40) userTapped:*(a1 + 56)];
  v3 = *(a1 + 48);

  return [v3 lookForEvent];
}

uint64_t __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_199(uint64_t a1)
{
  v2 = [*(a1 + 32) eventEmitter];
  [v2 player:*(a1 + 32) receivedTurnEventForMatch:*(a1 + 40) didBecomeActive:*(a1 + 56)];

  [*(a1 + 48) callTurnEventForMatch:*(a1 + 40) userTapped:*(a1 + 56)];
  v3 = *(a1 + 48);

  return [v3 lookForEvent];
}

uint64_t __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_200(uint64_t a1)
{
  v2 = [*(a1 + 32) eventEmitter];
  [v2 player:*(a1 + 32) matchEnded:*(a1 + 40)];

  v3 = *(a1 + 48);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 48) handleMatchEnded:*(a1 + 40)];
  }

  v4 = *(a1 + 56);

  return [v4 lookForEvent];
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_203(uint64_t a1)
{
  v3 = [*(a1 + 32) exchangeForID:*(a1 + 40)];
  v2 = [*(a1 + 48) eventEmitter];
  [v2 player:*(a1 + 48) receivedExchangeRequest:v3 forMatch:*(a1 + 32)];

  [*(a1 + 56) lookForEvent];
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_204(uint64_t a1)
{
  v5 = [*(a1 + 32) exchangeForID:*(a1 + 40)];
  v2 = [*(a1 + 48) eventEmitter];
  v3 = *(a1 + 48);
  v4 = [v5 replies];
  [v2 player:v3 receivedExchangeReplies:v4 forCompletedExchange:v5 forMatch:*(a1 + 32)];

  [*(a1 + 56) lookForEvent];
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_205(uint64_t a1)
{
  v3 = [*(a1 + 32) exchangeForID:*(a1 + 40)];
  v2 = [*(a1 + 48) eventEmitter];
  [v2 player:*(a1 + 48) receivedExchangeCancellation:v3 forMatch:*(a1 + 32)];

  [*(a1 + 56) lookForEvent];
}

uint64_t __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_206(uint64_t a1)
{
  v2 = [*(a1 + 32) eventEmitter];
  [v2 player:*(a1 + 32) receivedTurnEventForMatch:*(a1 + 40) didBecomeActive:1];

  [*(a1 + 48) callTurnEventForMatch:*(a1 + 40) userTapped:1];
  v3 = *(a1 + 48);

  return [v3 lookForEvent];
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_207(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 multiplayerService];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_2_208;
  v9[3] = &unk_2785E0090;
  v10 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = v3;
  v8 = v3;
  [v5 getPlayersToInviteWithHandlerV2:v9];
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_2_208(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_2_208_cold_1();
    }
  }

  v8 = [v5 _gkPlayersFromInternals];
  if (v8)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_209;
    block[3] = &unk_2785DDB40;
    v10 = *(a1 + 32);
    v11 = v8;
    v12 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
    [*(a1 + 48) lookForEvent];
  }

  (*(*(a1 + 56) + 16))();
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_209(id *a1)
{
  v4 = [a1[4] eventEmitter];
  if ([v4 listenerRegisteredForSelector:sel_player_didRequestMatchWithOtherPlayers_])
  {
    [v4 player:a1[4] didRequestMatchWithOtherPlayers:a1[5]];
  }

  else
  {
    v2 = [a1[5] _gkPlayersIDsFromPlayers];
    [v4 player:a1[4] didRequestMatchWithPlayers:v2];
    v3 = a1[6];
    if (objc_opt_respondsToSelector())
    {
      [a1[6] handleInviteFromGameCenter:v2];
    }
  }
}

- (NSObject)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_227904000, v0, v1, "lookForEvent:Get Next Turn Based Event Failed.Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_2_193_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_227904000, v0, v1, "lookForEvent:Load Turn Based Match with Details failed.Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__GKTurnBasedEventHandler_lookForEvent__block_invoke_2_208_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_227904000, v0, v1, "lookForEvent:Failed to get players to invite.Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end