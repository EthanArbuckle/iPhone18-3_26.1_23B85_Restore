@interface GKViceroyLeaderElector
- (BOOL)haveAllHostScores;
- (BOOL)selectHostIfRequestedAndAllScored;
- (GKTransportMatchDataDelegate)matchDataDelegate;
- (GKViceroyLeaderElector)initWithMatchDataDelegate:(id)a3;
- (void)addHostScore:(int)a3 forPlayer:(id)a4;
- (void)calculateHostScore;
- (void)chooseBestHostingPlayerWithCompletionHandler:(id)a3;
- (void)networkStatisticsDidChange:(id)a3 localPlayerPeerID:(id)a4;
- (void)receivedChooseHostData:(id)a3 fromPlayerID:(id)a4;
@end

@implementation GKViceroyLeaderElector

- (GKViceroyLeaderElector)initWithMatchDataDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKViceroyLeaderElector;
  v5 = [(GKViceroyLeaderElector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_matchDataDelegateWeak, v4);
  }

  return v6;
}

- (void)chooseBestHostingPlayerWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(GKViceroyLeaderElector *)self matchDataDelegate];
    v6 = v5;
    if (self->_chooseHostCompletion || v5 && ([v5 expectedPlayerCount] || !objc_msgSend(v6, "currentPlayerCount")))
    {
      v4[2](v4, 0);
    }

    else
    {
      v7 = self;
      objc_sync_enter(v7);
      if (!v7->_hostScores)
      {
        v8 = [MEMORY[0x277CBEB38] dictionary];
        [(GKViceroyLeaderElector *)v7 setHostScores:v8];
      }

      objc_sync_exit(v7);

      [(GKViceroyLeaderElector *)v7 setChooseHostCompletion:v4];
      [(GKViceroyLeaderElector *)v7 calculateHostScore];
      if (![(GKViceroyLeaderElector *)v7 selectHostIfRequestedAndAllScored])
      {
        if (v7->_needHostScore)
        {
          [(GKViceroyLeaderElector *)v7 setHostScoreForQuery:1];
        }

        else
        {
          [(GKViceroyLeaderElector *)v7 sendHostScoreAsQuery:1];
        }

        v9 = dispatch_time(0, 15000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__GKViceroyLeaderElector_chooseBestHostingPlayerWithCompletionHandler___block_invoke;
        block[3] = &unk_2785DD760;
        block[4] = v7;
        dispatch_after(v9, MEMORY[0x277D85CD0], block);
      }
    }
  }
}

void __71__GKViceroyLeaderElector_chooseBestHostingPlayerWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[2])
  {
    v3 = v1;
    objc_sync_enter(v3);
    if (*(*(a1 + 32) + 24))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__GKViceroyLeaderElector_chooseBestHostingPlayerWithCompletionHandler___block_invoke_2;
      block[3] = &unk_2785DD760;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    objc_sync_exit(v3);
  }
}

uint64_t __71__GKViceroyLeaderElector_chooseBestHostingPlayerWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    (*(result + 16))(result, 0);
    v3 = *(a1 + 32);

    return [v3 setChooseHostCompletion:0];
  }

  return result;
}

- (void)networkStatisticsDidChange:(id)a3 localPlayerPeerID:(id)a4
{
  v6 = a4;
  [(GKViceroyLeaderElector *)self setNetworkStatistics:a3];
  [(GKViceroyLeaderElector *)self setLocalPlayerPeerID:v6];

  if (self->_needHostScore)
  {
    [(GKViceroyLeaderElector *)self calculateHostScore];
    [(GKViceroyLeaderElector *)self sendHostScoreAsQuery:self->_hostScoreForQuery];
    [(GKViceroyLeaderElector *)self selectHostIfRequestedAndAllScored];
    [(GKViceroyLeaderElector *)self setNeedHostScore:0];

    [(GKViceroyLeaderElector *)self setHostScoreForQuery:0];
  }
}

- (void)receivedChooseHostData:(id)a3 fromPlayerID:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = v18;
  v8 = *[v18 bytes];
  if ([v18 length] < 5)
  {
    v15 = 1;
    if (v6)
    {
LABEL_8:
      v16 = [(GKViceroyLeaderElector *)self matchDataDelegate];
      v17 = [v16 playerFromID:v6];
      [(GKViceroyLeaderElector *)self addHostScore:v8 forPlayer:v17];
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEA90];
    v10 = v18;
    v11 = [v9 dataWithBytes:objc_msgSend(v18 length:{"bytes") + 4, objc_msgSend(v18, "length") - 4}];

    v12 = [MEMORY[0x277CCAC58] propertyListWithData:v11 options:0 format:0 error:0];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKey:@"query"];
      v15 = [v14 BOOLValue];
    }

    else
    {
      v15 = 1;
    }

    v18 = v11;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  [(GKViceroyLeaderElector *)self calculateHostScore];
  if (v15)
  {
    [(GKViceroyLeaderElector *)self sendHostScoreAsQuery:0];
  }

  [(GKViceroyLeaderElector *)self selectHostIfRequestedAndAllScored];
}

- (void)addHostScore:(int)a3 forPlayer:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    hostScores = v7->_hostScores;
    if (!hostScores)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(GKViceroyLeaderElector *)v7 setHostScores:v9];

      hostScores = v7->_hostScores;
    }

    v14[0] = v6;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v14[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v12 = [v6 referenceKey];
    [(NSMutableDictionary *)hostScores setObject:v11 forKey:v12];

    objc_sync_exit(v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)haveAllHostScores
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_hostScores count];
  v4 = [(GKViceroyLeaderElector *)v2 matchDataDelegate];
  LOBYTE(v3) = v3 == [v4 currentPlayerCountIncludingLocalPlayer];

  objc_sync_exit(v2);
  return v3;
}

- (BOOL)selectHostIfRequestedAndAllScored
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_chooseHostCompletion)
  {
    v3 = [(GKViceroyLeaderElector *)self haveAllHostScores];
    if (v3)
    {
      v4 = +[GKLocalPlayer localPlayer];
      v5 = [v4 referenceKey];
      v6 = self;
      objc_sync_enter(v6);
      p_isa = &v6->super.isa;
      v7 = [(NSMutableDictionary *)v6->_hostScores objectForKey:v5];
      v8 = [v7 objectAtIndex:1];
      v9 = [v8 integerValue];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = v6->_hostScores;
      v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            v14 = [p_isa[3] objectForKey:v13];

            v7 = v14;
            v15 = [v14 objectAtIndex:1];
            v16 = [v15 integerValue];

            if (v16 > v9 || v16 == v9 && [v5 caseInsensitiveCompare:v13] == -1)
            {
              v17 = [v7 objectAtIndex:0];

              v18 = v13;
              v9 = v16;
              v5 = v18;
              v4 = v17;
            }
          }

          v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v10);
      }

      [p_isa setHostScores:0];
      objc_sync_exit(p_isa);

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__GKViceroyLeaderElector_selectHostIfRequestedAndAllScored__block_invoke;
      block[3] = &unk_2785DEBA8;
      block[4] = p_isa;
      v25 = v4;
      v19 = v4;
      dispatch_async(MEMORY[0x277D85CD0], block);

      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __59__GKViceroyLeaderElector_selectHostIfRequestedAndAllScored__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 16);
  if (v1)
  {
    v2 = result;
    v3 = [*(result + 40) internal];
    v4 = [v3 playerID];
    (*(v1 + 16))(v1, v4);

    v5 = *(v2 + 32);

    return [v5 setChooseHostCompletion:0];
  }

  return result;
}

- (void)calculateHostScore
{
  v73 = *MEMORY[0x277D85DE8];
  v49 = +[GKLocalPlayer local];
  v48 = [v49 referenceKey];
  v3 = self;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)v3->_hostScores objectForKey:v48];

  objc_sync_exit(v3);
  if (!v4)
  {
    networkStatistics = v3->_networkStatistics;
    if (networkStatistics && v3->_localPlayerPeerID && (v50 = v3, -[NSDictionary objectForKey:](networkStatistics, "objectForKey:"), v6 = objc_claimAutoreleasedReturnValue(), [v6 objectForKey:@"GKSStatsLinks"], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v57 objects:v72 count:16];
      if (v9)
      {
        v10 = *v58;
        v51 = 0.0;
        v52 = 0.0;
        v11 = 0.0;
        v12 = 0.0;
        v13 = 0.0;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v58 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v15 = [v8 objectForKey:{*(*(&v57 + 1) + 8 * i), v48}];
            v16 = [v15 objectForKey:@"GKSStatsSendBWE"];
            [v16 doubleValue];
            v18 = v17;

            v19 = [v15 objectForKey:@"GKSStatsRecvBWE"];
            [v19 doubleValue];
            v21 = v20;

            v22 = [v15 objectForKey:@"GKSStatsSendPLR"];
            [v22 doubleValue];
            v24 = v23;

            v25 = [v15 objectForKey:@"GKSStatsRecvPLR"];
            [v25 doubleValue];
            v27 = v26;

            v28 = [v15 objectForKey:@"GKSStatsRTT"];
            [v28 doubleValue];
            v30 = v29;

            v13 = v13 + v18;
            v12 = v12 + v21;
            v11 = v11 + v24;
            v51 = v51 + v27;
            v52 = v52 + v30;
          }

          v9 = [v8 countByEnumeratingWithState:&v57 objects:v72 count:16];
        }

        while (v9);
      }

      else
      {
        v51 = 0.0;
        v52 = 0.0;
        v11 = 0.0;
        v12 = 0.0;
        v13 = 0.0;
      }

      v31 = [v8 count];
      if (v31 < 2)
      {
        v32 = v51;
        v33 = v52;
      }

      else
      {
        v13 = v13 / v31;
        v12 = v12 / v31;
        v11 = v11 / v31;
        v32 = v51 / v31;
        v33 = v52 / v31;
      }

      v34 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v35 = GKOSLoggers();
        v34 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 134219264;
        *v63 = ((((v12 + v13) * 0.3 + 0.0) - (v32 + v11) * 0.3) + v33 * -0.4);
        *&v63[8] = 2048;
        *&v63[10] = v13;
        v64 = 2048;
        v65 = v12;
        v66 = 2048;
        v67 = v11;
        v68 = 2048;
        v69 = v32;
        v70 = 2048;
        v71 = v33;
        _os_log_impl(&dword_227904000, v34, OS_LOG_TYPE_INFO, "[GKViceroyLeaderElector] Host score %ld  (sendBandwidth = %f, receiveBandwidth = %f, sendLoss = %f, receiveLoss = %f, rtt = %f)", buf, 0x3Eu);
      }

      [(GKViceroyLeaderElector *)v50 addHostScore:((((v12 + v13) * 0.3 + 0.0) - (v32 + v11) * 0.3) + v33 * -0.4) forPlayer:v49, v48];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v36 = [(GKViceroyLeaderElector *)v50 matchDataDelegate];
      v37 = [v36 guestPlayers];

      v38 = [v37 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v38)
      {
        v39 = *v54;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v54 != v39)
            {
              objc_enumerationMutation(v37);
            }

            v41 = *(*(&v53 + 1) + 8 * j);
            [(GKViceroyLeaderElector *)v50 addHostScore:0 forPlayer:v41];
            v42 = os_log_GKGeneral;
            if (!os_log_GKGeneral)
            {
              v43 = GKOSLoggers();
              v42 = os_log_GKGeneral;
            }

            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v44 = v42;
              v45 = [v41 internal];
              v46 = [v45 playerID];
              *buf = 67109378;
              *v63 = 0;
              *&v63[4] = 2112;
              *&v63[6] = v46;
              _os_log_impl(&dword_227904000, v44, OS_LOG_TYPE_INFO, "[GKViceroyLeaderElector] Added host score of %i for guest player = %@", buf, 0x12u);
            }
          }

          v38 = [v37 countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v38);
      }

      [(GKViceroyLeaderElector *)v50 selectHostIfRequestedAndAllScored];
    }

    else
    {
      [(GKViceroyLeaderElector *)v3 setNeedHostScore:1, v48];
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (GKTransportMatchDataDelegate)matchDataDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_matchDataDelegateWeak);

  return WeakRetained;
}

@end