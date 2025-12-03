@interface IDSGFTMetricsCollector
- (IDSGFTMetricsCollector)init;
- (IDSGFTMetricsLocalJoin)localJoin;
- (id)begin:(id)begin uniqueID:(id)d;
- (id)begin:(id)begin uniqueID:(id)d withClass:(Class)class;
- (id)collectForTimeBase:(double)base anonymize:(BOOL)anonymize;
- (id)createLinkCycle;
- (id)error:(id)error;
- (id)getOrCreateMKICycleFor:(id)for;
- (id)joinCycleForToken:(id)token;
- (id)localDidJoin;
- (id)mtuChange:(unsigned __int16)change previous:(unsigned __int16)previous;
- (id)participantUpdateForParticipantID:(id)d;
- (id)request:(id)request;
- (id)uniqueError:(id)error;
- (void)allocbindResponseForProtocolStack:(id)stack;
- (void)allocbindResponseFromInterface:(id)interface;
- (void)annotate:(id)annotate block:(id)block;
- (void)annotate:(id)annotate withEvent:(id)event;
- (void)avcReceiveMKMTime:(double)time forMKI:(id)i isGeneratedLocally:(BOOL)locally;
- (void)clientChannelConnected;
- (void)connectQRServer;
- (void)didConnectUnderlyingE2ELink;
- (void)didConnectUnderlyingRelayLink;
- (void)didCreateMKM:(id)m;
- (void)didFailConnectionOfType:(id)type;
- (void)didLeave;
- (void)didMitigateCollision:(BOOL)collision;
- (void)didSendJoin;
- (void)endWithReason:(unsigned int)reason;
- (void)firstIncomingPacketTime:(double)time forMKI:(id)i;
- (void)firstOutgoingPacketTime:(double)time forMKI:(id)i;
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
- (void)linkConnectedWithH2FallbackEnabled:(BOOL)enabled;
- (void)mapMKI:(id)i toPushToken:(id)token;
- (void)membershipChange;
- (void)participantIdChanged;
- (void)participantIdUnknown;
- (void)quicAllocbindRequest;
- (void)quicAllocbindResponse;
- (void)receivedKMOverPushFromToken:(id)token;
- (void)receivedKMOverPushViaCacheForToken:(id)token;
- (void)receivedKMOverQRFromToken:(id)token;
- (void)receivedKMOverQUICFromToken:(id)token;
- (void)receivedParticipantUpdateJoinEventOverPushFromParticipantID:(id)d;
- (void)receivedParticipantUpdateJoinEventOverQUICFromParticipantID:(id)d;
- (void)receivedParticipantUpdateLeaveEventOverPushFromParticipantID:(id)d;
- (void)receivedParticipantUpdateLeaveEventOverQUICFromParticipantID:(id)d;
- (void)receivedParticipantUpdateParticipantInfoEventOverPushFromParticipantID:(id)d;
- (void)receivedParticipantUpdateParticipantInfoEventOverQUICFromParticipantID:(id)d;
- (void)receivedUnknownKMOverPushViaCache:(id)cache;
- (void)receivedUnverifiedKMOverQUICFromToken:(id)token;
- (void)reinitFinish;
- (void)reinitStart;
- (void)remoteDidBecomeActive:(id)active;
- (void)remoteDidJoin:(id)join;
- (void)requestAllocation;
- (void)selectedLocalInterface:(id)interface;
- (void)sendAllocationRequest;
- (void)sendMKMToAVC:(id)c isGeneratedLocally:(BOOL)locally;
- (void)sendRatchetedKMtoAVCForToken:(id)token;
- (void)serverShortMKICacheMiss;
- (void)stunAllocbindRequest;
- (void)stunAllocbindResponse;
- (void)tcpAllocbindRequest;
- (void)tcpAllocbindResponse;
- (void)transactionIDMismatchDetected;
- (void)useGecko;
- (void)willSendAllocbindRequestThroughInterface:(id)interface;
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

- (id)begin:(id)begin uniqueID:(id)d
{
  dCopy = d;
  beginCopy = begin;
  v8 = [(IDSGFTMetricsCollector *)self begin:beginCopy uniqueID:dCopy withClass:objc_opt_class()];

  return v8;
}

- (id)begin:(id)begin uniqueID:(id)d withClass:(Class)class
{
  v23[2] = *MEMORY[0x1E69E9840];
  beginCopy = begin;
  dCopy = d;
  if (!dCopy)
  {
    dCopy = [MEMORY[0x1E695DFB0] null];
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_referencePointsByType objectForKeyedSubscript:beginCopy];

  if (!v10)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    [(NSMutableDictionary *)self->_referencePointsByType setObject:Mutable forKeyedSubscript:beginCopy];
  }

  v12 = [(NSMutableDictionary *)self->_referencePointsByType objectForKeyedSubscript:beginCopy];
  v13 = [v12 objectForKeyedSubscript:dCopy];

  if (!v13)
  {
    v14 = [class alloc];
    anonymizer = self->_anonymizer;
    v22[0] = @"i";
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInitiator];
    v22[1] = @"aps";
    v23[0] = v16;
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSSet count](self->_activeParticipantURIs, "count")}];
    v23[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v13 = [v14 initWithFromType:beginCopy fromUniqueID:dCopy anonymizer:anonymizer templateDictionary:v18];

    v19 = [(NSMutableDictionary *)self->_referencePointsByType objectForKeyedSubscript:beginCopy];
    [v19 setObject:v13 forKeyedSubscript:dCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  v20 = v13;

  return v20;
}

- (void)annotate:(id)annotate block:(id)block
{
  annotateCopy = annotate;
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_annotatorsByEventType objectForKeyedSubscript:annotateCopy];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_annotatorsByEventType setObject:v8 forKeyedSubscript:annotateCopy];
  }

  v9 = [(NSMutableDictionary *)self->_annotatorsByEventType objectForKeyedSubscript:annotateCopy];
  v10 = _Block_copy(blockCopy);

  [v9 addObject:v10];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)annotate:(id)annotate withEvent:(id)event
{
  eventCopy = event;
  annotateCopy = annotate;
  v8 = ids_monotonic_time();
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_1A7C49520;
  v14 = &unk_1E77E2070;
  v15 = eventCopy;
  v16 = v8;
  v9 = eventCopy;
  v10 = _Block_copy(&v11);
  [(IDSGFTMetricsCollector *)self annotate:annotateCopy block:v10, v11, v12, v13, v14];
}

- (id)collectForTimeBase:(double)base anonymize:(BOOL)anonymize
{
  anonymizeCopy = anonymize;
  v110 = *MEMORY[0x1E69E9840];
  [(IDSGFTMetricsCollector *)self flushPendingNowKnownMKMs];
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  v6 = +[IDSFoundationLog Metrics];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    baseCopy = base;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "GFTMetrics: collecting metrics with timeBase %f", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = selfCopy->_referencePointsByType;
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
        v68 = [(NSMutableDictionary *)selfCopy->_annotatorsByEventType objectForKeyedSubscript:v8];
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v64 = v8;
        v61 = [(NSMutableDictionary *)selfCopy->_referencePointsByType objectForKeyedSubscript:v8];
        v76 = dictionary2;
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
            v12 = [(NSMutableDictionary *)selfCopy->_referencePointsByType objectForKeyedSubscript:v64];
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
            v19 = [v13 collectForTimeBase:anonymizeCopy anonymize:base];
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
                      v29 = [dictionary objectForKeyedSubscript:v25];

                      if (!v29)
                      {
                        array2 = [MEMORY[0x1E695DF70] array];
                        [dictionary setObject:array2 forKeyedSubscript:v25];
                      }

                      v28 = [dictionary objectForKeyedSubscript:v25];
                      [v28 addObjectsFromArray:v27];
                      dictionary2 = v76;
                    }

                    else
                    {
                      if (![v25 isEqual:@"IDSGFTMetricsWildcard"])
                      {
                        goto LABEL_42;
                      }

                      v31 = [dictionary2 objectForKeyedSubscript:v26];

                      if (!v31)
                      {
                        array3 = [MEMORY[0x1E695DF70] array];
                        [dictionary2 setObject:array3 forKeyedSubscript:v26];
                      }

                      v28 = [dictionary2 objectForKeyedSubscript:v26];
                      [v28 addObjectsFromArray:v27];
                    }
                  }

                  else
                  {
                    v27 = [v24 mutableCopy];
                    v33 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_isInitiator];
                    [v27 setObject:v33 forKeyedSubscript:@"i"];

                    [array addObject:v27];
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
        v65 = array;
        v34 = dictionary;
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

                dictionary2 = v76;
              }

              [dictionary2 objectForKeyedSubscript:v39];
              v42 = v41 = dictionary2;

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
              v34 = dictionary;
              dictionary2 = v76;
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

  os_unfair_lock_unlock(&selfCopy->_lock);

  return array;
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

- (id)joinCycleForToken:(id)token
{
  tokenCopy = token;
  v5 = [(IDSGFTMetricsCollector *)self begin:@"ra" uniqueID:tokenCopy withClass:objc_opt_class()];

  return v5;
}

- (id)participantUpdateForParticipantID:(id)d
{
  dCopy = d;
  v5 = [(IDSGFTMetricsCollector *)self begin:@"pu" uniqueID:dCopy withClass:objc_opt_class()];

  return v5;
}

- (id)error:(id)error
{
  error = [MEMORY[0x1E696AEC0] stringWithFormat:@"err.%@", error];
  v5 = [(IDSGFTMetricsCollector *)self begin:error uniqueID:&stru_1F1AC8480];

  return v5;
}

- (id)uniqueError:(id)error
{
  error = [MEMORY[0x1E696AEC0] stringWithFormat:@"err.%@", error];
  v5 = MEMORY[0x1E696AD98];
  ++self->_nextUniqueID;
  v6 = [v5 numberWithInt:?];
  v7 = [(IDSGFTMetricsCollector *)self begin:error uniqueID:v6];

  return v7;
}

- (id)localDidJoin
{
  [(IDSGFTMetricsCollector *)self annotate:@"ra" withEvent:@"lj"];
  [(IDSGFTMetricsCollector *)self annotate:@"kvd" withEvent:@"lj"];
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin join];

  return localJoin;
}

- (void)remoteDidJoin:(id)join
{
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:join];
  [v4 remoteDidJoin];

  [(IDSGFTMetricsCollector *)self annotate:@"kvd" withEvent:@"rj"];

  [(IDSGFTMetricsCollector *)self annotate:@"lj" withEvent:@"rj"];
}

- (void)remoteDidBecomeActive:(id)active
{
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:active];
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
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin willSendJoin];
}

- (void)didSendJoin
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin didSendJoin];
}

- (void)connectQRServer
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin connectQRServer];
}

- (void)participantIdChanged
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin participantIdChanged];
}

- (void)participantIdUnknown
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin participantIdUnknown];
}

- (void)serverShortMKICacheMiss
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin serverShortMKICacheMiss];
}

- (void)selectedLocalInterface:(id)interface
{
  interfaceCopy = interface;
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin selectedLocalInterface:interfaceCopy];
}

- (void)requestAllocation
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin requestAllocation];
}

- (void)sendAllocationRequest
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin sendAllocationRequest];
}

- (void)useGecko
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin useGecko];
}

- (void)globalLinkStart
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin globalLinkStart];
}

- (void)willSendAllocbindRequestThroughInterface:(id)interface
{
  interfaceCopy = interface;
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin willSendAllocbindRequestThroughInterface:interfaceCopy];
}

- (void)stunAllocbindRequest
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin stunAllocbindRequest];
}

- (void)stunAllocbindResponse
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin stunAllocbindResponse];
}

- (void)tcpAllocbindRequest
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin tcpAllocbindRequest];
}

- (void)tcpAllocbindResponse
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin tcpAllocbindResponse];
}

- (void)quicAllocbindRequest
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin quicAllocbindRequest];
}

- (void)quicAllocbindResponse
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin quicAllocbindResponse];
}

- (void)allocbindResponseFromInterface:(id)interface
{
  interfaceCopy = interface;
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin allocbindResponseFromInterface:interfaceCopy];
}

- (void)allocbindResponseForProtocolStack:(id)stack
{
  stackCopy = stack;
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin allocbindResponseForProtocolStack:stackCopy];
}

- (void)clientChannelConnected
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin clientChannelConnected];
}

- (void)didConnectUnderlyingRelayLink
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin didConnectUnderlyingRelayLink];
}

- (void)didConnectUnderlyingE2ELink
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin didConnectUnderlyingE2ELink];
}

- (void)linkConnectedUsingQUIC
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin linkConnectedUsingQUIC];

  [(IDSGFTMetricsCollector *)self annotate:@"ra" withEvent:@"cl-quic"];
}

- (void)linkConnectedUsingHTTP2
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin linkConnectedUsingHTTP2];

  [(IDSGFTMetricsCollector *)self annotate:@"ra" withEvent:@"cl-h2"];
}

- (void)linkConnectedUsingTCPSTUN
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin linkConnectedUsingTCPSTUN];

  [(IDSGFTMetricsCollector *)self annotate:@"ra" withEvent:@"cl-tcp"];
}

- (void)linkConnectedUsingFakeTLS
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin linkConnectedUsingFakeTLS];

  [(IDSGFTMetricsCollector *)self annotate:@"ra" withEvent:@"cl-tls"];
}

- (void)linkConnectedWithH2FallbackEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin linkConnectedWithH2FallbackEnabled:enabledCopy];
}

- (void)firstIncomingPacketTime:(double)time forMKI:(id)i
{
  iCopy = i;
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin firstIncomingPacketTime:iCopy forMKI:time];

  v8 = IDSGetUUIDDataFromNSUUID(iCopy);

  v9 = [(IDSGFTMetricsCollector *)self getOrCreateMKICycleFor:v8];

  [v9 receivedFirstPacketTime:time];
}

- (void)firstOutgoingPacketTime:(double)time forMKI:(id)i
{
  iCopy = i;
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin firstOutgoingPacketTime:iCopy forMKI:time];
}

- (void)avcReceiveMKMTime:(double)time forMKI:(id)i isGeneratedLocally:(BOOL)locally
{
  locallyCopy = locally;
  iCopy = i;
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin avcReceiveMKMTime:iCopy forMKI:locallyCopy isGeneratedLocally:time];
}

- (void)hasSentCompoundPacket
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin hasSentCompoundPacket];
}

- (void)hasConvergence
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin hasConvergence];
}

- (void)hasRealloc
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin hasRealloc];
}

- (void)hasGoaway
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin hasGoaway];
}

- (void)endWithReason:(unsigned int)reason
{
  v3 = *&reason;
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin endWithReason:v3];
}

- (void)reinitStart
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin reinitStart];
}

- (void)reinitFinish
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin reinitFinish];
}

- (void)leave
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin leave];
}

- (void)didLeave
{
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin didLeave];
}

- (void)didCreateMKM:(id)m
{
  mCopy = m;
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin didCreateMKM:mCopy];
}

- (void)sendMKMToAVC:(id)c isGeneratedLocally:(BOOL)locally
{
  locallyCopy = locally;
  cCopy = c;
  localJoin = [(IDSGFTMetricsCollector *)self localJoin];
  [localJoin sendMKMToAVC:cCopy isGeneratedLocally:locallyCopy];
}

- (void)receivedKMOverPushFromToken:(id)token
{
  tokenCopy = token;
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:?];
  [v4 receivedKMOverPush];

  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lastMembershipChange;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [(IDSGFTMetricsMembershipChange *)v5 receivedKMOverPushFromToken:tokenCopy];
  }
}

- (void)receivedKMOverPushViaCacheForToken:(id)token
{
  tokenCopy = token;
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:?];
  [v4 receivedKMOverPushViaCache];

  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lastMembershipChange;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [(IDSGFTMetricsMembershipChange *)v5 receivedKMOverPushViaCacheForToken:tokenCopy];
  }
}

- (void)receivedUnknownKMOverPushViaCache:(id)cache
{
  cacheCopy = cache;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_unknownMKMReceiptTimes)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    unknownMKMReceiptTimes = self->_unknownMKMReceiptTimes;
    self->_unknownMKMReceiptTimes = Mutable;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:ids_monotonic_time()];
  [(NSMutableDictionary *)self->_unknownMKMReceiptTimes setObject:v7 forKeyedSubscript:cacheCopy];

  os_unfair_lock_unlock(&self->_lock);

  [(IDSGFTMetricsCollector *)self flushPendingNowKnownMKMs];
}

- (void)mapMKI:(id)i toPushToken:(id)token
{
  iCopy = i;
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  pushTokensByMKIs = self->_pushTokensByMKIs;
  if (!pushTokensByMKIs)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = self->_pushTokensByMKIs;
    self->_pushTokensByMKIs = Mutable;

    pushTokensByMKIs = self->_pushTokensByMKIs;
  }

  [(NSMutableDictionary *)pushTokensByMKIs setObject:tokenCopy forKeyedSubscript:iCopy];
  os_unfair_lock_unlock(&self->_lock);
  [(IDSGFTMetricsCollector *)self flushPendingNowKnownMKMs];
}

- (void)receivedKMOverQRFromToken:(id)token
{
  tokenCopy = token;
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:?];
  [v4 receivedKMOverQR];

  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lastMembershipChange;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [(IDSGFTMetricsMembershipChange *)v5 receivedKMOverQRFromToken:tokenCopy];
  }
}

- (void)receivedKMOverQUICFromToken:(id)token
{
  tokenCopy = token;
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:?];
  [v4 receivedKMOverQUIC];

  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lastMembershipChange;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [(IDSGFTMetricsMembershipChange *)v5 receivedKMOverQUICFromToken:tokenCopy];
  }
}

- (void)receivedParticipantUpdateJoinEventOverQUICFromParticipantID:(id)d
{
  dCopy = d;
  v5 = [(IDSGFTMetricsCollector *)self participantUpdateForParticipantID:dCopy];
  [v5 receivedJoinEventOverQUICFromParticipantID:dCopy];
}

- (void)receivedParticipantUpdateJoinEventOverPushFromParticipantID:(id)d
{
  dCopy = d;
  v5 = [(IDSGFTMetricsCollector *)self participantUpdateForParticipantID:dCopy];
  [v5 receivedJoinEventOverPushFromParticipantID:dCopy];
}

- (void)receivedParticipantUpdateLeaveEventOverQUICFromParticipantID:(id)d
{
  dCopy = d;
  v5 = [(IDSGFTMetricsCollector *)self participantUpdateForParticipantID:dCopy];
  [v5 receivedLeaveEventOverQUICFromParticipantID:dCopy];
}

- (void)receivedParticipantUpdateLeaveEventOverPushFromParticipantID:(id)d
{
  dCopy = d;
  v5 = [(IDSGFTMetricsCollector *)self participantUpdateForParticipantID:dCopy];
  [v5 receivedLeaveEventOverPushFromParticipantID:dCopy];
}

- (void)receivedParticipantUpdateParticipantInfoEventOverQUICFromParticipantID:(id)d
{
  dCopy = d;
  v5 = [(IDSGFTMetricsCollector *)self participantUpdateForParticipantID:dCopy];
  [v5 receivedParticipantInfoEventOverQUICFromParticipantID:dCopy];
}

- (void)receivedParticipantUpdateParticipantInfoEventOverPushFromParticipantID:(id)d
{
  dCopy = d;
  v5 = [(IDSGFTMetricsCollector *)self participantUpdateForParticipantID:dCopy];
  [v5 receivedParticipantInfoEventOverPushFromParticipantID:dCopy];
}

- (void)receivedUnverifiedKMOverQUICFromToken:(id)token
{
  tokenCopy = token;
  v4 = [(IDSGFTMetricsCollector *)self joinCycleForToken:?];
  [v4 receivedUnverifiedKMOverQUIC];

  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lastMembershipChange;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [(IDSGFTMetricsMembershipChange *)v5 receivedUnverifiedKMOverQUICFromToken:tokenCopy];
  }
}

- (void)sendRatchetedKMtoAVCForToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  v4 = self->_lastMembershipChange;
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    [(IDSGFTMetricsMembershipChange *)v4 sendRatchetedKMtoAVCForToken:tokenCopy];
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

- (id)request:(id)request
{
  request = [MEMORY[0x1E696AEC0] stringWithFormat:@"req-%@", request];
  v5 = MEMORY[0x1E696AD98];
  ++self->_nextUniqueID;
  v6 = [v5 numberWithInt:?];
  v7 = [(IDSGFTMetricsCollector *)self begin:request uniqueID:v6 withClass:objc_opt_class()];

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

- (id)mtuChange:(unsigned __int16)change previous:(unsigned __int16)previous
{
  previousCopy = previous;
  changeCopy = change;
  v7 = MEMORY[0x1E696AD98];
  ++self->_nextUniqueID;
  v8 = [v7 numberWithInt:?];
  v9 = [(IDSGFTMetricsCollector *)self begin:@"mtu" uniqueID:v8 withClass:objc_opt_class()];

  [v9 setMTU:changeCopy previous:previousCopy];

  return v9;
}

- (id)getOrCreateMKICycleFor:(id)for
{
  forCopy = for;
  v5 = [(IDSGFTMetricsCollector *)self begin:@"mki" uniqueID:forCopy withClass:objc_opt_class()];

  return v5;
}

- (void)didMitigateCollision:(BOOL)collision
{
  collisionCopy = collision;
  v4 = [(IDSGFTMetricsCollector *)self error:@"nwLink"];
  v6 = v4;
  if (collisionCopy)
  {
    v5 = @"collisionMitigationSucceeded";
  }

  else
  {
    v5 = @"collisionMitigationFailed";
  }

  [v4 event:v5];
}

- (void)didFailConnectionOfType:(id)type
{
  typeCopy = type;
  v5 = [(IDSGFTMetricsCollector *)self uniqueError:@"nwLinkConnectionFailure"];
  [v5 event:typeCopy];
}

- (void)transactionIDMismatchDetected
{
  v2 = [(IDSGFTMetricsCollector *)self error:@"nwLink"];
  [v2 event:@"transactionIDMismatch"];
}

@end