@interface IDSGFTMetricsCollector
- (IDSGFTMetricsCollector)init;
- (IDSGFTMetricsLocalJoin)localJoin;
- (id)begin:(id)a3 uniqueID:(id)a4;
- (id)begin:(id)a3 uniqueID:(id)a4 withClass:(Class)a5;
- (id)collectForTimeBase:(double)a3 anonymize:(BOOL)a4;
- (id)createLinkCycle;
- (id)error:(id)a3;
- (id)getOrCreateMKICycleFor:(id)a3;
- (id)joinCycleForToken:(id)a3;
- (id)localDidJoin;
- (id)mtuChange:(unsigned __int16)a3 previous:(unsigned __int16)a4;
- (id)participantUpdateForParticipantID:(id)a3;
- (id)request:(id)a3;
- (id)uniqueError:(id)a3;
- (void)allocbindResponseForProtocolStack:(id)a3;
- (void)allocbindResponseFromInterface:(id)a3;
- (void)annotate:(id)a3 block:(id)a4;
- (void)annotate:(id)a3 withEvent:(id)a4;
- (void)avcReceiveMKMTime:(double)a3 forMKI:(id)a4 isGeneratedLocally:(BOOL)a5;
- (void)clientChannelConnected;
- (void)connectQRServer;
- (void)didConnectUnderlyingE2ELink;
- (void)didConnectUnderlyingRelayLink;
- (void)didCreateMKM:(id)a3;
- (void)didFailConnectionOfType:(id)a3;
- (void)didLeave;
- (void)didMitigateCollision:(BOOL)a3;
- (void)didSendJoin;
- (void)endWithReason:(unsigned int)a3;
- (void)firstIncomingPacketTime:(double)a3 forMKI:(id)a4;
- (void)firstOutgoingPacketTime:(double)a3 forMKI:(id)a4;
- (void)flushPendingNowKnownMKMs;
- (void)globalLinkStart;
- (void)hasConvergence;
- (void)hasGoaway;
- (void)hasRealloc;
- (void)hasSentCompoundPacket;
- (void)leave;
- (void)linkConnectedUsingFakeTLS;
- (void)linkConnectedUsingHTTP2;
- (void)linkConnectedUsingQUIC;
- (void)linkConnectedUsingTCPSTUN;
- (void)linkConnectedWithH2FallbackEnabled:(BOOL)a3;
- (void)mapMKI:(id)a3 toPushToken:(id)a4;
- (void)membershipChange;
- (void)participantIdChanged;
- (void)participantIdUnknown;
- (void)quicAllocbindRequest;
- (void)quicAllocbindResponse;
- (void)receivedKMOverPushFromToken:(id)a3;
- (void)receivedKMOverPushViaCacheForToken:(id)a3;
- (void)receivedKMOverQRFromToken:(id)a3;
- (void)receivedKMOverQUICFromToken:(id)a3;
- (void)receivedParticipantUpdateJoinEventOverPushFromParticipantID:(id)a3;
- (void)receivedParticipantUpdateJoinEventOverQUICFromParticipantID:(id)a3;
- (void)receivedParticipantUpdateLeaveEventOverPushFromParticipantID:(id)a3;
- (void)receivedParticipantUpdateLeaveEventOverQUICFromParticipantID:(id)a3;
- (void)receivedParticipantUpdateParticipantInfoEventOverPushFromParticipantID:(id)a3;
- (void)receivedParticipantUpdateParticipantInfoEventOverQUICFromParticipantID:(id)a3;
- (void)receivedUnknownKMOverPushViaCache:(id)a3;
- (void)receivedUnverifiedKMOverQUICFromToken:(id)a3;
- (void)reinitFinish;
- (void)reinitStart;
- (void)remoteDidBecomeActive:(id)a3;
- (void)remoteDidJoin:(id)a3;
- (void)requestAllocation;
- (void)selectedLocalInterface:(id)a3;
- (void)sendAllocationRequest;
- (void)sendMKMToAVC:(id)a3 isGeneratedLocally:(BOOL)a4;
- (void)sendRatchetedKMtoAVCForToken:(id)a3;
- (void)serverShortMKICacheMiss;
- (void)stunAllocbindRequest;
- (void)stunAllocbindResponse;
- (void)tcpAllocbindRequest;
- (void)tcpAllocbindResponse;
- (void)transactionIDMismatchDetected;
- (void)useGecko;
- (void)willSendAllocbindRequestThroughInterface:(id)a3;
- (void)willSendJoin;
@end

@implementation IDSGFTMetricsCollector

- (IDSGFTMetricsCollector)init
{
  v13.receiver = self;
  v13.super_class = IDSGFTMetricsCollector;
  v2 = [(IDSGFTMetricsCollector *)&v13 init];
  v3 = v2;
  if (v2)
  {
    if (!v2->_referencePointsByType)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      referencePointsByType = v3->_referencePointsByType;
      v3->_referencePointsByType = Mutable;
    }

    if (!v3->_annotatorsByEventType)
    {
      v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      annotatorsByEventType = v3->_annotatorsByEventType;
      v3->_annotatorsByEventType = v6;
    }

    v8 = objc_alloc_init(IDSGFTMetricsAnonymizer);
    anonymizer = v3->_anonymizer;
    v3->_anonymizer = v8;

    v10 = [MEMORY[0x1E695DFD8] set];
    activeParticipantURIs = v3->_activeParticipantURIs;
    v3->_activeParticipantURIs = v10;

    *&v3->_lock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (id)begin:(id)a3 uniqueID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IDSGFTMetricsCollector *)self begin:v7 uniqueID:v6 withClass:objc_opt_class()];

  return v8;
}

- (id)begin:(id)a3 uniqueID:(id)a4 withClass:(Class)a5
{
  v23[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_referencePointsByType objectForKeyedSubscript:v8];

  if (!v10)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    [(NSMutableDictionary *)self->_referencePointsByType setObject:Mutable forKeyedSubscript:v8];
  }

  v12 = [(NSMutableDictionary *)self->_referencePointsByType objectForKeyedSubscript:v8];
  v13 = [v12 objectForKeyedSubscript:v9];

  if (!v13)
  {
    v14 = [a5 alloc];
    anonymizer = self->_anonymizer;
    v22[0] = @"i";
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInitiator];
    v22[1] = @"aps";
    v23[0] = v16;
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSSet count](self->_activeParticipantURIs, "count")}];
    v23[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v13 = [v14 initWithFromType:v8 fromUniqueID:v9 anonymizer:anonymizer templateDictionary:v18];

    v19 = [(NSMutableDictionary *)self->_referencePointsByType objectForKeyedSubscript:v8];
    [v19 setObject:v13 forKeyedSubscript:v9];
  }

  os_unfair_lock_unlock(&self->_lock);
  v20 = v13;

  return v20;
}

- (void)annotate:(id)a3 block:(id)a4
{
  v11 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_annotatorsByEventType objectForKeyedSubscript:v11];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_annotatorsByEventType setObject:v8 forKeyedSubscript:v11];
  }

  v9 = [(NSMutableDictionary *)self->_annotatorsByEventType objectForKeyedSubscript:v11];
  v10 = _Block_copy(v6);

  [v9 addObject:v10];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)annotate:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = ids_monotonic_time();
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_1A7C49520;
  v14 = &unk_1E77E2070;
  v15 = v6;
  v16 = v8;
  v9 = v6;
  v10 = _Block_copy(&v11);
  [(IDSGFTMetricsCollector *)self annotate:v7 block:v10, v11, v12, v13, v14];
}

- (id)collectForTimeBase:(double)a3 anonymize:(BOOL)a4
{
  v62 = a4;
  v110 = *MEMORY[0x1E69E9840];
  [(IDSGFTMetricsCollector *)self flushPendingNowKnownMKMs];
  v74 = self;
  os_unfair_lock_lock(&self->_lock);
  v6 = +[IDSFoundationLog Metrics];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v109 = a3;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "GFTMetrics: collecting metrics with timeBase %f", buf, 0xCu);
  }

  v73 = [MEMORY[0x1E695DF70] array];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v74->_referencePointsByType;
  v59 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v98 objects:v107 count:16];
  if (v59)
  {
    v58 = *v99;
    do
    {
      v7 = 0;
      do
      {
        if (*v99 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v60 = v7;
        v8 = *(*(&v98 + 1) + 8 * v7);
        v68 = [(NSMutableDictionary *)v74->_annotatorsByEventType objectForKeyedSubscript:v8];
        v75 = [MEMORY[0x1E695DF90] dictionary];
        v9 = [MEMORY[0x1E695DF90] dictionary];
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v64 = v8;
        v61 = [(NSMutableDictionary *)v74->_referencePointsByType objectForKeyedSubscript:v8];
        v76 = v9;
        v66 = [v61 countByEnumeratingWithState:&v94 objects:v106 count:16];
        if (!v66)
        {
          v77 = 0;
          goto LABEL_48;
        }

        v77 = 0;
        v63 = *v95;
        do
        {
          v10 = 0;
          do
          {
            if (*v95 != v63)
            {
              objc_enumerationMutation(v61);
            }

            v71 = v10;
            v11 = *(*(&v94 + 1) + 8 * v10);
            v12 = [(NSMutableDictionary *)v74->_referencePointsByType objectForKeyedSubscript:v64];
            v13 = [v12 objectForKeyedSubscript:v11];

            if (v68)
            {
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v14 = v68;
              v15 = [v14 countByEnumeratingWithState:&v90 objects:v105 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v91;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v91 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    (*(*(*(&v90 + 1) + 8 * i) + 16))();
                  }

                  v16 = [v14 countByEnumeratingWithState:&v90 objects:v105 count:16];
                }

                while (v16);
              }
            }

            v69 = v13;
            v19 = [v13 collectForTimeBase:v62 anonymize:a3];
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            v20 = [v19 countByEnumeratingWithState:&v86 objects:v104 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v87;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v87 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v86 + 1) + 8 * j);
                  v25 = [v24 objectForKeyedSubscript:@"toID"];
                  v26 = [v24 objectForKeyedSubscript:@"fromID"];
                  if (([v25 isEqual:@"IDSGFTMetricsWildcard"] & 1) != 0 || objc_msgSend(v26, "isEqual:", @"IDSGFTMetricsWildcard"))
                  {
                    v27 = [v24 objectForKeyedSubscript:@"events"];
                    if ([v25 isEqual:@"IDSGFTMetricsWildcard"] && objc_msgSend(v26, "isEqual:", @"IDSGFTMetricsWildcard"))
                    {
                      v28 = v77;
                      v77 = v27;
                    }

                    else if ([v26 isEqual:@"IDSGFTMetricsWildcard"])
                    {
                      v29 = [v75 objectForKeyedSubscript:v25];

                      if (!v29)
                      {
                        v30 = [MEMORY[0x1E695DF70] array];
                        [v75 setObject:v30 forKeyedSubscript:v25];
                      }

                      v28 = [v75 objectForKeyedSubscript:v25];
                      [v28 addObjectsFromArray:v27];
                      v9 = v76;
                    }

                    else
                    {
                      if (![v25 isEqual:@"IDSGFTMetricsWildcard"])
                      {
                        goto LABEL_42;
                      }

                      v31 = [v9 objectForKeyedSubscript:v26];

                      if (!v31)
                      {
                        v32 = [MEMORY[0x1E695DF70] array];
                        [v9 setObject:v32 forKeyedSubscript:v26];
                      }

                      v28 = [v9 objectForKeyedSubscript:v26];
                      [v28 addObjectsFromArray:v27];
                    }
                  }

                  else
                  {
                    v27 = [v24 mutableCopy];
                    v33 = [MEMORY[0x1E696AD98] numberWithBool:v74->_isInitiator];
                    [v27 setObject:v33 forKeyedSubscript:@"i"];

                    [v73 addObject:v27];
                  }

LABEL_42:
                }

                v21 = [v19 countByEnumeratingWithState:&v86 objects:v104 count:16];
              }

              while (v21);
            }

            v10 = v71 + 1;
          }

          while (v71 + 1 != v66);
          v66 = [v61 countByEnumeratingWithState:&v94 objects:v106 count:16];
        }

        while (v66);
LABEL_48:

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v65 = v73;
        v34 = v75;
        v35 = v77;
        v70 = [v65 countByEnumeratingWithState:&v82 objects:v103 count:16];
        if (v70)
        {
          v67 = *v83;
          do
          {
            v36 = 0;
            do
            {
              if (*v83 != v67)
              {
                objc_enumerationMutation(v65);
              }

              v37 = *(*(&v82 + 1) + 8 * v36);
              v38 = [v37 objectForKeyedSubscript:@"toID"];
              v39 = [v37 objectForKeyedSubscript:@"fromID"];
              if (v35)
              {
                v40 = [v37 objectForKeyedSubscript:@"events"];
                [v40 addObjectsFromArray:v35];

                v9 = v76;
              }

              [v9 objectForKeyedSubscript:v39];
              v42 = v41 = v9;

              if (v42)
              {
                v43 = [v37 objectForKeyedSubscript:@"events"];
                v44 = [v41 objectForKeyedSubscript:v39];
                [v43 addObjectsFromArray:v44];
              }

              v45 = [v34 objectForKeyedSubscript:v38];

              if (v45)
              {
                v46 = [v37 objectForKeyedSubscript:@"events"];
                v47 = [v34 objectForKeyedSubscript:v38];
                [v46 addObjectsFromArray:v47];
              }

              v72 = v38;
              v80 = 0u;
              v81 = 0u;
              v78 = 0u;
              v79 = 0u;
              v48 = [v37 objectForKeyedSubscript:@"events"];
              v49 = [v48 countByEnumeratingWithState:&v78 objects:v102 count:16];
              if (v49)
              {
                v50 = v49;
                v51 = *v79;
                do
                {
                  for (k = 0; k != v50; ++k)
                  {
                    if (*v79 != v51)
                    {
                      objc_enumerationMutation(v48);
                    }

                    v53 = *(*(&v78 + 1) + 8 * k);
                    v54 = [v53 objectForKeyedSubscript:@"interval"];
                    v55 = [v53 objectForKeyedSubscript:@"name"];
                    [v37 setObject:v54 forKeyedSubscript:v55];
                  }

                  v50 = [v48 countByEnumeratingWithState:&v78 objects:v102 count:16];
                }

                while (v50);
              }

              [v37 removeObjectForKey:@"events"];
              ++v36;
              v34 = v75;
              v9 = v76;
              v35 = v77;
            }

            while (v36 != v70);
            v70 = [v65 countByEnumeratingWithState:&v82 objects:v103 count:16];
          }

          while (v70);
        }

        v7 = v60 + 1;
      }

      while (v60 + 1 != v59);
      v59 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v98 objects:v107 count:16];
    }

    while (v59);
  }

  os_unfair_lock_unlock(&v74->_lock);

  return v73;
}

- (void)flushPendingNowKnownMKMs
{
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_unknownMKMFlushLock);
  v3 = [(NSMutableDictionary *)self->_unknownMKMReceiptTimes copy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138412546;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_pushTokensByMKIs objectForKeyedSubscript:v10, v18, v19];
        v12 = +[IDSFoundationLog Metrics];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          v24 = v10;
          v25 = 2112;
          v26 = v11;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "GFTMetrics: mkm %@ -> token %@", buf, 0x16u);
        }

        if (v11)
        {
          if (([v11 isNull] & 1) == 0)
          {
            [(NSMutableDictionary *)self->_unknownMKMReceiptTimes removeObjectForKey:v10];
            v13 = [v4 objectForKeyedSubscript:v10];
            [v13 doubleValue];
            v15 = v14;

            v16 = [(IDSGFTMetricsCollector *)self joinCycleForToken:v11];
            [v16 receivedKMOverPushViaCacheAtTime:v15];

            lastMembershipChange = self->_lastMembershipChange;
            if (lastMembershipChange)
            {
              [(IDSGFTMetricsMembershipChange *)lastMembershipChange receivedKMOverPushViaCacheForToken:v11 atTime:v15];
            }
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_unknownMKMFlushLock);
}

- (id)joinCycleForToken:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self begin:@"ra" uniqueID:v4 withClass:objc_opt_class()];

  return v5;
}

- (id)participantUpdateForParticipantID:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self begin:@"pu" uniqueID:v4 withClass:objc_opt_class()];

  return v5;
}

- (id)error:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"err.%@", a3];
  v5 = [(IDSGFTMetricsCollector *)self begin:v4 uniqueID:&stru_1F1AC8480];

  return v5;
}

- (id)uniqueError:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"err.%@", a3];
  v5 = MEMORY[0x1E696AD98];
  ++self->_nextUniqueID;
  v6 = [v5 numberWithInt:?];
  v7 = [(IDSGFTMetricsCollector *)self begin:v4 uniqueID:v6];

  return v7;
}

- (id)localDidJoin
{
  [(IDSGFTMetricsCollector *)self annotate:@"ra" withEvent:@"lj"];
  [(IDSGFTMetricsCollector *)self annotate:@"kvd" withEvent:@"lj"];
  v3 = [(IDSGFTMetricsCollector *)self localJoin];
  [v3 join];

  return v3;
}

- (void)remoteDidJoin:(id)a3
{
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:a3];
  [v4 remoteDidJoin];

  [(IDSGFTMetricsCollector *)self annotate:@"kvd" withEvent:@"rj"];

  [(IDSGFTMetricsCollector *)self annotate:@"lj" withEvent:@"rj"];
}

- (void)remoteDidBecomeActive:(id)a3
{
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:a3];
  [v4 remoteDidBecomeActive];
  [(IDSGFTMetricsCollector *)self annotate:@"kvd" withEvent:@"ra"];
  [(IDSGFTMetricsCollector *)self annotate:@"lj" withEvent:@"ra"];
}

- (IDSGFTMetricsLocalJoin)localJoin
{
  v3 = objc_opt_class();

  return [(IDSGFTMetricsCollector *)self begin:@"lj" uniqueID:&unk_1F1B20288 withClass:v3];
}

- (void)willSendJoin
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 willSendJoin];
}

- (void)didSendJoin
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 didSendJoin];
}

- (void)connectQRServer
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 connectQRServer];
}

- (void)participantIdChanged
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 participantIdChanged];
}

- (void)participantIdUnknown
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 participantIdUnknown];
}

- (void)serverShortMKICacheMiss
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 serverShortMKICacheMiss];
}

- (void)selectedLocalInterface:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self localJoin];
  [v5 selectedLocalInterface:v4];
}

- (void)requestAllocation
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 requestAllocation];
}

- (void)sendAllocationRequest
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 sendAllocationRequest];
}

- (void)useGecko
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 useGecko];
}

- (void)globalLinkStart
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 globalLinkStart];
}

- (void)willSendAllocbindRequestThroughInterface:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self localJoin];
  [v5 willSendAllocbindRequestThroughInterface:v4];
}

- (void)stunAllocbindRequest
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 stunAllocbindRequest];
}

- (void)stunAllocbindResponse
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 stunAllocbindResponse];
}

- (void)tcpAllocbindRequest
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 tcpAllocbindRequest];
}

- (void)tcpAllocbindResponse
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 tcpAllocbindResponse];
}

- (void)quicAllocbindRequest
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 quicAllocbindRequest];
}

- (void)quicAllocbindResponse
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 quicAllocbindResponse];
}

- (void)allocbindResponseFromInterface:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self localJoin];
  [v5 allocbindResponseFromInterface:v4];
}

- (void)allocbindResponseForProtocolStack:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self localJoin];
  [v5 allocbindResponseForProtocolStack:v4];
}

- (void)clientChannelConnected
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 clientChannelConnected];
}

- (void)didConnectUnderlyingRelayLink
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 didConnectUnderlyingRelayLink];
}

- (void)didConnectUnderlyingE2ELink
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 didConnectUnderlyingE2ELink];
}

- (void)linkConnectedUsingQUIC
{
  v3 = [(IDSGFTMetricsCollector *)self localJoin];
  [v3 linkConnectedUsingQUIC];

  [(IDSGFTMetricsCollector *)self annotate:@"ra" withEvent:@"cl-quic"];
}

- (void)linkConnectedUsingHTTP2
{
  v3 = [(IDSGFTMetricsCollector *)self localJoin];
  [v3 linkConnectedUsingHTTP2];

  [(IDSGFTMetricsCollector *)self annotate:@"ra" withEvent:@"cl-h2"];
}

- (void)linkConnectedUsingTCPSTUN
{
  v3 = [(IDSGFTMetricsCollector *)self localJoin];
  [v3 linkConnectedUsingTCPSTUN];

  [(IDSGFTMetricsCollector *)self annotate:@"ra" withEvent:@"cl-tcp"];
}

- (void)linkConnectedUsingFakeTLS
{
  v3 = [(IDSGFTMetricsCollector *)self localJoin];
  [v3 linkConnectedUsingFakeTLS];

  [(IDSGFTMetricsCollector *)self annotate:@"ra" withEvent:@"cl-tls"];
}

- (void)linkConnectedWithH2FallbackEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(IDSGFTMetricsCollector *)self localJoin];
  [v4 linkConnectedWithH2FallbackEnabled:v3];
}

- (void)firstIncomingPacketTime:(double)a3 forMKI:(id)a4
{
  v6 = a4;
  v7 = [(IDSGFTMetricsCollector *)self localJoin];
  [v7 firstIncomingPacketTime:v6 forMKI:a3];

  v8 = IDSGetUUIDDataFromNSUUID(v6);

  v9 = [(IDSGFTMetricsCollector *)self getOrCreateMKICycleFor:v8];

  [v9 receivedFirstPacketTime:a3];
}

- (void)firstOutgoingPacketTime:(double)a3 forMKI:(id)a4
{
  v6 = a4;
  v7 = [(IDSGFTMetricsCollector *)self localJoin];
  [v7 firstOutgoingPacketTime:v6 forMKI:a3];
}

- (void)avcReceiveMKMTime:(double)a3 forMKI:(id)a4 isGeneratedLocally:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(IDSGFTMetricsCollector *)self localJoin];
  [v9 avcReceiveMKMTime:v8 forMKI:v5 isGeneratedLocally:a3];
}

- (void)hasSentCompoundPacket
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 hasSentCompoundPacket];
}

- (void)hasConvergence
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 hasConvergence];
}

- (void)hasRealloc
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 hasRealloc];
}

- (void)hasGoaway
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 hasGoaway];
}

- (void)endWithReason:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(IDSGFTMetricsCollector *)self localJoin];
  [v4 endWithReason:v3];
}

- (void)reinitStart
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 reinitStart];
}

- (void)reinitFinish
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 reinitFinish];
}

- (void)leave
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 leave];
}

- (void)didLeave
{
  v2 = [(IDSGFTMetricsCollector *)self localJoin];
  [v2 didLeave];
}

- (void)didCreateMKM:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self localJoin];
  [v5 didCreateMKM:v4];
}

- (void)sendMKMToAVC:(id)a3 isGeneratedLocally:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(IDSGFTMetricsCollector *)self localJoin];
  [v7 sendMKMToAVC:v6 isGeneratedLocally:v4];
}

- (void)receivedKMOverPushFromToken:(id)a3
{
  v6 = a3;
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:?];
  [v4 receivedKMOverPush];

  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lastMembershipChange;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [(IDSGFTMetricsMembershipChange *)v5 receivedKMOverPushFromToken:v6];
  }
}

- (void)receivedKMOverPushViaCacheForToken:(id)a3
{
  v6 = a3;
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:?];
  [v4 receivedKMOverPushViaCache];

  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lastMembershipChange;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [(IDSGFTMetricsMembershipChange *)v5 receivedKMOverPushViaCacheForToken:v6];
  }
}

- (void)receivedUnknownKMOverPushViaCache:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_unknownMKMReceiptTimes)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    unknownMKMReceiptTimes = self->_unknownMKMReceiptTimes;
    self->_unknownMKMReceiptTimes = Mutable;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:ids_monotonic_time()];
  [(NSMutableDictionary *)self->_unknownMKMReceiptTimes setObject:v7 forKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);

  [(IDSGFTMetricsCollector *)self flushPendingNowKnownMKMs];
}

- (void)mapMKI:(id)a3 toPushToken:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  pushTokensByMKIs = self->_pushTokensByMKIs;
  if (!pushTokensByMKIs)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = self->_pushTokensByMKIs;
    self->_pushTokensByMKIs = Mutable;

    pushTokensByMKIs = self->_pushTokensByMKIs;
  }

  [(NSMutableDictionary *)pushTokensByMKIs setObject:v6 forKeyedSubscript:v10];
  os_unfair_lock_unlock(&self->_lock);
  [(IDSGFTMetricsCollector *)self flushPendingNowKnownMKMs];
}

- (void)receivedKMOverQRFromToken:(id)a3
{
  v6 = a3;
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:?];
  [v4 receivedKMOverQR];

  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lastMembershipChange;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [(IDSGFTMetricsMembershipChange *)v5 receivedKMOverQRFromToken:v6];
  }
}

- (void)receivedKMOverQUICFromToken:(id)a3
{
  v6 = a3;
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:?];
  [v4 receivedKMOverQUIC];

  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lastMembershipChange;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [(IDSGFTMetricsMembershipChange *)v5 receivedKMOverQUICFromToken:v6];
  }
}

- (void)receivedParticipantUpdateJoinEventOverQUICFromParticipantID:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self participantUpdateForParticipantID:v4];
  [v5 receivedJoinEventOverQUICFromParticipantID:v4];
}

- (void)receivedParticipantUpdateJoinEventOverPushFromParticipantID:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self participantUpdateForParticipantID:v4];
  [v5 receivedJoinEventOverPushFromParticipantID:v4];
}

- (void)receivedParticipantUpdateLeaveEventOverQUICFromParticipantID:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self participantUpdateForParticipantID:v4];
  [v5 receivedLeaveEventOverQUICFromParticipantID:v4];
}

- (void)receivedParticipantUpdateLeaveEventOverPushFromParticipantID:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self participantUpdateForParticipantID:v4];
  [v5 receivedLeaveEventOverPushFromParticipantID:v4];
}

- (void)receivedParticipantUpdateParticipantInfoEventOverQUICFromParticipantID:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self participantUpdateForParticipantID:v4];
  [v5 receivedParticipantInfoEventOverQUICFromParticipantID:v4];
}

- (void)receivedParticipantUpdateParticipantInfoEventOverPushFromParticipantID:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self participantUpdateForParticipantID:v4];
  [v5 receivedParticipantInfoEventOverPushFromParticipantID:v4];
}

- (void)receivedUnverifiedKMOverQUICFromToken:(id)a3
{
  v6 = a3;
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:?];
  [v4 receivedUnverifiedKMOverQUIC];

  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lastMembershipChange;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [(IDSGFTMetricsMembershipChange *)v5 receivedUnverifiedKMOverQUICFromToken:v6];
  }
}

- (void)sendRatchetedKMtoAVCForToken:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = self->_lastMembershipChange;
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    [(IDSGFTMetricsMembershipChange *)v4 sendRatchetedKMtoAVCForToken:v5];
  }
}

- (void)membershipChange
{
  v3 = MEMORY[0x1E696AD98];
  ++self->_nextUniqueID;
  v4 = [v3 numberWithInt:?];
  v5 = [(IDSGFTMetricsCollector *)self begin:@"mc" uniqueID:v4 withClass:objc_opt_class()];

  os_unfair_lock_lock(&self->_lock);
  lastMembershipChange = self->_lastMembershipChange;
  self->_lastMembershipChange = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)request:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"req-%@", a3];
  v5 = MEMORY[0x1E696AD98];
  ++self->_nextUniqueID;
  v6 = [v5 numberWithInt:?];
  v7 = [(IDSGFTMetricsCollector *)self begin:v4 uniqueID:v6 withClass:objc_opt_class()];

  return v7;
}

- (id)createLinkCycle
{
  v3 = MEMORY[0x1E696AD98];
  ++self->_nextUniqueID;
  v4 = [v3 numberWithInt:?];
  v5 = [(IDSGFTMetricsCollector *)self begin:@"l" uniqueID:v4 withClass:objc_opt_class()];

  return v5;
}

- (id)mtuChange:(unsigned __int16)a3 previous:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v7 = MEMORY[0x1E696AD98];
  ++self->_nextUniqueID;
  v8 = [v7 numberWithInt:?];
  v9 = [(IDSGFTMetricsCollector *)self begin:@"mtu" uniqueID:v8 withClass:objc_opt_class()];

  [v9 setMTU:v5 previous:v4];

  return v9;
}

- (id)getOrCreateMKICycleFor:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self begin:@"mki" uniqueID:v4 withClass:objc_opt_class()];

  return v5;
}

- (void)didMitigateCollision:(BOOL)a3
{
  v3 = a3;
  v4 = [(IDSGFTMetricsCollector *)self error:@"nwLink"];
  v6 = v4;
  if (v3)
  {
    v5 = @"collisionMitigationSucceeded";
  }

  else
  {
    v5 = @"collisionMitigationFailed";
  }

  [v4 event:v5];
}

- (void)didFailConnectionOfType:(id)a3
{
  v4 = a3;
  v5 = [(IDSGFTMetricsCollector *)self uniqueError:@"nwLinkConnectionFailure"];
  [v5 event:v4];
}

- (void)transactionIDMismatchDetected
{
  v2 = [(IDSGFTMetricsCollector *)self error:@"nwLink"];
  [v2 event:@"transactionIDMismatch"];
}

@end