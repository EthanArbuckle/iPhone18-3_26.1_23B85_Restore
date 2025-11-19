@interface CWFAutoJoinManager
- (BOOL)__allowAutoJoinWithTrigger:(int64_t)a3 error:(id *)a4;
- (BOOL)__allowBrokenBackhaulPersonalHotspotFallback;
- (BOOL)__allowHotspot:(id)a3 error:(id *)a4;
- (BOOL)__allowJoinCandidate:(id)a3 context:(id)a4 defer:(BOOL *)a5 error:(id *)a6;
- (BOOL)__allowKnownNetwork:(id)a3 context:(id)a4 allowForSeamlessSSIDTransition:(id)a5 defer:(BOOL *)a6 targetQueue:(id)a7 error:(id *)a8;
- (BOOL)__allowOpportunisticNetworkTransitionWithTrigger:(int64_t)a3;
- (BOOL)__calloutToAllowAutoJoinWithTrigger:(int64_t)a3 error:(id *)a4;
- (BOOL)__calloutToAllowBrokenBackhaulPersonalHotspotFallbackAndReturnError:(id *)a3;
- (BOOL)__calloutToAllowHotspot:(id)a3 error:(id *)a4;
- (BOOL)__calloutToAllowJoinCandidate:(id)a3 trigger:(int64_t)a4 defer:(BOOL *)a5 error:(id *)a6;
- (BOOL)__calloutToAllowKnownNetwork:(id)a3 trigger:(int64_t)a4 allowForSeamlessSSIDTransition:(id)a5 defer:(BOOL *)a6 queue:(id)a7 error:(id *)a8;
- (BOOL)__calloutToAssociateWithParameters:(id)a3 error:(id *)a4;
- (BOOL)__calloutToConnectToHotspot:(id)a3 error:(id *)a4;
- (BOOL)__candidateSupportsSeamlessSSIDTransition:(id)a3 fromNetwork:(id)a4 context:(id)a5;
- (BOOL)__connectToHotspot:(id)a3 error:(id *)a4;
- (BOOL)__defaultUserConfiguredNetworkPreference;
- (BOOL)__didRecentlyJoinAny6GHzOnlyNetworks:(id)a3;
- (BOOL)__discoverKnownNetworksWithContext:(id)a3 error:(id *)a4;
- (BOOL)__hasJoinedAnyKnownNetworkSinceBoot;
- (BOOL)__isAutoJoinCancelled:(id *)a3;
- (BOOL)__isAutoJoinRequeued;
- (BOOL)__isAutoJoiningAtHome;
- (BOOL)__isDeferrableJoinCandidate:(id)a3;
- (BOOL)__isDeferrableKnownNetwork:(id)a3;
- (BOOL)__isEnabledKnownNetworkNearby;
- (BOOL)__isNonPinnedEAPTLSCandidate:(id)a3;
- (BOOL)__matchAndJoinScanResults:(id)a3 allowPreAssociationScan:(BOOL)a4 context:(id)a5 error:(id *)a6;
- (BOOL)__nextRequest;
- (BOOL)__performJoinWithNetwork:(id)a3 context:(id)a4 error:(id *)a5;
- (BOOL)__preflightMatchKnownNetworksForScanResult:(id)a3;
- (BOOL)__shouldAllowPreAssocScan;
- (BOOL)__shouldBypassLockdownModeCheckForTrigger:(int64_t)a3 targetNetworkSSID:(id)a4 networkSSID:(id)a5;
- (BOOL)__shouldBypassUnusedNetworkPeriodCheckForTrigger:(int64_t)a3 knownNetwork:(id)a4;
- (BOOL)__shouldIgnoreRequestWithTrigger:(int64_t)a3;
- (BOOL)__shouldInvokeImmediatelyForTrigger:(int64_t)a3;
- (BOOL)__shouldResetRetryIntervalIndexForTrigger:(int64_t)a3 previousTimestamp:(unint64_t)a4;
- (BOOL)__shouldThrottleAutoJoinTrigger:(int64_t)a3;
- (BOOL)isKnownNetworkDisallowed:(id)a3;
- (BOOL)maxCompatibilityEnabled;
- (CLLocation)location;
- (CWFAutoJoinManager)init;
- (CWFAutoJoinMetric)metric;
- (CWFAutoJoinStatistics)statistics;
- (CWFJoinStatus)joinStatus;
- (CWFScanResult)associatedNetwork;
- (NSArray)nearbyRecommendedNetworks;
- (NSOrderedSet)hiddenSSIDList;
- (NSOrderedSet)locationBasedHiddenSSIDList;
- (NSOrderedSet)recentLocationBasedHiddenSSIDList;
- (NSSet)knownNetworks;
- (NSSet)recentlyMatchedCandidates;
- (NSSet)supportedChannels;
- (id)__alreadyFoundFollowup6GHzBSSWithSignature:(id)a3;
- (id)__basicChannelRepresentation:(id)a3;
- (id)__cachedScanResultsWithChannelList:(id)a3 context:(id)a4;
- (id)__calloutToBrowseForHotspotsWithTimeout:(unint64_t)a3 maxCacheAge:(unint64_t)a4 cacheOnly:(BOOL)a5 error:(id *)a6;
- (id)__calloutToPerformGASQueryWithParameters:(id)a3 GASQueryNetworks:(id *)a4 error:(id *)a5;
- (id)__calloutToScanForNetworksWithParameters:(id)a3 scanChannels:(id *)a4 error:(id *)a5;
- (id)__descriptionForError:(id)a3;
- (id)__disallowedKnownNetworks;
- (id)__hiddenSSIDListForLocation:(id)a3 knownNetworks:(id)a4 recentOnly:(BOOL)a5 nearbyOnly:(BOOL)a6;
- (id)__knownNetworksList:(id)a3 containsMatchingKnownNetwork:(id)a4;
- (id)__knownNetworksSupportingSeamlessSSIDTransition:(id)a3 fromNetwork:(id)a4 allowSameSSID:(BOOL)a5 context:(id)a6;
- (id)__morePreferredKnownNetworksWithCandidate:(id)a3 knownNetworks:(id)a4 context:(id)a5;
- (id)__passpointScanResults:(id)a3;
- (id)__perform6GHzFollowupDiscoveryWithScanResults:(id)a3 SSIDList:(id)a4 dwellTime:(unint64_t)a5 context:(id)a6 error:(id *)a7;
- (id)__performGASQueryWithScanResults:(id)a3 ANQPElementIDList:(id)a4 maxCacheAge:(unint64_t)a5 cacheOnly:(BOOL)a6 error:(id *)a7;
- (id)__performPreAssociationScanWithContext:(id)a3 network:(id)a4;
- (id)__performScanWithChannelList:(id)a3 SSIDList:(id)a4 passive:(BOOL)a5 dwellTime:(unint64_t)a6 maxCacheAge:(unint64_t)a7 cacheOnly:(BOOL)a8 isPreAssociationScan:(BOOL)a9 checkForKnownNetworks:(BOOL)a10 error:(id *)a11;
- (id)__retryInterval;
- (id)__retryIntervalWithScheduleIndex:(unint64_t)a3;
- (id)performAutoJoinWithParameters:(id)a3 reply:(id)a4;
- (int64_t)__allowAutoHotspotWithTrigger:(int64_t)a3 error:(id *)a4;
- (int64_t)__calloutToAllowAutoHotspotWithTrigger:(int64_t)a3 error:(id *)a4;
- (int64_t)__retryTriggerForRetrySchedule:(int64_t)a3;
- (int64_t)retrySchedule;
- (unint64_t)__nextRequestInterval;
- (unsigned)__qosForAutoJoinTrigger:(int64_t)a3;
- (void)__addDependentThrottleInterval:(unint64_t)a3 trigger:(int64_t)a4 dependentTrigger:(int64_t)a5;
- (void)__addDisallowedKnownNetwork:(id)a3;
- (void)__addMatchingThrottleInterval:(unint64_t)a3 triggers:(id)a4;
- (void)__addRequest:(id)a3;
- (void)__addWilcardThrottleInterval:(unint64_t)a3 triggers:(id)a4;
- (void)__calloutToBrowseForHotspotsWithTimeout:(unint64_t)a3 maxCacheAge:(unint64_t)a4 cacheOnly:(BOOL)a5 reply:(id)a6;
- (void)__calloutToCheckForBrokenBackhaulAndReply:(id)a3;
- (void)__invalidateAllowedKnownNetworksCacheForTrigger:(int64_t)a3;
- (void)__performAutoJoin;
- (void)__prepareKnownNetworksContext:(id)a3;
- (void)__removeDisallowedKnownNetwork:(id)a3;
- (void)__removeRedundantRequests:(id)a3;
- (void)__resetRetryIntervalIndex;
- (void)__scheduleDelayedAutoJoinMetricSubmission;
- (void)__setupRetryIntervals;
- (void)__setupThrottleIntervals;
- (void)__sortAndFilterUserConfiguredNetworks:(id)a3;
- (void)__sortHotspotCandidates:(id)a3;
- (void)__sortJoinCandidates:(id)a3 context:(id)a4;
- (void)__sortKnownNetworks:(id)a3;
- (void)__sortKnownNetworksByJoinTimestamp:(id)a3;
- (void)__submitAutoJoinMetric:(id)a3;
- (void)__unscheduleDelayedAutoJoinMetricSubmission;
- (void)__updateAutoJoinMetricAndStatistics:(id)a3;
- (void)__updateAutoJoinMetricWithJoinStatus;
- (void)__updateAutoJoinState:(int64_t)a3;
- (void)__updateDisallowedMatchedKnownNetworks;
- (void)__updateDiscoverTimestampForJoinCandidates:(id)a3;
- (void)__updateNextRequestTimer;
- (void)__updateRNRChannel:(id)a3 has6GHzOnlyBSS:(BOOL)a4 joinCandidate:(id)a5;
- (void)__updateRecentlyMatchedCandidates;
- (void)__updateRetrySchedule;
- (void)__updateStatisticsWithPreAssocScanChannels:(id)a3;
- (void)__updateStatisticsWithScanChannels:(id)a3;
- (void)cancelAutoJoinWithUUID:(id)a3 error:(id)a4 reply:(id)a5;
- (void)invalidate;
- (void)resetStatistics;
- (void)setAssociatedNetwork:(id)a3;
- (void)setJoinStatus:(id)a3;
- (void)setKnownNetworks:(id)a3;
- (void)setLocation:(id)a3;
- (void)setMaxCompatibilityEnabled:(BOOL)a3;
- (void)setNearbyRecommendedNetworks:(id)a3;
- (void)setRetrySchedule:(int64_t)a3;
- (void)setSupportedChannels:(id)a3;
@end

@implementation CWFAutoJoinManager

- (BOOL)__nextRequest
{
  v44 = *MEMORY[0x1E69E9840];
  if (self->_isNextRequestScheduled)
  {
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v42) = 0;
      LODWORD(v39) = 2;
      v37 = &v42;
      _os_log_send_and_compose_impl();
    }

    self->_isNextRequestScheduled = 0;
    dispatch_source_set_timer(self->_nextRequestTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  p_activeRequest = &self->_activeRequest;
  if (self->_activeRequest || ![(NSMutableArray *)self->_pendingRequests count])
  {
    v7 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if ([(NSMutableArray *)self->_pendingRequests count])
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        if (*p_activeRequest)
        {
          goto LABEL_36;
        }

        v12 = [(NSMutableArray *)self->_pendingRequests objectAtIndexedSubscript:v11];
        v13 = [v12 parameters];
        if (!-[CWFAutoJoinManager __shouldThrottleAutoJoinTrigger:](self, "__shouldThrottleAutoJoinTrigger:", [v13 trigger]))
        {
          break;
        }

        v14 = [v12 parameters];
        v15 = [v14 targetNetworkProfile];

        if (v15)
        {
          goto LABEL_20;
        }

        if (([v12 throttled] & 1) == 0)
        {
          v16 = CWFGetOSLog();
          if (v16)
          {
            v17 = CWFGetOSLog();
          }

          else
          {
            v17 = MEMORY[0x1E69E9C10];
            v20 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v42 = 138543362;
            *v43 = v12;
            LODWORD(v39) = 12;
            v37 = &v42;
            _os_log_send_and_compose_impl();
          }

          [v12 setThrottled:1];
        }

LABEL_30:

        if (++v11 >= [(NSMutableArray *)self->_pendingRequests count])
        {
          v21 = *p_activeRequest;
          if (!*p_activeRequest && v8)
          {
            objc_storeStrong(&self->_activeRequest, v8);
            goto LABEL_34;
          }

          goto LABEL_35;
        }
      }

LABEL_20:
      v18 = [v12 parameters];
      v19 = [v18 trigger];
      if (v19 - 44 < 8 || v19 <= 0x3F && ((1 << v19) & 0xC000000000000010) != 0)
      {

        if (!v8)
        {
          v8 = v12;
          v9 = v11;
        }
      }

      else
      {

        objc_storeStrong(&self->_activeRequest, v12);
        v10 = v11;
      }

      goto LABEL_30;
    }

LABEL_34:
    v21 = *p_activeRequest;
    v10 = v9;
LABEL_35:
    if (v21)
    {
LABEL_36:
      [(NSMutableArray *)self->_pendingRequests removeObjectAtIndex:v10, v37, v39];
      if (self->_isRetryScheduled)
      {
        v22 = CWFGetOSLog();
        if (v22)
        {
          v23 = CWFGetOSLog();
        }

        else
        {
          v23 = MEMORY[0x1E69E9C10];
          v24 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = sub_1E0BEE2F0(self->_retrySchedule);
          retryScheduleIndex = self->_retryScheduleIndex;
          v42 = 138543618;
          *v43 = v25;
          *&v43[8] = 2048;
          *&v43[10] = retryScheduleIndex;
          LODWORD(v40) = 22;
          v38 = &v42;
          _os_log_send_and_compose_impl();
        }

        self->_isRetryScheduled = 0;
        dispatch_source_set_timer(self->_retryTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      v27 = [(CWFAutoJoinRequest *)self->_activeRequest parameters:v38];
      v28 = -[CWFAutoJoinManager __qosForAutoJoinTrigger:](self, "__qosForAutoJoinTrigger:", [v27 trigger]);

      v29 = CWFGetOSLog();
      if (v29)
      {
        v30 = CWFGetOSLog();
      }

      else
      {
        v30 = MEMORY[0x1E69E9C10];
        v31 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *p_activeRequest;
        v42 = 67109378;
        *v43 = v28;
        *&v43[4] = 2114;
        *&v43[6] = v32;
        _os_log_send_and_compose_impl();
      }

      internalQueue = self->_internalQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0C72E18;
      block[3] = &unk_1E86E6010;
      block[4] = self;
      v34 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v28, 0, block);
      dispatch_async(internalQueue, v34);

      v7 = 1;
    }

    else
    {
      [(CWFAutoJoinManager *)self __updateNextRequestTimer];
      v7 = 0;
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)__updateNextRequestTimer
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_nextRequestTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_internalQueue);
    nextRequestTimer = self->_nextRequestTimer;
    self->_nextRequestTimer = v3;

    v5 = self->_nextRequestTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0C8AFC4;
    handler[3] = &unk_1E86E6010;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_source_set_timer(self->_nextRequestTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_nextRequestTimer);
  }

  if ([(CWFAutoJoinManager *)self __nextRequestInterval]> 0x7FFFFFFFFFFFFFFELL)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  v6 = [(CWFAutoJoinManager *)self __nextRequestInterval];
  if (v6 >= 1)
  {
LABEL_9:
    v9 = CWFGetOSLog();
    if (v9)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (self->_isNextRequestScheduled)
      {
        v12 = @"Re-scheduling";
      }

      else
      {
        v12 = @"Scheduling";
      }

      v19 = 138543618;
      v20 = v12;
      v21 = 2048;
      v22 = v6 / 0xF4240uLL;
      _os_log_send_and_compose_impl();
    }

    self->_isNextRequestScheduled = 1;
    v13 = self->_nextRequestTimer;
    v14 = dispatch_walltime(0, v6);
    v15 = v13;
    goto LABEL_18;
  }

  if (self->_isNextRequestScheduled)
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      _os_log_send_and_compose_impl();
    }

    self->_isNextRequestScheduled = 0;
    v15 = self->_nextRequestTimer;
    v14 = -1;
LABEL_18:
    dispatch_source_set_timer(v15, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (unint64_t)__nextRequestInterval
{
  v103 = *MEMORY[0x1E69E9840];
  v73 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = self->_pendingRequests;
  v61 = [(NSMutableArray *)obj countByEnumeratingWithState:&v94 objects:v102 count:16];
  v3 = 0;
  if (v61)
  {
    v60 = *v95;
    v75 = self;
    do
    {
      v4 = 0;
      do
      {
        if (*v95 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v4;
        throttleIntervalMap = self->_throttleIntervalMap;
        v6 = MEMORY[0x1E696AD98];
        v7 = [*(*(&v94 + 1) + 8 * v4) parameters];
        v8 = [v6 numberWithInteger:{objc_msgSend(v7, "trigger")}];
        v9 = [(NSMutableDictionary *)throttleIntervalMap objectForKeyedSubscript:v8];

        if (!v9)
        {
          v9 = [(NSMutableDictionary *)v75->_throttleIntervalMap objectForKeyedSubscript:&unk_1F5BBC5C8];
        }

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v10 = [v9 intervals];
        v11 = [v10 allKeys];

        v63 = v11;
        v74 = v9;
        v67 = [v11 countByEnumeratingWithState:&v90 objects:v101 count:16];
        if (v67)
        {
          v65 = *v91;
          self = v75;
          do
          {
            v12 = 0;
            do
            {
              if (*v91 != v65)
              {
                objc_enumerationMutation(v63);
              }

              v69 = v12;
              v13 = *(*(&v90 + 1) + 8 * v12);
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              v89 = 0u;
              v14 = [(NSMutableDictionary *)self->_throttleTimestampMap allKeys];
              v15 = [v14 countByEnumeratingWithState:&v86 objects:v100 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v87;
                do
                {
                  v18 = 0;
                  v76 = v16;
                  do
                  {
                    if (*v87 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v86 + 1) + 8 * v18);
                    v20 = [v13 integerValue];
                    if (v20 == [v19 integerValue])
                    {
                      v21 = [(NSMutableDictionary *)self->_throttleTimestampMap objectForKeyedSubscript:v19];
                      v22 = [v9 intervals];
                      v23 = [v22 objectForKeyedSubscript:v13];

                      if (v23 && v21)
                      {
                        v71 = [v21 unsignedLongValue];
                        v24 = v13;
                        v25 = v17;
                        v26 = v14;
                        v27 = [v23 unsignedLongValue];
                        v28 = 1000000000 * [v23 unsignedLongValue];
                        v29 = [v23 unsignedLongValue];
                        v30 = 1000000000 * v29;
                        v31 = v27 > v28;
                        v14 = v26;
                        v17 = v25;
                        v13 = v24;
                        v9 = v74;
                        self = v75;
                        if (v31)
                        {
                          v30 = v29;
                        }

                        v32 = v30 - (v73 - v71);
                        if (v3 >= v32)
                        {
                          v33 = v30 - (v73 - v71);
                        }

                        else
                        {
                          v33 = v3;
                        }

                        if (v3)
                        {
                          v32 = v33;
                        }

                        if (v30 > v73 - v71)
                        {
                          v3 = v32;
                        }
                      }

                      v16 = v76;
                    }

                    ++v18;
                  }

                  while (v16 != v18);
                  v16 = [v14 countByEnumeratingWithState:&v86 objects:v100 count:16];
                }

                while (v16);
              }

              v12 = v69 + 1;
            }

            while (v69 + 1 != v67);
            v67 = [v63 countByEnumeratingWithState:&v90 objects:v101 count:16];
          }

          while (v67);
        }

        else
        {
          self = v75;
        }

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v34 = [v9 intervalsBasedOnTriggerTimestamp];
        v35 = [v34 allKeys];

        v64 = v35;
        v68 = [v35 countByEnumeratingWithState:&v82 objects:v99 count:16];
        if (v68)
        {
          v66 = *v83;
          do
          {
            v36 = 0;
            do
            {
              if (*v83 != v66)
              {
                objc_enumerationMutation(v64);
              }

              v70 = v36;
              v37 = *(*(&v82 + 1) + 8 * v36);
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              v38 = [(NSMutableDictionary *)self->_triggerTimestampMap allKeys];
              v39 = [v38 countByEnumeratingWithState:&v78 objects:v98 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v79;
                do
                {
                  v42 = 0;
                  v77 = v40;
                  do
                  {
                    if (*v79 != v41)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v43 = *(*(&v78 + 1) + 8 * v42);
                    v44 = [v37 integerValue];
                    if (v44 == [v43 integerValue])
                    {
                      v45 = [(NSMutableDictionary *)self->_triggerTimestampMap objectForKeyedSubscript:v43];
                      v46 = [v9 intervalsBasedOnTriggerTimestamp];
                      v47 = [v46 objectForKeyedSubscript:v37];

                      if (v47 && v45)
                      {
                        v72 = [v45 unsignedLongValue];
                        v48 = v37;
                        v49 = v41;
                        v50 = v38;
                        v51 = [v47 unsignedLongValue];
                        v52 = 1000000000 * [v47 unsignedLongValue];
                        v53 = [v47 unsignedLongValue];
                        v54 = 1000000000 * v53;
                        v31 = v51 > v52;
                        v38 = v50;
                        v41 = v49;
                        v37 = v48;
                        v9 = v74;
                        self = v75;
                        if (v31)
                        {
                          v54 = v53;
                        }

                        v55 = v54 - (v73 - v72);
                        if (v3 >= v55)
                        {
                          v56 = v54 - (v73 - v72);
                        }

                        else
                        {
                          v56 = v3;
                        }

                        if (v3)
                        {
                          v55 = v56;
                        }

                        if (v54 > v73 - v72)
                        {
                          v3 = v55;
                        }
                      }

                      v40 = v77;
                    }

                    ++v42;
                  }

                  while (v40 != v42);
                  v40 = [v38 countByEnumeratingWithState:&v78 objects:v98 count:16];
                }

                while (v40);
              }

              v36 = v70 + 1;
            }

            while (v70 + 1 != v68);
            v68 = [v64 countByEnumeratingWithState:&v82 objects:v99 count:16];
          }

          while (v68);
        }

        v4 = v62 + 1;
      }

      while (v62 + 1 != v61);
      v61 = [(NSMutableArray *)obj countByEnumeratingWithState:&v94 objects:v102 count:16];
    }

    while (v61);
  }

  v57 = *MEMORY[0x1E69E9840];
  return v3;
}

- (CWFAutoJoinStatistics)statistics
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CWFAutoJoinStatistics *)v2->_statistics copy];
  objc_sync_exit(v2);

  return v3;
}

- (CWFAutoJoinManager)init
{
  v82.receiver = self;
  v82.super_class = CWFAutoJoinManager;
  v2 = [(CWFAutoJoinManager *)&v82 init];
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.corewifi.auto-join", v3);
  v5 = *(v2 + 1);
  *(v2 + 1) = v4;

  if (!*(v2 + 1))
  {
    goto LABEL_35;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.corewifi.auto-join.target", v6);
  v8 = *(v2 + 85);
  *(v2 + 85) = v7;

  if (!*(v2 + 85))
  {
    goto LABEL_35;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = *(v2 + 17);
  *(v2 + 17) = v9;

  if (!*(v2 + 17))
  {
    goto LABEL_35;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = *(v2 + 27);
  *(v2 + 27) = v11;

  if (!*(v2 + 27))
  {
    goto LABEL_35;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = *(v2 + 34);
  *(v2 + 34) = v13;

  if (!*(v2 + 34))
  {
    goto LABEL_35;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = *(v2 + 35);
  *(v2 + 35) = v15;

  if (!*(v2 + 35))
  {
    goto LABEL_35;
  }

  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = *(v2 + 36);
  *(v2 + 36) = v17;

  if (!*(v2 + 36))
  {
    goto LABEL_35;
  }

  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = *(v2 + 16);
  *(v2 + 16) = v19;

  if (!*(v2 + 16))
  {
    goto LABEL_35;
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = *(v2 + 28);
  *(v2 + 28) = v21;

  if (!*(v2 + 28))
  {
    goto LABEL_35;
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = *(v2 + 29);
  *(v2 + 29) = v23;

  if (!*(v2 + 29))
  {
    goto LABEL_35;
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = *(v2 + 30);
  *(v2 + 30) = v25;

  if (!*(v2 + 30))
  {
    goto LABEL_35;
  }

  v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28 = *(v2 + 31);
  *(v2 + 31) = v27;

  if (!*(v2 + 31))
  {
    goto LABEL_35;
  }

  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = *(v2 + 39);
  *(v2 + 39) = v29;

  if (!*(v2 + 39))
  {
    goto LABEL_35;
  }

  v31 = objc_alloc_init(CWFAutoJoinStatistics);
  v32 = *(v2 + 20);
  *(v2 + 20) = v31;

  if (!*(v2 + 20))
  {
    goto LABEL_35;
  }

  v33 = [MEMORY[0x1E695DF00] date];
  [*(v2 + 20) setStartedAt:v33];

  v34 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 1));
  v35 = *(v2 + 21);
  *(v2 + 21) = v34;

  v36 = *(v2 + 21);
  if (!v36)
  {
    goto LABEL_35;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0C6A138;
  handler[3] = &unk_1E86E6010;
  v37 = v2;
  v81 = v37;
  dispatch_source_set_event_handler(v36, handler);

  v38 = *(v2 + 21);
  v39 = dispatch_walltime(0, 86400000000000);
  dispatch_source_set_timer(v38, v39, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(*(v2 + 21));
  v40 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 1));
  v41 = v37[22];
  v37[22] = v40;

  v42 = v37[22];
  if (!v42)
  {
    goto LABEL_35;
  }

  v75 = MEMORY[0x1E69E9820];
  v76 = 3221225472;
  v77 = sub_1E0C6A474;
  v78 = &unk_1E86E6010;
  v43 = v37;
  v79 = v43;
  dispatch_source_set_event_handler(v42, &v75);

  dispatch_source_set_timer(v37[22], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(v37[22]);
  v44 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  hiddenNetworkChannels = v43->_hiddenNetworkChannels;
  v43->_hiddenNetworkChannels = v44;

  if (!v43->_hiddenNetworkChannels)
  {
    goto LABEL_35;
  }

  v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cachedKnownNetworksContexts = v43->_cachedKnownNetworksContexts;
  v43->_cachedKnownNetworksContexts = v46;

  if (!v43->_cachedKnownNetworksContexts)
  {
    goto LABEL_35;
  }

  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  knownNetworkSSIDMap = v43->_knownNetworkSSIDMap;
  v43->_knownNetworkSSIDMap = v48;

  if (!v43->_knownNetworkSSIDMap)
  {
    goto LABEL_35;
  }

  v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
  knownNetworkPasspointDomainMap = v43->_knownNetworkPasspointDomainMap;
  v43->_knownNetworkPasspointDomainMap = v50;

  if (!v43->_knownNetworkPasspointDomainMap)
  {
    goto LABEL_35;
  }

  v52 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  deferredKnownNetworks = v43->_deferredKnownNetworks;
  v43->_deferredKnownNetworks = v52;

  if (!v43->_deferredKnownNetworks)
  {
    goto LABEL_35;
  }

  v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
  knownNetworkAllowCache = v43->_knownNetworkAllowCache;
  v43->_knownNetworkAllowCache = v54;

  if (!v43->_knownNetworkAllowCache)
  {
    goto LABEL_35;
  }

  v56 = objc_alloc_init(MEMORY[0x1E695DF90]);
  knownNetworkAllowErrorCache = v43->_knownNetworkAllowErrorCache;
  v43->_knownNetworkAllowErrorCache = v56;

  if (!v43->_knownNetworkAllowErrorCache)
  {
    goto LABEL_35;
  }

  v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
  knownNetworkDeferCache = v43->_knownNetworkDeferCache;
  v43->_knownNetworkDeferCache = v58;

  if (!v43->_knownNetworkDeferCache)
  {
    goto LABEL_35;
  }

  v60 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  updatedAllowCacheKnownNetworks = v43->_updatedAllowCacheKnownNetworks;
  v43->_updatedAllowCacheKnownNetworks = v60;

  if (!v43->_updatedAllowCacheKnownNetworks)
  {
    goto LABEL_35;
  }

  v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
  disallowedKnownNetworksMap = v43->_disallowedKnownNetworksMap;
  v43->_disallowedKnownNetworksMap = v62;

  if (!v43->_disallowedKnownNetworksMap)
  {
    goto LABEL_35;
  }

  v64 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  lowRSSICandidates = v43->_lowRSSICandidates;
  v43->_lowRSSICandidates = v64;

  if (!v43->_lowRSSICandidates)
  {
    goto LABEL_35;
  }

  v66 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  prevLowRSSICandidates = v43->_prevLowRSSICandidates;
  v43->_prevLowRSSICandidates = v66;

  if (!v43->_prevLowRSSICandidates)
  {
    goto LABEL_35;
  }

  v68 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  matchedCandidates = v43->_matchedCandidates;
  v43->_matchedCandidates = v68;

  if (!v43->_matchedCandidates)
  {
    goto LABEL_35;
  }

  v70 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  recentlyMatchedCandidates = v43->_recentlyMatchedCandidates;
  v43->_recentlyMatchedCandidates = v70;

  if (!v43->_recentlyMatchedCandidates)
  {
    goto LABEL_35;
  }

  v72 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  disallowedMatchedCandidates = v43->_disallowedMatchedCandidates;
  v43->_disallowedMatchedCandidates = v72;

  if (v43->_disallowedMatchedCandidates)
  {
    [(CWFAutoJoinManager *)v43 __setupRetryIntervals:v75];
    [(CWFAutoJoinManager *)v43 __setupThrottleIntervals];
  }

  else
  {
LABEL_35:

    return 0;
  }

  return v43;
}

- (void)invalidate
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_invalidated)
  {
    *&v2->_invalidated = 257;
    underlyingCancelError = v2->_underlyingCancelError;
    v2->_underlyingCancelError = 0;

    internalQueue = v2->_internalQueue;
    v5 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C6A6D8;
    block[3] = &unk_1E86E6010;
    block[4] = v2;
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v5, 0, block);
    dispatch_async(internalQueue, v6);
  }

  objc_sync_exit(v2);
}

- (NSArray)nearbyRecommendedNetworks
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_nearbyRecommendedNetworks copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setNearbyRecommendedNetworks:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  objc_sync_enter(v6);
  nearbyRecommendedNetworks = v6->_nearbyRecommendedNetworks;
  if (nearbyRecommendedNetworks != v4 && (!v4 || !nearbyRecommendedNetworks || ([(NSArray *)v4 isEqual:?]& 1) == 0))
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v11 = [(NSArray *)v4 copy];
    v12 = v6->_nearbyRecommendedNetworks;
    v6->_nearbyRecommendedNetworks = v11;

    v6->_didConfigurationChangeSincePreviousAttempt = 1;
    [(CWFAutoJoinManager *)v6 __resetRetryIntervalIndex];
  }

  objc_sync_exit(v6);

  objc_autoreleasePoolPop(v5);
}

- (NSSet)knownNetworks
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSSet *)v2->_knownNetworks copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)__submitAutoJoinMetric:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  if (objc_opt_class())
  {
    v7 = [v3 coreAnalyticsEventName];
    v8 = [v3 autoJoinedNetwork];
    if (v8 || ([v3 userJoinedNetwork], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
    }

    else
    {
      v9 = [v3 scanErrors];
      if (![v9 count])
      {
        v15 = [v3 hotspot];
        if (!v15)
        {
          if ([v3 autoHotspotMode] == 3)
          {
            v16 = [v3 autoHotspotBrowseError];

            if (v16)
            {
              goto LABEL_11;
            }
          }

          else
          {
          }

          v17 = CWFGetOSLog();
          if (v17)
          {
            v13 = CWFGetOSLog();
          }

          else
          {
            v13 = MEMORY[0x1E69E9C10];
            v18 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            _os_log_send_and_compose_impl();
          }

          goto LABEL_17;
        }
      }
    }

LABEL_11:
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v19 = v7;
    v20 = v3;
    AnalyticsSendEventLazy();

    v13 = v19;
LABEL_17:
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)__updateAutoJoinMetricWithJoinStatus
{
  v2 = self;
  v123 = *MEMORY[0x1E69E9840];
  v3 = [(CWFJoinStatus *)self->_joinStatus scanResult];

  if (!v3)
  {
    goto LABEL_61;
  }

  if (![(CWFJoinStatus *)v2->_joinStatus isAutoJoin])
  {
    goto LABEL_27;
  }

  v4 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric autoJoinedNetwork];
  v5 = [v4 SSID];
  if (!v5)
  {
    goto LABEL_26;
  }

  v6 = v5;
  v7 = [(CWFJoinStatus *)v2->_joinStatus scanResult];
  v8 = [v7 SSID];
  if (!v8)
  {

LABEL_26:
LABEL_27:
    if ([(CWFJoinStatus *)v2->_joinStatus isAutoJoin])
    {
      goto LABEL_61;
    }

    v44 = [(CWFJoinStatus *)v2->_joinStatus startedAt];
    [v44 timeIntervalSinceReferenceDate];
    v46 = v45;
    v47 = [(CWFAutoJoinMetric *)v2->_cachedMetric startedAt];
    [v47 timeIntervalSinceReferenceDate];
    v49 = v48;

    if (v46 <= v49)
    {
      goto LABEL_61;
    }

    v50 = [(CWFJoinStatus *)v2->_joinStatus scanResult];
    v51 = [(CWFJoinStatus *)v2->_joinStatus knownNetworkProfile];
    v52 = [v50 scanResultWithMatchingKnownNetworkProfile:v51];
    [(CWFAutoJoinMetric *)v2->_cachedMetric setUserJoinedNetwork:v52];

    v53 = [(CWFAutoJoinMetric *)v2->_cachedMetric userJoinedNetwork];
    LODWORD(v51) = [(CWFAutoJoinManager *)v2 __preflightMatchKnownNetworksForScanResult:v53];

    if (v51)
    {
      v54 = [(CWFAutoJoinMetric *)v2->_cachedMetric userJoinedNetwork];
      v55 = [(CWFAutoJoinManager *)v2 knownNetworks];
      v56 = [v55 allObjects];
      v57 = sub_1E0BED85C(v54, v56);

      cachedMetric = v2->_cachedMetric;
      if (v57)
      {
        [(CWFAutoJoinMetric *)cachedMetric setDidUserJoinKnownNetwork:1];
        v59 = [(CWFJoinStatus *)v2->_joinStatus scanResult];
        v60 = [v59 scanResultWithMatchingKnownNetworkProfile:v57];
        [(CWFAutoJoinMetric *)v2->_cachedMetric setUserJoinedNetwork:v60];
      }

      else
      {
        [(CWFAutoJoinMetric *)cachedMetric setDidUserJoinPartiallyMatchedNetwork:1];
      }
    }

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    obja = v2->_lowRSSICandidates;
    v74 = [(NSMutableSet *)obja countByEnumeratingWithState:&v113 objects:v121 count:16];
    if (!v74)
    {
      goto LABEL_56;
    }

    v75 = v74;
    v76 = *v114;
    v104 = *v114;
    v106 = v2;
    while (1)
    {
      for (i = 0; i != v75; ++i)
      {
        if (*v114 != v76)
        {
          objc_enumerationMutation(obja);
        }

        v78 = *(*(&v113 + 1) + 8 * i);
        v79 = [v78 matchingKnownNetworkProfile];
        v80 = [(CWFAutoJoinMetric *)v2->_cachedMetric userJoinedNetwork];
        v81 = [v80 matchingKnownNetworkProfile];
        v82 = v81;
        if (v79 == v81)
        {

LABEL_55:
          [(CWFAutoJoinMetric *)v2->_cachedMetric setDidUserJoinLowRSSINetwork:1];
LABEL_56:

          v90 = [(NSMutableDictionary *)v2->_disallowedKnownNetworksMap allKeys];
          v91 = [(CWFAutoJoinMetric *)v2->_cachedMetric userJoinedNetwork];
          v92 = [v91 matchingKnownNetworkProfile];
          v93 = [v92 identifier];
          v94 = [v90 containsObject:v93];

          if (v94)
          {
            [(CWFAutoJoinMetric *)v2->_cachedMetric setDidUserJoinDisallowedNetwork:1];
          }

          deferredKnownNetworks = v2->_deferredKnownNetworks;
          v96 = [(CWFAutoJoinMetric *)v2->_cachedMetric userJoinedNetwork];
          v97 = [v96 matchingKnownNetworkProfile];
          LODWORD(deferredKnownNetworks) = [(NSMutableOrderedSet *)deferredKnownNetworks containsObject:v97];

          if (deferredKnownNetworks)
          {
            [(CWFAutoJoinMetric *)v2->_cachedMetric setDidUserJoinDeferredNetwork:1];
          }

          [(CWFAutoJoinManager *)v2 __submitAutoJoinMetric:v2->_cachedMetric];
          goto LABEL_61;
        }

        v83 = [v78 matchingKnownNetworkProfile];
        if (!v83)
        {
          goto LABEL_50;
        }

        v112 = [(CWFAutoJoinMetric *)v2->_cachedMetric userJoinedNetwork];
        v84 = [v112 matchingKnownNetworkProfile];
        if (!v84)
        {

LABEL_50:
          continue;
        }

        v85 = v84;
        v86 = [v78 matchingKnownNetworkProfile];
        v87 = [(CWFAutoJoinMetric *)v2->_cachedMetric userJoinedNetwork];
        [v87 matchingKnownNetworkProfile];
        v89 = v88 = v75;
        v110 = [v86 isEqual:v89];

        v75 = v88;
        v76 = v104;

        v2 = v106;
        if (v110)
        {
          goto LABEL_55;
        }
      }

      v75 = [(NSMutableSet *)obja countByEnumeratingWithState:&v113 objects:v121 count:16];
      if (!v75)
      {
        goto LABEL_56;
      }
    }
  }

  v9 = v8;
  v10 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric autoJoinedNetwork];
  v11 = [v10 SSID];
  [(CWFJoinStatus *)v2->_joinStatus scanResult];
  v13 = v12 = v2;
  v14 = [v13 SSID];
  v15 = [v11 isEqual:v14];

  v2 = v12;
  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = [(CWFJoinStatus *)v12->_joinStatus associationEndedAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setJoinEndedAt:v16];

  v17 = [(CWFJoinStatus *)v12->_joinStatus startedAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setJoinStartedAt:v17];

  v18 = [(CWFJoinStatus *)v12->_joinStatus IPv4AssignedAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setRoutableIPv4AddressAt:v18];

  v19 = [(CWFJoinStatus *)v12->_joinStatus IPv4PrimaryAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setPrimaryIPv4InterfaceAt:v19];

  v20 = [(CWFJoinStatus *)v12->_joinStatus IPv6AssignedAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setRoutableIPv6AddressAt:v20];

  v21 = [(CWFJoinStatus *)v12->_joinStatus IPv6PrimaryAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setPrimaryIPv6InterfaceAt:v21];

  v22 = [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric wasAlreadyAssociatedToNetwork];
  if (v22)
  {
LABEL_9:

    goto LABEL_10;
  }

  if (v12->_prevAssociatedNetwork)
  {
    v22 = [(CWFJoinStatus *)v12->_joinStatus associationEndedAt];
    [v22 timeIntervalSinceReferenceDate];
    v24 = v23;
    v25 = CWFGetBootTime();
    v26 = [v25 dateByAddingTimeInterval:v12->_prevAssocBeforeTimestamp / 1000000000.0];
    [v26 timeIntervalSinceReferenceDate];
    [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setLinkRecoveryDelay:((v24 - v27) * 1000.0)];

    goto LABEL_9;
  }

LABEL_10:
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = v12->_prevLowRSSICandidates;
  v28 = [(NSMutableSet *)obj countByEnumeratingWithState:&v117 objects:v122 count:16];
  if (!v28)
  {
    goto LABEL_34;
  }

  v29 = v28;
  v30 = *v118;
  v103 = *v118;
  v105 = v12;
  while (2)
  {
    for (j = 0; j != v29; ++j)
    {
      if (*v118 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v117 + 1) + 8 * j);
      v33 = [v32 matchingKnownNetworkProfile];
      v34 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric userJoinedNetwork];
      v35 = [v34 matchingKnownNetworkProfile];
      v36 = v35;
      if (v33 == v35)
      {

LABEL_33:
        [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric setDidJoinPreviouslyLowRSSINetwork:1];
        goto LABEL_34;
      }

      v37 = [v32 matchingKnownNetworkProfile];
      if (!v37)
      {
        goto LABEL_21;
      }

      v111 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric userJoinedNetwork];
      v38 = [v111 matchingKnownNetworkProfile];
      if (!v38)
      {

LABEL_21:
        continue;
      }

      v39 = v38;
      v40 = [v32 matchingKnownNetworkProfile];
      v41 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric userJoinedNetwork];
      [v41 matchingKnownNetworkProfile];
      v43 = v42 = v29;
      v109 = [v40 isEqual:v43];

      v29 = v42;
      v30 = v103;

      v2 = v105;
      if (v109)
      {
        goto LABEL_33;
      }
    }

    v29 = [(NSMutableSet *)obj countByEnumeratingWithState:&v117 objects:v122 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_34:

  v61 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric startedAt];
  if (v61)
  {
    v62 = v61;
    v63 = [(CWFAutoJoinMetric *)v2->_cachedMetric startedAt];
    if (v63)
    {
      v64 = v63;
      v65 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric startedAt];
      v66 = [(CWFAutoJoinMetric *)v2->_cachedMetric startedAt];
      v67 = [v65 isEqual:v66];

      if (v67)
      {
        v68 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric joinEndedAt];
        [(CWFAutoJoinMetric *)v2->_cachedMetric setJoinEndedAt:v68];

        v69 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric joinStartedAt];
        [(CWFAutoJoinMetric *)v2->_cachedMetric setJoinStartedAt:v69];

        v70 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric routableIPv4AddressAt];
        [(CWFAutoJoinMetric *)v2->_cachedMetric setRoutableIPv4AddressAt:v70];

        v71 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric primaryIPv4InterfaceAt];
        [(CWFAutoJoinMetric *)v2->_cachedMetric setPrimaryIPv4InterfaceAt:v71];

        v72 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric routableIPv6AddressAt];
        [(CWFAutoJoinMetric *)v2->_cachedMetric setRoutableIPv6AddressAt:v72];

        v73 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric primaryIPv6InterfaceAt];
        [(CWFAutoJoinMetric *)v2->_cachedMetric setPrimaryIPv6InterfaceAt:v73];

        [(CWFAutoJoinMetric *)v2->_cachedMetric setLinkRecoveryDelay:[(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric linkRecoveryDelay]];
        [(CWFAutoJoinMetric *)v2->_cachedMetric setDidJoinPreviouslyLowRSSINetwork:[(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric didJoinPreviouslyLowRSSINetwork]];
      }
    }

    else
    {
    }
  }

  v99 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric primaryIPv4InterfaceAt];
  if (v99)
  {
    v100 = v99;
    v101 = [(CWFAutoJoinMetric *)v2->_delayedSubmissionMetric primaryIPv6InterfaceAt];

    if (v101)
    {
      [(CWFAutoJoinManager *)v2 __unscheduleDelayedAutoJoinMetricSubmission];
      [(CWFAutoJoinManager *)v2 __submitAutoJoinMetric:v2->_delayedSubmissionMetric];
      delayedSubmissionMetric = v2->_delayedSubmissionMetric;
      v2->_delayedSubmissionMetric = 0;
    }
  }

LABEL_61:
  v98 = *MEMORY[0x1E69E9840];
}

- (CWFScanResult)associatedNetwork
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_associatedNetwork;
  objc_sync_exit(v2);

  return v3;
}

- (void)setAssociatedNetwork:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  associatedNetwork = v5->_associatedNetwork;
  if (associatedNetwork != v4 && (!v4 || !associatedNetwork || ![(CWFScanResult *)v4 isEqual:?]))
  {
    goto LABEL_13;
  }

  v7 = [(CWFScanResult *)v4 matchingKnownNetworkProfile];
  v8 = [(CWFScanResult *)v5->_associatedNetwork matchingKnownNetworkProfile];
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_37;
  }

  v10 = [(CWFScanResult *)v4 matchingKnownNetworkProfile];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = [(CWFScanResult *)v5->_associatedNetwork matchingKnownNetworkProfile];
  if (!v11)
  {

LABEL_12:
    goto LABEL_13;
  }

  v12 = [(CWFScanResult *)v4 matchingKnownNetworkProfile];
  v13 = [(CWFScanResult *)v5->_associatedNetwork matchingKnownNetworkProfile];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
    goto LABEL_37;
  }

LABEL_13:
  v15 = CWFGetOSLog();
  if (v15)
  {
    v16 = CWFGetOSLog();
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v52 = 138543362;
    v53 = v4;
    LODWORD(v50) = 12;
    v49 = &v52;
    _os_log_send_and_compose_impl();
  }

  v18 = v5->_associatedNetwork;
  if ((v4 == 0) == (v18 != 0))
  {
    v19 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    v5->_linkChangeTimestamp = v19;
    if (v18)
    {
      v5->_prevAssocBeforeTimestamp = v19;
      v20 = [(CWFScanResult *)v5->_associatedNetwork copy];
      prevAssociatedNetwork = v5->_prevAssociatedNetwork;
      v5->_prevAssociatedNetwork = v20;
    }
  }

  v22 = [(CWFScanResult *)v4 copy:v49];
  v23 = v5->_associatedNetwork;
  v5->_associatedNetwork = v22;

  v24 = [(CWFScanResult *)v5->_steerToNetwork matchingKnownNetworkProfile];
  v25 = [v24 identifier];
  if (!v25)
  {
    goto LABEL_26;
  }

  v26 = [(CWFScanResult *)v5->_associatedNetwork matchingKnownNetworkProfile];
  v27 = [v26 identifier];
  if (!v27)
  {

LABEL_26:
    goto LABEL_27;
  }

  v28 = [(CWFScanResult *)v5->_steerToNetwork matchingKnownNetworkProfile];
  v29 = [v28 identifier];
  v30 = [(CWFScanResult *)v5->_associatedNetwork matchingKnownNetworkProfile];
  v31 = [v30 identifier];
  v51 = [v29 isEqual:v31];

  if ((v51 & 1) == 0)
  {
LABEL_27:
    steerToNetwork = v5->_steerToNetwork;
    v5->_steerToNetwork = 0;

    steerFromNetwork = v5->_steerFromNetwork;
    v5->_steerFromNetwork = 0;
  }

  v34 = v5->_associatedNetwork;
  if (v34)
  {
    v35 = [(CWFScanResult *)v34 networkProfile];
    v36 = [v35 identifier];
    if (v36)
    {
      v37 = [(NSMutableDictionary *)v5->_disallowedKnownNetworksMap allKeys];
      v38 = [v35 identifier];
      v39 = [v37 containsObject:v38];

      if (v39)
      {
        disallowedKnownNetworksMap = v5->_disallowedKnownNetworksMap;
        v41 = [v35 identifier];
        [(NSMutableDictionary *)disallowedKnownNetworksMap removeObjectForKey:v41];
      }
    }

    v42 = [v35 identifier];
    if (v42)
    {
      failedToJoinKnownNetworkIDs = v5->_failedToJoinKnownNetworkIDs;
      v44 = [v35 identifier];
      LODWORD(failedToJoinKnownNetworkIDs) = [(NSMutableSet *)failedToJoinKnownNetworkIDs containsObject:v44];

      if (failedToJoinKnownNetworkIDs)
      {
        v45 = v5->_failedToJoinKnownNetworkIDs;
        v46 = [v35 identifier];
        [(NSMutableSet *)v45 removeObject:v46];
      }
    }
  }

  else
  {
    [(CWFAutoJoinManager *)v5 __unscheduleDelayedAutoJoinMetricSubmission];
    [(CWFAutoJoinManager *)v5 __submitAutoJoinMetric:v5->_delayedSubmissionMetric];
    delayedSubmissionMetric = v5->_delayedSubmissionMetric;
    v5->_delayedSubmissionMetric = 0;
  }

LABEL_37:
  objc_sync_exit(v5);

  v48 = *MEMORY[0x1E69E9840];
}

- (CWFJoinStatus)joinStatus
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_joinStatus;
  objc_sync_exit(v2);

  return v3;
}

- (void)setJoinStatus:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  joinStatus = v5->_joinStatus;
  if (joinStatus != v4 && (!v4 || !joinStatus || ![(CWFJoinStatus *)v4 isEqual:?]))
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v10 = [(CWFJoinStatus *)v4 copy];
    v11 = v5->_joinStatus;
    v5->_joinStatus = v10;

    [(CWFAutoJoinManager *)v5 __updateAutoJoinMetricWithJoinStatus];
  }

  objc_sync_exit(v5);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)__resetRetryIntervalIndex
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1E0BEE2F0(self->_retrySchedule);
    _os_log_send_and_compose_impl();
  }

  self->_retryScheduleIndex = 0;
  if (self->_isRetryScheduled)
  {
    [(CWFAutoJoinManager *)self __updateRetrySchedule];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setKnownNetworks:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = self;
  objc_sync_enter(v5);
  knownNetworks = v5->_knownNetworks;
  v44 = v4;
  if (knownNetworks != v4 && (!v4 || !knownNetworks || ([(NSSet *)v4 isEqual:?]& 1) == 0))
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 0;
      LODWORD(v42) = 2;
      v41 = &v53;
      _os_log_send_and_compose_impl();
    }

    v10 = [MEMORY[0x1E695DFA8] set];
    v48 = [MEMORY[0x1E695DF90] dictionary];
    v46 = [MEMORY[0x1E695DF90] dictionary];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v44;
    v11 = [(NSSet *)obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v11)
    {
      v45 = 0;
      v12 = *v50;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v50 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v49 + 1) + 8 * i);
          v15 = [(NSSet *)v5->_knownNetworks member:v14, v41, v42, context];
          if (v15)
          {
            v16 = [v14 SSID];

            if (v16)
            {
              v17 = [v14 SSID];
              [v48 setObject:v15 forKeyedSubscript:v17];
            }

            if ([v14 isPasspoint])
            {
              v18 = [v14 domainName];
              [v46 setObject:v15 forKeyedSubscript:v18];
            }

            [v10 addObject:v15];
          }

          else
          {
            v19 = [v14 copy];
            knownNetworkAllowCache = v5->_knownNetworkAllowCache;
            v21 = [v14 identifier];
            [(NSMutableDictionary *)knownNetworkAllowCache setObject:0 forKeyedSubscript:v21];

            knownNetworkAllowErrorCache = v5->_knownNetworkAllowErrorCache;
            v23 = [v14 identifier];
            [(NSMutableDictionary *)knownNetworkAllowErrorCache setObject:0 forKeyedSubscript:v23];

            knownNetworkDeferCache = v5->_knownNetworkDeferCache;
            v25 = [v14 identifier];
            [(NSMutableDictionary *)knownNetworkDeferCache setObject:0 forKeyedSubscript:v25];

            v26 = [v14 SSID];

            if (v26)
            {
              knownNetworkSSIDMap = v5->_knownNetworkSSIDMap;
              v28 = [v14 SSID];
              v29 = [(NSMutableDictionary *)knownNetworkSSIDMap objectForKeyedSubscript:v28];

              if (!v29 || (v30 = [v29 effectiveSupportedSecurityTypes], v30 != objc_msgSend(v14, "effectiveSupportedSecurityTypes")))
              {
                v45 = 1;
              }

              v31 = [v14 SSID];
              [v48 setObject:v19 forKeyedSubscript:v31];
            }

            if ([v14 isPasspoint])
            {
              knownNetworkPasspointDomainMap = v5->_knownNetworkPasspointDomainMap;
              v33 = [v14 domainName];
              v34 = [(NSMutableDictionary *)knownNetworkPasspointDomainMap objectForKeyedSubscript:v33];

              if (!v34 || (v35 = [v34 effectiveSupportedSecurityTypes], v35 != objc_msgSend(v14, "effectiveSupportedSecurityTypes")))
              {
                v45 = 1;
              }

              v36 = [v14 domainName];
              [v46 setObject:v19 forKeyedSubscript:v36];
            }

            [v10 addObject:v19];
          }
        }

        v11 = [(NSSet *)obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v11);
    }

    else
    {
      v45 = 0;
    }

    v37 = [v10 copy];
    v38 = v5->_knownNetworks;
    v5->_knownNetworks = v37;

    [(NSMutableDictionary *)v5->_knownNetworkSSIDMap setDictionary:v48];
    [(NSMutableDictionary *)v5->_knownNetworkPasspointDomainMap setDictionary:v46];
    v39 = [(NSSet *)v5->_knownNetworks allObjects];
    [(CWFAutoJoinStatistics *)v5->_statistics setKnownNetworks:v39];

    if (v45)
    {
      v5->_didConfigurationChangeSincePreviousAttempt = 1;
      v5->_resetCachedKnownNetworksContext = 1;
      [(CWFAutoJoinManager *)v5 __resetRetryIntervalIndex];
    }
  }

  objc_sync_exit(v5);

  objc_autoreleasePoolPop(context);
  v40 = *MEMORY[0x1E69E9840];
}

- (NSSet)supportedChannels
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSSet *)v2->_supportedChannels copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setSupportedChannels:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  supportedChannels = v5->_supportedChannels;
  if (supportedChannels != v4 && (!v4 || !supportedChannels || ([(NSSet *)v4 isEqual:?]& 1) == 0))
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      LODWORD(v14) = 2;
      v13 = &v15;
      _os_log_send_and_compose_impl();
    }

    if (v5->_supportedChannels)
    {
      v10 = [(NSSet *)v4 isSubsetOfSet:?];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(NSSet *)v4 copy:v13];
    v12 = v5->_supportedChannels;
    v5->_supportedChannels = v11;

    if (!v10)
    {
      v5->_didConfigurationChangeSincePreviousAttempt = 1;
      v5->_resetCachedKnownNetworksContext = 1;
      [(CWFAutoJoinManager *)v5 __resetRetryIntervalIndex];
    }
  }

  objc_sync_exit(v5);
}

- (CLLocation)location
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CLLocation *)v2->_location copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setLocation:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  location = v5->_location;
  if (location != v4 && (!v4 || !location || ([(CLLocation *)v4 isEqual:?]& 1) == 0))
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22[0]) = 0;
      LODWORD(v20) = 2;
      v19 = v22;
      _os_log_send_and_compose_impl();
    }

    if (!v4 || (v10 = v5->_location) == 0 || ([(CLLocation *)v10 distanceFromLocation:v4], v11 > 20.0))
    {
      v5->_resetCachedKnownNetworksContext = 1;
    }

    v12 = [(CLLocation *)v4 copy:v19];
    v13 = v5->_location;
    v5->_location = v12;

    loiTypes = v5->_loiTypes;
    v5->_loiTypes = 0;

    if (_os_feature_enabled_impl())
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v15 = qword_1ED7E39E0;
      v26 = qword_1ED7E39E0;
      if (!qword_1ED7E39E0)
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_1E0C926FC;
        v22[3] = &unk_1E86E5600;
        v22[4] = &v23;
        sub_1E0C926FC(v22);
        v15 = v24[3];
      }

      v16 = v15;
      _Block_object_dispose(&v23, 8);
      v17 = [v15 defaultManager];
      v18 = v5->_location;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1E0C6CE64;
      v21[3] = &unk_1E86E7698;
      v21[4] = v5;
      [v17 fetchLocationsOfInterestWithinDistance:v18 ofLocation:v21 withHandler:100.1];
    }
  }

  objc_sync_exit(v5);
}

- (int64_t)retrySchedule
{
  v2 = self;
  objc_sync_enter(v2);
  retrySchedule = v2->_retrySchedule;
  objc_sync_exit(v2);

  return retrySchedule;
}

- (void)setRetrySchedule:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_retrySchedule != a3)
  {
    v5 = CWFGetOSLog();
    if (v5)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1E0BEE2F0(v4->_retrySchedule);
      v9 = sub_1E0BEE2F0(a3);
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      LODWORD(v12) = 22;
      v11 = &v13;
      _os_log_send_and_compose_impl();
    }

    v4->_retrySchedule = a3;
    [(CWFAutoJoinManager *)v4 __setupThrottleIntervals];
    if (!v4->_invalidated && (v4->_isRetryScheduled || [(CWFAutoJoinManager *)v4 __shouldAlwaysUpdateRetrySchedule:a3]))
    {
      [(CWFAutoJoinManager *)v4 __updateRetrySchedule:v11];
    }
  }

  objc_sync_exit(v4);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setMaxCompatibilityEnabled:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_maxCompatibilityEnabled = a3;
  objc_sync_exit(obj);
}

- (BOOL)maxCompatibilityEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  maxCompatibilityEnabled = v2->_maxCompatibilityEnabled;
  objc_sync_exit(v2);

  return maxCompatibilityEnabled;
}

- (id)performAutoJoinWithParameters:(id)a3 reply:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CWFAutoJoinRequest);
  v9 = [MEMORY[0x1E696AFB0] UUID];
  [(CWFAutoJoinRequest *)v8 setUUID:v9];

  [(CWFAutoJoinRequest *)v8 setParameters:v6];
  [(CWFAutoJoinRequest *)v8 setReply:v7];
  v10 = self;
  objc_sync_enter(v10);
  if (v10->_invalidated)
  {
    v11 = CWFGetOSLog();
    if (v11)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [(CWFAutoJoinRequest *)v8 UUID];
      v15 = [v14 UUIDString];
      v16 = [v15 substringToIndex:5];
      [(CWFAutoJoinRequest *)v8 parameters];
      v29 = 138543618;
      v30 = v16;
      v32 = v31 = 2114;
      _os_log_send_and_compose_impl();
    }

    v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v29 = 134219010;
      v30 = v17 / 0x3B9ACA00;
      v31 = 2048;
      v32 = v17 % 0x3B9ACA00 / 0x3E8;
      v33 = 2082;
      v34 = "[CWFAutoJoinManager performAutoJoinWithParameters:reply:]";
      v35 = 2082;
      v36 = "CWFAutoJoinManager.m";
      v37 = 1024;
      v38 = 1080;
      _os_log_send_and_compose_impl();
    }

    targetQueue = v10->_targetQueue;
    v22 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C6D58C;
    block[3] = &unk_1E86E6AF0;
    v28 = v7;
    v23 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v22, 0, block);
    dispatch_async(targetQueue, v23);
  }

  else
  {
    [(CWFAutoJoinManager *)v10 __addRequest:v8];
  }

  objc_sync_exit(v10);

  v24 = [(CWFAutoJoinRequest *)v8 UUID];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)cancelAutoJoinWithUUID:(id)a3 error:(id)a4 reply:(id)a5
{
  v121 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v90 = a4;
  v88 = a5;
  v9 = self;
  objc_sync_enter(v9);
  v91 = v9;
  if (v9->_invalidated)
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = [v8 UUIDString];
      [v19 substringToIndex:5];
      v112 = v111 = 138543362;
      _os_log_send_and_compose_impl();
    }

    v20 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v21 = CWFGetOSLog();
    if (v21)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v111 = 134219010;
      v112 = v20 / 0x3B9ACA00;
      v113 = 2048;
      v114 = v20 % 0x3B9ACA00 / 0x3E8;
      v115 = 2082;
      v116 = "[CWFAutoJoinManager cancelAutoJoinWithUUID:error:reply:]";
      v117 = 2082;
      v118 = "CWFAutoJoinManager.m";
      v119 = 1024;
      v120 = 1104;
      _os_log_send_and_compose_impl();
    }

    targetQueue = v9->_targetQueue;
    v25 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C6E6E0;
    block[3] = &unk_1E86E6AF0;
    v109 = v88;
    v26 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v25, 0, block);
    dispatch_async(targetQueue, v26);
  }

  else if (v8)
  {
    v12 = [(CWFAutoJoinRequest *)v9->_activeRequest UUID];
    v13 = [v8 isEqual:v12];

    if (v13)
    {
      v14 = CWFGetOSLog();
      if (v14)
      {
        v15 = CWFGetOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v54 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        activeRequest = v9->_activeRequest;
        v111 = 138543362;
        v112 = activeRequest;
        _os_log_send_and_compose_impl();
      }

      v9->_cancelled = 1;
      v56 = [v90 copy];
      underlyingCancelError = v9->_underlyingCancelError;
      v9->_underlyingCancelError = v56;

      internalQueue = v9->_internalQueue;
      v59 = qos_class_self();
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = sub_1E0C6E8C4;
      v106[3] = &unk_1E86E64C0;
      v106[4] = v9;
      v107 = v88;
      v60 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v59, 0, v106);
      dispatch_async(internalQueue, v60);
    }

    else
    {
      for (i = 0; i < [(NSMutableArray *)v9->_pendingRequests count]; ++i)
      {
        v28 = [(NSMutableArray *)v9->_pendingRequests objectAtIndexedSubscript:i];
        v29 = [v28 UUID];
        v30 = [v8 isEqual:v29];

        if (v30)
        {
          v31 = CWFGetOSLog();
          if (v31)
          {
            v32 = CWFGetOSLog();
          }

          else
          {
            v32 = MEMORY[0x1E69E9C10];
            v61 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v111 = 138543362;
            v112 = v28;
            _os_log_send_and_compose_impl();
          }

          v62 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v63 = CWFGetOSLog();
          if (v63)
          {
            v64 = CWFGetOSLog();
          }

          else
          {
            v64 = MEMORY[0x1E69E9C10];
            v65 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            v111 = 134219010;
            v112 = v62 / 0x3B9ACA00;
            v113 = 2048;
            v114 = v62 % 0x3B9ACA00 / 0x3E8;
            v115 = 2082;
            v116 = "[CWFAutoJoinManager cancelAutoJoinWithUUID:error:reply:]";
            v117 = 2082;
            v118 = "CWFAutoJoinManager.m";
            v119 = 1024;
            v120 = 1140;
            _os_log_send_and_compose_impl();
          }

          v66 = v9->_targetQueue;
          v67 = qos_class_self();
          v102[0] = MEMORY[0x1E69E9820];
          v102[1] = 3221225472;
          v102[2] = sub_1E0C6EC7C;
          v102[3] = &unk_1E86E6CA8;
          v68 = v28;
          v103 = v68;
          v104 = v90;
          v105 = v88;
          v69 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v67, 0, v102);
          dispatch_async(v66, v69);

          [(NSMutableArray *)v9->_pendingRequests removeObjectAtIndex:i];
          goto LABEL_66;
        }
      }

      v77 = CWFGetOSLog();
      if (v77)
      {
        v78 = CWFGetOSLog();
      }

      else
      {
        v78 = MEMORY[0x1E69E9C10];
        v79 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v80 = [v8 UUIDString];
        [v80 substringToIndex:5];
        v112 = v111 = 138543362;
        _os_log_send_and_compose_impl();
      }

      v81 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v82 = CWFGetOSLog();
      if (v82)
      {
        v83 = CWFGetOSLog();
      }

      else
      {
        v83 = MEMORY[0x1E69E9C10];
        v84 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        v111 = 134219010;
        v112 = v81 / 0x3B9ACA00;
        v113 = 2048;
        v114 = v81 % 0x3B9ACA00 / 0x3E8;
        v115 = 2082;
        v116 = "[CWFAutoJoinManager cancelAutoJoinWithUUID:error:reply:]";
        v117 = 2082;
        v118 = "CWFAutoJoinManager.m";
        v119 = 1024;
        v120 = 1156;
        _os_log_send_and_compose_impl();
      }

      v85 = v9->_targetQueue;
      v86 = qos_class_self();
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = sub_1E0C6EEE0;
      v100[3] = &unk_1E86E6AF0;
      v101 = v88;
      v87 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v86, 0, v100);
      dispatch_async(v85, v87);
    }
  }

  else
  {
    v16 = CWFGetOSLog();
    if (v16)
    {
      v17 = CWFGetOSLog();
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v111) = 0;
      _os_log_send_and_compose_impl();
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v9->_pendingRequests;
    v34 = [(NSMutableArray *)obj countByEnumeratingWithState:&v96 objects:v110 count:16];
    if (v34)
    {
      v35 = MEMORY[0x1E69E9C10];
      v36 = *v97;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v97 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v96 + 1) + 8 * j);
          v39 = CWFGetOSLog();
          if (v39)
          {
            v40 = CWFGetOSLog();
          }

          else
          {
            v41 = v35;
            v40 = v35;
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v111 = 138543362;
            v112 = v38;
            _os_log_send_and_compose_impl();
          }

          v42 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v43 = CWFGetOSLog();
          if (v43)
          {
            v44 = CWFGetOSLog();
          }

          else
          {
            v45 = v35;
            v44 = v35;
          }

          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            v111 = 134219010;
            v112 = v42 / 0x3B9ACA00;
            v113 = 2048;
            v114 = v42 % 0x3B9ACA00 / 0x3E8;
            v115 = 2082;
            v116 = "[CWFAutoJoinManager cancelAutoJoinWithUUID:error:reply:]";
            v117 = 2082;
            v118 = "CWFAutoJoinManager.m";
            v119 = 1024;
            v120 = 1171;
            _os_log_send_and_compose_impl();
          }

          v46 = v91->_targetQueue;
          v47 = qos_class_self();
          v94[0] = MEMORY[0x1E69E9820];
          v94[1] = 3221225472;
          v94[2] = sub_1E0C6F0C4;
          v94[3] = &unk_1E86E6420;
          v94[4] = v38;
          v95 = v90;
          v48 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v47, 0, v94);
          dispatch_async(v46, v48);
        }

        v34 = [(NSMutableArray *)obj countByEnumeratingWithState:&v96 objects:v110 count:16];
      }

      while (v34);
    }

    v49 = v91;
    [(NSMutableArray *)v91->_pendingRequests removeAllObjects];
    if (v91->_activeRequest)
    {
      v91->_cancelled = 1;
      v50 = [v90 copy];
      v51 = v91->_underlyingCancelError;
      v91->_underlyingCancelError = v50;

      v52 = CWFGetOSLog();
      if (v52)
      {
        v53 = CWFGetOSLog();
      }

      else
      {
        v53 = MEMORY[0x1E69E9C10];
        v70 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v71 = v91->_activeRequest;
        v72 = [(NSError *)v91->_underlyingCancelError code];
        v111 = 138543618;
        v112 = v71;
        v113 = 2048;
        v114 = v72;
        _os_log_send_and_compose_impl();
      }

      v49 = v91;
    }

    v73 = v49->_internalQueue;
    v74 = qos_class_self();
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = sub_1E0C6F310;
    v92[3] = &unk_1E86E64C0;
    v92[4] = v49;
    v93 = v88;
    v75 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v74, 0, v92);
    dispatch_async(v73, v75);
  }

LABEL_66:
  objc_sync_exit(v91);

  v76 = *MEMORY[0x1E69E9840];
}

- (CWFAutoJoinMetric)metric
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CWFAutoJoinMetric *)v2->_cachedMetric copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)resetStatistics
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    statistics = v2->_statistics;
    _os_log_send_and_compose_impl();
  }

  v6 = objc_alloc_init(CWFAutoJoinStatistics);
  v7 = v2->_statistics;
  v2->_statistics = v6;

  v8 = [MEMORY[0x1E695DF00] date];
  [(CWFAutoJoinStatistics *)v2->_statistics setStartedAt:v8];

  statisticsSubmissionTimer = v2->_statisticsSubmissionTimer;
  if (statisticsSubmissionTimer)
  {
    v10 = dispatch_walltime(0, 86400000000000);
    dispatch_source_set_timer(statisticsSubmissionTimer, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  objc_sync_exit(v2);

  v11 = *MEMORY[0x1E69E9840];
}

- (NSSet)recentlyMatchedCandidates
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_recentlyMatchedCandidates copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)__updateRecentlyMatchedCandidates
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableSet *)self->_matchedCandidates mutableCopy];
  v4 = [(NSMutableSet *)self->_disallowedMatchedCandidates mutableCopy];
  v5 = self;
  objc_sync_enter(v5);
  [(NSMutableSet *)v5->_recentlyMatchedCandidates minusSet:v3];
  [(NSMutableSet *)v5->_recentlyMatchedCandidates minusSet:v4];
  [(NSMutableSet *)v5->_recentlyMatchedCandidates unionSet:v3];
  [(NSMutableSet *)v5->_recentlyMatchedCandidates unionSet:v4];
  v6 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v5->_recentlyMatchedCandidates;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 age] >= 0x493E1)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(NSMutableSet *)v5->_recentlyMatchedCandidates minusSet:v6];
  objc_sync_exit(v5);

  v12 = *MEMORY[0x1E69E9840];
}

- (id)__hiddenSSIDListForLocation:(id)a3 knownNetworks:(id)a4 recentOnly:(BOOL)a5 nearbyOnly:(BOOL)a6
{
  v59 = a5;
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v55 = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x1E695DFA0] orderedSet];
  if (v9)
  {
    v11 = [v9 allObjects];
    [v10 addObjectsFromArray:v11];

    [(CWFAutoJoinManager *)self __sortKnownNetworks:v10];
  }

  v56 = v9;
  v58 = [MEMORY[0x1E695DFA0] orderedSet];
  v57 = [MEMORY[0x1E695DFA0] orderedSet];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v13 = v12;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v10;
  v62 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v62)
  {
    v61 = *v70;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v70 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v69 + 1) + 8 * i);
        v16 = [v15 BSSList];
        v63 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastAssociatedAt" ascending:0];
        v74 = v63;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
        v64 = v16;
        v18 = [v16 sortedArrayUsingDescriptors:v17];

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v65 objects:v73 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = 0;
          v23 = *v66;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v66 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v25 = [*(*(&v65 + 1) + 8 * j) location];
              v26 = v25;
              if (v8)
              {
                if (v25)
                {
                  [v8 horizontalAccuracy];
                  if (v27 >= 0.0)
                  {
                    [v8 horizontalAccuracy];
                    if (v28 <= 100.0)
                    {
                      [v26 horizontalAccuracy];
                      if (v29 >= 0.0)
                      {
                        [v26 horizontalAccuracy];
                        if (v30 <= 100.0)
                        {
                          [v26 distanceFromLocation:v8];
                          if (v31 <= 300.0)
                          {
                            v22 = 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v65 objects:v73 count:16];
          }

          while (v21);
        }

        else
        {
          v22 = 0;
        }

        v32 = [v15 networkName];
        if (v32 && ([v15 isPasspoint] & 1) == 0)
        {
          if ([v15 hiddenState] == 2)
          {
            v33 = [v15 wasHiddenBefore];
            if (!v33)
            {
              goto LABEL_42;
            }

            v34 = v33;
            v35 = [v15 wasHiddenBefore];
            [v35 timeIntervalSinceNow];
            v37 = v36;
            v38 = [v15 wasHiddenBefore];
            [v38 timeIntervalSinceNow];
            v40 = v39;

            if (v37 >= 0.0)
            {
              if (v40 >= 604800.0)
              {
                goto LABEL_42;
              }
            }

            else if (v40 <= -604800.0)
            {
              goto LABEL_42;
            }
          }

          if (v59)
          {
            v41 = [v15 lastJoinedAt];
            [v41 timeIntervalSinceReferenceDate];
            if (v13 - v42 <= 2592000.0)
            {
            }

            else
            {
              v43 = [v15 lastDiscoveredAt];
              [v43 timeIntervalSinceReferenceDate];
              v45 = v13 - v44;

              if (v45 > 2592000.0)
              {
                goto LABEL_42;
              }
            }
          }

          if (v22)
          {
            v46 = v57;
          }

          else
          {
            v46 = v58;
          }

          [v46 addObject:v32];
        }

LABEL_42:
      }

      v62 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v62);
  }

  if ([v57 count] || objc_msgSend(v58, "count"))
  {
    v47 = [MEMORY[0x1E695DFA0] orderedSet];
    v48 = [v57 array];
    [v47 addObjectsFromArray:v48];

    v50 = v55;
    v49 = v56;
    if (!a6)
    {
      v51 = [v58 array];
      [v47 addObjectsFromArray:v51];
    }
  }

  else
  {
    v47 = 0;
    v50 = v55;
    v49 = v56;
  }

  objc_autoreleasePoolPop(v50);
  v52 = *MEMORY[0x1E69E9840];

  return v47;
}

- (NSOrderedSet)recentLocationBasedHiddenSSIDList
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CWFAutoJoinManager *)v2 location];
  v4 = [(CWFAutoJoinManager *)v2 knownNetworks];
  v5 = [(CWFAutoJoinManager *)v2 __hiddenSSIDListForLocation:v3 knownNetworks:v4 recentOnly:1 nearbyOnly:1];

  objc_sync_exit(v2);

  return v5;
}

- (NSOrderedSet)locationBasedHiddenSSIDList
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CWFAutoJoinManager *)v2 location];
  v4 = [(CWFAutoJoinManager *)v2 knownNetworks];
  v5 = [(CWFAutoJoinManager *)v2 __hiddenSSIDListForLocation:v3 knownNetworks:v4 recentOnly:0 nearbyOnly:1];

  objc_sync_exit(v2);

  return v5;
}

- (NSOrderedSet)hiddenSSIDList
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CWFAutoJoinManager *)v2 location];
  v4 = [(CWFAutoJoinManager *)v2 knownNetworks];
  v5 = [(CWFAutoJoinManager *)v2 __hiddenSSIDListForLocation:v3 knownNetworks:v4 recentOnly:0 nearbyOnly:0];

  objc_sync_exit(v2);

  return v5;
}

- (void)__updateStatisticsWithScanChannels:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 is2GHz])
        {
          [(CWFAutoJoinStatistics *)self->_statistics setScanChannelCount2GHz:[(CWFAutoJoinStatistics *)self->_statistics scanChannelCount2GHz]+ 1];
        }

        else if ([v9 is5GHz])
        {
          [(CWFAutoJoinStatistics *)self->_statistics setScanChannelCount5GHz:[(CWFAutoJoinStatistics *)self->_statistics scanChannelCount5GHz]+ 1];
        }

        else if ([v9 is6GHz])
        {
          [(CWFAutoJoinStatistics *)self->_statistics setScanChannelCount6GHz:[(CWFAutoJoinStatistics *)self->_statistics scanChannelCount6GHz]+ 1];
        }

        [(CWFAutoJoinStatistics *)self->_statistics setScanChannelCount:[(CWFAutoJoinStatistics *)self->_statistics scanChannelCount]+ 1];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)__updateStatisticsWithPreAssocScanChannels:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 is2GHz])
        {
          [(CWFAutoJoinStatistics *)self->_statistics setPreAssocScanChannelCount2GHz:[(CWFAutoJoinStatistics *)self->_statistics preAssocScanChannelCount2GHz]+ 1];
        }

        else if ([v9 is5GHz])
        {
          [(CWFAutoJoinStatistics *)self->_statistics setPreAssocScanChannelCount5GHz:[(CWFAutoJoinStatistics *)self->_statistics preAssocScanChannelCount5GHz]+ 1];
        }

        else if ([v9 is6GHz])
        {
          [(CWFAutoJoinStatistics *)self->_statistics setPreAssocScanChannelCount6GHz:[(CWFAutoJoinStatistics *)self->_statistics preAssocScanChannelCount6GHz]+ 1];
        }

        [(CWFAutoJoinStatistics *)self->_statistics setPreAssocScanChannelCount:[(CWFAutoJoinStatistics *)self->_statistics preAssocScanChannelCount]+ 1];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)__scheduleDelayedAutoJoinMetricSubmission
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C705A8;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)__unscheduleDelayedAutoJoinMetricSubmission
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C7068C;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)__updateAutoJoinMetricAndStatistics:(id)a3
{
  v33 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v33 copy];
  cachedMetric = v4->_cachedMetric;
  v4->_cachedMetric = v5;

  if ([v33 result])
  {
    v7 = [v33 autoJoinedNetwork];
    if (v7)
    {

LABEL_6:
      [(CWFAutoJoinManager *)v4 __submitAutoJoinMetric:v4->_delayedSubmissionMetric];
      v9 = [v33 copy];
      delayedSubmissionMetric = v4->_delayedSubmissionMetric;
      v4->_delayedSubmissionMetric = v9;

      [(CWFAutoJoinManager *)v4 __scheduleDelayedAutoJoinMetricSubmission];
      [(CWFAutoJoinManager *)v4 __updateAutoJoinMetricWithJoinStatus];
      goto LABEL_8;
    }
  }

  if ([v33 autoHotspotResult])
  {
    v8 = [v33 hotspot];

    if (v8)
    {
      goto LABEL_6;
    }
  }

  [(CWFAutoJoinManager *)v4 __submitAutoJoinMetric:v33];
LABEL_8:
  v11 = [v33 wasAlreadyAssociatedToNetwork];

  if (v11)
  {
    [(CWFAutoJoinStatistics *)v4->_statistics setAutoJoinAlreadyAssociatedCount:[(CWFAutoJoinStatistics *)v4->_statistics autoJoinAlreadyAssociatedCount]+ 1];
  }

  v12 = [(CWFAutoJoinStatistics *)v4->_statistics autoJoinTriggerCounts];
  v13 = MEMORY[0x1E696AD98];
  v14 = [v33 autoJoinParameters];
  v15 = [v13 numberWithInteger:{objc_msgSend(v14, "trigger")}];
  v16 = [v12 objectForKeyedSubscript:v15];
  v17 = [v16 unsignedIntegerValue];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17 + 1];
  v19 = [(CWFAutoJoinStatistics *)v4->_statistics autoJoinTriggerCounts];
  v20 = MEMORY[0x1E696AD98];
  v21 = [v33 autoJoinParameters];
  v22 = [v20 numberWithInteger:{objc_msgSend(v21, "trigger")}];
  [v19 setObject:v18 forKeyedSubscript:v22];

  v23 = [v33 error];

  if (v23)
  {
    [(CWFAutoJoinStatistics *)v4->_statistics setAutoJoinAbortedCount:[(CWFAutoJoinStatistics *)v4->_statistics autoJoinAbortedCount]+ 1];
  }

  v24 = [v33 scanChannels];
  [(CWFAutoJoinManager *)v4 __updateStatisticsWithScanChannels:v24];

  v25 = [v33 preAssociationScanChannels];
  [(CWFAutoJoinManager *)v4 __updateStatisticsWithPreAssocScanChannels:v25];

  statistics = v4->_statistics;
  v27 = [v33 followup6GHzScanChannels];
  -[CWFAutoJoinStatistics setFollowup6GHzScanChannelCount:](statistics, "setFollowup6GHzScanChannelCount:", -[CWFAutoJoinStatistics followup6GHzScanChannelCount](statistics, "followup6GHzScanChannelCount") + [v27 count]);

  v28 = v4->_statistics;
  v29 = [v33 GASQueryNetworks];
  -[CWFAutoJoinStatistics setGASQueryCount:](v28, "setGASQueryCount:", -[CWFAutoJoinStatistics GASQueryCount](v28, "GASQueryCount") + [v29 count]);

  v30 = [v33 autoJoinedNetwork];

  if (v30)
  {
    [(CWFAutoJoinStatistics *)v4->_statistics setAutoJoinDidFindCandidateCount:[(CWFAutoJoinStatistics *)v4->_statistics autoJoinDidFindCandidateCount]+ 1];
    if ([v33 result])
    {
      [(CWFAutoJoinStatistics *)v4->_statistics setAutoJoinDidJoinCount:[(CWFAutoJoinStatistics *)v4->_statistics autoJoinDidJoinCount]+ 1];
    }
  }

  if ([v33 autoHotspotWasAttempted] && objc_msgSend(v33, "autoHotspotMode") == 3)
  {
    [(CWFAutoJoinStatistics *)v4->_statistics setAutoHotspotCount:[(CWFAutoJoinStatistics *)v4->_statistics autoHotspotCount]+ 1];
    v31 = [v33 hotspot];

    if (v31)
    {
      [(CWFAutoJoinStatistics *)v4->_statistics setAutoHotspotDidFindCandidateCount:[(CWFAutoJoinStatistics *)v4->_statistics autoHotspotDidFindCandidateCount]+ 1];
      if ([v33 autoHotspotResult])
      {
        [(CWFAutoJoinStatistics *)v4->_statistics setAutoHotspotDidJoinCount:[(CWFAutoJoinStatistics *)v4->_statistics autoHotspotDidJoinCount]+ 1];
      }
    }

    v32 = [v33 autoHotspotError];

    if (v32)
    {
      [(CWFAutoJoinStatistics *)v4->_statistics setAutoHotspotAbortedCount:[(CWFAutoJoinStatistics *)v4->_statistics autoHotspotAbortedCount]+ 1];
    }
  }

  objc_sync_exit(v4);
}

- (BOOL)__shouldIgnoreRequestWithTrigger:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 != 32)
  {
    if (a3 != 58 && a3 != 34)
    {
      goto LABEL_5;
    }

    v5 = [(CWFAutoJoinManager *)self associatedNetwork];

    if (v5)
    {
      goto LABEL_5;
    }

    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_22:

      LOBYTE(activeRequest) = 1;
      goto LABEL_23;
    }

    v11 = sub_1E0BCC05C(a3);
LABEL_21:
    _os_log_send_and_compose_impl();

    goto LABEL_22;
  }

  activeRequest = self->_activeRequest;
  if (!activeRequest)
  {
    goto LABEL_23;
  }

  if (!self->_cancelled)
  {
    v7 = [(CWFAutoJoinRequest *)activeRequest parameters];
    if ([v7 trigger] == 32)
    {

LABEL_16:
      v14 = CWFGetOSLog();
      if (v14)
      {
        v9 = CWFGetOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v11 = sub_1E0BCC05C(0x20uLL);
      goto LABEL_21;
    }

    v12 = [(CWFAutoJoinRequest *)self->_activeRequest parameters];
    v13 = [v12 trigger];

    if (v13 == 47)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  LOBYTE(activeRequest) = 0;
LABEL_23:
  v16 = *MEMORY[0x1E69E9840];
  return activeRequest;
}

- (BOOL)__shouldResetRetryIntervalIndexForTrigger:(int64_t)a3 previousTimestamp:(unint64_t)a4
{
  result = 0;
  if (a3 <= 0x3B)
  {
    if (((1 << a3) & 0x90000032010018CLL) != 0)
    {
      return 1;
    }

    else if (a3 == 19)
    {
      return clock_gettime_nsec_np(_CLOCK_MONOTONIC) - a4 > 0x45D964B800;
    }
  }

  return result;
}

- (BOOL)__shouldInvokeImmediatelyForTrigger:(int64_t)a3
{
  result = 0;
  if ((a3 - 9) <= 0x3B)
  {
    if (((1 << (a3 - 9)) & 0xE88004001800911) != 0)
    {
      return 1;
    }

    else if (a3 == 61)
    {
      v5 = self;
      objc_sync_enter(v5);
      retryScheduleIndex = v5->_retryScheduleIndex;
      objc_sync_exit(v5);

      return retryScheduleIndex != 0;
    }
  }

  return result;
}

- (void)__removeRedundantRequests:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41 = [MEMORY[0x1E695DF70] array];
  v48 = v4;
  if ([(NSMutableArray *)self->_pendingRequests count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->_pendingRequests objectAtIndexedSubscript:v5];
      v7 = [v6 parameters];
      v8 = [v7 mode];
      v9 = [v4 parameters];
      if (v8 == [v9 mode])
      {
        break;
      }

LABEL_24:
      if (++v5 >= [(NSMutableArray *)self->_pendingRequests count])
      {
        goto LABEL_27;
      }
    }

    v10 = [v6 parameters];
    obj = [v10 targetNetworkProfile];
    v11 = [obj identifier];
    v50 = [v4 parameters];
    v12 = [v50 targetNetworkProfile];
    v13 = [v12 identifier];
    if (v11 == v13)
    {
      v49 = v10;
    }

    else
    {
      v47 = [v6 parameters];
      v46 = [v47 targetNetworkProfile];
      v45 = [v46 identifier];
      if (!v45)
      {
        v45 = 0;
        v15 = 0;
LABEL_20:

LABEL_21:
        if (v15)
        {
          [v41 addObject:v6];
        }

        v4 = v48;
        goto LABEL_24;
      }

      v49 = v10;
      v44 = [v48 parameters];
      v43 = [v44 targetNetworkProfile];
      v42 = [v43 identifier];
      if (!v42)
      {
        v42 = 0;
        v15 = 0;
        goto LABEL_19;
      }

      v40 = [v6 parameters];
      v39 = [v40 targetNetworkProfile];
      v14 = [v39 identifier];
      v37 = [v48 parameters];
      v36 = [v37 targetNetworkProfile];
      [v36 identifier];
      v35 = v38 = v14;
      if (![v14 isEqual:?])
      {
        v15 = 0;
LABEL_16:

LABEL_19:
        goto LABEL_20;
      }
    }

    v16 = [v6 parameters];
    v17 = [v16 trigger];
    if (v17 - 44 < 8 || v17 <= 0x3F && ((1 << v17) & 0xC000000000000010) != 0)
    {

      v15 = 0;
    }

    else
    {
      v15 = [v6 allowAutoHotspotFallback] ^ 1;
    }

    v10 = v49;
    if (v11 == v13)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

LABEL_27:
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obja = v41;
  v18 = [obja countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = MEMORY[0x1E69E9C10];
    v21 = *v55;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v55 != v21)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v54 + 1) + 8 * i);
        v24 = CWFGetOSLog();
        if (v24)
        {
          v25 = CWFGetOSLog();
        }

        else
        {
          v26 = v20;
          v25 = v20;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v58 = 138543362;
          v59 = v23;
          _os_log_send_and_compose_impl();
        }

        v27 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v28 = CWFGetOSLog();
        if (v28)
        {
          v29 = CWFGetOSLog();
        }

        else
        {
          v30 = v20;
          v29 = v20;
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v58 = 134219010;
          v59 = v27 / 0x3B9ACA00;
          v60 = 2048;
          v61 = v27 % 0x3B9ACA00 / 0x3E8;
          v62 = 2082;
          v63 = "[CWFAutoJoinManager __removeRedundantRequests:]";
          v64 = 2082;
          v65 = "CWFAutoJoinManager.m";
          v66 = 1024;
          v67 = 1740;
          _os_log_send_and_compose_impl();
        }

        targetQueue = self->_targetQueue;
        v32 = qos_class_self();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E0C714A0;
        block[3] = &unk_1E86E6010;
        block[4] = v23;
        v33 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v32, 0, block);
        dispatch_async(targetQueue, v33);

        [(NSMutableArray *)self->_pendingRequests removeObject:v23];
      }

      v19 = [obja countByEnumeratingWithState:&v54 objects:v68 count:16];
    }

    while (v19);
  }

  [obja removeAllObjects];
  v34 = *MEMORY[0x1E69E9840];
}

- (void)__invalidateAllowedKnownNetworksCacheForTrigger:(int64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3 <= 0x28 && ((1 << a3) & 0x101A03A0100) != 0)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(NSSet *)self->_knownNetworks allObjects];
    v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v24)
    {
      v23 = *v26;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v26 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v25 + 1) + 8 * i);
          v9 = [v8 identifier];

          if (v9)
          {
            if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x14 && [v8 isEAP] && !objc_msgSend(v8, "isSystemMode"))
            {
              goto LABEL_19;
            }

            v10 = 0;
            if (((1 << a3) & 0x101A00A0100) != 0)
            {
              knownNetworkAllowCache = self->_knownNetworkAllowCache;
              v3 = [v8 identifier];
              v4 = [(NSMutableDictionary *)knownNetworkAllowCache objectForKeyedSubscript:v3];
              if (v4)
              {
                v12 = self->_knownNetworkAllowCache;
                v13 = [v8 identifier];
                v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v13];
                v10 = [v14 BOOLValue] ^ 1;
              }

              else
              {
                v10 = 0;
              }
            }

            if (((1 << a3) & 0x101A00A0100) != 0)
            {
            }

            if (v10)
            {
LABEL_19:
              v15 = self->_knownNetworkAllowCache;
              v16 = [v8 identifier];
              [(NSMutableDictionary *)v15 setObject:0 forKeyedSubscript:v16];

              knownNetworkAllowErrorCache = self->_knownNetworkAllowErrorCache;
              v18 = [v8 identifier];
              [(NSMutableDictionary *)knownNetworkAllowErrorCache setObject:0 forKeyedSubscript:v18];

              knownNetworkDeferCache = self->_knownNetworkDeferCache;
              v20 = [v8 identifier];
              [(NSMutableDictionary *)knownNetworkDeferCache setObject:0 forKeyedSubscript:v20];
            }
          }
        }

        v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v24);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (unsigned)__qosForAutoJoinTrigger:(int64_t)a3
{
  if (a3 > 0x3F)
  {
    return 25;
  }

  if (((1 << a3) & 0xC00FF00000000010) != 0)
  {
    return 21;
  }

  if (((1 << a3) & 0xC0010020010104) != 0)
  {
    return 33;
  }

  else
  {
    return 25;
  }
}

- (BOOL)__defaultUserConfiguredNetworkPreference
{
  if (qword_1ED7E39D8 != -1)
  {
    dispatch_once(&qword_1ED7E39D8, &unk_1F5B89B90);
  }

  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  if (dword_1ED7E39D0 != 7)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (void)__addRequest:(id)a3
{
  v145 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v136 = 138543362;
    *v137 = v4;
    LODWORD(v95) = 12;
    v93 = &v136;
    _os_log_send_and_compose_impl();
  }

  v8 = [v4 parameters];
  v9 = [v8 trigger];

  triggerTimestampMap = self->_triggerTimestampMap;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v12 = [(NSMutableDictionary *)triggerTimestampMap objectForKeyedSubscript:v11];
  v13 = [v12 unsignedLongValue];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC)];
  v15 = self->_triggerTimestampMap;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];

  v99 = v9;
  if ([(CWFAutoJoinManager *)self __shouldResetRetryIntervalIndexForTrigger:v9 previousTimestamp:v13])
  {
    [(CWFAutoJoinManager *)self __resetRetryIntervalIndex];
  }

  v17 = v9;
  if (v9 - 44 >= 8 && (v9 > 0x3F || ((1 << v9) & 0xC000000000000010) == 0))
  {
    [v4 setAllowAutoHotspotFallback:{-[CWFAutoJoinManager __shouldAllowAutoHotspotForTrigger:](self, "__shouldAllowAutoHotspotForTrigger:", v9, v93, v95)}];
  }

  [(CWFAutoJoinManager *)self __invalidateAllowedKnownNetworksCacheForTrigger:v9, v93, v95];
  if ((v9 & 0xFFFFFFFFFFFFFFDFLL) == 8)
  {
    prevAssociatedNetwork = self->_prevAssociatedNetwork;
    self->_prevAssociatedNetwork = 0;

    self->_prevAssocBeforeTimestamp = 0;
  }

  activeRequest = self->_activeRequest;
  v98 = self;
  v117 = v4;
  if (!activeRequest || self->_cancelled)
  {
    v97 = 0;
    goto LABEL_37;
  }

  v20 = [(CWFAutoJoinRequest *)activeRequest parameters];
  if ([v20 trigger] == v9)
  {
    v21 = [(CWFAutoJoinRequest *)self->_activeRequest parameters];
    v22 = [v21 mode];
    v23 = [v4 parameters];
    if (v22 != [v23 mode])
    {
      v97 = 0;
LABEL_35:

      v17 = v99;
      goto LABEL_36;
    }

    v24 = [(CWFAutoJoinRequest *)self->_activeRequest parameters];
    [v24 targetNetworkProfile];
    v25 = v4;
    v27 = v26 = self;
    v28 = [v27 identifier];
    v29 = [v25 parameters];
    v30 = [v29 targetNetworkProfile];
    v31 = [v30 identifier];
    if (v28 != v31)
    {
      v32 = [(CWFAutoJoinRequest *)v26->_activeRequest parameters];
      v124 = [v32 targetNetworkProfile];
      v33 = [v124 identifier];
      if (!v33)
      {
        v97 = 0;
LABEL_33:

LABEL_34:
        self = v98;
        v4 = v117;
        goto LABEL_35;
      }

      v120 = v33;
      v122 = v32;
      v118 = [v117 parameters];
      v116 = [v118 targetNetworkProfile];
      v34 = [v116 identifier];
      if (!v34)
      {
        v97 = 0;
LABEL_32:

        v32 = v122;
        goto LABEL_33;
      }

      v115 = v34;
      v113 = [(CWFAutoJoinRequest *)v98->_activeRequest parameters];
      v111 = [v113 targetNetworkProfile];
      v35 = [v111 identifier];
      v109 = [v117 parameters];
      v108 = [v109 targetNetworkProfile];
      v107 = [v108 identifier];
      if (![v35 isEqual:?])
      {
        v97 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v106 = v35;
    }

    v36 = [(CWFAutoJoinRequest *)v98->_activeRequest allowAutoHotspotFallback];
    v97 = v36 ^ [v117 allowAutoHotspotFallback] ^ 1;
    v35 = v106;
    if (v28 == v31)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v97 = 0;
LABEL_36:

LABEL_37:
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v37 = self->_pendingRequests;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v132 objects:v144 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v133;
    v110 = *v133;
    v112 = v37;
LABEL_39:
    v41 = 0;
    v125 = v39;
    while (1)
    {
      if (*v133 != v40)
      {
        objc_enumerationMutation(v37);
      }

      v42 = *(*(&v132 + 1) + 8 * v41);
      v43 = [v42 parameters];
      if ([v43 trigger] != v17)
      {
        goto LABEL_50;
      }

      v44 = [v42 parameters];
      v45 = [v44 mode];
      v46 = [v4 parameters];
      if (v45 != [v46 mode])
      {

        v39 = v125;
LABEL_50:

        goto LABEL_61;
      }

      v47 = [v42 parameters];
      v123 = [v47 targetNetworkProfile];
      v48 = [v123 identifier];
      v121 = [v4 parameters];
      v119 = [v121 targetNetworkProfile];
      v49 = [v119 identifier];
      if (v48 == v49)
      {
        v50 = v113;
      }

      else
      {
        v50 = [v42 parameters];
        v116 = [v50 targetNetworkProfile];
        v115 = [v116 identifier];
        if (!v115)
        {
          v53 = 0;
          v115 = 0;
          goto LABEL_59;
        }

        v108 = [v117 parameters];
        v107 = [v108 targetNetworkProfile];
        v106 = [v107 identifier];
        if (!v106)
        {
          v106 = 0;
          v53 = 0;
          v17 = v99;
          goto LABEL_58;
        }

        v114 = v47;
        v105 = [v42 parameters];
        v104 = [v105 targetNetworkProfile];
        v51 = [v104 identifier];
        v102 = [v117 parameters];
        v101 = [v102 targetNetworkProfile];
        [v101 identifier];
        v100 = v103 = v51;
        if (![v51 isEqual:?])
        {
          v53 = 0;
          v17 = v99;
          v47 = v114;
LABEL_57:

LABEL_58:
LABEL_59:

          goto LABEL_60;
        }

        v17 = v99;
        v47 = v114;
      }

      v52 = [v42 allowAutoHotspotFallback];
      v53 = v52 ^ [v117 allowAutoHotspotFallback] ^ 1;
      if (v48 != v49)
      {
        goto LABEL_57;
      }

LABEL_60:
      v113 = v50;

      v4 = v117;
      v40 = v110;
      v37 = v112;
      v39 = v125;
      if (v53)
      {

        v54 = v98;
        if (![(CWFAutoJoinManager *)v98 __shouldIgnoreRequestWithTrigger:v17])
        {
          goto LABEL_72;
        }

LABEL_70:
        v57 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v58 = CWFGetOSLog();
        if (v58)
        {
          v59 = CWFGetOSLog();
        }

        else
        {
          v59 = MEMORY[0x1E69E9C10];
          v62 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          v136 = 134219010;
          *v137 = v57 / 0x3B9ACA00;
          *&v137[8] = 2048;
          *v138 = v57 % 0x3B9ACA00 / 0x3E8;
          *&v138[8] = 2082;
          v139 = "[CWFAutoJoinManager __addRequest:]";
          v140 = 2082;
          v141 = "CWFAutoJoinManager.m";
          v142 = 1024;
          v143 = 1904;
          LODWORD(v96) = 48;
          v94 = &v136;
          _os_log_send_and_compose_impl();
        }

        targetQueue = v54->_targetQueue;
        v64 = qos_class_self();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E0C72990;
        block[3] = &unk_1E86E6010;
        v131 = v4;
        v65 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v64, 0, block);
        dispatch_async(targetQueue, v65);

        v66 = v131;
LABEL_87:

        goto LABEL_88;
      }

LABEL_61:
      if (v39 == ++v41)
      {
        v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v132 objects:v144 count:16];
        if (v39)
        {
          goto LABEL_39;
        }

        break;
      }
    }
  }

  v54 = v98;
  if ([(CWFAutoJoinManager *)v98 __shouldIgnoreRequestWithTrigger:v17])
  {
    goto LABEL_70;
  }

  if (v97 && !v98->_didConfigurationChangeSincePreviousAttempt)
  {
LABEL_72:
    v60 = CWFGetOSLog();
    if (v60)
    {
      v61 = CWFGetOSLog();
    }

    else
    {
      v61 = MEMORY[0x1E69E9C10];
      v67 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v136) = 0;
      LODWORD(v96) = 2;
      v94 = &v136;
      _os_log_send_and_compose_impl();
    }

    v68 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v69 = CWFGetOSLog();
    if (v69)
    {
      v70 = CWFGetOSLog();
    }

    else
    {
      v70 = MEMORY[0x1E69E9C10];
      v71 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      v136 = 134219010;
      *v137 = v68 / 0x3B9ACA00;
      *&v137[8] = 2048;
      *v138 = v68 % 0x3B9ACA00 / 0x3E8;
      *&v138[8] = 2082;
      v139 = "[CWFAutoJoinManager __addRequest:]";
      v140 = 2082;
      v141 = "CWFAutoJoinManager.m";
      v142 = 1024;
      v143 = 1914;
      LODWORD(v96) = 48;
      v94 = &v136;
      _os_log_send_and_compose_impl();
    }

    v72 = v54->_targetQueue;
    v73 = qos_class_self();
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = sub_1E0C72B98;
    v128[3] = &unk_1E86E6010;
    v129 = v4;
    v74 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v73, 0, v128);
    dispatch_async(v72, v74);

    v66 = v129;
    goto LABEL_87;
  }

  if ([(CWFAutoJoinManager *)v98 __shouldInvokeImmediatelyForTrigger:v17])
  {
    v55 = CWFGetOSLog();
    if (v55)
    {
      v56 = CWFGetOSLog();
    }

    else
    {
      v56 = MEMORY[0x1E69E9C10];
      v77 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v136) = 0;
      LODWORD(v96) = 2;
      v94 = &v136;
      _os_log_send_and_compose_impl();
    }

    if (v98->_activeRequest && !v98->_requeued)
    {
      v78 = CWFGetOSLog();
      if (v78)
      {
        v79 = CWFGetOSLog();
      }

      else
      {
        v79 = MEMORY[0x1E69E9C10];
        v80 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v136) = 0;
        LODWORD(v96) = 2;
        v94 = &v136;
        _os_log_send_and_compose_impl();
      }

      pendingRequests = v98->_pendingRequests;
      v82 = [(CWFAutoJoinRequest *)v98->_activeRequest copy];
      [(NSMutableArray *)pendingRequests insertObject:v82 atIndex:0];

      v98->_requeued = 1;
    }

    v83 = [MEMORY[0x1E695DF00] date];
    [v4 setAddedAt:v83];

    [(NSMutableArray *)v98->_pendingRequests insertObject:v4 atIndex:0];
  }

  else
  {
    v76 = [MEMORY[0x1E695DF00] date];
    [v4 setAddedAt:v76];

    [(NSMutableArray *)v98->_pendingRequests addObject:v4];
  }

  if (v98->_activeRequest)
  {
    v84 = [(CWFAutoJoinManager *)v98 __qosForAutoJoinTrigger:v17];
    if (v84 > v98->_highestPendingQoS)
    {
      v85 = v84;
      v86 = CWFGetOSLog();
      if (v86)
      {
        v87 = CWFGetOSLog();
      }

      else
      {
        v87 = MEMORY[0x1E69E9C10];
        v88 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        highestPendingQoS = v98->_highestPendingQoS;
        v90 = sub_1E0BCC05C(v99);
        v136 = 67109634;
        *v137 = v85;
        *&v137[4] = 1024;
        *&v137[6] = highestPendingQoS;
        *v138 = 2114;
        *&v138[2] = v90;
        LODWORD(v96) = 24;
        v94 = &v136;
        _os_log_send_and_compose_impl();
      }

      v98->_highestPendingQoS = v85;
      internalQueue = v98->_internalQueue;
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = sub_1E0C72DA0;
      v126[3] = &unk_1E86E6778;
      v126[4] = v98;
      v127 = v85;
      v92 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v85, 0, v126);
      dispatch_async(internalQueue, v92);
    }
  }

LABEL_88:
  if (![(CWFAutoJoinManager *)v54 __nextRequest:v94]&& !v54->_isRetryScheduled)
  {
    [(CWFAutoJoinManager *)v54 __updateRetrySchedule];
  }

  v75 = *MEMORY[0x1E69E9840];
}

- (void)__updateAutoJoinState:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_state != a3)
  {
    self->_state = a3;
    v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134219010;
      v15 = v5 / 0x3B9ACA00;
      v16 = 2048;
      v17 = v5 % 0x3B9ACA00 / 0x3E8;
      v18 = 2082;
      v19 = "[CWFAutoJoinManager __updateAutoJoinState:]";
      v20 = 2082;
      v21 = "CWFAutoJoinManager.m";
      v22 = 1024;
      v23 = 2071;
      _os_log_send_and_compose_impl();
    }

    targetQueue = self->_targetQueue;
    v10 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C73060;
    block[3] = &unk_1E86E76C0;
    block[4] = self;
    block[5] = a3;
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10, 0, block);
    dispatch_async(targetQueue, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)__isEnabledKnownNetworkNearby
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_cumulativeScanResults;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [(CWFAutoJoinManager *)self knownNetworks];
        v11 = [v10 allObjects];
        v12 = sub_1E0BED85C(v8, v11);

        if (v12 && ([v12 isAutoJoinDisabled] & 1) == 0 && (objc_msgSend(v12, "isPersonalHotspot") & 1) == 0)
        {

          objc_autoreleasePoolPop(v9);
          v14 = CWFGetOSLog();
          if (v14)
          {
            v3 = CWFGetOSLog();
          }

          else
          {
            v3 = MEMORY[0x1E69E9C10];
            v15 = MEMORY[0x1E69E9C10];
          }

          v13 = 1;
          if (os_log_type_enabled(&v3->super.super, OS_LOG_TYPE_DEFAULT))
          {
            _os_log_send_and_compose_impl();
          }

          goto LABEL_17;
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_17:

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)__descriptionForError:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = *MEMORY[0x1E696A578];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  v7 = [v3 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  v9 = [v8 userInfo];
  v10 = [v9 objectForKeyedSubscript:v5];

  v11 = v8;
  v12 = v10;
  if (v8 || (v11 = v3, v12 = v6, v3))
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld '%@'", objc_msgSend(v11, "code"), v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)__performAutoJoin
{
  v535[1] = *MEMORY[0x1E69E9840];
  v506 = 0;
  v507 = &v506;
  v508 = 0x2020000000;
  v509 = 1;
  v502 = 0;
  v503 = &v502;
  v504 = 0x2020000000;
  v505 = 1;
  beginTimestamp = self->_beginTimestamp;
  self->_beginTimestamp = 0;
  v496 = 0;
  v497 = &v496;
  v498 = 0x3032000000;
  v499 = sub_1E0BC2D60;
  v500 = sub_1E0BC61EC;
  v501 = 0;
  v490 = 0;
  v491 = &v490;
  v492 = 0x3032000000;
  v493 = sub_1E0BC2D60;
  v494 = sub_1E0BC61EC;
  v495 = 0;
  v430 = [(CWFAutoJoinManager *)self associatedNetwork];
  v3 = self;
  objc_sync_enter(v3);
  obj = v3;
  v4 = [(CWFAutoJoinRequest *)v3->_activeRequest parameters];
  v438 = [v4 copy];

  v5 = [(CWFAutoJoinRequest *)obj->_activeRequest UUID];
  v406 = [v5 copy];

  retrySchedule = obj->_retrySchedule;
  retryScheduleIndex = obj->_retryScheduleIndex;
  v400 = [(CWFAutoJoinRequest *)obj->_activeRequest allowAutoHotspotFallback];
  v8 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC520];
  v395 = [v8 unsignedLongValue];

  triggerTimestampMap = obj->_triggerTimestampMap;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v438, "trigger")}];
  v11 = [(NSMutableDictionary *)triggerTimestampMap objectForKeyedSubscript:v10];
  v409 = [v11 unsignedLongValue];

  linkChangeTimestamp = obj->_linkChangeTimestamp;
  v397 = [(CWFScanResult *)obj->_steerFromNetwork copy];
  didConfigurationChangeSincePreviousAttempt = obj->_didConfigurationChangeSincePreviousAttempt;
  obj->_didConfigurationChangeSincePreviousAttempt = 0;
  LODWORD(v11) = obj->_resetCachedKnownNetworksContext;
  obj->_resetCachedKnownNetworksContext = 0;
  v13 = [(NSMutableSet *)obj->_lowRSSICandidates objectsPassingTest:&unk_1F5B8AC60];
  v14 = [v13 mutableCopy];
  lowRSSICandidates = obj->_lowRSSICandidates;
  obj->_lowRSSICandidates = v14;

  [(NSMutableSet *)obj->_prevLowRSSICandidates removeAllObjects];
  [(NSMutableOrderedSet *)obj->_deferredKnownNetworks removeAllObjects];
  [(NSMutableSet *)obj->_recentlyMatchedCandidates removeAllObjects];
  objc_sync_exit(obj);

  if (v11)
  {
    [(NSMutableDictionary *)obj->_cachedKnownNetworksContexts removeAllObjects];
  }

  v489 = 0;
  v16 = -[CWFAutoJoinManager __allowAutoJoinWithTrigger:error:](obj, "__allowAutoJoinWithTrigger:error:", [v438 trigger], &v489);
  v434 = v489;
  if (!v16)
  {
    v402 = 0;
    v403 = 0;
    v428 = 0;
    v429 = 0;
    v412 = 0;
    v413 = 0;
    v426 = 0;
    v427 = 0;
    v422 = 0;
    v423 = 0;
    v160 = 0;
    v417 = 0;
    v398 = 0;
    v399 = 0;
    v407 = 0;
    v408 = 0;
    v421 = 0;
    v441 = 0;
    v431 = 0;
    v405 = 0;
    goto LABEL_473;
  }

  v17 = objc_alloc_init(CWFAutoJoinMetric);
  metric = obj->_metric;
  obj->_metric = v17;

  [(CWFAutoJoinMetric *)obj->_metric setUUID:v406];
  obj->_state = 0;
  if (!v430 && [(NSMutableSet *)obj->_failedToJoinKnownNetworkIDs count])
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v510) = 0;
      LODWORD(v386) = 2;
      v381 = &v510;
      _os_log_send_and_compose_impl();
    }

    [(NSMutableSet *)obj->_failedToJoinKnownNetworkIDs removeAllObjects];
  }

  [(NSMutableDictionary *)obj->_deferredColocatedJoinCandidateMap removeAllObjects:v381];
  [(NSMutableSet *)obj->_hiddenNetworkChannels removeAllObjects];
  *&obj->_didDiscoverBSS = 0;
  [(NSMutableDictionary *)obj->_followup6GHzRNRMap removeAllObjects];
  [(NSMutableDictionary *)obj->_followup6GHzFILSDMap removeAllObjects];
  [(NSMutableDictionary *)obj->_followup6GHzScanResultsMap removeAllObjects];
  [(NSMutableSet *)obj->_cumulativeScanResults removeAllObjects];
  [(NSMutableSet *)obj->_updatedAllowCacheKnownNetworks removeAllObjects];
  [(NSMutableSet *)obj->_matchedCandidates removeAllObjects];
  [(NSMutableSet *)obj->_disallowedMatchedCandidates removeAllObjects];
  waitForConcurrentPHBrowse = obj->_waitForConcurrentPHBrowse;
  obj->_waitForConcurrentPHBrowse = 0;

  waitForConcurrentBrokenBackhaulDetect = obj->_waitForConcurrentBrokenBackhaulDetect;
  obj->_waitForConcurrentBrokenBackhaulDetect = 0;

  v435 = obj;
  objc_sync_enter(v435);
  v24 = CWFGetOSLog();
  if (v24)
  {
    v25 = CWFGetOSLog();
  }

  else
  {
    v25 = MEMORY[0x1E69E9C10];
    v26 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    activeRequest = obj->_activeRequest;
    v510 = 138543362;
    *v511 = activeRequest;
    LODWORD(v387) = 12;
    v382 = &v510;
    _os_log_send_and_compose_impl();
  }

  objc_sync_exit(v435);
  [(CWFAutoJoinMetric *)obj->_metric setAutoJoinParameters:v438];
  [(CWFAutoJoinMetric *)obj->_metric setRetrySchedule:retrySchedule];
  [(CWFAutoJoinMetric *)obj->_metric setRetryScheduleIndex:retryScheduleIndex];
  [(CWFAutoJoinMetric *)obj->_metric setWasAlreadyAssociatedToNetwork:v430];
  self->_beginTimestamp = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v403 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v28 = CWFGetBootTime();
  v29 = [v28 dateByAddingTimeInterval:v403 / 1000000000.0];
  [(CWFAutoJoinMetric *)obj->_metric setStartedAt:v29];

  v439 = objc_alloc_init(CWFAutoJoinContext);
  [(CWFAutoJoinContext *)v439 setAutoJoinParameters:v438];
  -[CWFAutoJoinContext setCacheOnly:](v439, "setCacheOnly:", [v438 mode] == 3, v382, v387);
  if ([v438 mode] == 3)
  {
    v30 = -1;
  }

  else
  {
    v30 = 9;
  }

  [(CWFAutoJoinContext *)v439 setMaxScanSSIDCount:v30];
  if (v430)
  {
    v31 = -70;
  }

  else
  {
    v31 = -80;
  }

  [(CWFAutoJoinContext *)v439 setMinRSSI:v31];
  [(CWFAutoJoinContext *)v439 setMaxBSSChannelAge:2592000];
  [(CWFAutoJoinContext *)v439 setMinBSSLocationAccuracy:100.0];
  [(CWFAutoJoinContext *)v439 setMaxBSSLocationDistance:300.0];
  [(CWFAutoJoinContext *)v439 setMaxBSSChannelCount:3];
  [(CWFAutoJoinContext *)v439 setDwellTime:0];
  v32 = [(CWFAutoJoinContext *)v439 autoJoinParameters];
  if ([v32 trigger] == 54)
  {

LABEL_26:
    [(CWFAutoJoinContext *)v439 setMaxScanChannelCount:1];
    [(CWFAutoJoinContext *)v439 setMaxScanCacheAge:0];
    [(CWFAutoJoinContext *)v439 setDwellTime:40];
    goto LABEL_33;
  }

  v33 = [(CWFAutoJoinContext *)v439 autoJoinParameters];
  v34 = [v33 trigger] == 55;

  if (v34)
  {
    goto LABEL_26;
  }

  v35 = [(CWFAutoJoinContext *)v439 autoJoinParameters];
  v36 = [v35 trigger] == 45;

  if (v36)
  {
    v37 = 1;
  }

  else
  {
    v38 = [(CWFAutoJoinContext *)v439 autoJoinParameters];
    v39 = [v38 trigger] == 58;

    if (!v39)
    {
      if ([v438 mode] == 1)
      {
        v161 = 3;
      }

      else
      {
        v161 = -1;
      }

      [(CWFAutoJoinContext *)v439 setMaxScanChannelCount:v161];
      v162 = [v438 trigger];
      v40 = 0;
      if (v162 - 44 >= 8 && (v162 > 0x3F || ((1 << v162) & 0xC000000000000010) == 0))
      {
        v163 = 20000;
        if (didConfigurationChangeSincePreviousAttempt)
        {
          v163 = 0;
        }

        if (v430)
        {
          v40 = 0;
        }

        else
        {
          v40 = v163;
        }
      }

      goto LABEL_32;
    }

    v37 = 3;
  }

  [(CWFAutoJoinContext *)v439 setMaxScanChannelCount:v37];
  v40 = 0;
LABEL_32:
  [(CWFAutoJoinContext *)v439 setMaxScanCacheAge:v40];
LABEL_33:
  [(CWFAutoJoinContext *)v439 setMaxANQPCacheAge:3600000];
  [(CWFAutoJoinContext *)v439 setMaxScanCycles:1];
  v41 = didConfigurationChangeSincePreviousAttempt || [v438 mode] == 1;
  [(CWFAutoJoinContext *)v439 setAlwaysIncludeRemainingNon2GHzChannels:v41];
  if ([v438 trigger] == 2 || objc_msgSend(v438, "trigger") == 7 || objc_msgSend(v438, "trigger") == 59 || objc_msgSend(v438, "trigger") == 60)
  {
    [(CWFAutoJoinContext *)v439 setMaxScanChannelCount:2];
  }

  if ([v438 trigger] == 32)
  {
    [(CWFAutoJoinContext *)v439 setBSSChannelsOnly:1];
    [(CWFAutoJoinContext *)v439 setMaxBSSChannelCount:1];
    [(CWFAutoJoinContext *)v439 setMaxScanCacheAge:0];
    [(CWFAutoJoinContext *)v439 setPassiveScan:0];
    [(CWFAutoJoinContext *)v439 setDwellTime:40];
    [(CWFAutoJoinContext *)v439 setMaxBSSChannelAge:0];
    [(CWFAutoJoinContext *)v439 setAlwaysIncludeRemainingNon2GHzChannels:0];
    v42 = [v438 preferredChannels];
    v43 = [v42 copy];
    cachedCarPlayPreferredChannels = v435->_cachedCarPlayPreferredChannels;
    v435->_cachedCarPlayPreferredChannels = v43;

    v45 = CWFGetOSLog();
    if (v45)
    {
      v46 = CWFGetOSLog();
    }

    else
    {
      v46 = MEMORY[0x1E69E9C10];
      v47 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [(NSArray *)v435->_cachedCarPlayPreferredChannels objectAtIndexedSubscript:0];
      v510 = 138543362;
      *v511 = v48;
      LODWORD(v388) = 12;
      v383 = &v510;
      _os_log_send_and_compose_impl();
    }
  }

  v49 = [v438 trigger];
  if (v49 - 44 < 8 || (v431 = 0, v49 <= 0x3F) && ((1 << v49) & 0xC000000000000010) != 0)
  {
    v50 = [(CWFAutoJoinManager *)v435 __retryInterval];
    v431 = v50;
    if (v50)
    {
      -[CWFAutoJoinContext setBSSChannelsOnly:](v439, "setBSSChannelsOnly:", [v50 BSSChannelsOnly]);
      -[CWFAutoJoinContext setMaxBSSChannelCount:](v439, "setMaxBSSChannelCount:", [v431 maxBSSChannelCount]);
      -[CWFAutoJoinContext setMaxBSSChannelAge:](v439, "setMaxBSSChannelAge:", [v431 maxBSSChannelAge]);
      -[CWFAutoJoinContext setPassiveScan:](v439, "setPassiveScan:", [v431 passiveScan]);
      -[CWFAutoJoinContext setDwellTime:](v439, "setDwellTime:", [v431 dwellTime]);
      -[CWFAutoJoinContext setIncludeAdjacent5GHzChannel:](v439, "setIncludeAdjacent5GHzChannel:", [v431 includeAdjacent5GHzChannel]);
      -[CWFAutoJoinContext setAlwaysIncludeRemainingNon2GHzChannels:](v439, "setAlwaysIncludeRemainingNon2GHzChannels:", [v431 alwaysIncludeRemainingNon2GHzChannels]);
      -[CWFAutoJoinContext setInclude6GHzChannels:](v439, "setInclude6GHzChannels:", [v431 alwaysInclude6GHzPSCChannels]);
    }

    else
    {
      v431 = 0;
    }
  }

  if ([v438 trigger] == 47)
  {
    v51 = v435->_cachedCarPlayPreferredChannels;
    v52 = [(CWFAutoJoinContext *)v439 autoJoinParameters];
    [v52 setPreferredChannels:v51];
  }

  if ([v438 mode] == 4 && objc_msgSend(v438, "trigger") != 54 && objc_msgSend(v438, "trigger") != 55)
  {
    [(CWFAutoJoinContext *)v439 setBSSChannelsOnly:1];
    [(CWFAutoJoinContext *)v439 setMaxBSSChannelCount:2];
    [(CWFAutoJoinContext *)v439 setMaxBSSChannelAge:86400];
  }

  if ([v438 trigger] == 66)
  {
    [(CWFAutoJoinContext *)v439 setAlwaysIncludeRemainingNon2GHzChannels:0];
    [(CWFAutoJoinContext *)v439 setSkipRemainingNon2GHzChannelsUnlessKnownNetworkFound:1];
  }

  [(CWFAutoJoinContext *)v439 setPreferUserConfiguredNetworks:[(CWFAutoJoinManager *)v435 __defaultUserConfiguredNetworkPreference]];
  v402 = [(CWFAutoJoinManager *)v435 supportedChannels];
  if (![v402 count])
  {
    v363 = MEMORY[0x1E696ABC0];
    v534 = *MEMORY[0x1E696A578];
    v535[0] = @"No configured channels";
    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v535 forKeys:&v534 count:1];
    v158 = [v363 errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:v72];

    v432 = 0;
    v412 = 0;
    v413 = 0;
    v426 = 0;
    v427 = 0;
    v422 = 0;
    v423 = 0;
    v160 = 0;
    v417 = 0;
    v398 = 0;
    v407 = 0;
    v408 = 0;
    v421 = 0;
    v441 = 0;
    v424 = 0;
    v405 = 0;
    v436 = 0;
    goto LABEL_364;
  }

  [(CWFAutoJoinManager *)v435 __updateAutoJoinState:1];
  v424 = [(CWFAutoJoinManager *)v435 knownNetworks];
  v408 = [(CWFAutoJoinManager *)v435 nearbyRecommendedNetworks];
  if (![v424 count] && !objc_msgSend(v408, "count"))
  {
    v366 = CWFGetOSLog();
    if (v366)
    {
      v365 = CWFGetOSLog();
    }

    else
    {
      v365 = MEMORY[0x1E69E9C10];
      v371 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v365, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_498;
    }

    LOWORD(v510) = 0;
    LODWORD(v386) = 2;
    v381 = &v510;
    goto LABEL_497;
  }

  if (([v438 trigger] == 61 || objc_msgSend(v438, "trigger") == 66) && retryScheduleIndex)
  {
    v364 = CWFGetOSLog();
    if (v364)
    {
      v365 = CWFGetOSLog();
    }

    else
    {
      v365 = MEMORY[0x1E69E9C10];
      v369 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v365, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_498;
    }

    LOWORD(v510) = 0;
    LODWORD(v386) = 2;
    v381 = &v510;
LABEL_497:
    _os_log_send_and_compose_impl();
LABEL_498:
    v432 = 0;
    v412 = 0;
    v413 = 0;
    v398 = 0;
    v421 = 0;
    v441 = 0;
    v405 = 0;
    goto LABEL_499;
  }

  if (v400 && (-[CWFAutoJoinManager __calloutToAllowAutoHotspotWithTrigger:error:](v435, "__calloutToAllowAutoHotspotWithTrigger:error:", [v438 trigger], 0) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v53 = CWFGetOSLog();
    if (v53)
    {
      v54 = CWFGetOSLog();
    }

    else
    {
      v54 = MEMORY[0x1E69E9C10];
      v55 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v510 = 67109376;
      *v511 = 10;
      *&v511[4] = 1024;
      *&v511[6] = 10;
      LODWORD(v386) = 14;
      v381 = &v510;
      _os_log_send_and_compose_impl();
    }

    v56 = dispatch_semaphore_create(0);
    v57 = obj->_waitForConcurrentPHBrowse;
    obj->_waitForConcurrentPHBrowse = v56;

    objc_storeStrong(v497 + 5, obj->_waitForConcurrentPHBrowse);
    v58 = [v438 mode] == 3;
    v488[0] = MEMORY[0x1E69E9820];
    v488[1] = 3221225472;
    v488[2] = sub_1E0C77FFC;
    v488[3] = &unk_1E86E7708;
    v488[4] = &v496;
    [(CWFAutoJoinManager *)v435 __calloutToBrowseForHotspotsWithTimeout:10 maxCacheAge:10 cacheOnly:v58 reply:v488, v381, v386];
    if ([v438 trigger] == 67)
    {
      if (v430)
      {
        v59 = CWFGetOSLog();
        if (v59)
        {
          v60 = CWFGetOSLog();
        }

        else
        {
          v60 = MEMORY[0x1E69E9C10];
          v164 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v510) = 0;
          LODWORD(v386) = 2;
          v381 = &v510;
          _os_log_send_and_compose_impl();
        }

        v165 = dispatch_semaphore_create(0);
        v166 = obj->_waitForConcurrentBrokenBackhaulDetect;
        obj->_waitForConcurrentBrokenBackhaulDetect = v165;

        objc_storeStrong(v491 + 5, obj->_waitForConcurrentBrokenBackhaulDetect);
        v487[0] = MEMORY[0x1E69E9820];
        v487[1] = 3221225472;
        v487[2] = sub_1E0C780C4;
        v487[3] = &unk_1E86E7730;
        v487[4] = v435;
        v487[5] = &v490;
        [(CWFAutoJoinManager *)v435 __calloutToCheckForBrokenBackhaulAndReply:v487];
        v167 = CWFGetOSLog();
        if (v167)
        {
          v168 = CWFGetOSLog();
        }

        else
        {
          v168 = MEMORY[0x1E69E9C10];
          v169 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v510) = 0;
          LODWORD(v386) = 2;
          v381 = &v510;
          _os_log_send_and_compose_impl();
        }

        v405 = 0;
        v441 = 0;
        v421 = 0;
        v422 = 0;
        v407 = 0;
        v412 = 0;
        v413 = 0;
        v398 = 0;
        v417 = 0;
        v426 = 0;
        v427 = 0;
        v160 = 0;
        v423 = 0;
        v432 = 0;
        v170 = v434;
LABEL_354:
        v271 = [v438 mode];
        v272 = v497[5];
        if (v271 == 3)
        {
          if (v272)
          {
            v273 = -1;
          }

          else
          {
            v273 = 10;
          }
        }

        else
        {
          if (!v272)
          {
            v274 = 0;
            v273 = 10;
            goto LABEL_362;
          }

          v273 = -1;
        }

        v274 = 1;
LABEL_362:
        v451 = 0;
        v436 = [(CWFAutoJoinManager *)v435 __performAutoHotspotWithBrowseTimeout:10 maxCacheAge:v273 cacheOnly:v274 error:&v451];
        v72 = v451;
LABEL_363:
        v158 = v170;
        goto LABEL_364;
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    if (![(CWFAutoJoinContext *)v439 include6GHzChannels])
    {
      v61 = [v424 allObjects];
      [(CWFAutoJoinContext *)v439 setInclude6GHzChannels:[(CWFAutoJoinManager *)v435 __didRecentlyJoinAny6GHzOnlyNetworks:v61]];
    }

    v62 = CWFGetOSLog();
    if (v62)
    {
      v63 = CWFGetOSLog();
    }

    else
    {
      v63 = MEMORY[0x1E69E9C10];
      v64 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v65 = [(CWFAutoJoinContext *)v439 include6GHzChannels];
      v66 = "NOT ";
      if (v65)
      {
        v66 = "";
      }

      v510 = 136446210;
      *v511 = v66;
      LODWORD(v386) = 12;
      v381 = &v510;
      _os_log_send_and_compose_impl();
    }
  }

  v67 = [v438 targetNetworkProfile];
  if (v67)
  {
    v68 = [v424 allObjects];
    v405 = [(CWFAutoJoinManager *)v435 __knownNetworksList:v68 containsMatchingKnownNetwork:v67];

    if (v405)
    {
      v69 = CWFGetOSLog();
      if (v69)
      {
        v70 = CWFGetOSLog();
      }

      else
      {
        v70 = MEMORY[0x1E69E9C10];
        v73 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v510 = 138543362;
        *v511 = v405;
        LODWORD(v386) = 12;
        v381 = &v510;
        _os_log_send_and_compose_impl();
      }

      targetQueue = v435->_targetQueue;
      v486 = 0;
      v75 = [(CWFAutoJoinManager *)v435 __allowKnownNetwork:v405 context:v439 allowForSeamlessSSIDTransition:0 defer:0 targetQueue:targetQueue error:&v486];
      v72 = v486;
      if (v75)
      {
        v76 = [(CWFAutoJoinContext *)v439 copy];
        v77 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v405];
        [v76 setKnownNetworks:v77];

        [v76 setAllowDeferredCandidates:1];
        v78 = [(NSMutableDictionary *)v435->_cachedKnownNetworksContexts objectForKeyedSubscript:v76];
        v432 = v78;
        if (v78)
        {
          v79 = v78;

          v412 = 0;
          v76 = v79;
        }

        else
        {
          v412 = [v76 copy];
          [(CWFAutoJoinManager *)v435 __prepareKnownNetworksContext:v76];
          [(NSMutableDictionary *)v435->_cachedKnownNetworksContexts setObject:v76 forKeyedSubscript:v412];
        }

        v485 = v434;
        v157 = [(CWFAutoJoinManager *)v435 __discoverKnownNetworksWithContext:v76 error:&v485, v381, v386];
        v158 = v485;

        if (v157)
        {

          v426 = 0;
          v427 = 0;
          v422 = 0;
          v423 = 0;
          v160 = 0;
          v417 = 0;
          v398 = 0;
          v413 = 0;
          v407 = 0;
          v421 = 0;
          v441 = 0;
          v436 = 1;
          goto LABEL_364;
        }

        v484 = v158;
        v159 = -[CWFAutoJoinManager __allowAutoJoinWithTrigger:error:](v435, "__allowAutoJoinWithTrigger:error:", [v438 trigger], &v484);
        v434 = v484;

        if ((v159 & 1) == 0)
        {
          v426 = 0;
          v427 = 0;
          v422 = 0;
          v423 = 0;
          v160 = 0;
          v417 = 0;
          v398 = 0;
          v413 = 0;
          v407 = 0;
          v421 = 0;
          v441 = 0;
          v436 = 0;
LABEL_188:
          v158 = v434;
LABEL_364:

          v428 = v439;
          v429 = v432;
          v399 = v424;
          v434 = v158;
          goto LABEL_365;
        }

        goto LABEL_107;
      }
    }

    else
    {
      v71 = CWFGetOSLog();
      if (v71)
      {
        v72 = CWFGetOSLog();
      }

      else
      {
        v72 = MEMORY[0x1E69E9C10];
        v80 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v510 = 138543362;
        *v511 = 0;
        LODWORD(v386) = 12;
        v381 = &v510;
        _os_log_send_and_compose_impl();
      }
    }

    v432 = 0;
    v412 = 0;
LABEL_107:

    goto LABEL_108;
  }

  v432 = 0;
  v412 = 0;
  v405 = 0;
LABEL_108:
  if (didConfigurationChangeSincePreviousAttempt || self->_beginTimestamp - beginTimestamp >= 0x8BEE643A00)
  {
    v81 = CWFGetOSLog();
    if (v81)
    {
      v82 = CWFGetOSLog();
    }

    else
    {
      v82 = MEMORY[0x1E69E9C10];
      v83 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v84 = [v424 count];
      v510 = 134217984;
      *v511 = v84;
      LODWORD(v386) = 12;
      v381 = &v510;
      _os_log_send_and_compose_impl();
    }

    v482 = 0u;
    v483 = 0u;
    v480 = 0u;
    v481 = 0u;
    v85 = v424;
    v86 = [v85 countByEnumeratingWithState:&v480 objects:v533 count:16];
    if (v86)
    {
      v87 = *v481;
      v88 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v86; ++i)
        {
          if (*v481 != v87)
          {
            objc_enumerationMutation(v85);
          }

          v90 = *(*(&v480 + 1) + 8 * i);
          v91 = CWFGetOSLog();
          if (v91)
          {
            v92 = CWFGetOSLog();
          }

          else
          {
            v93 = v88;
            v92 = v88;
          }

          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            v510 = 138543362;
            *v511 = v90;
            LODWORD(v386) = 12;
            v381 = &v510;
            _os_log_send_and_compose_impl();
          }
        }

        v86 = [v85 countByEnumeratingWithState:&v480 objects:v533 count:16];
      }

      while (v86);
    }

    v94 = CWFGetOSLog();
    if (v94)
    {
      v95 = CWFGetOSLog();
    }

    else
    {
      v95 = MEMORY[0x1E69E9C10];
      v96 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      v97 = [v408 count];
      v510 = 134217984;
      *v511 = v97;
      LODWORD(v386) = 12;
      v381 = &v510;
      _os_log_send_and_compose_impl();
    }

    v478 = 0u;
    v479 = 0u;
    v476 = 0u;
    v477 = 0u;
    v98 = v408;
    v99 = [v98 countByEnumeratingWithState:&v476 objects:v532 count:16];
    if (v99)
    {
      v100 = *v477;
      v101 = MEMORY[0x1E69E9C10];
      do
      {
        for (j = 0; j != v99; ++j)
        {
          if (*v477 != v100)
          {
            objc_enumerationMutation(v98);
          }

          v103 = *(*(&v476 + 1) + 8 * j);
          v104 = CWFGetOSLog();
          if (v104)
          {
            v105 = CWFGetOSLog();
          }

          else
          {
            v106 = v101;
            v105 = v101;
          }

          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            v510 = 138543362;
            *v511 = v103;
            LODWORD(v386) = 12;
            v381 = &v510;
            _os_log_send_and_compose_impl();
          }
        }

        v99 = [v98 countByEnumeratingWithState:&v476 objects:v532 count:16];
      }

      while (v99);
    }
  }

  v107 = [MEMORY[0x1E695DFA0] orderedSet];
  v108 = [MEMORY[0x1E695DFA0] orderedSet];
  v109 = [MEMORY[0x1E695DFA0] orderedSet];
  v110 = [MEMORY[0x1E695DFA0] orderedSet];
  v111 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v112 = CWFGetOSLog();
  if (v112)
  {
    v113 = CWFGetOSLog();
  }

  else
  {
    v113 = MEMORY[0x1E69E9C10];
    v114 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
  {
    v510 = 134219010;
    *v511 = v111 / 0x3B9ACA00;
    *&v511[8] = 2048;
    v512 = v111 % 0x3B9ACA00 / 0x3E8;
    v513 = 2082;
    *v514 = "[CWFAutoJoinManager __performAutoJoin]";
    *&v514[8] = 2082;
    *&v514[10] = "CWFAutoJoinManager.m";
    *&v514[18] = 1024;
    *v515 = 2501;
    LODWORD(v386) = 48;
    v381 = &v510;
    _os_log_send_and_compose_impl();
  }

  v115 = v435->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C781E4;
  block[3] = &unk_1E86E7758;
  v399 = v424;
  v467 = v399;
  v468 = v435;
  v428 = v439;
  v469 = v428;
  v441 = v107;
  v470 = v441;
  v421 = v108;
  v471 = v421;
  v413 = v109;
  v472 = v413;
  v474 = &v506;
  v398 = v110;
  v473 = v398;
  v475 = &v502;
  dispatch_sync(v115, block);

  if (!v430 || ![v441 count])
  {
    goto LABEL_232;
  }

  v116 = [v430 matchingKnownNetworkProfile];
  v117 = [v116 isCarPlay];

  if (v117)
  {
    v367 = CWFGetOSLog();
    if (v367)
    {
      v72 = CWFGetOSLog();
    }

    else
    {
      v72 = MEMORY[0x1E69E9C10];
      v372 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_516;
    }

    v510 = 138543362;
    *v511 = v430;
    LODWORD(v386) = 12;
    v381 = &v510;
    goto LABEL_503;
  }

  if ([v438 trigger] != 45)
  {
    if ([v438 trigger] == 58)
    {
      v72 = [MEMORY[0x1E695DFA8] set];
      v128 = [(CWFAutoJoinManager *)v435 associatedNetwork];
      v129 = [v128 channel];
      if (([v129 is6GHz] & 1) == 0)
      {
        v130 = [v397 channel];
        v131 = [v130 is6GHz];

        if (!v131)
        {
          goto LABEL_170;
        }

        v132 = [v441 array];
        v133 = [v397 matchingKnownNetworkProfile];
        v128 = [(CWFAutoJoinManager *)v435 __knownNetworksList:v132 containsMatchingKnownNetwork:v133];

        if (!v128)
        {
LABEL_169:

LABEL_170:
          v136 = [v430 matchingKnownNetworkProfile];
          v137 = [v441 array];
          v138 = [(CWFAutoJoinManager *)v435 __morePreferredKnownNetworksWithCandidate:v136 knownNetworks:v137 context:v428];
          v139 = [v138 set];
          [v72 unionSet:v139];

          if ([(CWFAutoJoinManager *)v435 __isDeferrableJoinCandidate:v430])
          {
            v140 = [v430 matchingKnownNetworkProfile];
            v141 = [v140 wasMoreRecentlyJoinedByUser];

            if ((v141 & 1) == 0)
            {
              v142 = [v421 set];
              [v72 unionSet:v142];
            }
          }

          [v441 intersectSet:v72];
          if ([v441 count])
          {
            goto LABEL_231;
          }

          v143 = CWFGetOSLog();
          if (v143)
          {
            v144 = CWFGetOSLog();
          }

          else
          {
            v144 = MEMORY[0x1E69E9C10];
            v376 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            v510 = 138543362;
            *v511 = v430;
            LODWORD(v386) = 12;
            v381 = &v510;
            _os_log_send_and_compose_impl();
          }

          goto LABEL_515;
        }

        [(CWFAutoJoinContext *)v428 setInclude6GHzChannels:1];
        v530 = v128;
        v129 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v530 count:1];
        v134 = [(CWFAutoJoinManager *)v435 __knownNetworksSupportingSeamlessSSIDTransition:v129 fromNetwork:v430 allowSameSSID:1 context:v428];
        v135 = [v134 set];
        [v72 unionSet:v135];
      }

      goto LABEL_169;
    }

    if ([v438 trigger] == 54 || objc_msgSend(v438, "trigger") == 55)
    {
      v145 = [v438 trigger];
      if (v145 != 54 && [v438 trigger] == 55)
      {
        v146 = [v441 array];
        v147 = [(CWFAutoJoinManager *)v435 associatedNetwork];
        v148 = [(CWFAutoJoinManager *)v435 __knownNetworksSupportingSeamlessSSIDTransition:v146 fromNetwork:v147 allowSameSSID:0 context:v428];
        v149 = [v148 count] == 0;

        if (v149)
        {
          [(CWFAutoJoinContext *)v428 setBSSChannelsOnly:1];
        }
      }

      v150 = [v441 array];
      v151 = [(CWFAutoJoinManager *)v435 associatedNetwork];
      v152 = [(CWFAutoJoinManager *)v435 __knownNetworksSupportingSeamlessSSIDTransition:v150 fromNetwork:v151 allowSameSSID:v145 != 54 context:v428];
      v153 = [v152 count] == 0;

      if (v153)
      {
        v374 = MEMORY[0x1E696ABC0];
        v528 = *MEMORY[0x1E696A578];
        v529 = @"Already associated and no seamless SSID transition candidates configured";
        v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v529 forKeys:&v528 count:1];
        v158 = [v374 errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:v72];

        v426 = 0;
        v427 = 0;
        v422 = 0;
        v423 = 0;
        v160 = 0;
        v417 = 0;
        v407 = 0;
        v436 = 0;
        goto LABEL_485;
      }

      v72 = [v441 array];
      v154 = [(CWFAutoJoinManager *)v435 associatedNetwork];
      v155 = [(CWFAutoJoinManager *)v435 __knownNetworksSupportingSeamlessSSIDTransition:v72 fromNetwork:v154 allowSameSSID:1 context:v428];
      v156 = [v155 set];
      [v441 intersectSet:v156];

      goto LABEL_231;
    }

    if ([v438 trigger] == 68)
    {
      if ([v430 isPersonalHotspot])
      {
        goto LABEL_232;
      }

      v180 = CWFGetOSLog();
      if (v180)
      {
        v72 = CWFGetOSLog();
      }

      else
      {
        v72 = MEMORY[0x1E69E9C10];
        v377 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_516;
      }

      LOWORD(v510) = 0;
      LODWORD(v386) = 2;
      v381 = &v510;
    }

    else if ([v438 trigger] == 32 || objc_msgSend(v438, "trigger") == 47 || (objc_msgSend(v430, "matchingKnownNetworkProfile"), v181 = objc_claimAutoreleasedReturnValue(), v182 = objc_msgSend(v181, "wasMoreRecentlyJoinedByUser"), v181, !v182))
    {
      if (-[CWFAutoJoinManager __allowOpportunisticNetworkTransitionWithTrigger:](v435, "__allowOpportunisticNetworkTransitionWithTrigger:", [v438 trigger]))
      {
        goto LABEL_232;
      }

      v183 = CWFGetOSLog();
      if (v183)
      {
        v72 = CWFGetOSLog();
      }

      else
      {
        v72 = MEMORY[0x1E69E9C10];
        v378 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_516;
      }

      v510 = 138543362;
      *v511 = v430;
      LODWORD(v386) = 12;
      v381 = &v510;
    }

    else
    {
      v379 = CWFGetOSLog();
      if (v379)
      {
        v72 = CWFGetOSLog();
      }

      else
      {
        v72 = MEMORY[0x1E69E9C10];
        v380 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_516;
      }

      v510 = 138543362;
      *v511 = v430;
      LODWORD(v386) = 12;
      v381 = &v510;
    }

LABEL_503:
    v436 = 1;
    _os_log_send_and_compose_impl();
    v426 = 0;
    v427 = 0;
    v422 = 0;
    v423 = 0;
    v160 = 0;
    v417 = 0;
    v407 = 0;
LABEL_517:
    v424 = v399;
    goto LABEL_188;
  }

  v72 = [MEMORY[0x1E695DFA8] set];
  v118 = [(CWFAutoJoinManager *)v435 associatedNetwork];
  v119 = [v118 channel];
  if ([v119 is6GHz])
  {
LABEL_158:

    goto LABEL_159;
  }

  v120 = [v397 channel];
  v121 = [v120 is6GHz];

  if (!v121)
  {
    goto LABEL_160;
  }

  v122 = [v441 array];
  v123 = [v397 matchingKnownNetworkProfile];
  v118 = [(CWFAutoJoinManager *)v435 __knownNetworksList:v122 containsMatchingKnownNetwork:v123];

  if (v118)
  {
    [(CWFAutoJoinContext *)v428 setInclude6GHzChannels:1];
    v531 = v118;
    v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v531 count:1];
    v124 = [(CWFAutoJoinManager *)v435 __knownNetworksSupportingSeamlessSSIDTransition:v119 fromNetwork:v430 allowSameSSID:1 context:v428];
    v125 = [v124 set];
    [v72 unionSet:v125];

    goto LABEL_158;
  }

LABEL_159:

LABEL_160:
  if ([(CWFAutoJoinManager *)v435 displayOff:v381])
  {
    v126 = CWFGetOSLog();
    if (v126)
    {
      v127 = CWFGetOSLog();
    }

    else
    {
      v127 = MEMORY[0x1E69E9C10];
      v171 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v510) = 0;
      LODWORD(v389) = 2;
      v384 = &v510;
      _os_log_send_and_compose_impl();
    }

    v172 = [v430 matchingKnownNetworkProfile];
    v173 = [v441 array];
    v174 = [(CWFAutoJoinManager *)v435 __morePreferredKnownNetworksWithCandidate:v172 knownNetworks:v173 context:v428];
    v175 = [v174 set];
    [v72 unionSet:v175];

    if ([(CWFAutoJoinManager *)v435 __isDeferrableJoinCandidate:v430])
    {
      v176 = [v430 matchingKnownNetworkProfile];
      v177 = [v176 wasMoreRecentlyJoinedByUser];

      if ((v177 & 1) == 0)
      {
        v178 = CWFGetOSLog();
        if (v178)
        {
          v179 = CWFGetOSLog();
        }

        else
        {
          v179 = MEMORY[0x1E69E9C10];
          v184 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v510) = 0;
          LODWORD(v389) = 2;
          v384 = &v510;
          _os_log_send_and_compose_impl();
        }

        v185 = [v421 set];
        [v72 unionSet:v185];
      }
    }
  }

  [v441 intersectSet:{v72, v384, v389}];
  if (![v441 count])
  {
    v370 = CWFGetOSLog();
    if (v370)
    {
      v144 = CWFGetOSLog();
    }

    else
    {
      v144 = MEMORY[0x1E69E9C10];
      v375 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      v510 = 138543362;
      *v511 = v430;
      LODWORD(v386) = 12;
      v381 = &v510;
      _os_log_send_and_compose_impl();
    }

LABEL_515:

LABEL_516:
    v426 = 0;
    v427 = 0;
    v422 = 0;
    v423 = 0;
    v160 = 0;
    v417 = 0;
    v407 = 0;
    v436 = 1;
    goto LABEL_517;
  }

LABEL_231:

LABEL_232:
  if ([v441 count] || objc_msgSend(v408, "count"))
  {
    v186 = [v441 set];
    [v421 intersectSet:v186];

    v187 = v435;
    objc_sync_enter(v187);
    deferredKnownNetworks = obj->_deferredKnownNetworks;
    v189 = [v441 set];
    [(NSMutableOrderedSet *)deferredKnownNetworks intersectSet:v189];

    objc_sync_exit(v187);
    v190 = [v441 set];
    [v413 intersectSet:v190];

    if (*(v503 + 24) == 1)
    {
      v191 = CWFGetOSLog();
      if (v191)
      {
        v192 = CWFGetOSLog();
      }

      else
      {
        v192 = MEMORY[0x1E69E9C10];
        v193 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v510) = 0;
        LODWORD(v386) = 2;
        v381 = &v510;
        _os_log_send_and_compose_impl();
      }

      [(CWFAutoJoinContext *)v428 setAllowSSIDBasedMatchingForPasspointNetworks:*(v503 + 24)];
    }

    if (*(v507 + 24) == 1)
    {
      v194 = CWFGetOSLog();
      if (v194)
      {
        v195 = CWFGetOSLog();
      }

      else
      {
        v195 = MEMORY[0x1E69E9C10];
        v198 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v510) = 0;
        LODWORD(v386) = 2;
        v381 = &v510;
        _os_log_send_and_compose_impl();
      }
    }

    else if ([v441 count] == 1)
    {
      v196 = CWFGetOSLog();
      if (v196)
      {
        v197 = CWFGetOSLog();
      }

      else
      {
        v197 = MEMORY[0x1E69E9C10];
        v199 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v510) = 0;
        LODWORD(v386) = 2;
        v381 = &v510;
        _os_log_send_and_compose_impl();
      }

      *(v507 + 24) = 1;
    }

    [(CWFAutoJoinContext *)v428 setAllowStandalone6GHz:*(v507 + 24), v381, v386];
    [(CWFAutoJoinMetric *)obj->_metric setWas6GHzDeprioritized:(v507[3] & 1) == 0];
    if ([v421 count])
    {
      v200 = CWFGetOSLog();
      if (v200)
      {
        v201 = CWFGetOSLog();
      }

      else
      {
        v201 = MEMORY[0x1E69E9C10];
        v203 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
      {
        v204 = [v421 count];
        v510 = 134217984;
        *v511 = v204;
        LODWORD(v386) = 12;
        v381 = &v510;
        _os_log_send_and_compose_impl();
      }

      v417 = [(CWFAutoJoinContext *)v428 copy];
      [v417 setKnownNetworks:v421];
      v429 = [v187[44] objectForKeyedSubscript:v417];

      if (v429)
      {
        v205 = v429;

        v417 = v205;
      }

      else
      {
        v206 = [v417 copy];

        [v187 __prepareKnownNetworksContext:v417];
        [v187[44] setObject:v417 forKeyedSubscript:v206];
        v412 = v206;
      }

      v465 = v434;
      v207 = [v187 __discoverKnownNetworksWithContext:v417 error:{&v465, v381, v386}];
      v208 = v465;

      if (v207)
      {
        v426 = 0;
        v427 = 0;
        v422 = 0;
        v423 = 0;
        v160 = 0;
        v407 = 0;
        goto LABEL_476;
      }

      v464 = v208;
      v209 = [v187 __allowAutoJoinWithTrigger:objc_msgSend(v438 error:{"trigger"), &v464}];
      v434 = v464;

      if (!v209)
      {
        v426 = 0;
        v427 = 0;
        v422 = 0;
        v423 = 0;
        v160 = 0;
        v407 = 0;
        goto LABEL_473;
      }

      v202 = v429;
    }

    else
    {
      v417 = 0;
      v202 = v432;
    }

    v432 = v202;
    v210 = v187;
    objc_sync_enter(v210);
    v407 = [(NSMutableOrderedSet *)obj->_deferredKnownNetworks copy];
    objc_sync_exit(v210);

    if (![v407 count])
    {
      v426 = 0;
      goto LABEL_281;
    }

    v211 = CWFGetOSLog();
    if (v211)
    {
      v212 = CWFGetOSLog();
    }

    else
    {
      v212 = MEMORY[0x1E69E9C10];
      v213 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
    {
      v214 = [v407 count];
      v510 = 134217984;
      *v511 = v214;
      LODWORD(v386) = 12;
      v381 = &v510;
      _os_log_send_and_compose_impl();
    }

    v426 = [(CWFAutoJoinContext *)v428 copy];
    [v426 setKnownNetworks:v407];
    [v426 setAllowDeferredCandidates:1];
    [v426 setUseCacheForPreviouslyScannedChannels:{objc_msgSend(v421, "count") != 0, v381, v386}];
    v429 = [v210[44] objectForKeyedSubscript:v426];

    if (v429)
    {
      v215 = v429;

      v426 = v215;
    }

    else
    {
      v216 = [v426 copy];

      [v210 __prepareKnownNetworksContext:v426];
      [v210[44] setObject:v426 forKeyedSubscript:v216];
      v412 = v216;
    }

    v463 = v434;
    v217 = [v210 __discoverKnownNetworksWithContext:v426 error:&v463];
    v208 = v463;

    if (v217)
    {
      v427 = 0;
      v422 = 0;
      v423 = 0;
      v160 = 0;
      goto LABEL_476;
    }

    v462 = v208;
    v218 = [v210 __allowAutoJoinWithTrigger:objc_msgSend(v438 error:{"trigger"), &v462}];
    v434 = v462;

    if (v218)
    {
      v432 = v429;
LABEL_281:
      if (![v413 count])
      {
        v160 = 0;
        v170 = v434;
LABEL_316:
        if (v507[3])
        {
          v423 = 0;
        }

        else
        {
          v249 = CWFGetOSLog();
          if (v249)
          {
            v250 = CWFGetOSLog();
          }

          else
          {
            v250 = MEMORY[0x1E69E9C10];
            v251 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v510) = 0;
            LODWORD(v386) = 2;
            v381 = &v510;
            _os_log_send_and_compose_impl();
          }

          v423 = [(CWFAutoJoinContext *)v428 copy];
          [v423 setKnownNetworks:v441];
          [v423 setAllowStandalone6GHz:1];
          [v423 setUseCacheForPreviouslyScannedChannels:1];
          [v423 setAllowDeferredCandidates:1];
          v429 = [v210[44] objectForKeyedSubscript:v423];

          if (v429)
          {
            v252 = v429;

            v423 = v252;
          }

          else
          {
            v253 = [v423 copy];

            [v210 __prepareKnownNetworksContext:v423];
            [v210[44] setObject:v423 forKeyedSubscript:v253];
            v412 = v253;
          }

          v455 = v170;
          v254 = [v210 __discoverKnownNetworksWithContext:v423 error:{&v455, v381, v386}];
          v208 = v455;

          if (v254)
          {
            v427 = 0;
            v422 = 0;
            goto LABEL_476;
          }

          v432 = v429;
          v170 = v208;
        }

        if (v503[3])
        {
          v427 = 0;
          goto LABEL_341;
        }

        v255 = CWFGetOSLog();
        if (v255)
        {
          v256 = CWFGetOSLog();
        }

        else
        {
          v256 = MEMORY[0x1E69E9C10];
          v257 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v510) = 0;
          LODWORD(v386) = 2;
          v381 = &v510;
          _os_log_send_and_compose_impl();
        }

        v427 = [(CWFAutoJoinContext *)v428 copy];
        v72 = [MEMORY[0x1E695DFA0] orderedSet];
        v258 = [v441 set];
        [v72 unionSet:v258];

        v259 = [v398 set];
        [v72 unionSet:v259];

        [v427 setKnownNetworks:v72];
        [v427 setAllowStandalone6GHz:1];
        [v427 setUseCacheForPreviouslyScannedChannels:1];
        [v427 setAllowDeferredCandidates:1];
        [v427 setAllowSSIDBasedMatchingForPasspointNetworks:1];
        v260 = [v210[44] objectForKeyedSubscript:v427];

        if (v260)
        {
          v261 = v260;

          v427 = v261;
        }

        else
        {
          v262 = [v427 copy];

          [v210 __prepareKnownNetworksContext:v427];
          [v210[44] setObject:v427 forKeyedSubscript:v262];
          v412 = v262;
        }

        v454 = v170;
        v263 = [v210 __discoverKnownNetworksWithContext:v427 error:{&v454, v381, v386}];
        v158 = v454;

        if ((v263 & 1) == 0)
        {
          v453 = v158;
          v264 = [v210 __allowAutoJoinWithTrigger:objc_msgSend(v438 error:{"trigger"), &v453}];
          v170 = v453;

          if (!v264)
          {
            v422 = 0;
            v436 = 0;
            v432 = v260;
            v424 = v399;
            goto LABEL_363;
          }

          v432 = v260;
LABEL_341:
          if (v430)
          {
            v422 = 0;
            goto LABEL_353;
          }

          v265 = CWFGetOSLog();
          if (v265)
          {
            v266 = CWFGetOSLog();
          }

          else
          {
            v266 = MEMORY[0x1E69E9C10];
            v267 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v510) = 0;
            LODWORD(v386) = 2;
            v381 = &v510;
            _os_log_send_and_compose_impl();
          }

          v422 = [(CWFAutoJoinContext *)v428 copy];
          [v422 setKnownNetworks:v441];
          [v422 setMinRSSI:-90];
          [v422 setAllowStandalone6GHz:1];
          [v422 setUseCacheForPreviouslyScannedChannels:1];
          [v422 setAllowDeferredCandidates:1];
          [v422 setAllowSSIDBasedMatchingForPasspointNetworks:1];
          v429 = [v210[44] objectForKeyedSubscript:v422];

          if (v429)
          {
            v268 = v429;

            v422 = v268;
          }

          else
          {
            v269 = [v422 copy];

            [v210 __prepareKnownNetworksContext:v422];
            [v210[44] setObject:v422 forKeyedSubscript:v269];
            v412 = v269;
          }

          v452 = v170;
          v270 = [v210 __discoverKnownNetworksWithContext:v422 error:{&v452, v381, v386}];
          v208 = v452;

          if ((v270 & 1) == 0)
          {
            v432 = v429;
            v170 = v208;
            goto LABEL_353;
          }

LABEL_476:
          v436 = 1;
          v434 = v208;
          goto LABEL_365;
        }

        v422 = 0;
        v436 = 1;
        v432 = v260;
LABEL_485:
        v424 = v399;
        goto LABEL_364;
      }

      v219 = CWFGetOSLog();
      if (v219)
      {
        v220 = CWFGetOSLog();
      }

      else
      {
        v220 = MEMORY[0x1E69E9C10];
        v221 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
      {
        v222 = [v413 count];
        v510 = 134217984;
        *v511 = v222;
        LODWORD(v386) = 12;
        v381 = &v510;
        _os_log_send_and_compose_impl();
      }

      v160 = [(CWFAutoJoinContext *)v428 copy];
      [v160 setKnownNetworks:v413];
      [v160 setMaxScanCycles:-1];
      [v160 setPassiveScan:0];
      [v160 setDwellTime:0];
      [v160 setAllowDeferredCandidates:1];
      v223 = [v210[44] objectForKeyedSubscript:v160];

      if (v223)
      {
        v224 = v223;

        v160 = v224;
      }

      else
      {
        v225 = [v160 copy];

        [v210 __prepareKnownNetworksContext:v160];
        [v210[44] setObject:v160 forKeyedSubscript:v225];
        v412 = v225;
      }

      v72 = [MEMORY[0x1E695DF70] array];
      v226 = [v160 recentChannelList];
      v227 = [v160 remainingChannelList];
      v228 = [v226 arrayByAddingObjectsFromArray:v227];

      v229 = [v160 recentChannelList];
      if ([v229 count] >= 2)
      {

        v231 = 2;
      }

      else
      {
        v230 = [v160 recentChannelList];
        v231 = [v230 count];

        if (!v231)
        {
          goto LABEL_297;
        }
      }

      for (k = 0; k != v231; ++k)
      {
        hiddenNetworkChannels = obj->_hiddenNetworkChannels;
        v234 = [v160 recentChannelList];
        v235 = [v234 objectAtIndexedSubscript:k];
        [(NSMutableSet *)hiddenNetworkChannels addObject:v235];
      }

LABEL_297:
      v460 = 0u;
      v461 = 0u;
      v458 = 0u;
      v459 = 0u;
      v236 = v228;
      v237 = [v236 countByEnumeratingWithState:&v458 objects:v527 count:16];
      if (v237)
      {
        v238 = *v459;
        do
        {
          for (m = 0; m != v237; ++m)
          {
            if (*v459 != v238)
            {
              objc_enumerationMutation(v236);
            }

            v240 = *(*(&v458 + 1) + 8 * m);
            if ([(NSMutableSet *)obj->_hiddenNetworkChannels containsObject:v240])
            {
              [v72 addObject:v240];
            }
          }

          v237 = [v236 countByEnumeratingWithState:&v458 objects:v527 count:16];
        }

        while (v237);
      }

      v241 = [MEMORY[0x1E695DF70] array];
      [v160 setRecentChannelList:v241];

      [v160 setRemainingChannelList:v72];
      v242 = CWFGetOSLog();
      if (v242)
      {
        v243 = CWFGetOSLog();
      }

      else
      {
        v243 = MEMORY[0x1E69E9C10];
        v244 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
      {
        v245 = [v72 count];
        v246 = [v72 componentsJoinedByString:@", "];
        v510 = 134218242;
        *v511 = v245;
        *&v511[8] = 2114;
        v512 = v246;
        LODWORD(v386) = 22;
        v381 = &v510;
        _os_log_send_and_compose_impl();
      }

      if ([v72 count])
      {
        v457 = v434;
        v247 = [v210 __discoverKnownNetworksWithContext:v160 error:&v457];
        v158 = v457;

        if (v247)
        {
          v436 = 1;
          goto LABEL_484;
        }

        v434 = v158;
      }

      v456 = v434;
      v248 = [v210 __allowAutoJoinWithTrigger:objc_msgSend(v438 error:{"trigger", v381, v386), &v456}];
      v158 = v456;

      if (v248)
      {

        v432 = v223;
        v170 = v158;
        goto LABEL_316;
      }

      v436 = 0;
LABEL_484:

      v427 = 0;
      v422 = 0;
      v423 = 0;
      v432 = v223;
      goto LABEL_485;
    }

    v427 = 0;
    v422 = 0;
    v423 = 0;
    v160 = 0;
LABEL_473:
    v436 = 0;
    goto LABEL_365;
  }

  v368 = CWFGetOSLog();
  if (v368)
  {
    v365 = CWFGetOSLog();
  }

  else
  {
    v365 = MEMORY[0x1E69E9C10];
    v373 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v365, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v510) = 0;
    LODWORD(v386) = 2;
    v381 = &v510;
    _os_log_send_and_compose_impl();
  }

LABEL_499:

  v426 = 0;
  v427 = 0;
  v422 = 0;
  v423 = 0;
  v160 = 0;
  v417 = 0;
  v407 = 0;
  v170 = v434;
LABEL_353:
  if (v400)
  {
    goto LABEL_354;
  }

  v434 = v170;
  v436 = 0;
  v428 = v439;
  v429 = v432;
  v399 = v424;
LABEL_365:
  v275 = [(CWFAutoJoinMetric *)obj->_metric scanDuration:v381]|| [(CWFAutoJoinMetric *)obj->_metric autoHotspotBrowseDuration];
  v276 = obj;
  objc_sync_enter(v276);
  v425 = *(v276 + 257);
  v440 = *(v276 + 258);
  v277 = v276[33];
  if (v277)
  {
    v278 = [v277 code];
  }

  else
  {
    v278 = 0;
  }

  v279 = [(CWFAutoJoinRequest *)obj->_activeRequest reply];
  v433 = [v279 copy];

  if ((v434 != 0) | (v425 | v440) & 1)
  {
    v280 = obj->_activeRequest;
    obj->_activeRequest = 0;

    *(v276 + 257) = 0;
    v281 = v276[33];
    v276[33] = 0;

    *(v276 + 258) = 0;
  }

  else
  {
    if (!obj->_didConfigurationChangeSincePreviousAttempt)
    {
      [v276 __removeRedundantRequests:obj->_activeRequest];
    }

    v282 = obj->_activeRequest;
    obj->_activeRequest = 0;

    *(v276 + 257) = 0;
    v283 = v276[33];
    v276[33] = 0;

    *(v276 + 258) = 0;
    v284 = [v438 trigger];
    if (v284 - 44 < 8 || v284 <= 0x3F && ((1 << v284) & 0xC000000000000010) != 0)
    {
      ++obj->_retryScheduleIndex;
    }
  }

  if ((v276[32] & 1) == 0 && (([v276 __shouldPrioritizeRetryOverNewRequest:{objc_msgSend(v438, "trigger")}] & 1) != 0 || (objc_msgSend(v276, "__nextRequest") & 1) == 0) && (v276[15] & 1) == 0)
  {
    if (!v434 || (v425 & 1) != 0 || (v285 = [v438 trigger], v285 - 44 >= 8) && (v285 > 0x3F || ((1 << v285) & 0xC000000000000010) == 0))
    {
      if (v278 == 37)
      {
        v286 = CWFGetOSLog();
        if (v286)
        {
          v287 = CWFGetOSLog();
        }

        else
        {
          v287 = MEMORY[0x1E69E9C10];
          v288 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v287, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v510) = 0;
          LODWORD(v390) = 2;
          v385 = &v510;
          _os_log_send_and_compose_impl();
        }
      }

      else
      {
        [v276 __updateRetrySchedule];
      }
    }
  }

  v289 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC538, v385, v390];
  v290 = [v289 unsignedLongValue];

  v291 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC550];
  v292 = [v291 unsignedLongValue];

  v293 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC568];
  v294 = [v293 unsignedLongValue];

  v295 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC580];
  v296 = [v295 unsignedLongValue];

  v297 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC598];
  v298 = [v297 unsignedLongValue];

  if (v436 && ([v438 trigger] == 54 || objc_msgSend(v438, "trigger") == 55))
  {
    [v276[36] setObject:0 forKeyedSubscript:&unk_1F5BBC5B0];
  }

  if (v275)
  {
    v299 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v403];
    v300 = v276[36];
    v301 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v438, "trigger")}];
    [v300 setObject:v299 forKeyedSubscript:v301];

    v302 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v403];
    [v276[36] setObject:v302 forKeyedSubscript:&unk_1F5BBC5C8];
  }

  v404 = [v276[5] copy];
  objc_sync_exit(v276);

  if (self->_beginTimestamp)
  {
    clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v303 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    v304 = CWFGetBootTime();
    v305 = [v304 dateByAddingTimeInterval:v303 / 1000000000.0];
    [(CWFAutoJoinMetric *)obj->_metric setEndedAt:v305];

    [(CWFAutoJoinMetric *)obj->_metric setResult:v436];
    if (linkChangeTimestamp < v395 || v409 == v395)
    {
      v306 = CWFGetBootTime();
      v307 = [v306 dateByAddingTimeInterval:v395 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByLinkDownAt:v307];
    }

    if (linkChangeTimestamp < v290 || v409 == v290)
    {
      v308 = CWFGetBootTime();
      v309 = [v308 dateByAddingTimeInterval:v290 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByFirstUnlockAt:v309];
    }

    if (linkChangeTimestamp < v292 || v409 == v292)
    {
      v310 = CWFGetBootTime();
      v311 = [v310 dateByAddingTimeInterval:v292 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByDeviceWakeAt:v311];
    }

    if (linkChangeTimestamp < v294 || v409 == v294)
    {
      v312 = CWFGetBootTime();
      v313 = [v312 dateByAddingTimeInterval:v294 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByWiFiOnAt:v313];
    }

    if (linkChangeTimestamp < v296 || v409 == v296)
    {
      v314 = CWFGetBootTime();
      v315 = [v314 dateByAddingTimeInterval:v296 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByMotionEndedAt:v315];
    }

    if (linkChangeTimestamp < v298 || v409 == v298)
    {
      v316 = CWFGetBootTime();
      v317 = [v316 dateByAddingTimeInterval:v298 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByAutoJoinEnabledAt:v317];
    }

    v318 = [(CWFAutoJoinMetric *)obj->_metric wasAlreadyAssociatedToNetwork];
    if (!v318)
    {
      v318 = [(CWFAutoJoinMetric *)obj->_metric autoJoinedNetwork];
      v319 = [v318 matchingKnownNetworkProfile];
      v320 = [v319 identifier];
      if (v320)
      {
        v321 = [v404 matchingKnownNetworkProfile];
        v419 = [v321 identifier];
        if (v419)
        {
          v415 = [(CWFAutoJoinMetric *)obj->_metric autoJoinedNetwork];
          v322 = [v415 matchingKnownNetworkProfile];
          v323 = [v322 identifier];
          v324 = [v404 matchingKnownNetworkProfile];
          v325 = [v324 identifier];
          v410 = [v323 isEqual:v325];

          if (v410)
          {
            [(CWFAutoJoinMetric *)obj->_metric setDidJoinPreviouslyAssociatedNetwork:1];
          }

          goto LABEL_431;
        }
      }
    }

LABEL_431:
    v326 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v449 = 0u;
    v450 = 0u;
    v447 = 0u;
    v448 = 0u;
    v327 = v276[55];
    v328 = [v327 countByEnumeratingWithState:&v447 objects:v526 count:16];
    if (v328)
    {
      v329 = *v448;
      do
      {
        for (n = 0; n != v328; ++n)
        {
          if (*v448 != v329)
          {
            objc_enumerationMutation(v327);
          }

          v331 = [*(*(&v447 + 1) + 8 * n) matchingKnownNetworkProfile];
          v332 = [v331 identifier];
          [v326 addObject:v332];
        }

        v328 = [v327 countByEnumeratingWithState:&v447 objects:v526 count:16];
      }

      while (v328);
    }

    -[CWFAutoJoinMetric setCandidateBSSCount:](obj->_metric, "setCandidateBSSCount:", [v276[55] count]);
    -[CWFAutoJoinMetric setCandidateSSIDCount:](obj->_metric, "setCandidateSSIDCount:", [v326 count]);
    v333 = v434;
    if (v434)
    {
      v334 = 1;
    }

    else
    {
      v334 = v436;
    }

    if ((v334 & 1) == 0)
    {
      if ([v438 trigger] == 54 || objc_msgSend(v438, "trigger") == 55)
      {
        v335 = MEMORY[0x1E696ABC0];
        v524 = *MEMORY[0x1E696A578];
        v525 = @"No candidate found";
        v336 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v525 forKeys:&v524 count:1];
        v337 = [v335 errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:v336];

        v333 = v337;
      }

      else
      {
        v333 = 0;
      }
    }

    v434 = v333;
    [(CWFAutoJoinMetric *)obj->_metric setError:?];
    [v276 __updateAutoJoinMetricAndStatistics:obj->_metric];
    v338 = CWFGetOSLog();
    if (v338)
    {
      v339 = CWFGetOSLog();
    }

    else
    {
      v339 = MEMORY[0x1E69E9C10];
      v340 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v339, OS_LOG_TYPE_DEFAULT))
    {
      v401 = v160;
      v341 = [v406 UUIDString];
      v437 = [v341 substringToIndex:5];
      v342 = [(CWFAutoJoinMetric *)obj->_metric endedAt];
      [v342 timeIntervalSinceReferenceDate];
      v344 = v343;
      v345 = [(CWFAutoJoinMetric *)obj->_metric startedAt];
      [v345 timeIntervalSinceReferenceDate];
      v347 = v346;
      v396 = [(CWFAutoJoinMetric *)obj->_metric result];
      v416 = [(CWFAutoJoinMetric *)obj->_metric error];
      v420 = [v276 __descriptionForError:v416];
      v411 = [(CWFAutoJoinMetric *)obj->_metric scanChannels];
      v394 = [v411 count];
      v348 = [(CWFAutoJoinMetric *)obj->_metric autoHotspotWasAttempted];
      if (v348)
      {
        v392 = [(CWFAutoJoinMetric *)obj->_metric autoHotspotEndedAt];
        [v392 timeIntervalSinceReferenceDate];
        v350 = v349;
        v391 = [(CWFAutoJoinMetric *)obj->_metric autoHotspotStartedAt];
        [v391 timeIntervalSinceReferenceDate];
        v352 = ((v350 - v351) * 1000.0);
      }

      else
      {
        v352 = 0;
      }

      v353 = [(CWFAutoJoinMetric *)obj->_metric autoHotspotResult];
      v354 = [(CWFAutoJoinMetric *)obj->_metric autoHotspotError];
      [v276 __descriptionForError:v354];
      obja = v345;
      v355 = v393 = v341;
      v510 = 138545666;
      *v511 = v437;
      *&v511[8] = 2048;
      v512 = ((v344 - v347) * 1000.0);
      v513 = 1024;
      *v514 = v396;
      *&v514[4] = 2114;
      *&v514[6] = v420;
      *&v514[14] = 1024;
      *&v514[16] = v425;
      *v515 = 1024;
      *&v515[2] = v440;
      v516 = 2048;
      v517 = v394;
      v518 = 2048;
      v519 = v352;
      v520 = 1024;
      v521 = v353;
      v522 = 2114;
      v523 = v355;
      _os_log_send_and_compose_impl();

      v160 = v401;
      if (v348)
      {
      }
    }

    [v276 __updateDisallowedMatchedKnownNetworks];
    v356 = [v276[56] allObjects];
    [v276 __updateDiscoverTimestampForJoinCandidates:v356];

    [v276 __updateRecentlyMatchedCandidates];
    [v276 __updateAutoJoinState:0];
  }

  if ((v440 & 1) == 0)
  {
    v357 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v358 = CWFGetOSLog();
    if (v358)
    {
      v359 = CWFGetOSLog();
    }

    else
    {
      v359 = MEMORY[0x1E69E9C10];
      v360 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v359, OS_LOG_TYPE_DEBUG))
    {
      v510 = 134219010;
      *v511 = v357 / 0x3B9ACA00;
      *&v511[8] = 2048;
      v512 = v357 % 0x3B9ACA00 / 0x3E8;
      v513 = 2082;
      *v514 = "[CWFAutoJoinManager __performAutoJoin]";
      *&v514[8] = 2082;
      *&v514[10] = "CWFAutoJoinManager.m";
      *&v514[18] = 1024;
      *v515 = 3082;
      _os_log_send_and_compose_impl();
    }

    v361 = [v276 targetQueue];
    v444[0] = MEMORY[0x1E69E9820];
    v444[1] = 3221225472;
    v444[2] = sub_1E0C785B8;
    v444[3] = &unk_1E86E6BE0;
    v446 = v433;
    v445 = v434;
    dispatch_sync(v361, v444);
  }

  _Block_object_dispose(&v490, 8);

  _Block_object_dispose(&v496, 8);
  _Block_object_dispose(&v502, 8);

  _Block_object_dispose(&v506, 8);
  v362 = *MEMORY[0x1E69E9840];
}

- (void)__sortKnownNetworks:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v10 = [v4 array];
  v6 = [(CWFAutoJoinManager *)self knownNetworkComparator];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:v6];
    [v10 addObject:v7];
  }

  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedAt" ascending:0];
  [v10 addObject:v8];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedAt" ascending:0];
  [v10 addObject:v9];
  [v5 sortUsingDescriptors:v10];
}

- (void)__sortKnownNetworksByJoinTimestamp:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v7 = [v3 array];
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedByUserAt" ascending:0];
  [v7 addObject:v5];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedBySystemAt" ascending:0];
  [v7 addObject:v6];
  [v4 sortUsingDescriptors:v7];
}

- (void)__sortAndFilterUserConfiguredNetworks:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedByUserAt" ascending:0];
  [v5 addObject:v6];
  v7 = [(CWFAutoJoinManager *)self knownNetworkComparator];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:v7];
    [v5 addObject:v8];
  }

  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedAt" ascending:0];
  [v5 addObject:v9];
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedAt" ascending:0];
  [v5 addObject:v10];
  [v4 sortUsingDescriptors:v5];
  v11 = [v4 firstObject];
  v12 = [v11 lastJoinedByUserAt];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF70] array];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_1E0C78B34;
    v18 = &unk_1E86E7780;
    v19 = v12;
    v20 = v13;
    v14 = v13;
    [v4 enumerateObjectsUsingBlock:&v15];
    [v4 removeObjectsInArray:{v14, v15, v16, v17, v18}];
  }
}

- (id)__basicChannelRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 channel];
    v6 = [v4 band];

    v7 = [CWFChannel channelWithNumber:v5 band:v6 width:20];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)__knownNetworksList:(id)a3 containsMatchingKnownNetwork:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
LABEL_3:
    v10 = 0;
    v26 = v8;
    while (1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      v12 = [v6 identifier];
      v13 = [v11 identifier];
      v14 = v13;
      if (v12 == v13)
      {

LABEL_17:
        v23 = v11;
        goto LABEL_18;
      }

      v15 = [v6 identifier];
      if (v15)
      {
        v16 = v15;
        v17 = [v11 identifier];
        if (v17)
        {
          v18 = v17;
          [v6 identifier];
          v19 = v6;
          v21 = v20 = v9;
          v22 = [v11 identifier];
          v28 = [v21 isEqual:v22];

          v9 = v20;
          v6 = v19;
          v8 = v26;

          if (v28)
          {
            goto LABEL_17;
          }

          goto LABEL_13;
        }
      }

LABEL_13:
      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v23 = 0;
LABEL_18:

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (BOOL)__didRecentlyJoinAny6GHzOnlyNetworks:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CWFAutoJoinManager *)self location];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = v6;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v59;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v58 + 1) + 8 * v12);
        if ([v13 wasRecently6GHzOnlyOnAnyDevice])
        {
          v14 = [v13 lastJoinedOnAnyDeviceAt];
          [v14 timeIntervalSinceReferenceDate];
          v16 = v7 - v15;

          if (v16 <= 2592000.0)
          {
            if (!v5)
            {
              goto LABEL_33;
            }

            v51 = v10;
            v52 = v11;
            v53 = v8;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v17 = [v13 BSSList];
            v18 = [v17 countByEnumeratingWithState:&v54 objects:v66 count:16];
            if (!v18)
            {
LABEL_32:

              v8 = v53;
LABEL_33:
              v42 = CWFGetOSLog();
              if (v42)
              {
                v43 = CWFGetOSLog();
              }

              else
              {
                v43 = MEMORY[0x1E69E9C10];
                v44 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                v45 = [v13 identifier];
                v46 = [v45 redactedForWiFi];
                v62 = 138543362;
                v63 = v46;
                _os_log_send_and_compose_impl();
              }

              v41 = 1;
              goto LABEL_40;
            }

            v19 = v18;
            v20 = 0;
            v21 = *v55;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v55 != v21)
                {
                  objc_enumerationMutation(v17);
                }

                v23 = *(*(&v54 + 1) + 8 * i);
                v24 = [v23 lastAssociatedAt];
                [v24 timeIntervalSinceReferenceDate];
                v26 = v7 - v25;

                if (v26 <= 2592000.0)
                {
                  v27 = [v23 location];
                  if (!v27)
                  {
                    goto LABEL_32;
                  }

                  v28 = v27;
                  [v27 distanceFromLocation:v5];
                  v30 = v29;
                  [v28 horizontalAccuracy];
                  v32 = v30 - v31;
                  [v5 horizontalAccuracy];
                  v34 = v32 - v33;

                  if (v34 <= 3000.0)
                  {
                    goto LABEL_32;
                  }

                  v20 = 1;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v54 objects:v66 count:16];
            }

            while (v19);

            v8 = v53;
            v10 = v51;
            v11 = v52;
            if ((v20 & 1) == 0 || !_os_feature_enabled_impl())
            {
              goto LABEL_33;
            }

            v35 = CWFGetOSLog();
            if (v35)
            {
              v36 = CWFGetOSLog();
            }

            else
            {
              v36 = MEMORY[0x1E69E9C10];
              v37 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [v13 identifier];
              v39 = [v38 redactedForWiFi];
              v62 = 138543618;
              v63 = v39;
              v64 = 1024;
              v65 = 3000;
              LODWORD(v50) = 18;
              v49 = &v62;
              _os_log_send_and_compose_impl();
            }
          }
        }

        ++v12;
      }

      while (v12 != v10);
      v40 = [v8 countByEnumeratingWithState:&v58 objects:v67 count:16];
      v10 = v40;
      v41 = 0;
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v41 = 0;
  }

LABEL_40:

  v47 = *MEMORY[0x1E69E9840];
  return v41;
}

- (void)__prepareKnownNetworksContext:(id)a3
{
  v373[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v312 = self;
  [(CWFAutoJoinManager *)self __updateAutoJoinState:1];
  v316 = v4;
  v5 = [v4 knownNetworks];
  v6 = [v5 mutableCopy];

  if ([v316 preferUserConfiguredNetworks])
  {
    [(CWFAutoJoinManager *)v312 __sortAndFilterUserConfiguredNetworks:v6];
  }

  else
  {
    [(CWFAutoJoinManager *)v312 __sortKnownNetworks:v6];
  }

  v274 = v6;
  [v316 setKnownNetworks:v6];
  v308 = [MEMORY[0x1E695DFA0] orderedSet];
  v293 = [MEMORY[0x1E695DFA0] orderedSet];
  v297 = [MEMORY[0x1E695DFA0] orderedSet];
  v296 = [MEMORY[0x1E695DFA0] orderedSet];
  v292 = [MEMORY[0x1E695DFA0] orderedSet];
  v291 = [MEMORY[0x1E695DFA0] orderedSet];
  v295 = [MEMORY[0x1E695DFA0] orderedSet];
  v315 = [MEMORY[0x1E695DFA0] orderedSet];
  v275 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:1];
  v7 = [(CWFAutoJoinManager *)v312 supportedChannels];
  v373[0] = v275;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v373 count:1];
  v9 = [v7 sortedArrayUsingDescriptors:v8];

  v343 = 0u;
  v344 = 0u;
  v341 = 0u;
  v342 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v341 objects:v372 count:16];
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = *v342;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v342 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v341 + 1) + 8 * i);
      v14 = [v316 autoJoinParameters];
      if ([v14 trigger] == 54)
      {

LABEL_12:
        if (![v13 is5GHz])
        {
          continue;
        }

        goto LABEL_13;
      }

      v15 = [v316 autoJoinParameters];
      v16 = [v15 trigger] == 55;

      if (v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v17 = [(CWFAutoJoinManager *)v312 __basicChannelRepresentation:v13];
      [v315 addObject:v17];
      if ([v13 is2GHz])
      {
        v18 = [v13 channel];
        v19 = v308;
        if (v18 != 1)
        {
          v20 = [v13 channel];
          v19 = v308;
          if (v20 != 6)
          {
            if ([v13 channel] == 11)
            {
              v19 = v308;
            }

            else
            {
              v19 = v293;
            }
          }
        }
      }

      else if ([v13 is5GHz])
      {
        if ([v13 isDFS])
        {
          v19 = v296;
        }

        else
        {
          v19 = v297;
        }
      }

      else
      {
        v21 = [v13 is6GHz];
        v19 = v295;
        if (v21)
        {
          if ([v13 is6GHzPSC])
          {
            v19 = v292;
          }

          else
          {
            v19 = v291;
          }
        }
      }

      [v19 addObject:v17];
    }

    v10 = [obj countByEnumeratingWithState:&v341 objects:v372 count:16];
  }

  while (v10);
LABEL_30:

  v300 = [MEMORY[0x1E695DFA0] orderedSet];
  v285 = [MEMORY[0x1E695DFA0] orderedSet];
  v281 = [MEMORY[0x1E695DFA0] orderedSet];
  v277 = [MEMORY[0x1E695DFA0] orderedSet];
  v269 = [MEMORY[0x1E695DFA0] orderedSet];
  v270 = [MEMORY[0x1E695DFA0] orderedSet];
  v280 = [MEMORY[0x1E695DFA0] orderedSet];
  v273 = [MEMORY[0x1E695DFA0] orderedSet];
  v272 = [MEMORY[0x1E695DFA0] orderedSet];
  v278 = [MEMORY[0x1E695DFA0] orderedSet];
  v265 = [MEMORY[0x1E695DFA0] orderedSet];
  v266 = [MEMORY[0x1E695DFA0] orderedSet];
  v271 = [MEMORY[0x1E695DFA8] set];
  v301 = [(CWFAutoJoinManager *)v312 location];
  v22 = CWFGetOSLog();
  if (v22)
  {
    v23 = CWFGetOSLog();
  }

  else
  {
    v23 = MEMORY[0x1E69E9C10];
    v24 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v316 maxBSSChannelAge];
    [v316 minBSSLocationAccuracy];
    v27 = v26;
    [v316 maxBSSLocationDistance];
    v29 = v28;
    v30 = [v316 maxBSSChannelCount];
    v31 = [v316 maxHiddenKnownNetworkSSIDAge];
    v32 = [v301 description];
    v33 = [v32 redactedSensitiveContentForWiFi];
    v34 = [v316 autoJoinParameters];
    v35 = [v34 preferredChannels];
    v345 = 134219522;
    v346 = v25;
    v347 = 2048;
    v348 = v27;
    v349 = 2048;
    v350 = v29;
    v351 = 2048;
    v352 = v30;
    v353 = 2048;
    v354 = v31;
    v355 = 2114;
    v356 = v33;
    v357 = 2114;
    v358 = v35;
    LODWORD(v260) = 72;
    v256 = &v345;
    _os_log_send_and_compose_impl();
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v37 = v36;
  v339 = 0u;
  v340 = 0u;
  v337 = 0u;
  v338 = 0u;
  v38 = [v316 autoJoinParameters];
  v39 = [v38 preferredChannels];

  v40 = [v39 countByEnumeratingWithState:&v337 objects:v371 count:16];
  if (v40)
  {
    v41 = *v338;
    v42 = MEMORY[0x1E69E9C10];
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v338 != v41)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [(CWFAutoJoinManager *)v312 __basicChannelRepresentation:*(*(&v337 + 1) + 8 * j), v256, v260];
        if ([v315 containsObject:v44])
        {
          [v300 addObject:v44];
        }

        else
        {
          v45 = CWFGetOSLog();
          if (v45)
          {
            v46 = CWFGetOSLog();
          }

          else
          {
            v47 = v42;
            v46 = v42;
          }

          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v345 = 138543362;
            v346 = v44;
            LODWORD(v260) = 12;
            v256 = &v345;
            _os_log_send_and_compose_impl();
          }
        }
      }

      v40 = [v39 countByEnumeratingWithState:&v337 objects:v371 count:16];
    }

    while (v40);
  }

  v48 = [v300 array];
  [v285 addObjectsFromArray:v48];

  v49 = [v274 array];
  v50 = [v49 copy];

  v335 = 0u;
  v336 = 0u;
  v333 = 0u;
  v334 = 0u;
  v276 = v50;
  v279 = [v276 countByEnumeratingWithState:&v333 objects:v370 count:16];
  if (!v279)
  {
    v162 = 0;
    goto LABEL_197;
  }

  v267 = *v334;
  v268 = 0;
  while (2)
  {
    v284 = 0;
    while (2)
    {
      if (*v334 != v267)
      {
        objc_enumerationMutation(v276);
      }

      v313 = *(*(&v333 + 1) + 8 * v284);
      v288 = [MEMORY[0x1E695DFA0] orderedSet];
      v306 = [MEMORY[0x1E695DFA0] orderedSet];
      v305 = [MEMORY[0x1E695DFA0] orderedSet];
      v290 = [MEMORY[0x1E695DFA0] orderedSet];
      v287 = [MEMORY[0x1E695DFA0] orderedSet];
      v304 = [MEMORY[0x1E695DFA0] orderedSet];
      v303 = [MEMORY[0x1E695DFA0] orderedSet];
      v289 = [MEMORY[0x1E695DFA0] orderedSet];
      v282 = [v313 BSSList];
      v283 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastAssociatedAt" ascending:0];
      v369 = v283;
      v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v369 count:1];
      v52 = [v282 sortedArrayUsingDescriptors:v51];

      v331 = 0u;
      v332 = 0u;
      v329 = 0u;
      v330 = 0u;
      v294 = v52;
      v299 = [v294 countByEnumeratingWithState:&v329 objects:v368 count:16];
      if (v299)
      {
        v286 = 0;
        v298 = *v330;
        while (1)
        {
          v309 = 0;
          do
          {
            if (*v330 != v298)
            {
              objc_enumerationMutation(v294);
            }

            v314 = *(*(&v329 + 1) + 8 * v309);
            v310 = [v314 location];
            if (v310)
            {
              v53 = v301 != 0;
            }

            else
            {
              v53 = 0;
            }

            if (!v53)
            {
              goto LABEL_69;
            }

            [v301 horizontalAccuracy];
            if (v54 < 0.0)
            {
              goto LABEL_69;
            }

            [v301 horizontalAccuracy];
            v56 = v55;
            [v316 minBSSLocationAccuracy];
            if (v56 > v57)
            {
              goto LABEL_69;
            }

            [v310 horizontalAccuracy];
            if (v58 >= 0.0 && ([v310 horizontalAccuracy], v60 = v59, objc_msgSend(v316, "minBSSLocationAccuracy"), v60 <= v61) && (objc_msgSend(v310, "distanceFromLocation:", v301), v63 = v62, objc_msgSend(v316, "maxBSSLocationDistance"), v63 <= v64))
            {
              v65 = 1;
              v286 = 1;
            }

            else
            {
LABEL_69:
              v65 = 0;
            }

            v66 = [v314 channel];
            v311 = [v66 copy];

            if (v311)
            {
              v67 = [MEMORY[0x1E695DF70] array];
              v307 = [(CWFAutoJoinManager *)v312 __basicChannelRepresentation:v311];
              if ([v307 is6GHz])
              {
                v68 = [v314 colocated2GHzRNRChannel];
                if (v68)
                {
                  v69 = [(CWFAutoJoinManager *)v312 __basicChannelRepresentation:v68];
                  v70 = CWFGetOSLog();
                  if (v70)
                  {
                    v71 = CWFGetOSLog();
                  }

                  else
                  {
                    v71 = MEMORY[0x1E69E9C10];
                    v72 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
                  {
                    v73 = [v313 identifier];
                    v74 = [v73 redactedForWiFi];
                    v345 = 138543874;
                    v346 = v69;
                    v347 = 2114;
                    v348 = v307;
                    v349 = 2114;
                    v350 = v74;
                    LODWORD(v261) = 32;
                    v257 = &v345;
                    _os_log_send_and_compose_impl();
                  }

                  [v67 addObject:v69];
                }

                v75 = [v314 colocated5GHzRNRChannel];
                if (v75)
                {
                  v76 = [(CWFAutoJoinManager *)v312 __basicChannelRepresentation:v75];
                  v77 = CWFGetOSLog();
                  if (v77)
                  {
                    v78 = CWFGetOSLog();
                  }

                  else
                  {
                    v78 = MEMORY[0x1E69E9C10];
                    v79 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
                  {
                    v80 = [v313 identifier];
                    v81 = [v80 redactedForWiFi];
                    v345 = 138543874;
                    v346 = v76;
                    v347 = 2114;
                    v348 = v307;
                    v349 = 2114;
                    v350 = v81;
                    LODWORD(v261) = 32;
                    v257 = &v345;
                    _os_log_send_and_compose_impl();
                  }

                  [v67 addObject:v76];
                }
              }

              [v67 addObject:{v307, v257, v261}];
              v327 = 0u;
              v328 = 0u;
              v325 = 0u;
              v326 = 0u;
              v82 = v67;
              v83 = [v82 countByEnumeratingWithState:&v325 objects:v367 count:16];
              if (v83)
              {
                v84 = *v326;
                if (v65)
                {
                  v85 = v290;
                }

                else
                {
                  v85 = v289;
                }

                if (v65)
                {
                  v86 = v288;
                }

                else
                {
                  v86 = v287;
                }

                do
                {
                  v87 = 0;
                  do
                  {
                    if (*v326 != v84)
                    {
                      objc_enumerationMutation(v82);
                    }

                    v88 = *(*(&v325 + 1) + 8 * v87);
                    if ([v315 containsObject:{v88, v257, v261}])
                    {
                      if (![v88 is6GHz])
                      {
                        goto LABEL_103;
                      }

                      if (_os_feature_enabled_impl())
                      {
                        if (_os_feature_enabled_impl() & 1) != 0 || ([v88 is6GHzPSC])
                        {
                          if ([v316 include6GHzChannels])
                          {
LABEL_103:
                            if (![v316 maxBSSChannelAge] || (objc_msgSend(v314, "lastAssociatedAt"), v89 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v89, "timeIntervalSinceReferenceDate"), v91 = v37 - v90 > objc_msgSend(v316, "maxBSSChannelAge"), v89, v92 = v85, !v91))
                            {
                              v92 = v86;
                            }

                            v93 = v92;
                            [v93 addObject:v88];
                            goto LABEL_112;
                          }

                          v99 = CWFGetOSLog();
                          if (v99)
                          {
                            v93 = CWFGetOSLog();
                          }

                          else
                          {
                            v93 = MEMORY[0x1E69E9C10];
                            v102 = MEMORY[0x1E69E9C10];
                          }

                          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_128;
                          }
                        }

                        else
                        {
                          v100 = CWFGetOSLog();
                          if (v100)
                          {
                            v93 = CWFGetOSLog();
                          }

                          else
                          {
                            v93 = MEMORY[0x1E69E9C10];
                            v103 = MEMORY[0x1E69E9C10];
                          }

                          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_128;
                          }
                        }
                      }

                      else
                      {
                        v98 = CWFGetOSLog();
                        if (v98)
                        {
                          v93 = CWFGetOSLog();
                        }

                        else
                        {
                          v93 = MEMORY[0x1E69E9C10];
                          v101 = MEMORY[0x1E69E9C10];
                        }

                        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_128:
                          v104 = [v313 identifier];
                          v105 = [v104 redactedForWiFi];
                          v345 = 138543618;
                          v346 = v88;
                          v347 = 2114;
                          v348 = v105;
                          LODWORD(v261) = 22;
                          v257 = &v345;
                          _os_log_send_and_compose_impl();
                        }
                      }
                    }

                    else
                    {
                      v94 = CWFGetOSLog();
                      if (v94)
                      {
                        v93 = CWFGetOSLog();
                      }

                      else
                      {
                        v93 = MEMORY[0x1E69E9C10];
                        v95 = MEMORY[0x1E69E9C10];
                      }

                      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                      {
                        v96 = [v313 identifier];
                        v97 = [v96 redactedForWiFi];
                        v345 = 138543618;
                        v346 = v97;
                        v347 = 2114;
                        v348 = v88;
                        LODWORD(v261) = 22;
                        v257 = &v345;
                        _os_log_send_and_compose_impl();
                      }
                    }

LABEL_112:

                    ++v87;
                  }

                  while (v83 != v87);
                  v106 = [v82 countByEnumeratingWithState:&v325 objects:v367 count:16];
                  v83 = v106;
                }

                while (v106);
              }
            }

            ++v309;
          }

          while (v309 != v299);
          v107 = [v294 countByEnumeratingWithState:&v329 objects:v368 count:16];
          v299 = v107;
          if (!v107)
          {
            goto LABEL_137;
          }
        }
      }

      v286 = 0;
LABEL_137:

      v323 = 0u;
      v324 = 0u;
      v321 = 0u;
      v322 = 0u;
      v108 = v288;
      v109 = 0;
      v110 = [v108 countByEnumeratingWithState:&v321 objects:v366 count:16];
      if (v110)
      {
        v111 = *v322;
        do
        {
          v112 = 0;
          v113 = v109;
          do
          {
            if (*v322 != v111)
            {
              objc_enumerationMutation(v108);
            }

            v114 = *(*(&v321 + 1) + 8 * v112);
            if (v113 >= [v316 maxBSSChannelCount])
            {
              v115 = v305;
            }

            else
            {
              v115 = v306;
            }

            [v115 addObject:v114];
            ++v113;
            ++v112;
          }

          while (v110 != v112);
          v109 += v110;
          v110 = [v108 countByEnumeratingWithState:&v321 objects:v366 count:16];
        }

        while (v110);
      }

      v319 = 0u;
      v320 = 0u;
      v317 = 0u;
      v318 = 0u;
      v116 = v287;
      v117 = [v116 countByEnumeratingWithState:&v317 objects:v365 count:16];
      if (v117)
      {
        v118 = *v318;
        do
        {
          v119 = 0;
          v120 = v109;
          do
          {
            if (*v318 != v118)
            {
              objc_enumerationMutation(v116);
            }

            v121 = *(*(&v317 + 1) + 8 * v119);
            if (v120 >= [v316 maxBSSChannelCount])
            {
              v122 = v303;
            }

            else
            {
              v122 = v304;
            }

            [v122 addObject:v121];
            ++v120;
            ++v119;
          }

          while (v117 != v119);
          v109 += v117;
          v117 = [v116 countByEnumeratingWithState:&v317 objects:v365 count:16];
        }

        while (v117);
      }

      v123 = [v306 array];
      [v280 addObjectsFromArray:v123];

      v124 = [v305 array];
      [v273 addObjectsFromArray:v124];

      v125 = [v290 array];
      [v272 addObjectsFromArray:v125];

      v126 = [v304 array];
      [v277 addObjectsFromArray:v126];

      v127 = [v303 array];
      [v269 addObjectsFromArray:v127];

      v128 = [v289 array];
      [v270 addObjectsFromArray:v128];

      v129 = [v313 networkName];
      if (v129 && ([v313 isPasspoint] & 1) == 0)
      {
        if ([v313 hiddenState] == 2)
        {
          v147 = [v313 wasHiddenBefore];
          if (!v147)
          {
            goto LABEL_159;
          }

          v148 = [v313 wasHiddenBefore];
          [v148 timeIntervalSinceNow];
          v150 = v149 >= 0.0;
          v151 = [v313 wasHiddenBefore];
          [v151 timeIntervalSinceNow];
          v153 = v152;

          if (v150)
          {
            if (v153 >= 604800.0)
            {
              goto LABEL_159;
            }
          }

          else if (v153 <= -604800.0)
          {
            goto LABEL_159;
          }
        }

        if ([v316 maxHiddenKnownNetworkSSIDAge])
        {
          v154 = [v313 lastJoinedAt];
          [v154 timeIntervalSinceReferenceDate];
          v156 = v155;
          if (v37 - v155 <= [v316 maxHiddenKnownNetworkSSIDAge])
          {
          }

          else
          {
            v157 = [v313 lastDiscoveredAt];
            [v157 timeIntervalSinceReferenceDate];
            v159 = v37 - v158 > [v316 maxHiddenKnownNetworkSSIDAge];

            if (v159)
            {
              goto LABEL_159;
            }
          }
        }

        if (v286)
        {
          v160 = v266;
        }

        else
        {
          v160 = v265;
        }

        [v160 addObject:v129];
        v130 = "yes";
      }

      else
      {
LABEL_159:
        v130 = "no";
      }

      v131 = [MEMORY[0x1E695DFA8] set];
      if ([v313 isPasspoint])
      {
        v132 = [v313 domainName];

        if (v132)
        {
          [v131 addObject:&unk_1F5BBC5E0];
        }

        v133 = [v313 NAIRealmNameList];
        v134 = [v133 count];

        if (v134)
        {
          [v131 addObject:&unk_1F5BBC5F8];
        }

        v135 = [v313 roamingConsortiumList];
        v136 = [v135 count];

        if (v136)
        {
          [v131 addObject:&unk_1F5BBC610];
        }

        v137 = [v313 cellularNetworkInfo];
        v138 = [v137 count];

        if (v138)
        {
          [v131 addObject:&unk_1F5BBC628];
        }

        [v131 addObject:&unk_1F5BBC640];
        v139 = [v131 allObjects];
        [v271 addObjectsFromArray:v139];
      }

      v140 = CWFGetOSLog();
      if (v140)
      {
        v141 = CWFGetOSLog();
      }

      else
      {
        v141 = MEMORY[0x1E69E9C10];
        v142 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
      {
        v143 = [v313 identifier];
        v144 = [v143 redactedForWiFi];
        v145 = v144;
        v345 = 138545666;
        v146 = "no";
        if (v286)
        {
          v146 = "yes";
        }

        v346 = v144;
        v347 = 2082;
        v348 = v146;
        v349 = 2082;
        v350 = v130;
        v351 = 2114;
        v352 = v306;
        v353 = 2114;
        v354 = v305;
        v355 = 2114;
        v356 = v290;
        v357 = 2114;
        v358 = v304;
        v359 = 2114;
        v360 = v303;
        v361 = 2114;
        v362 = v289;
        v363 = 2114;
        v364 = v131;
        LODWORD(v260) = 102;
        v256 = &v345;
        _os_log_send_and_compose_impl();
      }

      v268 += v286 & 1;
      if (++v284 != v279)
      {
        continue;
      }

      break;
    }

    v161 = [v276 countByEnumeratingWithState:&v333 objects:v370 count:16];
    v279 = v161;
    if (v161)
    {
      continue;
    }

    break;
  }

  v162 = v268 > 1;
LABEL_197:

  if ([v280 count] || objc_msgSend(v273, "count") || objc_msgSend(v272, "count"))
  {
    [(CWFAutoJoinMetric *)v312->_metric setDidUseLocationOptimizedChannelList:1, v256, v260];
  }

  v163 = v312;
  objc_sync_enter(v163);
  v164 = [v163[19] parameters];
  v165 = [v164 mode];

  objc_sync_exit(v163);
  LODWORD(v164) = [v316 BSSChannelsOnly];
  v166 = [v280 array];
  [v285 addObjectsFromArray:v166];

  if (!v164)
  {
    v174 = [v273 array];
    [v285 addObjectsFromArray:v174];

    v175 = [v272 array];
    [v285 addObjectsFromArray:v175];

    v176 = [v277 array];
    [v285 addObjectsFromArray:v176];

    v177 = [v269 array];
    [v285 addObjectsFromArray:v177];

    v168 = [v270 array];
    [v285 addObjectsFromArray:v168];
    goto LABEL_208;
  }

  v167 = [v277 array];
  [v285 addObjectsFromArray:v167];

  if (![v285 count])
  {
    v168 = [MEMORY[0x1E695DFA0] orderedSet];
    v169 = [v272 array];
    [v168 addObjectsFromArray:v169];

    v170 = [v270 array];
    [v168 addObjectsFromArray:v170];

    v171 = [v168 array];
    v172 = [v168 count];
    if (v172 >= [v316 maxBSSChannelCount])
    {
      v173 = [v316 maxBSSChannelCount];
    }

    else
    {
      v173 = [v168 count];
    }

    v178 = [v171 subarrayWithRange:{0, v173, v256, v260}];
    [v285 addObjectsFromArray:v178];

LABEL_208:
  }

  if (([v316 BSSChannelsOnly] & 1) == 0)
  {
    v179 = [v308 array];
    [v281 addObjectsFromArray:v179];

    v180 = [v293 array];
    [v281 addObjectsFromArray:v180];

    v181 = [v297 array];
    [v281 addObjectsFromArray:v181];

    v182 = [v296 array];
    [v281 addObjectsFromArray:v182];

    if ([v316 include6GHzChannels])
    {
      if (_os_feature_enabled_impl())
      {
        v183 = [v292 array];
        [v281 addObjectsFromArray:v183];

        if (_os_feature_enabled_impl())
        {
          v184 = [v291 array];
          [v281 addObjectsFromArray:v184];
        }
      }
    }

    v185 = [v295 array];
    [v281 addObjectsFromArray:v185];

    [v281 minusOrderedSet:v285];
  }

  v186 = [v266 array];
  [v278 addObjectsFromArray:v186];

  v187 = [v265 array];
  [v278 addObjectsFromArray:v187];

  if (v165 == 1 && v162)
  {
    v188 = CWFGetOSLog();
    if (v188)
    {
      v189 = CWFGetOSLog();
    }

    else
    {
      v189 = MEMORY[0x1E69E9C10];
      v190 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
    {
      v345 = 67109120;
      LODWORD(v346) = 4;
      LODWORD(v262) = 8;
      v258 = &v345;
      _os_log_send_and_compose_impl();
    }

    [v316 setMaxScanChannelCount:4];
    [v163[25] setDidDetectColocatedNetworkEnvironment:1];
  }

  v191 = [v285 array];
  v192 = [v191 copy];
  [v316 setRecentChannelList:v192];

  v193 = [v281 array];
  v194 = [v193 copy];
  [v316 setRemainingChannelList:v194];

  v195 = [v316 autoJoinParameters];
  if ([v195 trigger] != 32)
  {
    v197 = [v316 autoJoinParameters];
    if ([v197 trigger] == 47)
    {
      v198 = [v316 BSSChannelsOnly];

      if ((v198 & 1) == 0)
      {
        goto LABEL_265;
      }

      goto LABEL_227;
    }

    goto LABEL_263;
  }

  v196 = [v316 BSSChannelsOnly];

  if (!v196)
  {
    goto LABEL_265;
  }

LABEL_227:
  v199 = [v300 count];
  v200 = CWFGetOSLog();
  if (v200)
  {
    v201 = CWFGetOSLog();
  }

  else
  {
    v201 = MEMORY[0x1E69E9C10];
    v202 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
  {
    v345 = 134217984;
    v346 = v199;
    LODWORD(v263) = 12;
    v259 = &v345;
    _os_log_send_and_compose_impl();
  }

  if (v199 == 1)
  {
    v195 = [v300 firstObject];
    v203 = CWFGetOSLog();
    if (v203)
    {
      v204 = CWFGetOSLog();
    }

    else
    {
      v204 = MEMORY[0x1E69E9C10];
      v205 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
    {
      v206 = [v195 channel];
      v345 = 134217984;
      v346 = v206;
      LODWORD(v263) = 12;
      v259 = &v345;
      _os_log_send_and_compose_impl();
    }

    if ([v195 band] == 2)
    {
      if (![v316 includeAdjacent5GHzChannel])
      {
        goto LABEL_262;
      }

      v207 = [v195 channel];
      v208 = 4;
      if (v207 > 148)
      {
        if (v207 > 156)
        {
          if (v207 != 157)
          {
            if (v207 != 161)
            {
              goto LABEL_262;
            }

            goto LABEL_254;
          }

LABEL_255:
          v209 = [v195 channel] + v208;
          if (v209)
          {
            v210 = [v195 copy];
            [v210 setChannel:v209];
            [v300 addObject:v210];
            v211 = CWFGetOSLog();
            if (v211)
            {
              v212 = CWFGetOSLog();
            }

            else
            {
              v212 = MEMORY[0x1E69E9C10];
              v213 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
            {
              v345 = 138543362;
              v346 = v210;
              LODWORD(v263) = 12;
              v259 = &v345;
              _os_log_send_and_compose_impl();
            }
          }
        }

        else
        {
          if (v207 == 149)
          {
            goto LABEL_255;
          }

          if (v207 == 153)
          {
            goto LABEL_254;
          }
        }
      }

      else
      {
        if (v207 <= 43)
        {
          if (v207 != 36)
          {
            if (v207 != 40)
            {
              goto LABEL_262;
            }

LABEL_254:
            v208 = -4;
          }

          goto LABEL_255;
        }

        if (v207 == 44)
        {
          goto LABEL_255;
        }

        if (v207 == 48)
        {
          goto LABEL_254;
        }
      }

LABEL_262:
      v197 = [v300 array];
      v214 = [v197 copy];
      [v316 setRecentChannelList:v214];

LABEL_263:
    }
  }

LABEL_265:
  if (([v316 passiveScan] & 1) == 0)
  {
    if ([v278 count])
    {
      v215 = [v278 array];
      [v316 setSSIDList:v215];
    }

    else
    {
      [v316 setSSIDList:0];
    }
  }

  if ([v271 count])
  {
    v216 = [v271 allObjects];
    [v316 setANQPElementIDList:v216];
  }

  else
  {
    [v316 setANQPElementIDList:0];
  }

  v217 = [v163[25] channelList];
  v218 = v217 == 0;

  if (v218)
  {
    v219 = [v300 array];
    v221 = v163[25];
    v220 = v163 + 25;
    [v221 setPreferredChannelList:v219];

    v222 = [v316 recentChannelList];
    [*v220 setRecentChannelList:v222];

    v223 = [v316 remainingChannelList];
    [*v220 setRemainingChannelList:v223];

    v224 = [v316 recentChannelList];
    v225 = [v316 remainingChannelList];
    v226 = [v224 arrayByAddingObjectsFromArray:v225];
    [*v220 setChannelList:v226];
  }

  v227 = CWFGetOSLog();
  if (v227)
  {
    v228 = CWFGetOSLog();
  }

  else
  {
    v228 = MEMORY[0x1E69E9C10];
    v229 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
  {
    v230 = [v316 SSIDList];
    v231 = [v230 count];
    v232 = [v316 SSIDList];
    v233 = [v232 componentsJoinedByString:{@", "}];
    v345 = 134218242;
    v346 = v231;
    v347 = 2114;
    v348 = v233;
    _os_log_send_and_compose_impl();
  }

  v234 = CWFGetOSLog();
  if (v234)
  {
    v235 = CWFGetOSLog();
  }

  else
  {
    v235 = MEMORY[0x1E69E9C10];
    v236 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
  {
    v237 = [v316 ANQPElementIDList];
    v238 = [v237 count];
    v239 = [v316 ANQPElementIDList];
    v240 = [v239 componentsJoinedByString:{@", "}];
    v345 = 134218242;
    v346 = v238;
    v347 = 2114;
    v348 = v240;
    _os_log_send_and_compose_impl();
  }

  v241 = CWFGetOSLog();
  if (v241)
  {
    v242 = CWFGetOSLog();
  }

  else
  {
    v242 = MEMORY[0x1E69E9C10];
    v243 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
  {
    v244 = [v316 recentChannelList];
    v245 = [v244 count];
    v246 = [v316 recentChannelList];
    v247 = [v246 componentsJoinedByString:{@", "}];
    v345 = 134218242;
    v346 = v245;
    v347 = 2114;
    v348 = v247;
    _os_log_send_and_compose_impl();
  }

  v248 = CWFGetOSLog();
  if (v248)
  {
    v249 = CWFGetOSLog();
  }

  else
  {
    v249 = MEMORY[0x1E69E9C10];
    v250 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v249, OS_LOG_TYPE_DEFAULT))
  {
    v251 = [v316 remainingChannelList];
    v252 = [v251 count];
    v253 = [v316 remainingChannelList];
    v254 = [v253 componentsJoinedByString:{@", "}];
    v345 = 134218242;
    v346 = v252;
    v347 = 2114;
    v348 = v254;
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(context);
  v255 = *MEMORY[0x1E69E9840];
}

- (id)__cachedScanResultsWithChannelList:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  LOWORD(v19) = 0;
  v8 = -[CWFAutoJoinManager __performScanWithChannelList:SSIDList:passive:dwellTime:maxCacheAge:cacheOnly:isPreAssociationScan:checkForKnownNetworks:error:](self, "__performScanWithChannelList:SSIDList:passive:dwellTime:maxCacheAge:cacheOnly:isPreAssociationScan:checkForKnownNetworks:error:", v7, 0, 0, 0, [v6 maxScanCacheAge], 1, v19, 0);

  if ([v8 count])
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    v10 = [v6 ANQPElementIDList];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(CWFAutoJoinManager *)self __passpointScanResults:v8];
      if ([v12 count])
      {
        v13 = [v6 ANQPElementIDList];
        v14 = [v6 maxANQPCacheAge];
        v15 = [v6 autoJoinParameters];
        v16 = -[CWFAutoJoinManager __performGASQueryWithScanResults:ANQPElementIDList:maxCacheAge:cacheOnly:error:](self, "__performGASQueryWithScanResults:ANQPElementIDList:maxCacheAge:cacheOnly:error:", v12, v13, v14, [v15 mode] == 3, 0);

        if (v16)
        {
          [v9 addObjectsFromArray:v16];
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    [v9 addObjectsFromArray:v8];
  }

  else
  {
    v9 = 0;
  }

  v17 = [v9 allObjects];

  return v17;
}

- (BOOL)__hasJoinedAnyKnownNetworkSinceBoot
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_hasJoinedAnyKnownNetworkSinceBoot)
  {
    hasJoinedAnyKnownNetworkSinceBoot = 1;
  }

  else
  {
    v4 = CWFGetBootTime();
    knownNetworks = v2->_knownNetworks;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E0C7BD14;
    v8[3] = &unk_1E86E77A8;
    v6 = v4;
    v9 = v6;
    v10 = v2;
    [(NSSet *)knownNetworks enumerateObjectsUsingBlock:v8];

    hasJoinedAnyKnownNetworkSinceBoot = v2->_hasJoinedAnyKnownNetworkSinceBoot;
  }

  objc_sync_exit(v2);

  return hasJoinedAnyKnownNetworkSinceBoot & 1;
}

- (id)__performPreAssociationScanWithContext:(id)a3 network:(id)a4
{
  v248[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v186 = a4;
  v7 = [v186 matchingKnownNetworkProfile];
  v208 = [MEMORY[0x1E695DFA0] orderedSet];
  v195 = [MEMORY[0x1E695DFA0] orderedSet];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:1];
  v211 = self;
  v9 = [(CWFAutoJoinManager *)self supportedChannels];
  v182 = v8;
  v248[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v248 count:1];
  v11 = [v9 sortedArrayUsingDescriptors:v10];

  v196 = [MEMORY[0x1E695DFA0] orderedSet];
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v220 objects:v247 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v221;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v221 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v220 + 1) + 8 * i);
        v17 = [(CWFAutoJoinManager *)v211 __basicChannelRepresentation:v16];
        [v208 addObject:v17];
        if ([v16 is6GHzPSC])
        {
          [v196 addObject:v17];
        }

        if (([v16 is6GHz] & 1) == 0)
        {
          [v195 addObject:v17];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v220 objects:v247 count:16];
    }

    while (v13);
  }

  v187 = [MEMORY[0x1E695DFA0] orderedSet];
  v190 = [MEMORY[0x1E695DFA0] orderedSet];
  v189 = [MEMORY[0x1E695DFA0] orderedSet];
  v18 = [MEMORY[0x1E695DFA8] set];
  v19 = [(CWFAutoJoinManager *)v211 location];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v21 = v20;
  v22 = [v186 channel];
  v23 = [(CWFAutoJoinManager *)v211 __basicChannelRepresentation:v22];

  v24 = [(CWFAutoJoinMetric *)v211->_metric scanChannels];
  [v18 addObjectsFromArray:v24];

  v25 = [(CWFAutoJoinMetric *)v211->_metric preAssociationScanChannels];
  [v18 addObjectsFromArray:v25];

  v26 = [(CWFAutoJoinMetric *)v211->_metric followup6GHzScanChannels];
  v185 = v18;
  [v18 addObjectsFromArray:v26];

  v27 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v211->_beginTimestamp) / 0xF4240;
  v198 = v6;
  v199 = v19;
  v183 = v23;
  v179 = v27;
  if (v23 && [v186 age] > v27 && (objc_msgSend(v18, "containsObject:", v23) & 1) == 0)
  {
    v102 = MEMORY[0x1E696AEC0];
    v103 = [v186 shortSSID];
    v104 = [v186 BSSID];
    v105 = [v186 channel];
    v106 = [v102 stringWithFormat:@"%lu/%@/%lu", v103, v104, objc_msgSend(v105, "channel")];

    v107 = [(NSMutableDictionary *)v211->_followup6GHzRNRMap objectForKeyedSubscript:v106];
    v108 = [(NSMutableDictionary *)v211->_followup6GHzFILSDMap objectForKeyedSubscript:v106];
    if (!(v107 | v108))
    {
      v109 = CWFGetOSLog();
      if (v109)
      {
        v110 = CWFGetOSLog();
      }

      else
      {
        v110 = MEMORY[0x1E69E9C10];
        v166 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        v167 = [v7 identifier];
        v168 = [v167 redactedForWiFi];
        v169 = [v186 age];
        v224 = 138544130;
        v225 = v183;
        v226 = 2114;
        v227 = v168;
        v228 = 2048;
        v229 = v169;
        v230 = 2048;
        v231 = v179;
        LODWORD(v175) = 42;
        v170 = &v224;
        _os_log_send_and_compose_impl();
      }

      [v187 addObject:v183];
      v19 = v199;
    }

    v184 = 0;
    v6 = v198;
  }

  else
  {
    v184 = [MEMORY[0x1E695DFA0] orderedSetWithObject:v186];
  }

  v28 = [v7 BSSList];
  v180 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastAssociatedAt" ascending:0];
  v246 = v180;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v246 count:1];
  v181 = v28;
  v30 = [v28 sortedArrayUsingDescriptors:v29];

  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v194 = v30;
  v201 = [v194 countByEnumeratingWithState:&v216 objects:v245 count:16];
  if (v201)
  {
    v209 = 0;
    v188 = 0;
    v200 = *v217;
    v31 = v208;
    while (1)
    {
      v32 = 0;
      do
      {
        if (*v217 != v200)
        {
          objc_enumerationMutation(v194);
        }

        v33 = *(*(&v216 + 1) + 8 * v32);
        if (![v6 maxBSSChannelAge] || (objc_msgSend(v33, "lastAssociatedAt"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "timeIntervalSinceReferenceDate"), v36 = v21 - v35, v37 = objc_msgSend(v6, "maxBSSChannelAge"), v34, v36 <= v37))
        {
          if ([v6 maxBSSChannelCount] && v209 >= objc_msgSend(v6, "maxBSSChannelCount"))
          {
            goto LABEL_93;
          }

          v38 = [v33 location];
          v39 = 0;
          v205 = v38;
          if (v19 && v38)
          {
            [v19 horizontalAccuracy];
            if (v40 < 0.0)
            {
              goto LABEL_32;
            }

            [v19 horizontalAccuracy];
            v42 = v41;
            [v6 minBSSLocationAccuracy];
            if (v42 > v43)
            {
              goto LABEL_32;
            }

            [v205 horizontalAccuracy];
            if (v44 >= 0.0 && ([v205 horizontalAccuracy], v46 = v45, objc_msgSend(v6, "minBSSLocationAccuracy"), v46 <= v47) && (objc_msgSend(v205, "distanceFromLocation:", v19), v49 = v48, objc_msgSend(v6, "maxBSSLocationDistance"), v49 <= v50))
            {
              v39 = 1;
              v188 = 1;
            }

            else
            {
LABEL_32:
              v39 = 0;
            }
          }

          v51 = [v33 channel];
          v52 = [v51 copy];

          v204 = v52;
          if (v52)
          {
            v53 = [MEMORY[0x1E695DF70] array];
            v54 = [(CWFAutoJoinManager *)v211 __basicChannelRepresentation:v52];
            v55 = v54;
            if ([v54 is6GHz])
            {
              v56 = [v33 colocated2GHzRNRChannel];
              v202 = v56;
              if (v56)
              {
                v191 = [(CWFAutoJoinManager *)v211 __basicChannelRepresentation:v56];
                v57 = CWFGetOSLog();
                if (v57)
                {
                  v58 = CWFGetOSLog();
                }

                else
                {
                  v58 = MEMORY[0x1E69E9C10];
                  v59 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v60 = [v7 identifier];
                  v61 = [v60 redactedForWiFi];
                  v224 = 138543874;
                  v225 = v191;
                  v226 = 2114;
                  v227 = v55;
                  v228 = 2114;
                  v229 = v61;
                  LODWORD(v176) = 32;
                  v171 = &v224;
                  _os_log_send_and_compose_impl();

                  v54 = v55;
                }

                [v53 addObject:v191];
                v56 = v202;
              }

              v62 = [v33 colocated5GHzRNRChannel];
              if (v62)
              {
                v192 = [(CWFAutoJoinManager *)v211 __basicChannelRepresentation:v62];
                v63 = CWFGetOSLog();
                if (v63)
                {
                  v64 = CWFGetOSLog();
                }

                else
                {
                  v64 = MEMORY[0x1E69E9C10];
                  v65 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  v66 = [v7 identifier];
                  v67 = [v66 redactedForWiFi];
                  v224 = 138543874;
                  v225 = v192;
                  v226 = 2114;
                  v227 = v55;
                  v228 = 2114;
                  v229 = v67;
                  LODWORD(v176) = 32;
                  v171 = &v224;
                  _os_log_send_and_compose_impl();

                  v54 = v55;
                }

                [v53 addObject:v192];
                v56 = v202;
              }
            }

            else
            {
              [v53 addObject:v54];
            }

            v203 = v32;
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v68 = v53;
            v69 = [v68 countByEnumeratingWithState:&v212 objects:v244 count:16];
            if (v69)
            {
              v70 = v69;
              v71 = *v213;
              v72 = v190;
              if (v39)
              {
                v72 = v189;
              }

              v206 = v72;
              do
              {
                v73 = 0;
                do
                {
                  if (*v213 != v71)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v74 = *(*(&v212 + 1) + 8 * v73);
                  if (![v31 containsObject:{v74, v171}])
                  {
                    v77 = CWFGetOSLog();
                    if (v77)
                    {
                      v78 = CWFGetOSLog();
                    }

                    else
                    {
                      v78 = MEMORY[0x1E69E9C10];
                      v79 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                    {
                      v80 = [v7 identifier];
                      [v80 redactedForWiFi];
                      v82 = v81 = v7;
                      v224 = 138543618;
                      v225 = v82;
                      v226 = 2114;
                      v227 = v74;
                      LODWORD(v176) = 22;
                      v171 = &v224;
                      _os_log_send_and_compose_impl();

                      v7 = v81;
                      v31 = v208;
                    }

                    goto LABEL_71;
                  }

                  if ([v74 is6GHz])
                  {
                    if ((_os_feature_enabled_impl() & 1) == 0)
                    {
                      v83 = CWFGetOSLog();
                      if (v83)
                      {
                        v78 = CWFGetOSLog();
                      }

                      else
                      {
                        v78 = MEMORY[0x1E69E9C10];
                        v85 = MEMORY[0x1E69E9C10];
                      }

                      if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_71;
                      }

LABEL_83:
                      v193 = [v7 identifier];
                      v87 = [v193 redactedForWiFi];
                      v224 = 138543618;
                      v225 = v87;
                      v226 = 2114;
                      v227 = v74;
                      LODWORD(v176) = 22;
                      v171 = &v224;
                      _os_log_send_and_compose_impl();

                      goto LABEL_71;
                    }

                    if ((_os_feature_enabled_impl() & 1) == 0 && ([v74 is6GHzPSC] & 1) == 0)
                    {
                      v84 = CWFGetOSLog();
                      if (v84)
                      {
                        v78 = CWFGetOSLog();
                      }

                      else
                      {
                        v78 = MEMORY[0x1E69E9C10];
                        v86 = MEMORY[0x1E69E9C10];
                      }

                      if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_71;
                      }

                      goto LABEL_83;
                    }
                  }

                  v75 = [(CWFAutoJoinMetric *)v211->_metric scanChannels];
                  v76 = [v75 containsObject:v74];

                  if (v76)
                  {
                    v54 = v55;
                    goto LABEL_72;
                  }

                  v78 = v206;
                  [v78 addObject:v74];
                  ++v209;
LABEL_71:
                  v54 = v55;

LABEL_72:
                  ++v73;
                }

                while (v70 != v73);
                v88 = [v68 countByEnumeratingWithState:&v212 objects:v244 count:16];
                v70 = v88;
              }

              while (v88);
            }

            v6 = v198;
            v19 = v199;
            v32 = v203;
          }
        }

        ++v32;
      }

      while (v32 != v201);
      v89 = [v194 countByEnumeratingWithState:&v216 objects:v245 count:16];
      v201 = v89;
      if (!v89)
      {
        goto LABEL_93;
      }
    }
  }

  v188 = 0;
  v31 = v208;
LABEL_93:

  v90 = [v189 array];
  [v187 addObjectsFromArray:v90];

  v91 = [v190 array];
  [v187 addObjectsFromArray:v91];

  v92 = [v7 networkName];
  if (!v92 || ([v7 isPasspoint] & 1) != 0)
  {
    goto LABEL_95;
  }

  if ([v7 hiddenState] == 2)
  {
    v94 = [v7 wasHiddenBefore];
    if (!v94)
    {
      goto LABEL_95;
    }

    v95 = v94;
    v96 = [v7 wasHiddenBefore];
    [v96 timeIntervalSinceNow];
    v98 = v97;
    v99 = [v7 wasHiddenBefore];
    [v99 timeIntervalSinceNow];
    v101 = v100;

    if (v98 < 0.0)
    {
      if (v101 > -604800.0)
      {
        goto LABEL_105;
      }

LABEL_95:
      v93 = 0;
      goto LABEL_106;
    }

    if (v101 >= 604800.0)
    {
      goto LABEL_95;
    }
  }

LABEL_105:
  v93 = [MEMORY[0x1E695DEC8] arrayWithObject:{v92, v171}];
LABEL_106:
  v111 = CWFGetOSLog();
  if (v111)
  {
    v112 = CWFGetOSLog();
  }

  else
  {
    v112 = MEMORY[0x1E69E9C10];
    v113 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    v207 = [v7 identifier];
    v114 = [v207 redactedForWiFi];
    v115 = "no";
    v210 = v92;
    if (v188)
    {
      v116 = "yes";
    }

    else
    {
      v116 = "no";
    }

    if ([v93 count])
    {
      v115 = "yes";
    }

    v117 = v93;
    v118 = [v6 maxBSSChannelAge];
    [v6 minBSSLocationAccuracy];
    v120 = v119;
    [v6 maxBSSLocationDistance];
    v122 = v121;
    v123 = [v6 maxBSSChannelCount];
    v124 = [v19 description];
    [v124 redactedSensitiveContentForWiFi];
    v126 = v125 = v7;
    v224 = 138545666;
    v225 = v114;
    v226 = 2082;
    v227 = v116;
    v31 = v208;
    v228 = 2082;
    v229 = v115;
    v230 = 2114;
    v231 = v189;
    v232 = 2114;
    v233 = v190;
    v234 = 2048;
    v235 = v118;
    v93 = v117;
    v236 = 2048;
    v237 = v120;
    v238 = 2048;
    v239 = v122;
    v240 = 2048;
    v241 = v123;
    v6 = v198;
    v242 = 2114;
    v243 = v126;
    LODWORD(v176) = 102;
    v171 = &v224;
    _os_log_send_and_compose_impl();

    v7 = v125;
    v92 = v210;

    v19 = v199;
  }

  v127 = [v6 autoJoinParameters];
  v128 = [v127 mode];

  if (v128 == 2)
  {
    v129 = CWFGetOSLog();
    if (v129)
    {
      v130 = CWFGetOSLog();
    }

    else
    {
      v130 = MEMORY[0x1E69E9C10];
      v131 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v224) = 0;
      LODWORD(v176) = 2;
      v171 = &v224;
      _os_log_send_and_compose_impl();
    }

    v132 = [v196 array];
    [v187 addObjectsFromArray:v132];
  }

  v133 = v186;
  v134 = [v186 matchingKnownNetworkProfile];
  v135 = [v134 lastJoinedBySystemAt];
  if (v135)
  {
  }

  else
  {
    v136 = [v186 matchingKnownNetworkProfile];
    v137 = [v136 addReason];

    v133 = v186;
    if (v137 != 8)
    {
      goto LABEL_133;
    }

    v138 = CWFGetOSLog();
    if (v138)
    {
      v139 = CWFGetOSLog();
    }

    else
    {
      v139 = MEMORY[0x1E69E9C10];
      v140 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v224) = 0;
      LODWORD(v177) = 2;
      v172 = &v224;
      _os_log_send_and_compose_impl();
    }

    v134 = [v195 array];
    [v187 addObjectsFromArray:v134];
    v133 = v186;
  }

LABEL_133:
  v141 = [v133 channel];
  if ([v141 is6GHz])
  {
    v142 = [v133 matchingKnownNetworkProfile];
    v143 = [v142 lastJoinedAt];

    v133 = v186;
    if (!v143)
    {
      v144 = CWFGetOSLog();
      if (v144)
      {
        v145 = CWFGetOSLog();
      }

      else
      {
        v145 = MEMORY[0x1E69E9C10];
        v146 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v224) = 0;
        LODWORD(v178) = 2;
        v173 = &v224;
        _os_log_send_and_compose_impl();
      }

      v147 = [v195 array];
      [v187 addObjectsFromArray:v147];

      v148 = [v196 array];
      [v187 addObjectsFromArray:v148];

      [v6 setDidForceAllRemainingChannels:1];
      v133 = v186;
    }
  }

  else
  {
  }

  v149 = [v187 count];
  [v187 minusSet:v185];
  if ([v187 count])
  {
    v150 = CWFGetOSLog();
    if (v150)
    {
      v151 = CWFGetOSLog();
    }

    else
    {
      v151 = MEMORY[0x1E69E9C10];
      v155 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v224) = 0;
      v174 = &v224;
      _os_log_send_and_compose_impl();
    }

    v156 = [v187 array];
    BYTE1(v174) = [v6 skipRemainingNon2GHzChannelsUnlessKnownNetworkFound];
    LOBYTE(v174) = 1;
    v154 = [(CWFAutoJoinManager *)v211 __performScanWithChannelList:v156 SSIDList:v93 passive:0 dwellTime:0 maxCacheAge:v179 cacheOnly:0 isPreAssociationScan:v174 checkForKnownNetworks:0 error:?];

    if (v154)
    {
      v157 = v184;
      if (!v184)
      {
        v157 = [MEMORY[0x1E695DFA0] orderedSet];
      }

      [v157 removeObjectsInArray:v154];
      v184 = v157;
      [v157 addObjectsFromArray:v154];
      v158 = [v6 autoJoinParameters];
      if ([v158 trigger] != 54)
      {
        v159 = [v6 autoJoinParameters];
        v160 = [v159 trigger];

        if (v160 == 55)
        {
          v133 = v186;
          v19 = v199;
          goto LABEL_170;
        }

        v158 = [(CWFAutoJoinManager *)v211 __perform6GHzFollowupDiscoveryWithScanResults:v154 SSIDList:v93 dwellTime:0 context:v6 error:0];
        v19 = v199;
        if (v158)
        {
          [v157 removeObjectsInArray:v158];
          [v157 addObjectsFromArray:v158];
        }
      }
    }

    v133 = v186;
  }

  else
  {
    v152 = CWFGetOSLog();
    v153 = v152;
    if (v149)
    {
      if (v152)
      {
        v154 = CWFGetOSLog();
      }

      else
      {
        v154 = MEMORY[0x1E69E9C10];
        v161 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_170;
      }

      LOWORD(v224) = 0;
    }

    else
    {
      if (v152)
      {
        v154 = CWFGetOSLog();
      }

      else
      {
        v154 = MEMORY[0x1E69E9C10];
        v162 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_170;
      }

      LOWORD(v224) = 0;
    }

    _os_log_send_and_compose_impl();
  }

LABEL_170:

  v163 = [v184 array];

  v164 = *MEMORY[0x1E69E9840];

  return v163;
}

- (BOOL)__discoverKnownNetworksWithContext:(id)a3 error:(id *)a4
{
  v149 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v141 = 134218752;
    v142 = [v5 maxScanCycles];
    v143 = 2048;
    v144 = [v5 maxScanChannelCount];
    v145 = 2048;
    v146 = [v5 maxScanSSIDCount];
    v147 = 2048;
    v148 = [v5 minRSSI];
    LODWORD(v108) = 42;
    v106 = &v141;
    _os_log_send_and_compose_impl();
  }

  v9 = [v5 autoJoinParameters];
  v138 = 0;
  v10 = -[CWFAutoJoinManager __allowAutoJoinWithTrigger:error:](self, "__allowAutoJoinWithTrigger:error:", [v9 trigger], &v138);
  v11 = v138;

  if (!v10)
  {
    v121 = 0;
    v122 = 0;
    v21 = 0;
    v102 = 0;
    v12 = 0;
    v16 = 0;
    v35 = 0;
    v101 = a4;
    if (a4)
    {
      goto LABEL_115;
    }

    goto LABEL_117;
  }

  context = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:1];
  v13 = [(CWFAutoJoinManager *)self supportedChannels];
  v140 = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v140 count:1];
  v15 = [v13 sortedArrayUsingDescriptors:v14];

  [(CWFAutoJoinManager *)self __updateAutoJoinState:2];
  v113 = v15;
  if ([v5 cacheOnly])
  {
    v16 = [(CWFAutoJoinManager *)self __cachedScanResultsWithChannelList:v15 context:v5];
    if ([v16 count])
    {
      v137 = v11;
      v17 = [(CWFAutoJoinManager *)self __matchAndJoinScanResults:v16 allowPreAssociationScan:[(CWFAutoJoinManager *)self __shouldAllowPreAssocScan] context:v5 error:&v137];
      v18 = v137;

      if (v17)
      {
        v121 = 0;
        v122 = 0;
        v21 = 0;
        v35 = 1;
        v11 = v18;
        goto LABEL_114;
      }

      v11 = v18;
    }
  }

  else
  {
    v16 = 0;
  }

  [(CWFAutoJoinManager *)self __updateAutoJoinState:2, v106, v108];
  if ([v5 cacheOnly])
  {
    v121 = 0;
    v122 = 0;
    v21 = 0;
    v35 = 0;
    goto LABEL_114;
  }

  v110 = v16;
  v111 = v12;
  v19 = MEMORY[0x1E695DF70];
  v20 = [v5 recentChannelList];
  v21 = [v19 arrayWithArray:v20];

  v122 = [MEMORY[0x1E695DF70] array];
  v121 = [MEMORY[0x1E695DF70] array];
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v22 = [v5 remainingChannelList];
  v23 = [v22 countByEnumeratingWithState:&v133 objects:v139 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v134;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v134 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v133 + 1) + 8 * i);
        if ([v27 is2GHz])
        {
          v28 = v122;
        }

        else
        {
          v28 = v121;
        }

        [v28 addObject:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v133 objects:v139 count:16];
    }

    while (v24);
  }

  [v21 addObjectsFromArray:v122];
  [v21 addObjectsFromArray:v121];
  v29 = 0;
  v117 = v21;
  while (2)
  {
    v30 = [v5 SSIDList];
    v31 = [v5 SSIDList];
    v32 = [v31 count] - v29;
    v33 = [v5 maxScanSSIDCount];
    if (v32 >= v33)
    {
      v34 = [v5 maxScanSSIDCount];
    }

    else
    {
      v115 = [v5 SSIDList];
      v34 = [v115 count] - v29;
    }

    v118 = [v30 subarrayWithRange:{v29, v34}];
    if (v32 < v33)
    {
    }

    v123 = 0;
    v35 = 0;
    v116 = [v118 count] + v29;
    LOBYTE(v36) = 1;
    while (1)
    {
      v37 = v35 | (v123 >= [v21 count]);
      if ((v37 & 1) != 0 || (v36 & 1) == 0)
      {
        LOBYTE(v36) = v36 & v37;
        goto LABEL_107;
      }

      v38 = [v5 autoJoinParameters];
      v39 = [v38 trigger];
      v132 = v11;
      v36 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:v39 error:&v132];
      v40 = v132;

      if (!v36)
      {
        break;
      }

      [v21 count];
      v41 = [v5 recentChannelList];
      if (v123 >= [v41 count])
      {
      }

      else
      {
        v42 = [v5 autoJoinParameters];
        v43 = [v42 mode];

        if (v43 != 2)
        {
          [v5 maxScanChannelCount];
          v44 = [v5 recentChannelList];
          [v44 count];

          v120 = 0;
          goto LABEL_53;
        }
      }

      if (([v5 alwaysIncludeRemainingNon2GHzChannels] & 1) != 0 || (!objc_msgSend(v5, "skipRemainingNon2GHzChannelsUnlessKnownNetworkFound") || self->_didDiscoverKnownNetworks) && self->_didDiscoverBSS)
      {
        v45 = CWFGetOSLog();
        if (v45)
        {
          v46 = CWFGetOSLog();
        }

        else
        {
          v46 = MEMORY[0x1E69E9C10];
          v49 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v141) = 0;
          LODWORD(v109) = 2;
          v107 = &v141;
          _os_log_send_and_compose_impl();
        }

        [(CWFAutoJoinMetric *)self->_metric setDidIncludeRemainingNon2GHzChannels:1];
        v120 = 0;
      }

      else
      {
        v47 = CWFGetOSLog();
        if (v47)
        {
          v48 = CWFGetOSLog();
        }

        else
        {
          v48 = MEMORY[0x1E69E9C10];
          v50 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v141) = 0;
          LODWORD(v109) = 2;
          v107 = &v141;
          _os_log_send_and_compose_impl();
        }

        v51 = [v5 recentChannelList];
        [v51 count];
        [v122 count];

        v120 = 1;
      }

LABEL_53:
      v52 = [MEMORY[0x1E695DFA0] orderedSet];
      v53 = [v21 subarrayWithRange:?];
      v54 = [v53 count];
      v55 = [v5 maxScanCacheAge];
      if ([v5 useCacheForPreviouslyScannedChannels])
      {
        v55 += (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - self->_beginTimestamp) / 0xF4240;
      }

      v56 = [v5 passiveScan];
      v57 = [v5 dwellTime];
      v58 = [v5 skipRemainingNon2GHzChannelsUnlessKnownNetworkFound];
      v131 = 0;
      v109 = &v131;
      BYTE1(v107) = v58;
      LOBYTE(v107) = 0;
      v59 = [CWFAutoJoinManager __performScanWithChannelList:"__performScanWithChannelList:SSIDList:passive:dwellTime:maxCacheAge:cacheOnly:isPreAssociationScan:checkForKnownNetworks:error:" SSIDList:v53 passive:v118 dwellTime:v56 maxCacheAge:v57 cacheOnly:v55 isPreAssociationScan:0 checkForKnownNetworks:? error:?];
      v119 = v131;
      if ([v59 count])
      {
        [v52 removeObjectsInArray:v59];
        [v52 addObjectsFromArray:v59];
      }

      v123 += v54;
      v60 = [v5 autoJoinParameters];
      v61 = [v60 trigger];
      v130 = v40;
      v62 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:v61 error:&v130];
      v11 = v130;

      if (!v62)
      {
        LOBYTE(v36) = 0;
        v98 = 1;
        v89 = v53;
        v97 = v59;
        v35 = 0;
        goto LABEL_97;
      }

      if (v120)
      {
        v63 = [v117 subarrayWithRange:{v123, objc_msgSend(v117, "count") - v123}];

        v123 += [v63 count];
        if (self->_didDiscoverKnownNetworks || ([v5 skipRemainingNon2GHzChannelsUnlessKnownNetworkFound] & 1) == 0 && self->_didDiscoverBSS)
        {
          v64 = CWFGetOSLog();
          if (v64)
          {
            v65 = CWFGetOSLog();
          }

          else
          {
            v65 = MEMORY[0x1E69E9C10];
            v68 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v141) = 0;
            v107 = &v141;
            _os_log_send_and_compose_impl();
          }

          v69 = [v5 passiveScan];
          v70 = [v5 dwellTime];
          v71 = [v5 skipRemainingNon2GHzChannelsUnlessKnownNetworkFound];
          v129 = v119;
          v109 = &v129;
          BYTE1(v107) = v71;
          LOBYTE(v107) = 0;
          v72 = [CWFAutoJoinManager __performScanWithChannelList:"__performScanWithChannelList:SSIDList:passive:dwellTime:maxCacheAge:cacheOnly:isPreAssociationScan:checkForKnownNetworks:error:" SSIDList:v63 passive:v118 dwellTime:v69 maxCacheAge:v70 cacheOnly:v55 isPreAssociationScan:0 checkForKnownNetworks:? error:?];
          v73 = v129;

          v59 = v72;
          if ([v72 count])
          {
            [v52 removeObjectsInArray:v72];
            [v52 addObjectsFromArray:v72];
          }

          [(CWFAutoJoinMetric *)self->_metric setDidIncludeRemainingNon2GHzChannels:1];
          v119 = v73;
        }

        else
        {
          v66 = CWFGetOSLog();
          if (v66)
          {
            v67 = CWFGetOSLog();
          }

          else
          {
            v67 = MEMORY[0x1E69E9C10];
            v74 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v141) = 0;
            LODWORD(v109) = 2;
            v107 = &v141;
            _os_log_send_and_compose_impl();
          }
        }
      }

      else
      {
        v63 = v53;
      }

      if (![v52 count])
      {
        goto LABEL_99;
      }

      v75 = [v5 autoJoinParameters];
      if ([v75 trigger] != 54)
      {
        v76 = [v5 autoJoinParameters];
        v77 = [v76 trigger];

        if (v77 == 55)
        {
          goto LABEL_83;
        }

        v78 = [v52 array];
        v128 = 0;
        v75 = [(CWFAutoJoinManager *)self __perform6GHzFollowupDiscoveryWithScanResults:v78 SSIDList:v118 dwellTime:0 context:v5 error:&v128];

        if (v75)
        {
          [v52 removeObjectsInArray:v75];
          [v52 addObjectsFromArray:v75];
        }
      }

LABEL_83:
      v79 = [v52 array];
      v80 = [(CWFAutoJoinManager *)self __shouldAllowPreAssocScan];
      v127 = v11;
      v81 = [(CWFAutoJoinManager *)self __matchAndJoinScanResults:v79 allowPreAssociationScan:v80 context:v5 error:&v127];
      v82 = v127;

      if (v81)
      {
        v97 = v59;
        v89 = v63;
        v98 = 0;
        LOBYTE(v36) = 1;
        v11 = v82;
        v35 = 1;
        goto LABEL_97;
      }

      [(CWFAutoJoinManager *)self __updateAutoJoinState:2];
      v83 = [v5 autoJoinParameters];
      v84 = [v83 trigger];
      v126 = v82;
      v36 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:v84 error:&v126];
      v11 = v126;

      if (!v36)
      {
        v97 = v59;
        v89 = v63;
        v35 = 0;
        v98 = 1;
        goto LABEL_97;
      }

      if (!v120 || ![v5 skipRemainingNon2GHzChannelsUnlessKnownNetworkFound] || self->_didDiscoverKnownNetworks)
      {
        v85 = [v5 ANQPElementIDList];
        v86 = [v85 count];

        if (v86)
        {
          v87 = [v52 array];
          v88 = [(CWFAutoJoinManager *)self __passpointScanResults:v87];

          if ([v88 count])
          {
            v89 = v63;
            v90 = [v5 ANQPElementIDList];
            v91 = [v5 maxANQPCacheAge];
            v125 = 0;
            v92 = [(CWFAutoJoinManager *)self __performGASQueryWithScanResults:v88 ANQPElementIDList:v90 maxCacheAge:v91 cacheOnly:0 error:&v125];
            v93 = v125;

            if ([v92 count])
            {
              v94 = [(CWFAutoJoinManager *)self __shouldAllowPreAssocScan];
              v124 = v11;
              v95 = [(CWFAutoJoinManager *)self __matchAndJoinScanResults:v92 allowPreAssociationScan:v94 context:v5 error:&v124];
              v96 = v124;

              if (v95)
              {
                v97 = v59;
                v35 = 1;
              }

              else
              {
                v97 = v59;
                [(CWFAutoJoinManager *)self __updateAutoJoinState:2];
                v35 = 0;
              }

              v11 = v96;
            }

            else
            {
              v97 = v59;
              v35 = 0;
            }
          }

          else
          {
            v97 = v59;
            v89 = v63;
            v35 = 0;
            v92 = v88;
          }

          v98 = 0;
          goto LABEL_96;
        }
      }

LABEL_99:
      v97 = v59;
      v89 = v63;
      v98 = 0;
      v35 = 0;
LABEL_96:
      LOBYTE(v36) = 1;
LABEL_97:

      v21 = v117;
      if (v98)
      {
        goto LABEL_107;
      }
    }

    v35 = 0;
    v11 = v40;
LABEL_107:

    v99 = [v5 SSIDList];
    v29 = v116;
    if (v116 < [v99 count])
    {
      v100 = v116 / [v5 maxScanSSIDCount];
      if (!(v35 & 1 | (v100 >= [v5 maxScanCycles])))
      {

        if ((v36 & 1) == 0)
        {
          v35 = 0;
          goto LABEL_113;
        }

        continue;
      }
    }

    break;
  }

LABEL_113:
  v16 = v110;
  v12 = v111;
LABEL_114:
  objc_autoreleasePoolPop(context);
  v102 = v113;
  v101 = a4;
  if (a4)
  {
LABEL_115:
    if (v11)
    {
      v103 = v11;
      *v101 = v11;
    }
  }

LABEL_117:

  v104 = *MEMORY[0x1E69E9840];
  return v35 & 1;
}

- (void)__updateDiscoverTimestampForJoinCandidates:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 copy];
        v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v11 = CWFGetOSLog();
        if (v11)
        {
          v12 = CWFGetOSLog();
        }

        else
        {
          v12 = MEMORY[0x1E69E9C10];
          v13 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v29 = 134219010;
          v30 = v10 / 0x3B9ACA00;
          v31 = 2048;
          v32 = v10 % 0x3B9ACA00 / 0x3E8;
          v33 = 2082;
          v34 = "[CWFAutoJoinManager __updateDiscoverTimestampForJoinCandidates:]";
          v35 = 2082;
          v36 = "CWFAutoJoinManager.m";
          v37 = 1024;
          v38 = 4237;
          LODWORD(v20) = 48;
          v19 = &v29;
          _os_log_send_and_compose_impl();
        }

        targetQueue = self->_targetQueue;
        v15 = qos_class_self();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E0C7E64C;
        block[3] = &unk_1E86E6060;
        block[4] = self;
        v23 = v9;
        v24 = v8;
        v16 = v9;
        v17 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v15, 0, block);
        dispatch_async(targetQueue, v17);
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v39 count:16];
    }

    while (v5);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)__updateRNRChannel:(id)a3 has6GHzOnlyBSS:(BOOL)a4 joinCandidate:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v9 copy];
  v11 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v12 = CWFGetOSLog();
  if (v12)
  {
    v13 = CWFGetOSLog();
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v27 = 134219010;
    v28 = v11 / 0x3B9ACA00;
    v29 = 2048;
    v30 = v11 % 0x3B9ACA00 / 0x3E8;
    v31 = 2082;
    v32 = "[CWFAutoJoinManager __updateRNRChannel:has6GHzOnlyBSS:joinCandidate:]";
    v33 = 2082;
    v34 = "CWFAutoJoinManager.m";
    v35 = 1024;
    v36 = 4265;
    _os_log_send_and_compose_impl();
  }

  targetQueue = self->_targetQueue;
  v16 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C7EBE0;
  block[3] = &unk_1E86E7820;
  block[4] = self;
  v23 = v10;
  v26 = a4;
  v24 = v9;
  v25 = v8;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v16, 0, block);
  dispatch_async(targetQueue, v20);

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)__shouldAllowPreAssocScan
{
  v2 = [(CWFAutoJoinMetric *)self->_metric autoJoinParameters];
  v3 = [v2 trigger];

  return v3 != 32 && v3 != 47;
}

- (BOOL)__preflightMatchKnownNetworksForScanResult:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 SSID];
  if (v6 && (knownNetworkSSIDMap = v5->_knownNetworkSSIDMap, [v4 SSID], v8 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](knownNetworkSSIDMap, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, v6, v9))
  {
    v10 = 1;
  }

  else
  {
    v9 = 0;
    if ([v4 isPasspoint])
    {
      v10 = [(NSMutableDictionary *)v5->_knownNetworkPasspointDomainMap count]!= 0;
    }

    else
    {
      v10 = 0;
    }
  }

  objc_sync_exit(v5);
  return v10;
}

- (BOOL)__matchAndJoinScanResults:(id)a3 allowPreAssociationScan:(BOOL)a4 context:(id)a5 error:(id *)a6
{
  v300 = a4;
  v404 = *MEMORY[0x1E69E9840];
  v299 = a3;
  v313 = a5;
  v7 = [v313 autoJoinParameters];
  v392 = 0;
  v8 = -[CWFAutoJoinManager __allowAutoJoinWithTrigger:error:](self, "__allowAutoJoinWithTrigger:error:", [v7 trigger], &v392);
  v302 = v392;

  if (!v8)
  {
    v303 = 0;
    v301 = 0;
    v305 = 0;
    obj = 0;
    goto LABEL_367;
  }

  context = objc_autoreleasePoolPush();
  v9 = [v299 mutableCopy];
  v305 = [MEMORY[0x1E695DF70] array];
  v301 = [MEMORY[0x1E695DF70] array];
  v303 = [(CWFAutoJoinManager *)self associatedNetwork];
  if (v303 && ([v9 containsObject:v303] & 1) == 0)
  {
    [v9 addObject:v303];
  }

  v390 = 0u;
  v391 = 0u;
  v388 = 0u;
  v389 = 0u;
  obj = v9;
  v349 = [obj countByEnumeratingWithState:&v388 objects:v403 count:16];
  if (v349)
  {
    v345 = *v389;
    v331 = 138543362;
    do
    {
      v10 = 0;
      do
      {
        if (*v389 != v345)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v388 + 1) + 8 * v10);
        if (sub_1E0BF11B4(v11))
        {
          v12 = MEMORY[0x1E696AEC0];
          v13 = [v11 shortSSID];
          v14 = [v11 BSSID];
          v15 = [v11 channel];
          v353 = [v12 stringWithFormat:@"%lu/%@/%lu", v13, v14, objc_msgSend(v15, "channel")];

          v351 = [(NSMutableDictionary *)self->_followup6GHzRNRMap objectForKeyedSubscript:v353];
          v16 = [v11 channel];
          if (![v16 is6GHz] || (objc_msgSend(v313, "include6GHzChannels") & 1) != 0)
          {

            goto LABEL_14;
          }

          if (!v351)
          {

            goto LABEL_34;
          }

          v23 = [v351 channel];
          v24 = [v23 is6GHz];

          if (v24)
          {
LABEL_34:
            v38 = CWFGetOSLog();
            if (v38)
            {
              v39 = CWFGetOSLog();
            }

            else
            {
              v39 = MEMORY[0x1E69E9C10];
              v55 = MEMORY[0x1E69E9C10];
            }

            v56 = v39;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v394 = 138543362;
              *v395 = v11;
              LODWORD(v296) = 12;
              v294 = &v394;
              goto LABEL_67;
            }

            goto LABEL_119;
          }

LABEL_14:
          if ([(CWFAutoJoinManager *)self lockdownModeEnabled])
          {
            v17 = [v313 autoJoinParameters];
            v18 = [v17 trigger];
            v19 = [v313 autoJoinParameters];
            v20 = [v19 targetNetworkProfile];
            v21 = [v20 SSID];
            v22 = [v11 SSID];
            if ([(CWFAutoJoinManager *)self __shouldBypassLockdownModeCheckForTrigger:v18 targetNetworkSSID:v21 networkSSID:v22])
            {

              goto LABEL_21;
            }

            v25 = [v11 isAllowedInLockdownMode];

            if (v25)
            {
              goto LABEL_21;
            }

            v36 = CWFGetOSLog();
            if (v36)
            {
              v37 = CWFGetOSLog();
            }

            else
            {
              v37 = MEMORY[0x1E69E9C10];
              v79 = MEMORY[0x1E69E9C10];
            }

            v56 = v37;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v394 = 138543362;
              *v395 = v11;
              LODWORD(v296) = 12;
              v294 = &v394;
LABEL_67:
              _os_log_send_and_compose_impl();
            }

LABEL_119:

LABEL_120:
            goto LABEL_121;
          }

LABEL_21:
          if (![(CWFAutoJoinManager *)self __preflightMatchKnownNetworksForScanResult:v11])
          {
            goto LABEL_120;
          }

          v26 = [v313 knownNetworks];
          v27 = [v26 array];
          v341 = sub_1E0BED85C(v11, v27);

          if (!v341)
          {
            goto LABEL_120;
          }

          v28 = [v11 isPasspoint];
          if (v28 != [v341 isPasspoint])
          {
            if ([v313 allowSSIDBasedMatchingForPasspointNetworks])
            {
              v29 = [(CWFAutoJoinManager *)self __disallowedKnownNetworks];
              v30 = sub_1E0BED85C(v11, v29);

              if (!v30)
              {
                goto LABEL_26;
              }

              v128 = CWFGetOSLog();
              if (v128)
              {
                v129 = CWFGetOSLog();
              }

              else
              {
                v129 = MEMORY[0x1E69E9C10];
                v133 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
              {
                v394 = 138543618;
                *v395 = v11;
                *&v395[8] = 2114;
                *&v395[10] = v30;
                LODWORD(v296) = 22;
                v294 = &v394;
                _os_log_send_and_compose_impl();
              }
            }

            else
            {
              v126 = CWFGetOSLog();
              if (v126)
              {
                v127 = CWFGetOSLog();
              }

              else
              {
                v127 = MEMORY[0x1E69E9C10];
                v132 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
              {
                v394 = 138543362;
                *v395 = v11;
                LODWORD(v296) = 12;
                v294 = &v394;
                _os_log_send_and_compose_impl();
              }
            }

LABEL_118:
            v56 = v341;
            goto LABEL_119;
          }

LABEL_26:
          v31 = [(CWFAutoJoinMetric *)self->_metric matchedCandidateAt];
          v32 = v31 == 0;

          if (v32)
          {
            v33 = [MEMORY[0x1E695DF00] date];
            [(CWFAutoJoinMetric *)self->_metric setMatchedCandidateAt:v33];
          }

          if (-[CWFAutoJoinMetric bestCandidateRSSI](self->_metric, "bestCandidateRSSI") && (v34 = -[CWFAutoJoinMetric bestCandidateRSSI](self->_metric, "bestCandidateRSSI"), v34 > [v11 RSSI]))
          {
            v35 = [(CWFAutoJoinMetric *)self->_metric bestCandidateRSSI];
          }

          else
          {
            v35 = [v11 RSSI];
          }

          [(CWFAutoJoinMetric *)self->_metric setBestCandidateRSSI:v35];
          updatedAllowCacheKnownNetworks = self->_updatedAllowCacheKnownNetworks;
          v41 = [v341 identifier];
          LOBYTE(updatedAllowCacheKnownNetworks) = [(NSMutableSet *)updatedAllowCacheKnownNetworks containsObject:v41];

          if ((updatedAllowCacheKnownNetworks & 1) == 0)
          {
            knownNetworkAllowCache = self->_knownNetworkAllowCache;
            v43 = [v341 identifier];
            [(NSMutableDictionary *)knownNetworkAllowCache setObject:0 forKeyedSubscript:v43];

            knownNetworkDeferCache = self->_knownNetworkDeferCache;
            v45 = [v341 identifier];
            [(NSMutableDictionary *)knownNetworkDeferCache setObject:0 forKeyedSubscript:v45];

            knownNetworkAllowErrorCache = self->_knownNetworkAllowErrorCache;
            v47 = [v341 identifier];
            [(NSMutableDictionary *)knownNetworkAllowErrorCache setObject:0 forKeyedSubscript:v47];
          }

          v48 = [v11 scanResultWithMatchingKnownNetworkProfile:v341];
          [(NSMutableSet *)self->_matchedCandidates addObject:v48];
          v49 = self;
          objc_sync_enter(v49);
          v50 = [v48 RSSI];
          lowRSSICandidates = self->_lowRSSICandidates;
          if (v50 > -81)
          {
            [(NSMutableSet *)lowRSSICandidates removeObject:v48];
            [(NSMutableSet *)self->_prevLowRSSICandidates addObject:v48];
          }

          else
          {
            [(NSMutableSet *)lowRSSICandidates addObject:v48];
            lowRSSICandidateFoundTimestamp = self->_lowRSSICandidateFoundTimestamp;
            v53 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
            if (lowRSSICandidateFoundTimestamp <= v53 - 1000000 * [v48 age])
            {
              v57 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
              v54 = v57 - 1000000 * [v48 age];
            }

            else
            {
              v54 = self->_lowRSSICandidateFoundTimestamp;
            }

            self->_lowRSSICandidateFoundTimestamp = v54;
          }

          objc_sync_exit(v49);

          v58 = [v11 RSSI];
          if (v58 < [v313 minRSSI])
          {
            v125 = CWFGetOSLog();
            if (v125)
            {
              v77 = CWFGetOSLog();
            }

            else
            {
              v77 = MEMORY[0x1E69E9C10];
              v130 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              v131 = [v313 minRSSI];
              v394 = 134218242;
              *v395 = v131;
              *&v395[8] = 2114;
              *&v395[10] = v11;
              LODWORD(v296) = 22;
              v294 = &v394;
              _os_log_send_and_compose_impl();
            }

            goto LABEL_140;
          }

          v59 = [v313 autoJoinParameters];
          if ([v59 trigger] == 54)
          {

            goto LABEL_52;
          }

          v60 = [v313 autoJoinParameters];
          v61 = [v60 trigger] == 55;

          if (!v61)
          {
            v67 = [(CWFAutoJoinManager *)v49 associatedNetwork];
            v68 = [(CWFAutoJoinManager *)v49 __candidateSupportsSeamlessSSIDTransition:v48 fromNetwork:v67 context:v313];

            if (!v68)
            {
              goto LABEL_77;
            }

            v69 = [v303 matchingKnownNetworkProfile];
            v70 = [v48 matchingKnownNetworkProfile];
            v402 = v70;
            v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v402 count:1];
            v72 = [(CWFAutoJoinManager *)v49 __morePreferredKnownNetworksWithCandidate:v69 knownNetworks:v71 context:v313];
            v73 = v72 == 0;

            if (!v73)
            {
              goto LABEL_77;
            }

            v74 = [v48 channel];
            v75 = [v74 is2GHz];

            if (!v75)
            {
              goto LABEL_77;
            }

            v76 = CWFGetOSLog();
            if (v76)
            {
              v77 = CWFGetOSLog();
            }

            else
            {
              v77 = MEMORY[0x1E69E9C10];
              v124 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              v394 = 138543362;
              *v395 = v48;
              LODWORD(v296) = 12;
              v294 = &v394;
              _os_log_send_and_compose_impl();
            }

            goto LABEL_140;
          }

LABEL_52:
          v62 = [v48 SSID];
          v63 = [v303 SSID];
          v64 = v63;
          if (v62 == v63)
          {

            goto LABEL_77;
          }

          v65 = [v48 SSID];
          if (v65)
          {
            v329 = [v303 SSID];
            if (v329)
            {
              v319 = [v48 SSID];
              v322 = [v303 SSID];
              if ([v319 isEqual:v322])
              {

                v66 = 0;
                goto LABEL_76;
              }

              v78 = 1;
            }

            else
            {
              v78 = 0;
              v329 = 0;
            }
          }

          else
          {
            v78 = 0;
          }

          v80 = [(CWFAutoJoinManager *)v49 associatedNetwork];
          v81 = [(CWFAutoJoinManager *)v49 __candidateSupportsSeamlessSSIDTransition:v48 fromNetwork:v80 context:v313];

          v66 = !v81;
          if (v78)
          {

            if (!v65)
            {
              goto LABEL_72;
            }

LABEL_76:

            if (!v66)
            {
              goto LABEL_77;
            }

LABEL_73:
            v82 = CWFGetOSLog();
            if (v82)
            {
              v77 = CWFGetOSLog();
            }

            else
            {
              v77 = MEMORY[0x1E69E9C10];
              v121 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              v394 = 138543362;
              *v395 = v48;
              LODWORD(v296) = 12;
              v294 = &v394;
              _os_log_send_and_compose_impl();
            }

LABEL_140:

            goto LABEL_117;
          }

          if (v65)
          {
            goto LABEL_76;
          }

LABEL_72:

          if (!v81)
          {
            goto LABEL_73;
          }

LABEL_77:
          v83 = CWFGetOSLog();
          if (v83)
          {
            v84 = CWFGetOSLog();
          }

          else
          {
            v84 = MEMORY[0x1E69E9C10];
            v85 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            v394 = 138543362;
            *v395 = v48;
            LODWORD(v296) = 12;
            v294 = &v394;
            _os_log_send_and_compose_impl();
          }

          v86 = [v11 channel];
          if ([v86 is6GHz])
          {
            v87 = [v313 allowStandalone6GHz];

            if ((v87 & 1) == 0)
            {
              v88 = [v48 matchingKnownNetworkProfile];
              v89 = [v88 isStandalone6G];

              if (v89)
              {
                v90 = [(CWFAutoJoinManager *)v49 knownNetworks];
                v91 = [v90 allObjects];
                v92 = [(CWFAutoJoinManager *)v49 __knownNetworksSupportingSeamlessSSIDTransition:v91 fromNetwork:v48 allowSameSSID:0 context:v313];

                v386 = 0u;
                v387 = 0u;
                v384 = 0u;
                v385 = 0u;
                v333 = v92;
                v93 = [v333 countByEnumeratingWithState:&v384 objects:v401 count:16];
                if (v93)
                {
                  v326 = 0;
                  v337 = *v385;
LABEL_87:
                  v94 = 0;
                  while (1)
                  {
                    if (*v385 != v337)
                    {
                      objc_enumerationMutation(v333);
                    }

                    v95 = *(*(&v384 + 1) + 8 * v94);
                    if (([v95 isStandalone6G] & 1) == 0)
                    {
                      v96 = [v48 matchingKnownNetworkProfile];
                      v97 = [v96 lastDiscoveredAt];

                      v98 = [v48 matchingKnownNetworkProfile];
                      v99 = [v98 lastJoinedAt];

                      v100 = [v95 lastDiscoveredAt];
                      v101 = [v95 lastJoinedAt];
                      if (v97)
                      {
                        if (v100)
                        {
                          [v97 timeIntervalSinceReferenceDate];
                          v103 = v102;
                          [v100 timeIntervalSinceReferenceDate];
                          v105 = floor(v103) < floor(v104);
                          [v97 timeIntervalSinceReferenceDate];
                          v107 = v106;
                          [v100 timeIntervalSinceReferenceDate];
                          v109 = floor(v107) - floor(v108);
                          if (v105)
                          {
                            v109 = -v109;
                          }

                          if (v109 < 86400.0)
                          {
                            goto LABEL_101;
                          }
                        }
                      }

                      if (!v99 || !v101)
                      {
                        goto LABEL_102;
                      }

                      [v99 timeIntervalSinceReferenceDate];
                      v111 = v110;
                      [v101 timeIntervalSinceReferenceDate];
                      v113 = floor(v111) < floor(v112);
                      [v99 timeIntervalSinceReferenceDate];
                      v115 = v114;
                      [v101 timeIntervalSinceReferenceDate];
                      v117 = floor(v115) - floor(v116);
                      if (v113)
                      {
                        v117 = -v117;
                      }

                      if (v117 < 86400.0)
                      {
LABEL_101:
                        v118 = 0;
                        v326 = 1;
                      }

                      else
                      {
LABEL_102:
                        v118 = 1;
                      }

                      if (!v118)
                      {
                        break;
                      }
                    }

                    if (v93 == ++v94)
                    {
                      v93 = [v333 countByEnumeratingWithState:&v384 objects:v401 count:16];
                      if (v93)
                      {
                        goto LABEL_87;
                      }

                      break;
                    }
                  }

                  if (v326)
                  {
                    v119 = CWFGetOSLog();
                    if (v119)
                    {
                      v120 = CWFGetOSLog();
                    }

                    else
                    {
                      v120 = MEMORY[0x1E69E9C10];
                      v122 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
                    {
                      v123 = [v48 networkName];
                      v394 = 138543362;
                      *v395 = v123;
                      LODWORD(v296) = 12;
                      v294 = &v394;
                      _os_log_send_and_compose_impl();
                    }

                    [v305 addObject:v48];
                    goto LABEL_117;
                  }
                }

                else
                {
                }
              }

              [v301 addObject:{v48, v294}];
LABEL_117:

              goto LABEL_118;
            }
          }

          else
          {
          }

          [v305 addObject:{v48, v294, v296}];
          goto LABEL_117;
        }

LABEL_121:
        v10 = v10 + 1;
      }

      while (v10 != v349);
      v134 = [obj countByEnumeratingWithState:&v388 objects:v403 count:16];
      v349 = v134;
    }

    while (v134);
  }

  if (![v301 count])
  {
    goto LABEL_201;
  }

  v306 = [MEMORY[0x1E695DF70] array];
  v382 = 0u;
  v383 = 0u;
  v380 = 0u;
  v381 = 0u;
  v304 = v301;
  v308 = [v304 countByEnumeratingWithState:&v380 objects:v400 count:16];
  if (!v308)
  {
    goto LABEL_200;
  }

  v307 = *v381;
  do
  {
    for (i = 0; i != v308; ++i)
    {
      if (*v381 != v307)
      {
        objc_enumerationMutation(v304);
      }

      v354 = *(*(&v380 + 1) + 8 * i);
      v327 = [v313 autoJoinParameters];
      v135 = [v327 targetNetworkProfile];
      v136 = [v135 identifier];
      v137 = [v354 matchingKnownNetworkProfile];
      v138 = [v137 identifier];
      v139 = v138;
      if (v136 == v138)
      {

LABEL_162:
LABEL_163:
        [v306 addObject:v354];
        continue;
      }

      v346 = [v313 autoJoinParameters];
      v140 = [v346 targetNetworkProfile];
      v141 = [v140 identifier];
      if (v141)
      {
        v342 = [v354 matchingKnownNetworkProfile];
        v142 = [v342 identifier];
        if (v142)
        {
          v338 = [v313 autoJoinParameters];
          v334 = [v338 targetNetworkProfile];
          v143 = [v334 identifier];
          v144 = [v354 matchingKnownNetworkProfile];
          v145 = [v144 identifier];
          v323 = [v143 isEqual:v145];

          if (v323)
          {
            goto LABEL_163;
          }

          goto LABEL_166;
        }
      }

LABEL_166:
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      v327 = v305;
      v347 = [v327 countByEnumeratingWithState:&v376 objects:v399 count:16];
      if (!v347)
      {
        goto LABEL_192;
      }

      v343 = *v377;
      do
      {
        for (j = 0; j != v347; ++j)
        {
          if (*v377 != v343)
          {
            objc_enumerationMutation(v327);
          }

          v147 = *(*(&v376 + 1) + 8 * j);
          v148 = [v354 SSID];
          v149 = [v147 SSID];
          if (v148 != v149)
          {
            v351 = [v354 SSID];
            if (!v351)
            {
              goto LABEL_182;
            }

            v349 = [v147 SSID];
            if (!v349)
            {
              goto LABEL_181;
            }

            v329 = [v354 SSID];
            v331 = [v147 SSID];
            if (([v329 isEqual:v331] & 1) == 0)
            {

LABEL_181:
LABEL_182:

              continue;
            }
          }

          v150 = [v354 matchingKnownNetworkProfile];
          v151 = [v150 identifier];
          v152 = [v147 matchingKnownNetworkProfile];
          v153 = [v152 identifier];
          if (v151 == v153)
          {
            v339 = 1;
          }

          else
          {
            v335 = [v354 matchingKnownNetworkProfile];
            v154 = [v335 identifier];
            if (v154)
            {
              v324 = [v147 matchingKnownNetworkProfile];
              v320 = [v324 identifier];
              if (v320)
              {
                v317 = [v354 matchingKnownNetworkProfile];
                v315 = [v317 identifier];
                v155 = [v147 matchingKnownNetworkProfile];
                v156 = [v155 identifier];
                v339 = [v315 isEqual:v156];
              }

              else
              {
                v339 = 0;
              }
            }

            else
            {
              v339 = 0;
            }
          }

          if (v148 != v149)
          {
          }

          if (v339)
          {
            goto LABEL_162;
          }
        }

        v347 = [v327 countByEnumeratingWithState:&v376 objects:v399 count:16];
      }

      while (v347);
LABEL_192:

      v157 = CWFGetOSLog();
      if (v157)
      {
        v158 = CWFGetOSLog();
      }

      else
      {
        v158 = MEMORY[0x1E69E9C10];
        v159 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
      {
        v394 = 138543362;
        *v395 = v354;
        LODWORD(v296) = 12;
        v294 = &v394;
        _os_log_send_and_compose_impl();
      }

      [(CWFAutoJoinMetric *)self->_metric setDidExcludeStandalone6GHzNetwork:1];
      v160 = [v354 matchingKnownNetworkProfile];
      -[CWFAutoJoinMetric setDidExclude6GHzOnlyNetwork:](self->_metric, "setDidExclude6GHzOnlyNetwork:", [v160 wasRecently6GHzOnlyOnAnyDevice]);
    }

    v308 = [v304 countByEnumeratingWithState:&v380 objects:v400 count:16];
  }

  while (v308);
LABEL_200:

  [v305 addObjectsFromArray:v306];
LABEL_201:
  if ([v305 count])
  {
    [(CWFAutoJoinManager *)self __updateAutoJoinState:3];
    [(CWFAutoJoinManager *)self __sortJoinCandidates:v305 context:v313];
    if (!v303)
    {
      goto LABEL_224;
    }

    v161 = [v313 autoJoinParameters];
    if ([v161 trigger] == 54)
    {

      goto LABEL_208;
    }

    v164 = [v313 autoJoinParameters];
    v165 = [v164 trigger] == 55;

    if (v165)
    {
LABEL_208:
      v374 = 0u;
      v375 = 0u;
      v372 = 0u;
      v373 = 0u;
      v355 = v305;
      v166 = [v355 countByEnumeratingWithState:&v372 objects:v398 count:16];
      if (v166)
      {
        v167 = *v373;
LABEL_210:
        v168 = 0;
        while (1)
        {
          if (*v373 != v167)
          {
            objc_enumerationMutation(v355);
          }

          v169 = *(*(&v372 + 1) + 8 * v168);
          if ([(CWFAutoJoinManager *)self __allowJoinCandidate:v169 context:v313 defer:0 error:0])
          {
            v170 = [v169 SSID];
            v171 = [v303 SSID];
            v172 = v171;
            if (v170 == v171)
            {

LABEL_230:
              v340 = 1;
              goto LABEL_231;
            }

            v173 = [v169 SSID];
            if (v173)
            {
              v174 = [v303 SSID];
              if (v174)
              {
                v175 = [v169 SSID];
                v176 = [v303 SSID];
                v177 = [v175 isEqual:v176];

                if (v177)
                {
                  goto LABEL_230;
                }

                goto LABEL_221;
              }
            }
          }

LABEL_221:
          if (v166 == ++v168)
          {
            v166 = [v355 countByEnumeratingWithState:&v372 objects:v398 count:16];
            if (v166)
            {
              goto LABEL_210;
            }

            break;
          }
        }
      }

      v340 = 0;
LABEL_231:
    }

    else
    {
LABEL_224:
      v340 = 0;
    }

    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    v321 = v305;
    v336 = [v321 countByEnumeratingWithState:&v368 objects:v397 count:16];
    if (v336)
    {
      v179 = MEMORY[0x1E69E9C10];
      v332 = *v369;
      do
      {
        v180 = 0;
        do
        {
          if (*v369 != v332)
          {
            v181 = v180;
            objc_enumerationMutation(v321);
            v180 = v181;
          }

          v344 = v180;
          v352 = *(*(&v368 + 1) + 8 * v180);
          v182 = [v313 autoJoinParameters];
          v183 = [v182 trigger];
          v367 = v302;
          v8 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:v183 error:&v367];
          v350 = v367;

          if (!v8)
          {
            goto LABEL_364;
          }

          v366 = 0;
          v365 = 0;
          v184 = [(CWFAutoJoinManager *)self __allowJoinCandidate:v352 context:v313 defer:&v366 error:&v365];
          v185 = v365;
          if (v184)
          {
            v348 = v185;
            if ([v313 allowDeferredCandidates] & 1) == 0 && (v366)
            {
              v186 = self;
              objc_sync_enter(v186);
              deferredKnownNetworks = self->_deferredKnownNetworks;
              v285 = [v352 matchingKnownNetworkProfile];
              [(NSMutableOrderedSet *)deferredKnownNetworks addObject:v285];

              objc_sync_exit(v186);
            }

            else
            {
              if (!v340)
              {
                goto LABEL_248;
              }

              v186 = [v352 SSID];
              v187 = [v303 SSID];
              v188 = v187;
              if (v186 == v187)
              {

                goto LABEL_248;
              }

              v189 = [v352 SSID];
              if (v189)
              {
                v190 = [v303 SSID];
                if (v190)
                {
                  v191 = [v352 SSID];
                  v192 = [v303 SSID];
                  v193 = [v191 isEqual:v192];

                  if (!v193)
                  {
                    goto LABEL_344;
                  }

LABEL_248:
                  v194 = [(NSMutableDictionary *)self->_deferredColocatedJoinCandidateMap allKeys];
                  v195 = [v352 matchingKnownNetworkProfile];
                  v196 = [v195 identifier];
                  v197 = [v194 containsObject:v196];

                  if (v197)
                  {
                    v198 = [(NSMutableDictionary *)self->_deferredColocatedJoinCandidateMap allValues];
                    v186 = [v198 mutableCopy];

                    [(CWFAutoJoinManager *)self __sortKnownNetworksByJoinTimestamp:v186];
                    v199 = [v352 matchingKnownNetworkProfile];
                    v200 = [v199 identifier];
                    v201 = [(CWFAutoJoinManager *)v186 firstObject];
                    v202 = [v201 identifier];
                    if (v200 == v202)
                    {
                      v330 = 1;
                    }

                    else
                    {
                      v328 = [v352 matchingKnownNetworkProfile];
                      v325 = [v328 identifier];
                      if (v325)
                      {
                        v318 = [(CWFAutoJoinManager *)v186 firstObject];
                        v316 = [v318 identifier];
                        if (v316)
                        {
                          v312 = [v352 matchingKnownNetworkProfile];
                          v309 = [v312 identifier];
                          v203 = [(CWFAutoJoinManager *)v186 firstObject];
                          v204 = [v203 identifier];
                          v330 = [v309 isEqual:v204];
                        }

                        else
                        {
                          v330 = 0;
                        }
                      }

                      else
                      {
                        v330 = 0;
                      }
                    }

                    v230 = CWFGetOSLog();
                    v231 = v230;
                    if (v330)
                    {
                      if (v230)
                      {
                        v226 = CWFGetOSLog();
                      }

                      else
                      {
                        v233 = v179;
                        v226 = v179;
                      }

                      if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
                      {
                        v394 = 138543362;
                        *v395 = v352;
                        LODWORD(v296) = 12;
                        v295 = &v394;
                        _os_log_send_and_compose_impl();
                      }

                      goto LABEL_314;
                    }

                    if (v230)
                    {
                      v232 = CWFGetOSLog();
                    }

                    else
                    {
                      v234 = v179;
                      v232 = v179;
                    }

                    if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
                    {
                      v394 = 138543362;
                      *v395 = v352;
                      LODWORD(v296) = 12;
                      v295 = &v394;
                      _os_log_send_and_compose_impl();
                    }
                  }

                  else
                  {
                    v205 = [v352 matchingKnownNetworkProfile];
                    v206 = [(CWFAutoJoinManager *)self knownNetworks];
                    v207 = [v206 allObjects];
                    v186 = [(CWFAutoJoinManager *)self __morePreferredKnownNetworksWithCandidate:v205 knownNetworks:v207 context:v313];

                    if ([(CWFAutoJoinManager *)v186 count])
                    {
                      v208 = CWFGetOSLog();
                      if (v208)
                      {
                        v209 = CWFGetOSLog();
                      }

                      else
                      {
                        v210 = v179;
                        v209 = v179;
                      }

                      if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
                      {
                        v394 = 138543362;
                        *v395 = v352;
                        LODWORD(v296) = 12;
                        v295 = &v394;
                        _os_log_send_and_compose_impl();
                      }

                      v211 = CWFGetOSLog();
                      if (v211)
                      {
                        v212 = CWFGetOSLog();
                      }

                      else
                      {
                        v213 = v179;
                        v212 = v179;
                      }

                      if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
                      {
                        v214 = [(CWFAutoJoinManager *)v186 count];
                        v394 = 134217984;
                        *v395 = v214;
                        LODWORD(v296) = 12;
                        v295 = &v394;
                        _os_log_send_and_compose_impl();
                      }

                      v363 = 0u;
                      v364 = 0u;
                      v361 = 0u;
                      v362 = 0u;
                      v186 = v186;
                      v215 = [(CWFAutoJoinManager *)v186 countByEnumeratingWithState:&v361 objects:v396 count:16];
                      if (v215)
                      {
                        v216 = *v362;
                        do
                        {
                          for (k = 0; k != v215; ++k)
                          {
                            if (*v362 != v216)
                            {
                              objc_enumerationMutation(v186);
                            }

                            v218 = *(*(&v361 + 1) + 8 * k);
                            v219 = CWFGetOSLog();
                            if (v219)
                            {
                              v220 = CWFGetOSLog();
                            }

                            else
                            {
                              v221 = v179;
                              v220 = v179;
                            }

                            if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
                            {
                              v394 = 138543362;
                              *v395 = v218;
                              LODWORD(v296) = 12;
                              v295 = &v394;
                              _os_log_send_and_compose_impl();
                            }
                          }

                          v215 = [(CWFAutoJoinManager *)v186 countByEnumeratingWithState:&v361 objects:v396 count:16];
                        }

                        while (v215);
                      }

                      v222 = [v352 matchingKnownNetworkProfile];
                      deferredColocatedJoinCandidateMap = self->_deferredColocatedJoinCandidateMap;
                      v224 = [v352 matchingKnownNetworkProfile];
                      v225 = [v224 identifier];
                      [(NSMutableDictionary *)deferredColocatedJoinCandidateMap setObject:v222 forKeyedSubscript:v225];

                      [(CWFAutoJoinMetric *)self->_metric setDidDeferJoinToDiscoverMorePreferredNetwork:1];
                      v226 = [v313 copy];
                      [v226 setKnownNetworks:v186];
                      [v226 setPassiveScan:0];
                      [v226 setUseCacheForPreviouslyScannedChannels:1];
                      [v226 setAllowDeferredCandidates:1];
                      v227 = [v352 RSSI];
                      if (v227 - 3 < [v313 minRSSI] && objc_msgSend(v352, "RSSI") >= -87)
                      {
                        -[NSObject setMinRSSI:](v226, "setMinRSSI:", [v352 RSSI] - 3);
                        v228 = CWFGetOSLog();
                        if (v228)
                        {
                          v229 = CWFGetOSLog();
                        }

                        else
                        {
                          v235 = v179;
                          v229 = v179;
                        }

                        if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
                        {
                          v236 = [v313 minRSSI];
                          v237 = [v226 minRSSI];
                          v394 = 67109632;
                          *v395 = 3;
                          *&v395[4] = 2048;
                          *&v395[6] = v236;
                          *&v395[14] = 2048;
                          *&v395[16] = v237;
                          LODWORD(v296) = 28;
                          v295 = &v394;
                          _os_log_send_and_compose_impl();
                        }
                      }

                      v238 = [(NSMutableDictionary *)self->_cachedKnownNetworksContexts objectForKeyedSubscript:v226, v295];
                      v239 = v238;
                      if (v238)
                      {
                        v240 = v226;
                        v226 = v238;
                      }

                      else
                      {
                        v240 = [v226 copy];
                        [(CWFAutoJoinManager *)self __prepareKnownNetworksContext:v226];
                        [(NSMutableDictionary *)self->_cachedKnownNetworksContexts setObject:v226 forKeyedSubscript:v240];
                      }

                      v360 = v350;
                      LOBYTE(v8) = [(CWFAutoJoinManager *)self __discoverKnownNetworksWithContext:v226 error:&v360];
                      v241 = v360;

                      if (v8)
                      {
                        v350 = v241;
LABEL_372:

                        goto LABEL_363;
                      }

                      v242 = [v313 autoJoinParameters];
                      v243 = [v242 trigger];
                      v359 = v241;
                      v244 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:v243 error:&v359];
                      v350 = v359;

                      if (!v244)
                      {
                        goto LABEL_372;
                      }

                      v245 = CWFGetOSLog();
                      if (v245)
                      {
                        v246 = CWFGetOSLog();
                      }

                      else
                      {
                        v247 = v179;
                        v246 = v179;
                      }

                      if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
                      {
                        LOWORD(v394) = 0;
                        LODWORD(v296) = 2;
                        v295 = &v394;
                        _os_log_send_and_compose_impl();
                      }

                      [(CWFAutoJoinMetric *)self->_metric setDidFallbackToJoinLessPreferredNetwork:1];
                      [(CWFAutoJoinManager *)self __updateAutoJoinState:3];

LABEL_314:
                    }

                    if ((v340 & 1) == 0)
                    {
                      v248 = [v303 matchingKnownNetworkProfile];
                      v249 = [v248 identifier];
                      v250 = [v352 matchingKnownNetworkProfile];
                      v251 = [v250 identifier];
                      v252 = [v249 isEqual:v251];

                      if (v252)
                      {
                        v287 = CWFGetOSLog();
                        if (v287)
                        {
                          v186 = CWFGetOSLog();
                        }

                        else
                        {
                          v186 = MEMORY[0x1E69E9C10];
                          v289 = MEMORY[0x1E69E9C10];
                        }

                        if (os_log_type_enabled(&v186->super, OS_LOG_TYPE_DEFAULT))
                        {
                          v394 = 138543362;
                          *v395 = v303;
                          goto LABEL_361;
                        }

LABEL_362:
                        LOBYTE(v8) = 1;
LABEL_363:

LABEL_364:
                        v302 = v350;
                        goto LABEL_365;
                      }
                    }

                    v253 = [v313 autoJoinParameters];
                    if ([v253 trigger] == 54)
                    {
                    }

                    else
                    {
                      v254 = [v313 autoJoinParameters];
                      v255 = [v254 trigger] == 55;

                      if (!v255)
                      {
                        v256 = [(CWFAutoJoinManager *)self associatedNetwork];
                        v257 = [v256 matchingKnownNetworkProfile];
                        v258 = [v352 matchingKnownNetworkProfile];
                        v259 = [v257 compareUserPriority:v258] == 1;

                        if (v259)
                        {
                          v288 = CWFGetOSLog();
                          if (v288)
                          {
                            v186 = CWFGetOSLog();
                          }

                          else
                          {
                            v186 = MEMORY[0x1E69E9C10];
                            v290 = MEMORY[0x1E69E9C10];
                          }

                          if (!os_log_type_enabled(&v186->super, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_362;
                          }

                          v394 = 138543362;
                          *v395 = v303;
LABEL_361:
                          LOBYTE(v8) = 1;
                          _os_log_send_and_compose_impl();
                          goto LABEL_363;
                        }
                      }
                    }

                    if (v300)
                    {
                      v186 = [(CWFAutoJoinManager *)self __performPreAssociationScanWithContext:v313 network:v352];
                      if ([(CWFAutoJoinManager *)v186 count])
                      {
                        v358 = v350;
                        v260 = [(CWFAutoJoinManager *)self __matchAndJoinScanResults:v186 allowPreAssociationScan:0 context:v313 error:&v358];
                        v261 = v358;

                        if (v260)
                        {
                          LOBYTE(v8) = 1;
                          v350 = v261;
                          goto LABEL_363;
                        }

                        v350 = v261;
                      }
                    }

                    else
                    {
                      v357 = 0;
                      v262 = [(CWFAutoJoinManager *)self __performJoinWithNetwork:v352 context:v313 error:&v357];
                      v263 = v357;
                      v186 = v263;
                      if (v262)
                      {
                        goto LABEL_362;
                      }

                      if ([(CWFAutoJoinManager *)v263 code]== -3936 || [(CWFAutoJoinManager *)v186 code]== -3947)
                      {
                        v264 = CWFGetOSLog();
                        if (v264)
                        {
                          v265 = CWFGetOSLog();
                        }

                        else
                        {
                          v266 = v179;
                          v265 = v179;
                        }

                        if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
                        {
                          v267 = [(CWFAutoJoinManager *)v186 code];
                          v394 = 134217984;
                          *v395 = v267;
                          v295 = &v394;
                          _os_log_send_and_compose_impl();
                        }

                        v268 = [v352 channel];
                        v393 = v268;
                        v269 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v393 count:1];
                        v270 = [v313 SSIDList];
                        v271 = [v313 dwellTime];
                        v296 = 0;
                        BYTE1(v295) = [v313 skipRemainingNon2GHzChannelsUnlessKnownNetworkFound];
                        LOBYTE(v295) = 0;
                        v272 = [CWFAutoJoinManager __performScanWithChannelList:"__performScanWithChannelList:SSIDList:passive:dwellTime:maxCacheAge:cacheOnly:isPreAssociationScan:checkForKnownNetworks:error:" SSIDList:v269 passive:v270 dwellTime:0 maxCacheAge:v271 cacheOnly:0 isPreAssociationScan:0 checkForKnownNetworks:? error:?];

                        v356 = v186;
                        LOBYTE(v268) = [(CWFAutoJoinManager *)self __performJoinWithNetwork:v352 context:v313 error:&v356];
                        v273 = v356;

                        if (v268)
                        {
                          LOBYTE(v8) = 1;
                          v186 = v273;
                          goto LABEL_363;
                        }

                        v186 = v273;
                      }

                      if ([(CWFAutoJoinManager *)v186 code]!= -3936 && [(CWFAutoJoinManager *)v186 code]!= -3947)
                      {
                        v274 = CWFGetOSLog();
                        if (v274)
                        {
                          v275 = CWFGetOSLog();
                        }

                        else
                        {
                          v276 = v179;
                          v275 = v179;
                        }

                        if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
                        {
                          LOWORD(v394) = 0;
                          LODWORD(v296) = 2;
                          v295 = &v394;
                          _os_log_send_and_compose_impl();
                        }

                        failedToJoinKnownNetworkIDs = self->_failedToJoinKnownNetworkIDs;
                        v278 = [v352 matchingKnownNetworkProfile];
                        v279 = [v278 identifier];
                        [(NSMutableSet *)failedToJoinKnownNetworkIDs addObject:v279];

                        v280 = self->_deferredColocatedJoinCandidateMap;
                        v281 = [v352 matchingKnownNetworkProfile];
                        v282 = [v281 identifier];
                        [(NSMutableDictionary *)v280 setObject:0 forKeyedSubscript:v282];
                      }
                    }
                  }
                }

                else
                {
                }
              }

              else
              {
              }
            }

LABEL_344:
            v185 = v348;
            v283 = v350;
            goto LABEL_345;
          }

          v283 = v350;
LABEL_345:
          v302 = v283;

          v180 = v344 + 1;
        }

        while ((v344 + 1) != v336);
        v286 = [v321 countByEnumeratingWithState:&v368 objects:v397 count:16];
        v336 = v286;
      }

      while (v286);
    }

    LOBYTE(v8) = 0;
LABEL_365:

    [(CWFAutoJoinManager *)self __updateDiscoverTimestampForJoinCandidates:v321];
    [(CWFAutoJoinManager *)self __updateDiscoverTimestampForJoinCandidates:v301];
  }

  else
  {
    v162 = CWFGetOSLog();
    if (v162)
    {
      v163 = CWFGetOSLog();
    }

    else
    {
      v163 = MEMORY[0x1E69E9C10];
      v178 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v394) = 0;
      _os_log_send_and_compose_impl();
    }

    LOBYTE(v8) = 0;
  }

  objc_autoreleasePoolPop(context);
LABEL_367:
  if (a6 && v302)
  {
    v291 = v302;
    *a6 = v302;
  }

  v292 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)__isAutoJoiningAtHome
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  loiTypes = v2->_loiTypes;
  if (loiTypes && [(NSArray *)loiTypes count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v2->_loiTypes;
    v5 = 0;
    v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v5 |= [*(*(&v11 + 1) + 8 * i) type] == 0;
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v2);

  v9 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (BOOL)__isAutoJoinCancelled:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  cancelled = v4->_cancelled;
  v6 = v4->_underlyingCancelError;
  objc_sync_exit(v4);

  if (cancelled)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:@"Auto-join has been cancelled" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A798];
    v10 = [v7 copy];
    v11 = [v8 errorWithDomain:v9 code:89 userInfo:v10];

    [(CWFAutoJoinMetric *)v4->_metric setWasCancelled:1];
    if (a3 && v11)
    {
      v12 = v11;
      *a3 = v11;
    }
  }

  else
  {
    v11 = 0;
  }

  return cancelled;
}

- (BOOL)__isAutoJoinRequeued
{
  v2 = self;
  objc_sync_enter(v2);
  requeued = v2->_requeued;
  objc_sync_exit(v2);

  return requeued;
}

- (BOOL)__allowOpportunisticNetworkTransitionWithTrigger:(int64_t)a3
{
  v4 = _os_feature_enabled_impl();
  v5 = 0x180030C001101uLL >> (a3 - 20);
  if ((a3 - 20) > 0x30)
  {
    LOBYTE(v5) = 0;
  }

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6 & 1;
}

- (BOOL)__allowBrokenBackhaulPersonalHotspotFallback
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v3 = [(CWFAutoJoinManager *)self __calloutToAllowBrokenBackhaulPersonalHotspotFallbackAndReturnError:&v13];
  v4 = v13;
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    [v5 setObject:@"BBH PH fallback is not allowed" forKeyedSubscript:*MEMORY[0x1E696A578]];
    if (v4)
    {
      [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v5];

    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CWFAutoJoinManager *)self __descriptionForError:v6];
      v14 = 136446978;
      v15 = "[CWFAutoJoinManager __allowBrokenBackhaulPersonalHotspotFallback]";
      v16 = 2082;
      v17 = "CWFAutoJoinManager.m";
      v18 = 1024;
      v19 = 4900;
      v20 = 2114;
      v21 = v10;
      _os_log_send_and_compose_impl();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)__allowAutoJoinWithTrigger:(int64_t)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = [(CWFAutoJoinManager *)self __isAutoJoinRequeued];
  if (v7)
  {
    v9 = 0;
    goto LABEL_23;
  }

  v26 = 0;
  v8 = [(CWFAutoJoinManager *)self __isAutoJoinCancelled:&v26];
  v9 = v26;
  if (v8)
  {
    v17 = 1;
    goto LABEL_13;
  }

  if (a3 == 67 && ![(CWFAutoJoinManager *)self __allowBrokenBackhaulPersonalHotspotFallback])
  {
LABEL_23:
    v17 = 0;
    goto LABEL_13;
  }

  v10 = [(CWFAutoJoinManager *)self allowAutoJoinHandler];

  if (!v10)
  {
    goto LABEL_8;
  }

  v25 = 0;
  v11 = [(CWFAutoJoinManager *)self __calloutToAllowAutoJoinWithTrigger:a3 error:&v25];
  v12 = v25;
  v13 = v12;
  if (v11)
  {

LABEL_8:
    v14 = 1;
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v15 = [MEMORY[0x1E695DF90] dictionary];
  [v15 setObject:@"Auto-join is not allowed" forKeyedSubscript:*MEMORY[0x1E696A578]];
  if (v13)
  {
    [v15 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v15];

  v17 = 0;
  v9 = v16;
LABEL_13:
  v18 = CWFGetOSLog();
  if (v18)
  {
    v19 = CWFGetOSLog();
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(CWFAutoJoinManager *)self __descriptionForError:v9];
    v27 = 67109634;
    v28 = v7;
    v29 = 1024;
    v30 = v17;
    v31 = 2114;
    v32 = v21;
    _os_log_send_and_compose_impl();
  }

  [(CWFAutoJoinMetric *)self->_metric setWasAborted:1];
  v14 = 0;
  if (a4)
  {
LABEL_19:
    if (v9)
    {
      v22 = v9;
      *a4 = v9;
    }
  }

LABEL_21:

  v23 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)__shouldBypassUnusedNetworkPeriodCheckForTrigger:(int64_t)a3 knownNetwork:(id)a4
{
  v5 = a4;
  v6 = v5;
  if ((a3 - 32) <= 0x21 && ((1 << (a3 - 32)) & 0x200008001) != 0)
  {
    v7 = 1;
  }

  else if ([v5 addReason] == 7 || objc_msgSend(v6, "addReason") == 12)
  {
    v9 = [v6 lastJoinedBySystemAt];
    v7 = v9 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)__shouldBypassLockdownModeCheckForTrigger:(int64_t)a3 targetNetworkSSID:(id)a4 networkSSID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (a3 == 7)
  {
    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v8)
      {
        v10 = [v7 isEqual:v8];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)__isDeferrableKnownNetwork:(id)a3
{
  v4 = a3;
  v5 = ([v4 isCarPlay] & 1) == 0 && ((objc_msgSend(v4, "isHotspot") & 1) != 0 || (objc_msgSend(v4, "isPersonalHotspot") & 1) != 0 || objc_msgSend(v4, "addReason") == 10 || (objc_msgSend(v4, "isOpen") & 1) != 0 || (objc_msgSend(v4, "isOWE") & 1) != 0 || (objc_msgSend(v4, "isWAPI") & 1) != 0 || objc_msgSend(v4, "isPSK") && ((objc_msgSend(v4, "isWEP") & 1) != 0 || objc_msgSend(v4, "isWPA")));
  if ([v4 networkOfInterestHomeState] == 2 && -[CWFAutoJoinManager __isAutoJoiningAtHome](self, "__isAutoJoiningAtHome"))
  {
    v6 = [(CWFAutoJoinManager *)self location];
    v7 = [v4 wasManuallyJoinedRecentlyInProximityOf:v6] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v5 | v7;
}

- (BOOL)__isDeferrableJoinCandidate:(id)a3
{
  v4 = a3;
  v5 = [v4 matchingKnownNetworkProfile];
  if ([v5 isCarPlay])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 matchingKnownNetworkProfile];
    if ([(CWFAutoJoinManager *)self __isDeferrableKnownNetwork:v7])
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1E0BF1240(v4);
    }
  }

  return v6;
}

- (BOOL)__allowKnownNetwork:(id)a3 context:(id)a4 allowForSeamlessSSIDTransition:(id)a5 defer:(BOOL *)a6 targetQueue:(id)a7 error:(id *)a8
{
  v117 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v108 = a5;
  v101 = a7;
  v110 = 0;
  v15 = [v14 autoJoinParameters];
  v16 = [v15 trigger];

  v106 = [(CWFAutoJoinManager *)self associatedNetwork];
  v17 = self;
  objc_sync_enter(v17);
  knownNetworkAllowCache = v17->_knownNetworkAllowCache;
  v19 = [v13 identifier];
  v104 = [(NSMutableDictionary *)knownNetworkAllowCache objectForKeyedSubscript:v19];

  knownNetworkDeferCache = v17->_knownNetworkDeferCache;
  v21 = [v13 identifier];
  v102 = [(NSMutableDictionary *)knownNetworkDeferCache objectForKeyedSubscript:v21];

  knownNetworkAllowErrorCache = v17->_knownNetworkAllowErrorCache;
  v23 = [v13 identifier];
  v103 = [(NSMutableDictionary *)knownNetworkAllowErrorCache objectForKeyedSubscript:v23];

  objc_sync_exit(v17);
  if ([v13 isAutoJoinDisabled])
  {
    v24 = [MEMORY[0x1E695DF90] dictionary];
    [v24 setObject:@"Known network profile is disabled" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v24];
LABEL_3:
    v26 = v25;
LABEL_4:
    LOBYTE(v27) = 0;
    goto LABEL_5;
  }

  if (!-[CWFAutoJoinManager __shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:](v17, "__shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:", v16, v13) && (([v13 isCaptive] & 1) != 0 || objc_msgSend(v13, "wasCaptive")) && ((objc_msgSend(v13, "isOpen") & 1) != 0 || objc_msgSend(v13, "isOWE")))
  {
    v56 = [v13 lastJoinedOnAnyDeviceAt];
    if (v56)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v58 = v57;
      v59 = [v13 lastJoinedOnAnyDeviceAt];
      [v59 timeIntervalSinceReferenceDate];
      v61 = v58 - v60;

      if (v61 > 1209600.0)
      {
        v24 = [MEMORY[0x1E695DF90] dictionary];
        v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Captive known network profile unused for %d weeks", 2];
        [v24 setObject:v62 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v24];
        goto LABEL_3;
      }
    }
  }

  if (!-[CWFAutoJoinManager __shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:](v17, "__shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:", v16, v13) && (([v13 isOpen] & 1) != 0 || objc_msgSend(v13, "isOWE")))
  {
    v29 = [v13 lastJoinedOnAnyDeviceAt];
    if (v29)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v31 = v30;
      v32 = [v13 lastJoinedOnAnyDeviceAt];
      [v32 timeIntervalSinceReferenceDate];
      v34 = v31 - v33;

      if (v34 > 1209600.0)
      {
        v24 = [MEMORY[0x1E695DF90] dictionary];
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Open known network profile unused for %d weeks", 2];
        [v24 setObject:v35 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v24];
        goto LABEL_3;
      }
    }
  }

  if (![(CWFAutoJoinManager *)v17 __shouldBypassUnusedNetworkPeriodCheckForTrigger:v16 knownNetwork:v13])
  {
    v36 = [v13 lastJoinedOnAnyDeviceAt];
    if (v36)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v38 = v37;
      v39 = [v13 lastJoinedOnAnyDeviceAt];
      [v39 timeIntervalSinceReferenceDate];
      v41 = v38 - v40;

      if (v41 > 43545600.0)
      {
        v24 = [MEMORY[0x1E695DF90] dictionary];
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Known network profile unused for %d weeks", 72];
        [v24 setObject:v42 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v24];
        goto LABEL_3;
      }
    }
  }

  if (!-[CWFAutoJoinManager __shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:](v17, "__shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:", v16, v13) && (([v13 isOpen] & 1) != 0 || objc_msgSend(v13, "isOWE")))
  {
    v45 = [v13 lastJoinedByUserAt];
    if (!v45)
    {
      v46 = [v13 lastJoinedOnAnyDeviceAt];
      if (!v46)
      {
        v8 = [v13 addedAt];
        if (!v8)
        {
          goto LABEL_63;
        }
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v48 = v47;
      v49 = [v13 lastJoinedOnAnyDeviceAt];
      [v49 timeIntervalSinceReferenceDate];
      if (v48 - v50 > 86400.0)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v52 = v51;
        v53 = [v13 addedAt];
        [v53 timeIntervalSinceReferenceDate];
        v55 = v52 - v54;

        if (v46)
        {
        }

        else
        {
        }

        if (v55 > 86400.0)
        {
          v24 = [MEMORY[0x1E695DF90] dictionary];
          v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Open known network profile never joined by user/UI unused for %d seconds", 86400];
          [v24 setObject:v99 forKeyedSubscript:*MEMORY[0x1E696A578]];

          v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v24];
          goto LABEL_3;
        }

        goto LABEL_63;
      }

      if (v46)
      {
        v45 = v46;
      }

      else
      {
        v45 = v8;
      }
    }
  }

LABEL_63:
  if ([v106 isPersonalHotspot])
  {
    v75 = [v13 brokenBackhaulStateUpdatedAt];
    [v75 timeIntervalSinceNow];
    v77 = v76;
    v78 = v76 >= 0.0;
    v79 = [v13 brokenBackhaulStateUpdatedAt];
    [v79 timeIntervalSinceNow];
    if (!v78)
    {
      v80 = -v80;
    }

    v81 = v80 < 3600.0;
    if (v80 < 3600.0 && [v13 brokenBackhaulState] != 4)
    {
      v81 = [v13 brokenBackhaulState] == 3;
    }

    if (v77 < 0.0)
    {

      if (!v81)
      {
        goto LABEL_71;
      }
    }

    else
    {

      if (!v81)
      {
        goto LABEL_71;
      }
    }

    v24 = [MEMORY[0x1E695DF90] dictionary];
    v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Known network profile with recently (<%ds) broken backhaul not allowed when already associated to PH", 3600];
    [v24 setObject:v87 forKeyedSubscript:*MEMORY[0x1E696A578]];

    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v24];
    goto LABEL_3;
  }

LABEL_71:
  if (!v108 && v104)
  {
    v82 = [v104 BOOLValue];
    v110 = [v102 BOOLValue];
    if ((v82 & 1) == 0)
    {
      v83 = [v103 userInfo];
      v24 = [v83 mutableCopy];

      [v24 setObject:@"Known network profile is not allowed by daemon (cached)" forKeyedSubscript:*MEMORY[0x1E696A578]];
      v84 = MEMORY[0x1E696ABC0];
      v85 = [v103 domain];
      v26 = [v84 errorWithDomain:v85 code:objc_msgSend(v103 userInfo:{"code"), v24}];

      goto LABEL_4;
    }

    goto LABEL_78;
  }

  v86 = [(CWFAutoJoinManager *)v17 allowKnownNetworkHandler];

  if (!v86)
  {
LABEL_78:
    v24 = 0;
    v26 = 0;
    LOBYTE(v27) = 1;
    goto LABEL_5;
  }

  v109 = 0;
  v27 = [(CWFAutoJoinManager *)v17 __calloutToAllowKnownNetwork:v13 trigger:v16 allowForSeamlessSSIDTransition:v108 defer:&v110 queue:v101 error:&v109];
  v100 = v109;
  if (v27)
  {
    v24 = 0;
    v26 = 0;
  }

  else
  {
    v24 = [MEMORY[0x1E695DF90] dictionary];
    [v24 setObject:@"Known network profile is not allowed by daemon" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v24 setObject:v100 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v24];
  }

  if (!v108)
  {
    v88 = v17;
    objc_sync_enter(v88);
    v89 = [MEMORY[0x1E696AD98] numberWithBool:v27];
    v90 = v17->_knownNetworkAllowCache;
    v91 = [v13 identifier];
    [(NSMutableDictionary *)v90 setObject:v89 forKeyedSubscript:v91];

    v92 = v17->_knownNetworkAllowErrorCache;
    v93 = [v13 identifier];
    [(NSMutableDictionary *)v92 setObject:v26 forKeyedSubscript:v93];

    v94 = [MEMORY[0x1E696AD98] numberWithBool:v110];
    v95 = v17->_knownNetworkDeferCache;
    v96 = [v13 identifier];
    [(NSMutableDictionary *)v95 setObject:v94 forKeyedSubscript:v96];

    updatedAllowCacheKnownNetworks = v88->_updatedAllowCacheKnownNetworks;
    v98 = [v13 identifier];
    [(NSMutableSet *)updatedAllowCacheKnownNetworks addObject:v98];

    objc_sync_exit(v88);
  }

LABEL_5:
  if ([(CWFAutoJoinManager *)v17 __isDeferrableKnownNetwork:v13])
  {
    v110 = 1;
  }

  v28 = [v13 lastJoinedByUserAt];
  if (v28)
  {
  }

  else if ([v14 preferUserConfiguredNetworks])
  {
    v110 = 1;
  }

  if (v27)
  {
    [(CWFAutoJoinManager *)v17 __removeDisallowedKnownNetwork:v13];
  }

  else
  {
    v43 = CWFGetOSLog();
    if (v43)
    {
      v44 = CWFGetOSLog();
    }

    else
    {
      v44 = MEMORY[0x1E69E9C10];
      v63 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v64 = [v13 identifier];
      v65 = [v64 redactedForWiFi];
      v66 = [(CWFAutoJoinManager *)v17 __descriptionForError:v26];
      v111 = 138543874;
      v112 = v65;
      v113 = 2114;
      v114 = v66;
      v115 = 2114;
      v116 = v13;
      _os_log_send_and_compose_impl();
    }

    if (!v108)
    {
      [(CWFAutoJoinManager *)v17 __addDisallowedKnownNetwork:v13];
    }
  }

  if (a6 && v110 == 1)
  {
    v67 = CWFGetOSLog();
    if (v67)
    {
      v68 = CWFGetOSLog();
    }

    else
    {
      v68 = MEMORY[0x1E69E9C10];
      v69 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v70 = [v13 identifier];
      v71 = [v70 redactedForWiFi];
      v111 = 138543618;
      v112 = v71;
      v113 = 2114;
      v114 = v13;
      _os_log_send_and_compose_impl();
    }

    *a6 = v110;
  }

  if (a8 && v26)
  {
    v72 = v26;
    *a8 = v26;
  }

  v73 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)isKnownNetworkDisallowed:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 identifier];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)v5->_disallowedKnownNetworksMap allKeys];
    v8 = [v4 identifier];
    v9 = [v7 containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v5);
  return v9;
}

- (void)__removeDisallowedKnownNetwork:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v8 identifier];

  if (v5)
  {
    disallowedKnownNetworksMap = v4->_disallowedKnownNetworksMap;
    v7 = [v8 identifier];
    [(NSMutableDictionary *)disallowedKnownNetworksMap removeObjectForKey:v7];
  }

  objc_sync_exit(v4);
}

- (void)__addDisallowedKnownNetwork:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v8 identifier];

  if (v5)
  {
    disallowedKnownNetworksMap = v4->_disallowedKnownNetworksMap;
    v7 = [v8 identifier];
    [(NSMutableDictionary *)disallowedKnownNetworksMap setObject:v8 forKey:v7];
  }

  objc_sync_exit(v4);
}

- (id)__disallowedKnownNetworks
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_disallowedKnownNetworksMap allValues];
  v4 = [v3 copy];

  objc_sync_exit(v2);

  return v4;
}

- (id)__knownNetworksSupportingSeamlessSSIDTransition:(id)a3 fromNetwork:(id)a4 allowSameSSID:(BOOL)a5 context:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [MEMORY[0x1E695DFA0] orderedSet];
  v14 = CWFKnownNetworksSupportingSeamlessSSIDTransitionForScanResult(v11, v10, a5);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        if ([(CWFAutoJoinManager *)self __allowKnownNetwork:v19 context:v12 allowForSeamlessSSIDTransition:v11 defer:0 targetQueue:self->_targetQueue error:0])
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = [v13 copy];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)__candidateSupportsSeamlessSSIDTransition:(id)a3 fromNetwork:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (CWFScanResultSupportsSeamlessSSIDTransition(v9, v8))
  {
    v11 = [v8 matchingKnownNetworkProfile];
    v12 = [(CWFAutoJoinManager *)self __allowKnownNetwork:v11 context:v10 allowForSeamlessSSIDTransition:v9 defer:0 targetQueue:self->_targetQueue error:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)__performGASQueryWithScanResults:(id)a3 ANQPElementIDList:(id)a4 maxCacheAge:(unint64_t)a5 cacheOnly:(BOOL)a6 error:(id *)a7
{
  v7 = a6;
  v110 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = CWFGetOSLog();
  if (v13)
  {
    v14 = CWFGetOSLog();
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v99 = 67109376;
    *v100 = v7;
    *&v100[4] = 2048;
    *&v100[6] = a5;
    LODWORD(v78) = 18;
    v77 = &v99;
    _os_log_send_and_compose_impl();
  }

  v80 = v7;
  v85 = a5;

  v87 = [MEMORY[0x1E695DF70] array];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v11;
  v16 = [obj countByEnumeratingWithState:&v94 objects:v109 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v95;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v95 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v94 + 1) + 8 * i);
        v21 = MEMORY[0x1E696AEC0];
        v22 = [v20 networkName];
        [v20 BSSID];
        v78 = v77 = v22;
        v23 = [v21 stringWithFormat:@"'%@'/%@"];
        [v87 addObject:v23];
      }

      v17 = [obj countByEnumeratingWithState:&v94 objects:v109 count:16];
    }

    while (v17);
  }

  v24 = CWFGetOSLog();
  if (v24)
  {
    v25 = CWFGetOSLog();
  }

  else
  {
    v25 = MEMORY[0x1E69E9C10];
    v26 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [obj count];
    v28 = [v87 componentsJoinedByString:{@", "}];
    v99 = 134218242;
    *v100 = v27;
    *&v100[8] = 2114;
    *&v100[10] = v28;
    LODWORD(v78) = 22;
    v77 = &v99;
    _os_log_send_and_compose_impl();
  }

  v29 = CWFGetOSLog();
  if (v29)
  {
    v30 = CWFGetOSLog();
  }

  else
  {
    v30 = MEMORY[0x1E69E9C10];
    v31 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v12 count];
    v33 = [v12 componentsJoinedByString:{@", "}];
    v99 = 134218242;
    *v100 = v32;
    *&v100[8] = 2114;
    *&v100[10] = v33;
    LODWORD(v78) = 22;
    v77 = &v99;
    _os_log_send_and_compose_impl();
  }

  v34 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v35 = [(CWFAutoJoinManager *)self performGASQueryHandler];

  v83 = v12;
  if (v35)
  {
    v36 = objc_alloc_init(CWFANQPParameters);
    [(CWFANQPParameters *)v36 setScanResults:obj];
    [(CWFANQPParameters *)v36 setANQPElementIDList:v12];
    [(CWFANQPParameters *)v36 setAcceptableCacheAge:v85];
    v92 = 0;
    v93 = 0;
    v37 = [(CWFAutoJoinManager *)self __calloutToPerformGASQueryWithParameters:v36 GASQueryNetworks:&v93 error:&v92];
    v38 = v93;
    v39 = v92;
    if (v37)
    {
      if ([v38 count])
      {
        v40 = [(CWFAutoJoinMetric *)self->_metric GASQueryNetworks];
        metric = self->_metric;
        if (v40)
        {
          v42 = [(CWFAutoJoinMetric *)metric GASQueryNetworks];
          [v42 arrayByAddingObjectsFromArray:v38];
          v44 = v43 = v38;
          [(CWFAutoJoinMetric *)self->_metric setGASQueryNetworks:v44];

          v38 = v43;
        }

        else
        {
          [(CWFAutoJoinMetric *)metric setGASQueryNetworks:v38];
        }
      }

      v48 = v37;
      v79 = 0;
      v46 = 0;
    }

    else
    {
      v47 = [MEMORY[0x1E695DF90] dictionary];
      [v47 setObject:@"Failed to perform GAS/ANQP" forKeyedSubscript:*MEMORY[0x1E696A578]];
      [v47 setObject:v39 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v79 = v47;
      v46 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:v47];
    }
  }

  else
  {
    v45 = [MEMORY[0x1E695DF90] dictionary];
    [v45 setObject:@"CWFAutoJoinManager.performGASQueryHandler() not configured" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v79 = v45;
    v46 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:v45];
    v38 = 0;
    v37 = 0;
  }

  v49 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v34;
  [(CWFAutoJoinMetric *)self->_metric setGASQueryDuration:[(CWFAutoJoinMetric *)self->_metric GASQueryDuration]+ v49 / 0xF4240];
  if (v46)
  {
    v50 = [(CWFAutoJoinMetric *)self->_metric GASQueryErrors];
    if (v50)
    {
      v51 = [(CWFAutoJoinMetric *)self->_metric GASQueryErrors];
      v52 = [v51 arrayByAddingObject:v46];
      [(CWFAutoJoinMetric *)self->_metric setGASQueryErrors:v52];
    }

    else
    {
      v51 = [MEMORY[0x1E695DEC8] arrayWithObject:v46];
      [(CWFAutoJoinMetric *)self->_metric setGASQueryErrors:v51];
    }
  }

  v53 = CWFGetOSLog();
  if (v53)
  {
    v54 = CWFGetOSLog();
  }

  else
  {
    v54 = MEMORY[0x1E69E9C10];
    v55 = MEMORY[0x1E69E9C10];
  }

  v84 = v46;

  if (os_log_type_enabled(v54, (16 * (v37 == 0))))
  {
    if (v37)
    {
      v56 = "SUCCEEDED";
    }

    else
    {
      v56 = "FAILED";
    }

    v57 = [(CWFAutoJoinManager *)self __descriptionForError:v46, v77, v78];
    v58 = [v38 count];
    v99 = 136447490;
    *v100 = v56;
    *&v100[8] = 2048;
    *&v100[10] = v49 / 0xF4240;
    v101 = 2114;
    v102 = v57;
    v103 = 2048;
    v104 = v58;
    v105 = 1024;
    v106 = v80;
    v107 = 2048;
    v108 = v85;
    _os_log_send_and_compose_impl();
  }

  v59 = CWFGetOSLog();
  if (v59)
  {
    v60 = CWFGetOSLog();
  }

  else
  {
    v60 = MEMORY[0x1E69E9C10];
    v61 = MEMORY[0x1E69E9C10];
  }

  v81 = v38;

  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v62 = [v37 count];
    v99 = 134217984;
    *v100 = v62;
    _os_log_send_and_compose_impl();
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v63 = v37;
  v64 = [v63 countByEnumeratingWithState:&v88 objects:v98 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v89;
    v67 = MEMORY[0x1E69E9C10];
    do
    {
      for (j = 0; j != v65; ++j)
      {
        if (*v89 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v69 = *(*(&v88 + 1) + 8 * j);
        v70 = CWFGetOSLog();
        if (v70)
        {
          v71 = CWFGetOSLog();
        }

        else
        {
          v72 = v67;
          v71 = v67;
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v99 = 138543362;
          *v100 = v69;
          _os_log_send_and_compose_impl();
        }
      }

      v65 = [v63 countByEnumeratingWithState:&v88 objects:v98 count:16];
    }

    while (v65);
  }

  if (a7 && v84)
  {
    v73 = v84;
    *a7 = v84;
  }

  v74 = v63;

  v75 = *MEMORY[0x1E69E9840];
  return v63;
}

- (id)__performScanWithChannelList:(id)a3 SSIDList:(id)a4 passive:(BOOL)a5 dwellTime:(unint64_t)a6 maxCacheAge:(unint64_t)a7 cacheOnly:(BOOL)a8 isPreAssociationScan:(BOOL)a9 checkForKnownNetworks:(BOOL)a10 error:(id *)a11
{
  v11 = a8;
  v14 = a5;
  v17 = a9;
  v126 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a4;
  v20 = CWFGetOSLog();
  if (v20)
  {
    v21 = CWFGetOSLog();
  }

  else
  {
    v21 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v113 = 134218496;
    v114 = a6;
    v115 = 1024;
    *v116 = v11;
    *&v116[4] = 2048;
    *&v116[6] = a7;
    LODWORD(v92) = 28;
    v91 = &v113;
    _os_log_send_and_compose_impl();
  }

  v23 = CWFGetOSLog();
  if (v23)
  {
    v24 = CWFGetOSLog();
  }

  else
  {
    v24 = MEMORY[0x1E69E9C10];
    v25 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v18 count];
    v27 = [v18 componentsJoinedByString:{@", "}];
    v113 = 134218242;
    v114 = v26;
    v115 = 2114;
    *v116 = v27;
    LODWORD(v92) = 22;
    v91 = &v113;
    _os_log_send_and_compose_impl();

    v17 = a9;
  }

  v28 = CWFGetOSLog();
  if (v28)
  {
    v29 = CWFGetOSLog();
  }

  else
  {
    v29 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v19 count];
    v32 = [v19 componentsJoinedByString:{@", "}];
    v113 = 134218242;
    v114 = v31;
    v115 = 2114;
    *v116 = v32;
    LODWORD(v92) = 22;
    v91 = &v113;
    _os_log_send_and_compose_impl();

    v17 = a9;
  }

  v33 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v34 = [(CWFAutoJoinManager *)self scanForNetworksHandler];

  v98 = v19;
  v99 = v18;
  v93 = a7;
  if (v34)
  {
    v35 = objc_alloc_init(CWFScanParameters);
    [(CWFScanParameters *)v35 setBSSType:3];
    [(CWFScanParameters *)v35 setPHYMode:1];
    [(CWFScanParameters *)v35 setNumberOfScans:1];
    [(CWFScanParameters *)v35 setIncludeHiddenNetworks:1];
    [(CWFScanParameters *)v35 setAddScanDurationToMaxAge:1];
    [(CWFScanParameters *)v35 setChannels:v18];
    [(CWFScanParameters *)v35 setSSIDList:v19];
    [(CWFScanParameters *)v35 setDwellTime:a6];
    [(CWFScanParameters *)v35 setScanFlags:2592];
    v94 = v33;
    if (v11)
    {
      [(CWFScanParameters *)v35 setScanType:3];
    }

    else
    {
      if (v14)
      {
        v40 = 2;
      }

      else
      {
        v40 = 1;
      }

      [(CWFScanParameters *)v35 setScanType:v40, v91, v92];
      [(CWFScanParameters *)v35 setAcceptableCacheAge:a7];
    }

    [(CWFScanParameters *)v35 setMaximumAge:a7, v91, v92];
    v110 = 0;
    v111 = 0;
    v39 = [(CWFAutoJoinManager *)self __calloutToScanForNetworksWithParameters:v35 scanChannels:&v111 error:&v110];
    v38 = v111;
    v41 = v110;
    if (v39)
    {
      if ([v38 count])
      {
        metric = self->_metric;
        if (v17)
        {
          [(CWFAutoJoinMetric *)metric preAssociationScanChannels];
        }

        else
        {
          [(CWFAutoJoinMetric *)metric scanChannels];
        }
        v43 = ;
        v100 = v38;
        HIDWORD(v92) = v11;
        v97 = v43;
        if (v43)
        {
          v45 = [v43 mutableCopy];
        }

        else
        {
          v45 = [MEMORY[0x1E695DF70] array];
        }

        v46 = v45;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v47 = v100;
        v48 = [v47 countByEnumeratingWithState:&v106 objects:v125 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v107;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v107 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = [(CWFAutoJoinManager *)self __basicChannelRepresentation:*(*(&v106 + 1) + 8 * i)];
              [v46 addObject:v52];
            }

            v49 = [v47 countByEnumeratingWithState:&v106 objects:v125 count:16];
          }

          while (v49);
        }

        v53 = self->_metric;
        v17 = a9;
        if (a9)
        {
          [(CWFAutoJoinMetric *)v53 setPreAssociationScanChannels:v46];
        }

        else
        {
          [(CWFAutoJoinMetric *)v53 setScanChannels:v46];
        }

        v11 = HIDWORD(v92);

        v38 = v100;
      }

      v54 = v39;
      v96 = 0;
      v37 = 0;
    }

    else
    {
      v44 = [MEMORY[0x1E695DF90] dictionary];
      [v44 setObject:@"Failed to perform scan" forKeyedSubscript:*MEMORY[0x1E696A578]];
      [v44 setObject:v41 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v96 = v44;
      v37 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:v44];
    }

    v33 = v94;
  }

  else
  {
    v36 = [MEMORY[0x1E695DF90] dictionary];
    [v36 setObject:@"CWFAutoJoinManager.scanForNetworksHandler() not configured" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v96 = v36;
    v37 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:v36];
    v38 = 0;
    v39 = 0;
  }

  v55 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v33) / 0xF4240;
  v56 = self->_metric;
  if (v17)
  {
    [(CWFAutoJoinMetric *)self->_metric setPreAssociationScanDuration:[(CWFAutoJoinMetric *)v56 preAssociationScanDuration]+ v55];
    if (!v37)
    {
      goto LABEL_54;
    }
  }

  else
  {
    [(CWFAutoJoinMetric *)self->_metric setScanDuration:[(CWFAutoJoinMetric *)v56 scanDuration]+ v55];
    if (!v37)
    {
      goto LABEL_54;
    }
  }

  v57 = [(CWFAutoJoinMetric *)self->_metric scanErrors:v91];
  if (v57)
  {
    v58 = [(CWFAutoJoinMetric *)self->_metric scanErrors];
    v59 = [v58 arrayByAddingObject:v37];
    [(CWFAutoJoinMetric *)self->_metric setScanErrors:v59];
  }

  else
  {
    v58 = [MEMORY[0x1E695DEC8] arrayWithObject:v37];
    [(CWFAutoJoinMetric *)self->_metric setScanErrors:v58];
  }

LABEL_54:
  v60 = CWFGetOSLog();
  if (v60)
  {
    v61 = CWFGetOSLog();
  }

  else
  {
    v61 = MEMORY[0x1E69E9C10];
    v62 = MEMORY[0x1E69E9C10];
  }

  v95 = v37;
  if (os_log_type_enabled(v61, (16 * (v39 == 0))))
  {
    if (v39)
    {
      v63 = "SUCCEEDED";
    }

    else
    {
      v63 = "FAILED";
    }

    v64 = [v39 count];
    v65 = [(CWFAutoJoinManager *)self __descriptionForError:v37];
    v66 = [v38 count];
    v113 = 136447746;
    v114 = v63;
    v115 = 2048;
    *v116 = v55;
    *&v116[8] = 2048;
    *&v116[10] = v64;
    v117 = 2114;
    v118 = v65;
    v119 = 2048;
    v120 = v66;
    v121 = 1024;
    v122 = v11;
    v123 = 2048;
    v124 = v93;
    LODWORD(v92) = 68;
    v91 = &v113;
    _os_log_send_and_compose_impl();
  }

  v67 = CWFGetOSLog();
  if (v67)
  {
    v68 = CWFGetOSLog();
  }

  else
  {
    v68 = MEMORY[0x1E69E9C10];
    v69 = MEMORY[0x1E69E9C10];
  }

  v101 = v38;

  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      v70 = " Cache";
    }

    else
    {
      v70 = "";
    }

    v71 = [v39 count];
    v113 = 136446466;
    v114 = v70;
    v115 = 2048;
    *v116 = v71;
    _os_log_send_and_compose_impl();
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v72 = v39;
  v73 = [v72 countByEnumeratingWithState:&v102 objects:v112 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v103;
    v76 = MEMORY[0x1E69E9C10];
    do
    {
      for (j = 0; j != v74; ++j)
      {
        if (*v103 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v78 = *(*(&v102 + 1) + 8 * j);
        v79 = CWFGetOSLog();
        if (v79)
        {
          v80 = CWFGetOSLog();
        }

        else
        {
          v81 = v76;
          v80 = v76;
        }

        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v113 = 138543362;
          v114 = v78;
          _os_log_send_and_compose_impl();
        }

        v82 = [v78 channel];
        v83 = [(CWFAutoJoinManager *)self __basicChannelRepresentation:v82];

        v84 = [(CWFAutoJoinMetric *)self->_metric scanChannels];
        v85 = [v84 containsObject:v83];

        if (v85)
        {
          self->_didDiscoverBSS = 1;
          v86 = [v78 SSID];
          v87 = [v86 length];

          if (!v87)
          {
            [(NSMutableSet *)self->_hiddenNetworkChannels addObject:v83];
          }
        }
      }

      v74 = [v72 countByEnumeratingWithState:&v102 objects:v112 count:16];
    }

    while (v74);
  }

  if (a10)
  {
    self->_didDiscoverKnownNetworks = [(CWFAutoJoinManager *)self __isEnabledKnownNetworkNearby];
  }

  if (a11 && v95)
  {
    v88 = v95;
    *a11 = v95;
  }

  v89 = *MEMORY[0x1E69E9840];

  return v72;
}

- (id)__alreadyFoundFollowup6GHzBSSWithSignature:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(NSMutableDictionary *)self->_followup6GHzScanResultsMap allValues];
  v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      v5 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v5;
        v6 = *(*(&v29 + 1) + 8 * v5);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v26;
LABEL_8:
          v11 = 0;
          while (1)
          {
            if (*v26 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v25 + 1) + 8 * v11);
            v13 = MEMORY[0x1E696AEC0];
            v14 = [v12 shortSSID];
            v15 = [v12 BSSID];
            v16 = [v12 channel];
            v17 = [v13 stringWithFormat:@"%lu/%@/%lu", v14, v15, objc_msgSend(v16, "channel")];

            if (v4)
            {
              if (v17 && ([v17 isEqual:v4] & 1) != 0)
              {
                break;
              }
            }

            if (v9 == ++v11)
            {
              v9 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v9)
              {
                goto LABEL_8;
              }

              goto LABEL_16;
            }
          }

          v18 = v12;

          if (v18)
          {
            goto LABEL_21;
          }
        }

        else
        {
LABEL_16:
        }

        v5 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  v18 = 0;
LABEL_21:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)__perform6GHzFollowupDiscoveryWithScanResults:(id)a3 SSIDList:(id)a4 dwellTime:(unint64_t)a5 context:(id)a6 error:(id *)a7
{
  v253 = *MEMORY[0x1E69E9840];
  v167 = a3;
  v166 = a4;
  v180 = a6;
  v190 = [MEMORY[0x1E695DF90] dictionary];
  v199 = [MEMORY[0x1E695DFA8] set];
  [(CWFAutoJoinManager *)self supportedChannels];
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  obj = v235 = 0u;
  v10 = [obj countByEnumeratingWithState:&v232 objects:v252 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v233;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v233 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [(CWFAutoJoinManager *)self __basicChannelRepresentation:*(*(&v232 + 1) + 8 * i)];
        [v199 addObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v232 objects:v252 count:16];
    }

    while (v11);
  }

  [v167 sortedArrayUsingComparator:&unk_1F5B891D0];
  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  v169 = v231 = 0u;
  v206 = self;
  v173 = [v169 countByEnumeratingWithState:&v228 objects:v251 count:16];
  if (!v173)
  {
    v205 = 0;
    goto LABEL_121;
  }

  v205 = 0;
  v171 = *v229;
  do
  {
    v15 = 0;
    do
    {
      if (*v229 != v171)
      {
        v16 = v15;
        objc_enumerationMutation(v169);
        v15 = v16;
      }

      v175 = v15;
      v17 = *(*(&v228 + 1) + 8 * v15);
      context = objc_autoreleasePoolPush();
      if ([v17 isFILSDiscoveryFrame] && (objc_msgSend(v17, "channel"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "is6GHz"), v18, v19))
      {
        v20 = [v17 channel];
        v21 = [(CWFAutoJoinManager *)self __basicChannelRepresentation:v20];

        if ([v199 containsObject:v21])
        {
          v193 = v21;
          v22 = [v17 SSID];
          v23 = [v17 shortSSID];
          v224 = 0u;
          v225 = 0u;
          v226 = 0u;
          v227 = 0u;
          v196 = [v180 knownNetworks];
          v203 = [v196 countByEnumeratingWithState:&v224 objects:v250 count:16];
          if (!v203)
          {
            goto LABEL_57;
          }

          v200 = *v225;
          while (1)
          {
            for (j = 0; j != v203; ++j)
            {
              if (*v225 != v200)
              {
                objc_enumerationMutation(v196);
              }

              v25 = *(*(&v224 + 1) + 8 * j);
              v26 = objc_autoreleasePoolPush();
              v27 = [v25 SSID];
              v28 = [v25 shortSSID];
              v29 = v28;
              if (v27)
              {
                v30 = v22 == 0;
              }

              else
              {
                v30 = 1;
              }

              if (v30)
              {
                if (!v23 || v23 != v28)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                v31 = [v27 isEqual:v22];
                if (v23)
                {
                  v32 = v23 == v29;
                }

                else
                {
                  v32 = 0;
                }

                v33 = !v32;
                if (!v31 && (v33 & 1) != 0)
                {
                  goto LABEL_55;
                }
              }

              v34 = MEMORY[0x1E696AEC0];
              v35 = [v17 BSSID];
              v36 = v17;
              v37 = [v17 channel];
              v38 = [v34 stringWithFormat:@"%lu/%@/%lu", v23, v35, objc_msgSend(v37, "channel")];

              v39 = CWFGetOSLog();
              if (v39)
              {
                v40 = CWFGetOSLog();
              }

              else
              {
                v40 = MEMORY[0x1E69E9C10];
                v41 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v237 = 138543618;
                v238 = v36;
                v239 = 2114;
                v240 = v25;
                LODWORD(v163) = 22;
                v161 = &v237;
                _os_log_send_and_compose_impl();
              }

              v42 = [(NSMutableDictionary *)v206->_followup6GHzFILSDMap objectForKeyedSubscript:v38];

              if (!v42)
              {
                [(NSMutableDictionary *)v206->_followup6GHzFILSDMap setObject:v36 forKeyedSubscript:v38];
              }

              v43 = [(CWFAutoJoinManager *)v206 __alreadyFoundFollowup6GHzBSSWithSignature:v38, v161, v163];
              if (v43)
              {
                v44 = CWFGetOSLog();
                if (v44)
                {
                  v45 = CWFGetOSLog();
                }

                else
                {
                  v45 = MEMORY[0x1E69E9C10];
                  v50 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v237) = 0;
                  LODWORD(v162) = 2;
                  v160 = &v237;
                  _os_log_send_and_compose_impl();
                }

                v51 = v205;
                if (!v205)
                {
                  v51 = [MEMORY[0x1E695DF70] array];
                }

                v205 = v51;
                [v51 addObject:{v43, v160, v162}];
              }

              else
              {
                v46 = objc_alloc_init(CWFScanParameters);
                v47 = [v25 networkName];
                [(CWFScanParameters *)v46 setSSID:v47];

                v48 = [v36 BSSID];
                [(CWFScanParameters *)v46 setBSSID:v48];

                v249 = v193;
                v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v249 count:1];
                [(CWFScanParameters *)v46 setChannels:v49];

                [(CWFScanParameters *)v46 setBSSType:3];
                [(CWFScanParameters *)v46 setPHYMode:1];
                [(CWFScanParameters *)v46 setNumberOfScans:1];
                [(CWFScanParameters *)v46 setIncludeHiddenNetworks:1];
                [(CWFScanParameters *)v46 setAcceptableCacheAge:0];
                [(CWFScanParameters *)v46 setDwellTime:a5];
                [(CWFScanParameters *)v46 setScanFlags:1056];
                [(CWFScanParameters *)v46 setScanType:1];
                [v190 setObject:v46 forKeyedSubscript:v38];
              }

              self = v206;

              v17 = v36;
LABEL_55:

              objc_autoreleasePoolPop(v26);
            }

            v203 = [v196 countByEnumeratingWithState:&v224 objects:v250 count:16];
            if (!v203)
            {
LABEL_57:

              goto LABEL_58;
            }
          }
        }

        v82 = CWFGetOSLog();
        if (v82)
        {
          v83 = CWFGetOSLog();
        }

        else
        {
          v83 = MEMORY[0x1E69E9C10];
          v84 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v237 = 138543362;
          v238 = v21;
          LODWORD(v162) = 12;
          v160 = &v237;
          _os_log_send_and_compose_impl();
        }

        v53 = v83;
      }

      else
      {
LABEL_58:
        v52 = [v17 RNRBSSList];
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v223 = 0u;
        v53 = v52;
        v183 = [v53 countByEnumeratingWithState:&v220 objects:v248 count:16];
        if (v183)
        {
          v179 = v53;
          v194 = v17;
          v181 = *v221;
          do
          {
            for (k = 0; k != v183; ++k)
            {
              if (*v221 != v181)
              {
                objc_enumerationMutation(v179);
              }

              v55 = *(*(&v220 + 1) + 8 * k);
              v56 = [v55 channel];
              if ([v56 is6GHz])
              {
                v57 = [v55 shortSSID];
                if (v57 || [v55 isSameSSID] && (v57 = objc_msgSend(v194, "shortSSID")) != 0)
                {
                  v58 = v57;
                  v59 = [v55 BSSID];
                  if (v59)
                  {
                    v186 = k;
                    v218 = 0u;
                    v219 = 0u;
                    v216 = 0u;
                    v217 = 0u;
                    v191 = [v180 knownNetworks];
                    v204 = [v191 countByEnumeratingWithState:&v216 objects:v247 count:16];
                    if (v204)
                    {
                      v197 = v55;
                      v201 = *v217;
                      do
                      {
                        v60 = 0;
                        do
                        {
                          if (*v217 != v201)
                          {
                            objc_enumerationMutation(v191);
                          }

                          v61 = *(*(&v216 + 1) + 8 * v60);
                          v62 = objc_autoreleasePoolPush();
                          if (v58 == [v61 shortSSID])
                          {
                            v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu/%@/%lu", v58, v59, objc_msgSend(v56, "channel")];
                            v64 = CWFGetOSLog();
                            if (v64)
                            {
                              v65 = CWFGetOSLog();
                            }

                            else
                            {
                              v65 = MEMORY[0x1E69E9C10];
                              v66 = MEMORY[0x1E69E9C10];
                            }

                            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                            {
                              v237 = 138543874;
                              v238 = v194;
                              v239 = 2114;
                              v240 = v197;
                              v241 = 2114;
                              v242 = v61;
                              LODWORD(v162) = 32;
                              v160 = &v237;
                              _os_log_send_and_compose_impl();
                            }

                            v67 = [(CWFAutoJoinManager *)v206 __basicChannelRepresentation:v56];
                            if ([v199 containsObject:v67])
                            {
                              v68 = [(NSMutableDictionary *)v206->_followup6GHzRNRMap objectForKeyedSubscript:v63];

                              if (!v68)
                              {
                                [(NSMutableDictionary *)v206->_followup6GHzRNRMap setObject:v194 forKeyedSubscript:v63];
                              }

                              v69 = [(CWFAutoJoinManager *)v206 __alreadyFoundFollowup6GHzBSSWithSignature:v63, v160, v162];
                              if (v69)
                              {
                                v70 = v69;
                                v71 = CWFGetOSLog();
                                if (v71)
                                {
                                  v72 = CWFGetOSLog();
                                }

                                else
                                {
                                  v72 = MEMORY[0x1E69E9C10];
                                  v77 = MEMORY[0x1E69E9C10];
                                }

                                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                                {
                                  LOWORD(v237) = 0;
                                  LODWORD(v162) = 2;
                                  v160 = &v237;
                                  _os_log_send_and_compose_impl();
                                }

                                v78 = v205;
                                if (!v205)
                                {
                                  v78 = [MEMORY[0x1E695DF70] array];
                                }

                                v205 = v78;
                                [v78 addObject:{v70, v160, v162}];
                              }

                              else
                              {
                                v73 = objc_alloc_init(CWFScanParameters);
                                v74 = [v61 networkName];
                                [(CWFScanParameters *)v73 setSSID:v74];

                                [(CWFScanParameters *)v73 setBSSID:v59];
                                v246 = v67;
                                v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v246 count:1];
                                [(CWFScanParameters *)v73 setChannels:v75];

                                [(CWFScanParameters *)v73 setBSSType:3];
                                [(CWFScanParameters *)v73 setPHYMode:1];
                                [(CWFScanParameters *)v73 setNumberOfScans:1];
                                [(CWFScanParameters *)v73 setIncludeHiddenNetworks:1];
                                [(CWFScanParameters *)v73 setAcceptableCacheAge:0];
                                [(CWFScanParameters *)v73 setDwellTime:a5];
                                if ([v197 isUPRActive])
                                {
                                  v76 = 32;
                                }

                                else
                                {
                                  v76 = 1056;
                                }

                                [(CWFScanParameters *)v73 setScanFlags:v76];
                                [(CWFScanParameters *)v73 setScanType:1];
                                [v190 setObject:v73 forKeyedSubscript:v63];

                                v70 = 0;
                              }
                            }

                            else
                            {
                              v79 = CWFGetOSLog();
                              if (v79)
                              {
                                v70 = CWFGetOSLog();
                              }

                              else
                              {
                                v70 = MEMORY[0x1E69E9C10];
                                v80 = MEMORY[0x1E69E9C10];
                              }

                              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                              {
                                v237 = 138543362;
                                v238 = v67;
                                LODWORD(v162) = 12;
                                v160 = &v237;
                                _os_log_send_and_compose_impl();
                              }
                            }

                            self = v206;
                          }

                          objc_autoreleasePoolPop(v62);
                          ++v60;
                        }

                        while (v204 != v60);
                        v81 = [v191 countByEnumeratingWithState:&v216 objects:v247 count:16];
                        v204 = v81;
                      }

                      while (v81);
                    }

                    k = v186;
                  }
                }
              }
            }

            v183 = [v179 countByEnumeratingWithState:&v220 objects:v248 count:16];
          }

          while (v183);
          v53 = v179;
        }

        v21 = v53;
      }

      objc_autoreleasePoolPop(context);
      v15 = v175 + 1;
    }

    while (v175 + 1 != v173);
    v85 = [v169 countByEnumeratingWithState:&v228 objects:v251 count:16];
    v173 = v85;
  }

  while (v85);
LABEL_121:

  if ([v190 count])
  {
    v86 = [(CWFAutoJoinMetric *)self->_metric followup6GHzScanChannels];
    v164 = v86;
    if (v86)
    {
      v87 = [v86 mutableCopy];
    }

    else
    {
      v87 = [MEMORY[0x1E695DF70] array];
    }

    v172 = v87;

    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v89 = [v190 allKeys];
    v90 = [v89 countByEnumeratingWithState:&v212 objects:v245 count:16];
    if (v90)
    {
      v91 = v90;
      v178 = 0;
      v189 = 0;
      v92 = MEMORY[0x1E69E9C10];
      v192 = *v213;
      v177 = *MEMORY[0x1E696A578];
      v168 = *MEMORY[0x1E696AA08];
      v176 = *MEMORY[0x1E696A798];
      v182 = v89;
      do
      {
        v93 = 0;
        v187 = v91;
        do
        {
          if (*v213 != v192)
          {
            objc_enumerationMutation(v89);
          }

          v198 = v93;
          v94 = *(*(&v212 + 1) + 8 * v93);
          v195 = objc_autoreleasePoolPush();
          v95 = [v190 objectForKeyedSubscript:v94];
          v96 = [(CWFAutoJoinManager *)self __alreadyFoundFollowup6GHzBSSWithSignature:v94];
          v202 = v95;
          if (v96)
          {
            v97 = CWFGetOSLog();
            if (v97)
            {
              v98 = CWFGetOSLog();
            }

            else
            {
              v103 = v92;
              v98 = v92;
            }

            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v237) = 0;
              LODWORD(v162) = 2;
              v160 = &v237;
              _os_log_send_and_compose_impl();
            }

            v104 = v205;
            v106 = v195;
            v105 = v198;
            if (!v205)
            {
              v104 = [MEMORY[0x1E695DF70] array];
            }

            v205 = v104;
            [v104 addObject:{v96, v160, v162}];
          }

          else
          {
            v99 = [(NSMutableDictionary *)self->_followup6GHzScanResultsMap objectForKeyedSubscript:v95];
            v100 = CWFGetOSLog();
            v101 = v100;
            if (v99)
            {
              if (v100)
              {
                v102 = CWFGetOSLog();
              }

              else
              {
                v108 = v92;
                v102 = v92;
              }

              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
              {
                v109 = [v202 SSID];
                v184 = [v202 shortSSID];
                v110 = [v202 BSSID];
                v111 = [v110 redactedForWiFi];
                v112 = [v202 channels];
                v113 = [v112 firstObject];
                v237 = 138544130;
                v238 = v109;
                v239 = 2048;
                v240 = v184;
                v241 = 2114;
                v242 = v111;
                v243 = 2114;
                v244 = v113;
                LODWORD(v162) = 42;
                v160 = &v237;
                _os_log_send_and_compose_impl();

                v91 = v187;
                v89 = v182;
              }

              v114 = v205;
              if (!v205)
              {
                v114 = [MEMORY[0x1E695DF70] array];
              }

              v205 = v114;
              [v114 addObjectsFromArray:{v99, v160, v162}];
              self = v206;
            }

            else
            {
              if (v100)
              {
                v107 = CWFGetOSLog();
              }

              else
              {
                v115 = v92;
                v107 = v92;
              }

              v116 = v202;

              if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
              {
                v117 = [v202 SSID];
                v118 = [v202 shortSSID];
                v119 = [v202 BSSID];
                v120 = [v119 redactedForWiFi];
                v121 = [v202 channels];
                v122 = [v121 firstObject];
                v237 = 138544130;
                v238 = v117;
                v239 = 2048;
                v240 = v118;
                v241 = 2114;
                v242 = v120;
                v243 = 2114;
                v244 = v122;
                LODWORD(v162) = 42;
                v160 = &v237;
                _os_log_send_and_compose_impl();

                v116 = v202;
              }

              v123 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
              v124 = v206;
              v125 = [(CWFAutoJoinManager *)v206 scanForNetworksHandler];

              if (v125)
              {
                v211 = 0;
                [(CWFAutoJoinManager *)v206 __calloutToScanForNetworksWithParameters:v116 scanChannels:0 error:&v211];
                v127 = v126 = v116;
                v128 = v211;
                v185 = v128;
                if (v127)
                {
                  v129 = [v126 channels];
                  v130 = [v129 firstObject];

                  [v172 addObject:v130];
                  v131 = v205;
                  if (!v205)
                  {
                    v131 = [MEMORY[0x1E695DF70] array];
                  }

                  v205 = v131;
                  [v131 addObjectsFromArray:{v127, v160, v162}];
                  v124 = v206;
                  [(NSMutableDictionary *)v206->_followup6GHzScanResultsMap setObject:v127 forKeyedSubscript:v126];
                }

                else
                {
                  v133 = v128;
                  v134 = [MEMORY[0x1E695DF90] dictionary];

                  [v134 setObject:@"Failed to perform 6GHz followup scan" forKeyedSubscript:v177];
                  [v134 setObject:v133 forKeyedSubscript:v168];
                  [MEMORY[0x1E696ABC0] errorWithDomain:v176 code:2 userInfo:v134];
                  v130 = v189;
                  v189 = v178 = v134;
                  v124 = v206;
                }
              }

              else
              {
                v132 = [MEMORY[0x1E695DF90] dictionary];

                [v132 setObject:@"CWFAutoJoinManager.scanForNetworksHandler() not configured" forKeyedSubscript:v177];
                [MEMORY[0x1E696ABC0] errorWithDomain:v176 code:6 userInfo:v132];
                v127 = 0;
                v185 = 0;
                v130 = v189;
                v189 = v178 = v132;
              }

              v135 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v123;
              [(CWFAutoJoinMetric *)v124->_metric setFollowup6GHzScanDuration:[(CWFAutoJoinMetric *)v124->_metric followup6GHzScanDuration]+ v135 / 0xF4240];
              if (v189)
              {
                v136 = [(CWFAutoJoinMetric *)v124->_metric scanErrors];
                if (v136)
                {
                  v137 = [(CWFAutoJoinMetric *)v124->_metric scanErrors];
                  v138 = [v137 arrayByAddingObject:v189];
                  [(CWFAutoJoinMetric *)v124->_metric setScanErrors:v138];
                }

                else
                {
                  v137 = [MEMORY[0x1E695DEC8] arrayWithObject:v189];
                  [(CWFAutoJoinMetric *)v124->_metric setScanErrors:v137];
                }
              }

              v139 = CWFGetOSLog();
              if (v139)
              {
                v140 = CWFGetOSLog();
              }

              else
              {
                v141 = v92;
                v140 = v92;
              }

              if (os_log_type_enabled(v140, (16 * (v127 == 0))))
              {
                if (v205)
                {
                  v142 = "SUCCEEDED";
                }

                else
                {
                  v142 = "FAILED";
                }

                v143 = [v127 count];
                v144 = [(CWFAutoJoinManager *)v206 __descriptionForError:v189];
                v237 = 136446978;
                v238 = v142;
                v239 = 2048;
                v240 = v135 / 0xF4240;
                v241 = 2048;
                v242 = v143;
                v243 = 2114;
                v244 = v144;
                LODWORD(v162) = 42;
                v160 = &v237;
                _os_log_send_and_compose_impl();
              }

              v145 = CWFGetOSLog();
              if (v145)
              {
                v146 = CWFGetOSLog();
              }

              else
              {
                v147 = v92;
                v146 = v92;
              }

              if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
              {
                v148 = [v127 count];
                v237 = 134217984;
                v238 = v148;
                LODWORD(v162) = 12;
                v160 = &v237;
                _os_log_send_and_compose_impl();
              }

              v209 = 0u;
              v210 = 0u;
              v207 = 0u;
              v208 = 0u;
              v99 = v127;
              v149 = [v99 countByEnumeratingWithState:&v207 objects:v236 count:16];
              if (v149)
              {
                v150 = v149;
                v151 = *v208;
                do
                {
                  for (m = 0; m != v150; ++m)
                  {
                    if (*v208 != v151)
                    {
                      objc_enumerationMutation(v99);
                    }

                    v153 = *(*(&v207 + 1) + 8 * m);
                    v154 = CWFGetOSLog();
                    if (v154)
                    {
                      v155 = CWFGetOSLog();
                    }

                    else
                    {
                      v156 = v92;
                      v155 = v92;
                    }

                    if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
                    {
                      v237 = 138543362;
                      v238 = v153;
                      LODWORD(v162) = 12;
                      v160 = &v237;
                      _os_log_send_and_compose_impl();
                    }
                  }

                  v150 = [v99 countByEnumeratingWithState:&v207 objects:v236 count:16];
                }

                while (v150);
              }

              self = v206;
              v89 = v182;
              v91 = v187;
            }

            v106 = v195;
            v105 = v198;
            v96 = 0;
          }

          objc_autoreleasePoolPop(v106);
          v93 = v105 + 1;
        }

        while (v93 != v91);
        v91 = [v89 countByEnumeratingWithState:&v212 objects:v245 count:16];
      }

      while (v91);
    }

    else
    {
      v178 = 0;
      v189 = 0;
    }

    [(CWFAutoJoinMetric *)self->_metric setFollowup6GHzScanChannels:v172];
    if (a7)
    {
      v88 = v178;
      if (v189)
      {
        *a7 = v189;
      }
    }

    else
    {
      v88 = v178;
    }
  }

  else
  {
    v189 = 0;
    v88 = 0;
  }

  v157 = v205;

  v158 = *MEMORY[0x1E69E9840];
  return v205;
}

- (id)__passpointScanResults:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isPasspoint])
        {
          if (!v6)
          {
            v6 = [MEMORY[0x1E695DF70] array];
          }

          [v6 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = [v6 copy];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)__isNonPinnedEAPTLSCandidate:(id)a3
{
  v3 = [a3 matchingKnownNetworkProfile];
  if (![v3 isEAP])
  {
    goto LABEL_9;
  }

  v4 = [v3 acceptedEAPTypes];
  v5 = [v4 containsObject:&unk_1F5BBC658];

  v6 = [v3 acceptedEAPTypes];
  v7 = [v6 containsObject:&unk_1F5BBC670];

  if (v5 && v7)
  {
    v8 = [v3 acceptedEAPTypes];
    v9 = [v8 count];

    if (v9 != 2)
    {
LABEL_9:
      v13 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    if (((v5 | v7) & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = [v3 acceptedEAPTypes];
    v11 = [v10 count];

    if (v11 != 1)
    {
      goto LABEL_9;
    }
  }

  v12 = [v3 TLSTrustedServerNames];
  v13 = [v12 count] == 0;

LABEL_10:
  return v13;
}

- (BOOL)__allowJoinCandidate:(id)a3 context:(id)a4 defer:(BOOL *)a5 error:(id *)a6
{
  v75 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v68 = 0;
  v12 = [v11 autoJoinParameters];
  v13 = [v12 trigger];

  failedToJoinKnownNetworkIDs = self->_failedToJoinKnownNetworkIDs;
  v15 = [v10 matchingKnownNetworkProfile];
  v16 = [v15 identifier];
  LODWORD(failedToJoinKnownNetworkIDs) = [(NSMutableSet *)failedToJoinKnownNetworkIDs containsObject:v16];

  if (failedToJoinKnownNetworkIDs)
  {
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = v17;
    v19 = *MEMORY[0x1E696A578];
    v20 = @"Already failed to auto-join known network profile";
LABEL_18:
    [v17 setObject:v20 forKeyedSubscript:v19];
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v18];
    v31 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v21 = [v10 channel];
  if ([v21 is6GHz] && !-[CWFAutoJoinManager maxCompatibilityEnabled](self, "maxCompatibilityEnabled"))
  {
    v28 = [v10 matchingKnownNetworkProfile];
    v29 = [v28 isStandalone6G];

    if (v29)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v22 = [v10 channel];
  if ([v22 is6GHz])
  {

    if ((v13 & 0xFFFFFFFFFFFFFFFELL) == 0x36)
    {
      v17 = [MEMORY[0x1E695DF90] dictionary];
      v18 = v17;
      v19 = *MEMORY[0x1E696A578];
      v20 = @"6G is not allowed with current trigger";
      goto LABEL_18;
    }
  }

  else
  {
  }

  v23 = [v10 channel];
  v24 = [v23 is6GHz];

  if ((v24 & 1) == 0 && v13 == 45)
  {
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = v17;
    v19 = *MEMORY[0x1E696A578];
    v20 = @"non-6G is not allowed with current trigger";
    goto LABEL_18;
  }

  v25 = [v10 channel];
  if (([v25 is6GHz] & 1) == 0)
  {

    goto LABEL_48;
  }

  v26 = [v10 matchingKnownNetworkProfile];
  v27 = [v26 disable6EMode];

  if (v27 == 2)
  {
LABEL_17:
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = v17;
    v19 = *MEMORY[0x1E696A578];
    v20 = @"6G is not allowed with this network";
    goto LABEL_18;
  }

LABEL_48:
  v53 = [v10 matchingKnownNetworkProfile];
  targetQueue = self->_targetQueue;
  v67 = 0;
  v55 = [(CWFAutoJoinManager *)self __allowKnownNetwork:v53 context:v11 allowForSeamlessSSIDTransition:0 defer:&v68 targetQueue:targetQueue error:&v67];
  v30 = v67;

  if (v55)
  {
    v56 = a5;
    v57 = [v10 matchingKnownNetworkProfile];
    if ([v57 addReason] == 10 && ((objc_msgSend(v10, "isOpen") & 1) != 0 || (objc_msgSend(v10, "isOWE") & 1) != 0 || (objc_msgSend(v10, "isWAPI") & 1) != 0 || objc_msgSend(v10, "isPSK") && ((objc_msgSend(v10, "isWEP") & 1) != 0 || (objc_msgSend(v10, "isWPA") & 1) != 0) || (objc_msgSend(v10, "hasWEP104Cipher") & 1) != 0 || (objc_msgSend(v10, "hasWEP40Cipher") & 1) != 0 || (objc_msgSend(v10, "hasTKIPCipher") & 1) != 0))
    {
      v58 = [v10 matchingKnownNetworkProfile];
      v59 = [v58 lastJoinedByUserAt];

      if (!v59)
      {
        v18 = [MEMORY[0x1E695DF90] dictionary];
        [v18 setObject:@"Carrier-based known network profile with weak security never joined by user" forKeyedSubscript:*MEMORY[0x1E696A578]];
        v60 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v18];

        v31 = 0;
        v30 = v60;
        a5 = v56;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v61 = [(CWFAutoJoinManager *)self allowJoinCandidateHandler];

    if (v61)
    {
      v66 = 0;
      v62 = [(CWFAutoJoinManager *)self __calloutToAllowJoinCandidate:v10 trigger:v13 defer:&v68 error:&v66];
      v18 = v66;
      a5 = v56;
      if (v62)
      {
        v31 = 1;
      }

      else
      {
        v63 = [MEMORY[0x1E695DF90] dictionary];
        [v63 setObject:@"Join candidate is not allowed by daemon" forKeyedSubscript:*MEMORY[0x1E696A578]];
        [v63 setObject:v18 forKeyedSubscript:*MEMORY[0x1E696AA08]];
        v64 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v63];

        v31 = 0;
        v30 = v64;
      }

      goto LABEL_19;
    }

    v31 = 1;
    a5 = v56;
  }

  else
  {
    v31 = 0;
  }

LABEL_20:
  if ([(CWFAutoJoinManager *)self __isDeferrableJoinCandidate:v10])
  {
    v68 = 1;
  }

  v32 = [v10 matchingKnownNetworkProfile];
  v33 = [v32 lastJoinedByUserAt];
  if (!v33)
  {
    v34 = [v11 preferUserConfiguredNetworks];

    if (v34)
    {
      v68 = 1;
      if (!v31)
      {
        goto LABEL_30;
      }
    }

    else if (!v31)
    {
      goto LABEL_30;
    }

LABEL_27:
    if (!a5)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  if (v31)
  {
    goto LABEL_27;
  }

LABEL_30:
  v35 = CWFGetOSLog();
  if (v35)
  {
    v36 = CWFGetOSLog();
  }

  else
  {
    v36 = MEMORY[0x1E69E9C10];
    v37 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [v10 matchingKnownNetworkProfile];
    [v38 identifier];
    v65 = v11;
    v39 = a6;
    v41 = v40 = a5;
    v42 = [v41 redactedForWiFi];
    v43 = [(CWFAutoJoinManager *)self __descriptionForError:v30];
    v69 = 138543874;
    v70 = v42;
    v71 = 2114;
    v72 = v43;
    v73 = 2114;
    v74 = v10;
    _os_log_send_and_compose_impl();

    a5 = v40;
    a6 = v39;
    v11 = v65;
  }

  if (a5)
  {
LABEL_36:
    if (v68)
    {
      v44 = CWFGetOSLog();
      if (v44)
      {
        v45 = CWFGetOSLog();
      }

      else
      {
        v45 = MEMORY[0x1E69E9C10];
        v46 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v47 = [v10 matchingKnownNetworkProfile];
        v48 = [v47 identifier];
        v49 = [v48 redactedForWiFi];
        v69 = 138543618;
        v70 = v49;
        v71 = 2114;
        v72 = v10;
        _os_log_send_and_compose_impl();
      }

      *a5 = v68;
    }
  }

LABEL_43:
  if (a6 && v30)
  {
    v50 = v30;
    *a6 = v30;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v31;
}

- (BOOL)__performJoinWithNetwork:(id)a3 context:(id)a4 error:(id *)a5
{
  v127 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v102 = a4;
  v108 = self;
  v98 = [(CWFAutoJoinManager *)self associatedNetwork];
  v107 = v7;
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v114 = 138543362;
    v115 = v107;
    LODWORD(v92) = 12;
    v91 = &v114;
    _os_log_send_and_compose_impl();
  }

  v94 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v11 = [(CWFAutoJoinManager *)self associateToNetworkHandler];

  if (!v11)
  {
    v122 = *MEMORY[0x1E696A578];
    v123 = @"CWFAutoJoinManager.associateToNetworkHandler() not configured";
    v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:v103];
    v21 = 0;
    v99 = 0;
    v105 = 0;
    v22 = v107;
    goto LABEL_58;
  }

  v99 = objc_alloc_init(CWFAssocParameters);
  [(CWFAssocParameters *)v99 setScanResult:v107];
  v12 = [v107 SSID];
  v13 = [v98 SSID];
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    v15 = [v107 SSID];
    if (v15)
    {
      v16 = [v98 SSID];
      if (v16)
      {
        v17 = [v107 SSID];
        v18 = [v98 SSID];
        v19 = ([v17 isEqual:v18] & 1) != 0 || -[CWFAutoJoinManager __candidateSupportsSeamlessSSIDTransition:fromNetwork:context:](v108, "__candidateSupportsSeamlessSSIDTransition:fromNetwork:context:", v107, v98, v102);
      }

      else
      {
        v19 = [(CWFAutoJoinManager *)v108 __candidateSupportsSeamlessSSIDTransition:v107 fromNetwork:v98 context:v102];
      }

      if (v19)
      {
        goto LABEL_20;
      }

LABEL_15:
      v24 = 0;
      goto LABEL_41;
    }

    v23 = [(CWFAutoJoinManager *)v108 __candidateSupportsSeamlessSSIDTransition:v107 fromNetwork:v98 context:v102];

    if (!v23)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  v25 = [(CWFAutoJoinManager *)v108 colocatedScopeID:v91];
  [(CWFAssocParameters *)v99 setColocatedScopeID:v25];

  v26 = [v102 autoJoinParameters];
  if ([v26 trigger] == 54)
  {
  }

  else
  {
    v27 = [v102 autoJoinParameters];
    v24 = [v27 trigger] == 55;

    if (!v24)
    {
      goto LABEL_41;
    }
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v28 = [v102 autoJoinParameters];
  obj = [v28 preferredChannels];

  v104 = [obj countByEnumeratingWithState:&v110 objects:v126 count:16];
  if (v104)
  {
    v100 = *v111;
LABEL_25:
    v29 = 0;
    while (1)
    {
      if (*v111 != v100)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v110 + 1) + 8 * v29);
      v106 = [(CWFAutoJoinManager *)v108 __basicChannelRepresentation:v30];
      v31 = [v107 channel];
      v32 = [(CWFAutoJoinManager *)v108 __basicChannelRepresentation:v31];
      v33 = v32;
      if (v106 == v32)
      {

LABEL_39:
        [(CWFAssocParameters *)v99 setForceBSSID:1];
        goto LABEL_40;
      }

      v34 = [(CWFAutoJoinManager *)v108 __basicChannelRepresentation:v30];
      if (v34)
      {
        v35 = [v107 channel];
        v36 = [(CWFAutoJoinManager *)v108 __basicChannelRepresentation:v35];
        if (v36)
        {
          v37 = [(CWFAutoJoinManager *)v108 __basicChannelRepresentation:v30];
          v38 = [v107 channel];
          v39 = [(CWFAutoJoinManager *)v108 __basicChannelRepresentation:v38];
          v40 = [v37 isEqual:v39];

          if (v40)
          {
            goto LABEL_39;
          }

          goto LABEL_35;
        }
      }

LABEL_35:
      if (v104 == ++v29)
      {
        v104 = [obj countByEnumeratingWithState:&v110 objects:v126 count:16];
        if (v104)
        {
          goto LABEL_25;
        }

        break;
      }
    }
  }

  [(CWFAssocParameters *)v99 setBandPreference:4];
LABEL_40:
  v24 = 1;
LABEL_41:
  v41 = [v102 autoJoinParameters];
  if ([v41 mode] == 2 && !objc_msgSend(v102, "BSSChannelsOnly"))
  {
  }

  else
  {
    v42 = [v102 didForceAllRemainingChannels];

    if ((v42 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  v43 = [(NSMutableSet *)v108->_cumulativeScanResults allObjects];
  v44 = CWFScanResultHas6GHzOnlyBSS(v107, v43, &unk_1F5B8AC80);

  if (v44)
  {
    v21 = 1;
LABEL_49:
    [(CWFAssocParameters *)v99 setHas6GHzOnlyBSS:1];
    goto LABEL_50;
  }

LABEL_48:
  v45 = [v107 matchingKnownNetworkProfile];
  v46 = [v45 wasRecently6GHzOnlyOnAnyDevice];

  v21 = 0;
  if (v46)
  {
    goto LABEL_49;
  }

LABEL_50:
  v109 = 0;
  v105 = [(CWFAutoJoinManager *)v108 __calloutToAssociateWithParameters:v99 error:&v109];
  v47 = v109;
  v48 = v47;
  if (v105)
  {
    v22 = [(CWFAutoJoinManager *)v108 associatedNetwork];

    if (v24)
    {
      v49 = v108;
      objc_sync_enter(v49);
      v50 = [v98 copy];
      steerFromNetwork = v49->_steerFromNetwork;
      v49->_steerFromNetwork = v50;

      v52 = [v22 copy];
      steerToNetwork = v49->_steerToNetwork;
      v49->_steerToNetwork = v52;

      objc_sync_exit(v49);
    }

    v103 = 0;
    v20 = 0;
  }

  else
  {
    v103 = [v47 userInfo];
    if (!v103)
    {
      v124 = *MEMORY[0x1E696A578];
      v125 = @"Failed to join to network";
      v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
    }

    v54 = MEMORY[0x1E696ABC0];
    v55 = [v48 code];
    v20 = [v54 errorWithDomain:*MEMORY[0x1E696A798] code:v55 userInfo:v103];
    v22 = v107;
  }

LABEL_58:
  v93 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (v20)
  {
    v56 = [(CWFAutoJoinMetric *)v108->_metric joinErrors];
    if (v56)
    {
      v57 = [(CWFAutoJoinMetric *)v108->_metric joinErrors];
      v58 = [v57 arrayByAddingObject:v20];
      [(CWFAutoJoinMetric *)v108->_metric setJoinErrors:v58];
    }

    else
    {
      v57 = [MEMORY[0x1E695DEC8] arrayWithObject:v20];
      [(CWFAutoJoinMetric *)v108->_metric setJoinErrors:v57];
    }
  }

  v59 = MEMORY[0x1E696AEC0];
  v60 = [v22 shortSSID];
  v61 = [v22 BSSID];
  v62 = [v22 channel];
  v63 = [v59 stringWithFormat:@"%lu/%@/%lu", v60, v61, objc_msgSend(v62, "channel")];

  v64 = [(NSMutableDictionary *)v108->_followup6GHzRNRMap objectForKeyedSubscript:v63];
  obja = [(NSMutableDictionary *)v108->_followup6GHzFILSDMap objectForKeyedSubscript:v63];
  [(CWFAutoJoinMetric *)v108->_metric setWas6EPreferOn:[(CWFAutoJoinManager *)v108 maxCompatibilityEnabled]];
  v101 = [v22 matchingKnownNetworkProfile];
  -[CWFAutoJoinMetric setWas6EDisabled:](v108->_metric, "setWas6EDisabled:", [v101 disable6EMode] == 2);
  if (v105)
  {
    v65 = [v64 channel];
    v66 = [v22 copy];
    [(CWFAutoJoinManager *)v108 __updateRNRChannel:v65 has6GHzOnlyBSS:v21 joinCandidate:v66];

    v67 = [v22 channel];
    if ([v67 is6GHz])
    {
      v68 = [v102 allowStandalone6GHz];

      if ((v68 & 1) == 0)
      {
        [(CWFAutoJoinMetric *)v108->_metric setWas6GHzDeprioritized:0];
      }
    }

    else
    {
    }

    v69 = [v98 SSID];
    v70 = [v22 SSID];
    if (v69 == v70)
    {
      [(CWFAutoJoinMetric *)v108->_metric setDidTriggerReassoc:1];
    }

    else
    {
      v71 = [v98 SSID];
      if (v71)
      {
        v72 = [v22 SSID];
        if (v72)
        {
          v73 = [v98 SSID];
          v74 = [v22 SSID];
          -[CWFAutoJoinMetric setDidTriggerReassoc:](v108->_metric, "setDidTriggerReassoc:", [v73 isEqual:v74]);
        }

        else
        {
          [(CWFAutoJoinMetric *)v108->_metric setDidTriggerReassoc:0];
        }
      }

      else
      {
        [(CWFAutoJoinMetric *)v108->_metric setDidTriggerReassoc:0];
      }
    }

    if (![(CWFAutoJoinMetric *)v108->_metric didTriggerReassoc])
    {
      v75 = [(CWFAssocParameters *)v99 colocatedScopeID];
      [(CWFAutoJoinMetric *)v108->_metric setDidPerformSeamlessSSIDTransition:v75 != 0];
    }

    v76 = v108;
    objc_sync_enter(v76);
    deferredKnownNetworks = v76->_deferredKnownNetworks;
    v78 = [v22 matchingKnownNetworkProfile];
    LODWORD(deferredKnownNetworks) = [(NSMutableOrderedSet *)deferredKnownNetworks containsObject:v78];

    if (deferredKnownNetworks)
    {
      [(CWFAutoJoinMetric *)v108->_metric setDidJoinDeferredNetwork:1];
    }

    objc_sync_exit(v76);
  }

  if (v64)
  {
    [(CWFAutoJoinMetric *)v108->_metric setWasDiscoveredViaRNR:1];
  }

  else if (obja)
  {
    [(CWFAutoJoinMetric *)v108->_metric setWasDiscoveredViaFILSD:1];
  }

  v79 = [(CWFAutoJoinManager *)v108 __alreadyFoundFollowup6GHzBSSWithSignature:v63];

  if (v79)
  {
    [(CWFAutoJoinMetric *)v108->_metric setWasDiscoveredVia6GHzFollowup:1];
  }

  [(CWFAutoJoinMetric *)v108->_metric setAutoJoinedNetwork:v22];
  v80 = CWFGetOSLog();
  if (v80)
  {
    v81 = CWFGetOSLog();
  }

  else
  {
    v81 = MEMORY[0x1E69E9C10];
    v82 = MEMORY[0x1E69E9C10];
  }

  if (v105)
  {
    v83 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v83 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v81, v83))
  {
    if (v105)
    {
      v84 = "SUCCEEDED";
    }

    else
    {
      v84 = "FAILED";
    }

    v85 = [(CWFAutoJoinManager *)v108 __descriptionForError:v20];
    v86 = [(CWFAutoJoinMetric *)v108->_metric autoJoinedNetwork];
    v114 = 136446978;
    v115 = v84;
    v116 = 2048;
    v117 = (v93 - v94) / 0xF4240;
    v118 = 2114;
    v119 = v85;
    v120 = 2114;
    v121 = v86;
    _os_log_send_and_compose_impl();
  }

  v87 = v20 == 0;
  if (!a5)
  {
    v87 = 1;
  }

  if (!v87)
  {
    v88 = v20;
    *a5 = v20;
  }

  v89 = *MEMORY[0x1E69E9840];
  return v105;
}

- (void)__sortJoinCandidates:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 preferUserConfiguredNetworks];
  v13 = [v6 autoJoinParameters];

  v9 = [v13 trigger];
  v10 = [(CWFAutoJoinManager *)self associatedNetwork];
  v11 = [(CWFAutoJoinManager *)self joinCandidateComparator];
  v12 = sub_1E0BEFAA0(1, v8, v9, v10, v11);
  [v7 sortUsingDescriptors:v12];
}

- (void)__updateDisallowedMatchedKnownNetworks
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_cumulativeScanResults;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([(CWFAutoJoinManager *)self __preflightMatchKnownNetworksForScanResult:v8, v13])
        {
          v9 = [(NSMutableDictionary *)self->_disallowedKnownNetworksMap allValues];
          v10 = sub_1E0BED85C(v8, v9);

          if (v10)
          {
            v11 = [v8 scanResultWithMatchingKnownNetworkProfile:v10];
            [(NSMutableSet *)self->_disallowedMatchedCandidates addObject:v11];
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)__morePreferredKnownNetworksWithCandidate:(id)a3 knownNetworks:(id)a4 context:(id)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v68 = [MEMORY[0x1E695DFA0] orderedSet];
  v63 = v10;
  v11 = [v10 autoJoinParameters];
  v12 = [v11 trigger];

  v62 = [v8 lastJoinedAt];
  v61 = [v8 lastDiscoveredAt];
  v67 = [v8 networkGroupID];
  v64 = [v8 networkGroupPriority];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v14 = v13;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v9;
  v15 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (!v15)
  {
    v17 = v10;
    goto LABEL_47;
  }

  v16 = v15;
  v69 = *v71;
  v65 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = v10;
  do
  {
    v18 = 0;
    do
    {
      if (*v71 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v70 + 1) + 8 * v18);
      v20 = [v8 identifier];
      v21 = [v19 identifier];
      v22 = [v20 isEqual:v21];

      if (v22 & 1) != 0 || !-[CWFAutoJoinManager __allowKnownNetwork:context:allowForSeamlessSSIDTransition:defer:targetQueue:error:](self, "__allowKnownNetwork:context:allowForSeamlessSSIDTransition:defer:targetQueue:error:", v19, v17, 0, 0, self->_targetQueue, 0) || ([v19 isPersonalHotspot])
      {
        goto LABEL_31;
      }

      if ([v8 compareUserPriority:v19] == -1)
      {
        v25 = [v19 addedAt];
        v26 = [v19 lastJoinedAt];
        v27 = [v19 lastDiscoveredAt];
        [v26 timeIntervalSinceReferenceDate];
        if (v14 - v28 < 1209600.0)
        {
          goto LABEL_18;
        }

        [v27 timeIntervalSinceReferenceDate];
        if (v14 - v29 < 1209600.0)
        {
          goto LABEL_18;
        }

        [v25 timeIntervalSinceReferenceDate];
        if (v14 - v30 < 1209600.0)
        {
          goto LABEL_18;
        }

        [v26 timeIntervalSinceReferenceDate];
        v32 = v31;
        [v62 timeIntervalSinceReferenceDate];
        if (v32 > v33)
        {
          goto LABEL_18;
        }

        [v27 timeIntervalSinceReferenceDate];
        v35 = v34;
        [v61 timeIntervalSinceReferenceDate];
        if (v35 > v36)
        {
          goto LABEL_18;
        }

        if (v26 && v62)
        {
          [v26 timeIntervalSinceReferenceDate];
          v42 = floor(v41);
          [v62 timeIntervalSinceReferenceDate];
          v44 = floor(v43);
          [v26 timeIntervalSinceReferenceDate];
          v46 = floor(v45);
          [v62 timeIntervalSinceReferenceDate];
          v48 = v46 - floor(v47);
          if (v42 < v44)
          {
            v48 = -v48;
          }

          if (v48 < 1209600.0)
          {
            goto LABEL_18;
          }
        }

        v37 = 1;
        if (!v27 || !v61)
        {
          goto LABEL_19;
        }

        [v27 timeIntervalSinceReferenceDate];
        v50 = floor(v49);
        [v61 timeIntervalSinceReferenceDate];
        v52 = floor(v51);
        [v27 timeIntervalSinceReferenceDate];
        v54 = floor(v53);
        [v61 timeIntervalSinceReferenceDate];
        v56 = v54 - floor(v55);
        if (v50 < v52)
        {
          v56 = -v56;
        }

        if (v56 < 1209600.0)
        {
LABEL_18:
          v37 = 0;
        }

        else
        {
          v37 = 1;
        }

LABEL_19:
        if (([v8 networkOfInterestHomeState] == 1 || objc_msgSend(v8, "networkOfInterestHomeState") == 3) && objc_msgSend(v19, "networkOfInterestHomeState") == 2 && -[CWFAutoJoinManager __isAutoJoiningAtHome](self, "__isAutoJoiningAtHome"))
        {
          v38 = [(CWFAutoJoinManager *)self location];
          v39 = [v19 wasManuallyJoinedRecentlyInProximityOf:v38];

          v17 = v63;
          v37 = v39 ^ 1;
        }

        if (v65 != 52 && (v37 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      }

      v23 = [v19 networkGroupID];
      if (([v67 isEqualToString:v23] & 1) == 0)
      {

        goto LABEL_31;
      }

      v24 = [v19 networkGroupPriority];

      if (v64 < v24)
      {
LABEL_26:
        if ([(CWFAutoJoinManager *)self __allowKnownNetwork:v19 context:v17 allowForSeamlessSSIDTransition:0 defer:0 targetQueue:self->_targetQueue error:0])
        {
          v40 = v68;
          if (!v68)
          {
            v40 = [MEMORY[0x1E695DFA0] orderedSet];
          }

          v68 = v40;
          [v40 addObject:v19];
        }
      }

LABEL_31:
      ++v18;
    }

    while (v16 != v18);
    v57 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    v16 = v57;
  }

  while (v57);
LABEL_47:

  v58 = [v68 copy];
  v59 = *MEMORY[0x1E69E9840];

  return v58;
}

- (BOOL)__connectToHotspot:(id)a3 error:(id *)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v46 = [(CWFAutoJoinManager *)self associatedNetwork];
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 138543362;
    v50 = v5;
    LODWORD(v45) = 12;
    v44 = &v49;
    _os_log_send_and_compose_impl();
  }

  v9 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v10 = [(CWFAutoJoinManager *)self connectToHotspotHandler];

  if (v10)
  {
    v11 = CWFGetBootTime();
    v12 = [v11 dateByAddingTimeInterval:v9 / 1000000000.0];
    [(CWFAutoJoinMetric *)self->_metric setAutoHotspotJoinStartedAt:v12];

    v48 = 0;
    v13 = [(CWFAutoJoinManager *)self __calloutToConnectToHotspot:v5 error:&v48];
    v14 = v48;
    if (v13)
    {
      v15 = self;
      objc_sync_enter(v15);
      v16 = [v46 copy];
      brokenBackhaulNetwork = v15->_brokenBackhaulNetwork;
      v15->_brokenBackhaulNetwork = v16;

      objc_sync_exit(v15);
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v18 = [MEMORY[0x1E695DF90] dictionary];
      [v18 setObject:@"Failed to connect to hotspot" forKeyedSubscript:*MEMORY[0x1E696A578]];
      v20 = MEMORY[0x1E696ABC0];
      v21 = [v14 code];
      v19 = [v20 errorWithDomain:*MEMORY[0x1E696A798] code:v21 userInfo:v18];
    }
  }

  else
  {
    v18 = [MEMORY[0x1E695DF90] dictionary];
    [v18 setObject:@"CWFAutoJoinManager.connectToHotspotHandler() not configured" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:v18];
    v13 = 0;
  }

  v22 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  if (v19)
  {
    v23 = [(CWFAutoJoinMetric *)self->_metric autoHotspotJoinErrors];
    if (v23)
    {
      v24 = [(CWFAutoJoinMetric *)self->_metric autoHotspotJoinErrors];
      v25 = [v24 arrayByAddingObject:v19];
      [(CWFAutoJoinMetric *)self->_metric setAutoHotspotJoinErrors:v25];
    }

    else
    {
      v24 = [MEMORY[0x1E695DEC8] arrayWithObject:v19];
      [(CWFAutoJoinMetric *)self->_metric setAutoHotspotJoinErrors:v24];
    }
  }

  [(CWFAutoJoinMetric *)self->_metric setHotspot:v5, v44, v45];
  v26 = CWFGetBootTime();
  v27 = [v26 dateByAddingTimeInterval:v22 / 1000000000.0];
  [(CWFAutoJoinMetric *)self->_metric setAutoHotspotJoinEndedAt:v27];

  v28 = CWFGetOSLog();
  if (v28)
  {
    v29 = CWFGetOSLog();
  }

  else
  {
    v29 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
  }

  if (v13)
  {
    v31 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v31 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v29, v31))
  {
    if (v13)
    {
      v32 = "SUCCEEDED";
    }

    else
    {
      v32 = "FAILED";
    }

    v33 = [(CWFAutoJoinMetric *)self->_metric autoHotspotJoinEndedAt];
    [v33 timeIntervalSinceReferenceDate];
    v35 = v34;
    v36 = [(CWFAutoJoinMetric *)self->_metric autoHotspotJoinStartedAt];
    [v36 timeIntervalSinceReferenceDate];
    v38 = v37;
    v39 = [(CWFAutoJoinManager *)self __descriptionForError:v19];
    v49 = 136446978;
    v50 = v32;
    v51 = 2048;
    v52 = ((v35 - v38) * 1000.0);
    v53 = 2114;
    v54 = v39;
    v55 = 2114;
    v56 = v5;
    _os_log_send_and_compose_impl();
  }

  v40 = v19 == 0;
  if (!a4)
  {
    v40 = 1;
  }

  if (!v40)
  {
    v41 = v19;
    *a4 = v19;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)__sortHotspotCandidates:(id)a3
{
  v12[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  v4 = a3;
  v5 = [v3 sortDescriptorWithKey:0 ascending:1 comparator:&unk_1F5B8ACA0];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:1 comparator:&unk_1F5B89130];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"networkType" ascending:0];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"signalStrength" ascending:0];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"batteryLife" ascending:0];
  v12[0] = v5;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  [v4 sortUsingDescriptors:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (int64_t)__allowAutoHotspotWithTrigger:(int64_t)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v7 = [(CWFAutoJoinManager *)self __isAutoJoinCancelled:&v23];
  v8 = v23;
  if (v7 || ([(CWFAutoJoinManager *)self allowAutoHotspotHandler], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v10 = 0;
  }

  else
  {
    v22 = 0;
    v10 = [(CWFAutoJoinManager *)self __calloutToAllowAutoHotspotWithTrigger:a3 error:&v22];
    v11 = v22;
    v12 = v11;
    if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {

      if (!a4)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v20 = [MEMORY[0x1E695DF90] dictionary];
    [v20 setObject:@"Auto-hotspot is not allowed" forKeyedSubscript:*MEMORY[0x1E696A578]];
    if (v12)
    {
      [v20 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v20];

    v8 = v21;
  }

  v13 = CWFGetOSLog();
  if (v13)
  {
    v14 = CWFGetOSLog();
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(CWFAutoJoinManager *)self __descriptionForError:v8];
    v24 = 138543362;
    v25 = v16;
    _os_log_send_and_compose_impl();
  }

  [(CWFAutoJoinMetric *)self->_metric setAutoHotspotWasAborted:1];
  if (a4)
  {
LABEL_13:
    if (v8)
    {
      v17 = v8;
      *a4 = v8;
    }
  }

LABEL_15:

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)__allowHotspot:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CWFAutoJoinManager *)self allowHotspotHandler];

  if (!v7)
  {
    goto LABEL_4;
  }

  v20 = 0;
  v8 = [(CWFAutoJoinManager *)self __calloutToAllowHotspot:v6 error:&v20];
  v9 = v20;
  v10 = v9;
  if (v8)
  {

    v7 = 0;
LABEL_4:
    v11 = 1;
    goto LABEL_5;
  }

  v14 = [MEMORY[0x1E695DF90] dictionary];
  [v14 setObject:@"Hotspot is not allowed by daemon" forKeyedSubscript:*MEMORY[0x1E696A578]];
  if (v10)
  {
    [v14 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v14];

  v15 = CWFGetOSLog();
  if (v15)
  {
    v16 = CWFGetOSLog();
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(CWFAutoJoinManager *)self __descriptionForError:v7];
    v21 = 138543618;
    v22 = v6;
    v23 = 2114;
    v24 = v18;
    _os_log_send_and_compose_impl();
  }

  v11 = 0;
  if (a4 && v7)
  {
    v19 = v7;
    v11 = 0;
    *a4 = v7;
  }

LABEL_5:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)__addDependentThrottleInterval:(unint64_t)a3 trigger:(int64_t)a4 dependentTrigger:(int64_t)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(CWFAutoJoinThrottle);
  [(CWFAutoJoinThrottle *)v9 setTrigger:a4];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v16 = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v17[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [(CWFAutoJoinThrottle *)v9 setIntervalsBasedOnTriggerTimestamp:v12];

  throttleIntervalMap = self->_throttleIntervalMap;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)throttleIntervalMap setObject:v9 forKeyedSubscript:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)__addMatchingThrottleInterval:(unint64_t)a3 triggers:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a4;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 integerValue];
        v21 = v10;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        v22 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v14 = [CWFAutoJoinThrottle autoJoinThrottleWithTrigger:v11 intervals:v13];
        [(NSMutableDictionary *)self->_throttleIntervalMap setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)__addWilcardThrottleInterval:(unint64_t)a3 triggers:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a4;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 integerValue];
        v21 = &unk_1F5BBC5C8;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        v22 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v14 = [CWFAutoJoinThrottle autoJoinThrottleWithTrigger:v11 intervals:v13];
        [(NSMutableDictionary *)self->_throttleIntervalMap setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)__setupThrottleIntervals
{
  v23 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_throttleIntervalMap removeAllObjects];
  retrySchedule = self->_retrySchedule;
  if (retrySchedule > 7)
  {
    if (retrySchedule == 8)
    {
      [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:-1 triggers:&unk_1F5BB9C10];
      v13 = *MEMORY[0x1E69E9840];
      v5 = &unk_1F5BB9C28;
      goto LABEL_17;
    }

    if (retrySchedule == 9)
    {
      [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:-1 triggers:&unk_1F5BB9BC8];
      [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:0 triggers:&unk_1F5BB9BE0];
      v6 = *MEMORY[0x1E69E9840];
      v7 = self;
LABEL_9:

      MEMORY[0x1EEE66B58](v7, sel___addMatchingThrottleInterval_triggers_);
      return;
    }

LABEL_8:
    v8 = *MEMORY[0x1E69E9840];
    v7 = self;
    goto LABEL_9;
  }

  if (retrySchedule != 3)
  {
    if (retrySchedule == 5)
    {
      [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:-1 triggers:&unk_1F5BB9C40];
      v4 = *MEMORY[0x1E69E9840];
      v5 = &unk_1F5BB9C58;
LABEL_17:

      [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:0 triggers:v5];
      return;
    }

    goto LABEL_8;
  }

  [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:-1 triggers:&unk_1F5BB9C70];
  [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:0 triggers:&unk_1F5BB9C88];
  if (os_variant_has_internal_content())
  {
    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [v9 objectForKey:@"assoc_retry_awdl_rt_throttle_interval"];

    if (v10)
    {
      v11 = CWFGetOSLog();
      if (v11)
      {
        v12 = CWFGetOSLog();
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134218240;
        v20 = 900;
        v21 = 2048;
        v22 = [v10 unsignedIntegerValue];
        LODWORD(v18) = 22;
        v17 = &v19;
        _os_log_send_and_compose_impl();
      }

      v14 = [v10 unsignedIntegerValue];
    }

    else
    {
      v14 = 900;
    }
  }

  else
  {
    v14 = 900;
  }

  [(CWFAutoJoinManager *)self __addDependentThrottleInterval:v14 trigger:45 dependentTrigger:57, v17, v18];
  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)__shouldThrottleAutoJoinTrigger:(int64_t)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v65 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  throttleIntervalMap = self->_throttleIntervalMap;
  v58 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)throttleIntervalMap objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [(NSMutableDictionary *)self->_throttleIntervalMap objectForKeyedSubscript:&unk_1F5BBC5C8];
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v8 = [v7 intervals];
  v9 = [v8 allKeys];

  v66 = self;
  v67 = v7;
  v59 = [v9 countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (v59)
  {
    v10 = *v82;
    v63 = v9;
    v56 = *v82;
    do
    {
      v11 = 0;
      do
      {
        if (*v82 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v61 = v11;
        v12 = *(*(&v81 + 1) + 8 * v11);
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        obj = [(NSMutableDictionary *)self->_throttleTimestampMap allKeys];
        v13 = [obj countByEnumeratingWithState:&v77 objects:v91 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v78;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v78 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v77 + 1) + 8 * i);
              v18 = [v12 integerValue];
              if (v18 == [v17 integerValue])
              {
                v19 = [(NSMutableDictionary *)self->_throttleTimestampMap objectForKeyedSubscript:v17];
                v20 = [v7 intervals];
                v21 = [v20 objectForKeyedSubscript:v12];

                if (v19)
                {
                  v22 = v21 == 0;
                }

                else
                {
                  v22 = 1;
                }

                if (!v22)
                {
                  v23 = [v19 unsignedLongLongValue];
                  v24 = [v21 unsignedLongValue];
                  v25 = 1000000000 * [v21 unsignedLongValue];
                  v26 = [v21 unsignedLongValue];
                  v27 = 1000000000 * v26;
                  v28 = v24 > v25;
                  self = v66;
                  v7 = v67;
                  if (v28)
                  {
                    v27 = v26;
                  }

                  if (v65 - v23 < v27)
                  {
                    v48 = CWFGetOSLog();
                    if (v48)
                    {
                      v49 = CWFGetOSLog();
                    }

                    else
                    {
                      v49 = MEMORY[0x1E69E9C10];
                      v51 = MEMORY[0x1E69E9C10];
                    }

                    v30 = v63;

                    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                    {
                      v52 = sub_1E0BCC05C(v58);
                      v87 = 138543618;
                      v88 = v67;
                      v89 = 2114;
                      v90 = v52;
LABEL_60:
                      _os_log_send_and_compose_impl();
                    }

LABEL_61:

                    v47 = 1;
                    goto LABEL_62;
                  }
                }
              }
            }

            v14 = [obj countByEnumeratingWithState:&v77 objects:v91 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v11 = v61 + 1;
        v9 = v63;
        v10 = v56;
      }

      while (v61 + 1 != v59);
      v59 = [v63 countByEnumeratingWithState:&v81 objects:v92 count:16];
    }

    while (v59);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v29 = [v7 intervalsBasedOnTriggerTimestamp];
  v30 = [v29 allKeys];

  v60 = [v30 countByEnumeratingWithState:&v73 objects:v86 count:16];
  if (v60)
  {
    v31 = *v74;
    v64 = v30;
    v57 = *v74;
    do
    {
      v32 = 0;
      do
      {
        if (*v74 != v31)
        {
          objc_enumerationMutation(v30);
        }

        v62 = v32;
        v33 = *(*(&v73 + 1) + 8 * v32);
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        obj = [(NSMutableDictionary *)self->_triggerTimestampMap allKeys];
        v34 = [obj countByEnumeratingWithState:&v69 objects:v85 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v70;
LABEL_33:
          v37 = 0;
          while (1)
          {
            if (*v70 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v69 + 1) + 8 * v37);
            v39 = [v33 integerValue];
            if (v39 == [v38 integerValue])
            {
              v19 = [(NSMutableDictionary *)self->_triggerTimestampMap objectForKeyedSubscript:v38];
              v40 = [v7 intervalsBasedOnTriggerTimestamp];
              v21 = [v40 objectForKeyedSubscript:v33];

              if (v19)
              {
                v41 = v21 == 0;
              }

              else
              {
                v41 = 1;
              }

              if (!v41)
              {
                v42 = [v19 unsignedLongLongValue];
                v43 = [v21 unsignedLongValue];
                v44 = 1000000000 * [v21 unsignedLongValue];
                v45 = [v21 unsignedLongValue];
                v46 = 1000000000 * v45;
                v28 = v43 > v44;
                self = v66;
                v7 = v67;
                if (v28)
                {
                  v46 = v45;
                }

                if (v65 - v42 < v46)
                {
                  v50 = CWFGetOSLog();
                  if (v50)
                  {
                    v49 = CWFGetOSLog();
                  }

                  else
                  {
                    v49 = MEMORY[0x1E69E9C10];
                    v53 = MEMORY[0x1E69E9C10];
                  }

                  v30 = v64;

                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    v52 = sub_1E0BCC05C(v58);
                    v87 = 138543618;
                    v88 = v67;
                    v89 = 2114;
                    v90 = v52;
                    goto LABEL_60;
                  }

                  goto LABEL_61;
                }
              }
            }

            if (v35 == ++v37)
            {
              v35 = [obj countByEnumeratingWithState:&v69 objects:v85 count:16];
              if (v35)
              {
                goto LABEL_33;
              }

              break;
            }
          }
        }

        v32 = v62 + 1;
        v30 = v64;
        v31 = v57;
      }

      while (v62 + 1 != v60);
      v60 = [v64 countByEnumeratingWithState:&v73 objects:v86 count:16];
    }

    while (v60);
  }

  v47 = 0;
LABEL_62:

  v54 = *MEMORY[0x1E69E9840];
  return v47;
}

- (void)__setupRetryIntervals
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc_init(CWFAutoJoinRetryInterval);
  [(CWFAutoJoinRetryInterval *)v4 setBSSChannelsOnly:0];
  [(CWFAutoJoinRetryInterval *)v4 setMaxBSSChannelAge:2592000];
  [(CWFAutoJoinRetryInterval *)v4 setMaxBSSChannelCount:3];
  [(CWFAutoJoinRetryInterval *)v4 setPassiveScan:1];
  [(CWFAutoJoinRetryInterval *)v4 setDwellTime:110];
  v5 = [(CWFAutoJoinRetryInterval *)v4 copy];
  [v5 setAllowAutoHotspotFallback:1];
  v6 = objc_alloc_init(CWFAutoJoinRetryInterval);
  [(CWFAutoJoinRetryInterval *)v6 setBSSChannelsOnly:1];
  [(CWFAutoJoinRetryInterval *)v6 setMaxBSSChannelAge:0];
  [(CWFAutoJoinRetryInterval *)v6 setMaxBSSChannelCount:3];
  [(CWFAutoJoinRetryInterval *)v6 setDwellTime:110];
  v73 = objc_alloc_init(CWFAutoJoinRetryInterval);
  [(CWFAutoJoinRetryInterval *)v73 setBSSChannelsOnly:1];
  [(CWFAutoJoinRetryInterval *)v73 setMaxBSSChannelAge:604800];
  [(CWFAutoJoinRetryInterval *)v73 setMaxBSSChannelCount:3];
  [(CWFAutoJoinRetryInterval *)v73 setDwellTime:110];
  [(CWFAutoJoinRetryInterval *)v73 setPassiveScan:1];
  v7 = objc_alloc_init(CWFAutoJoinRetryInterval);
  [(CWFAutoJoinRetryInterval *)v7 setBSSChannelsOnly:1];
  [(CWFAutoJoinRetryInterval *)v7 setMaxBSSChannelAge:0];
  [(CWFAutoJoinRetryInterval *)v7 setMaxBSSChannelCount:3];
  [(CWFAutoJoinRetryInterval *)v7 setPassiveScan:0];
  [(CWFAutoJoinRetryInterval *)v7 setDwellTime:40];
  [(CWFAutoJoinRetryInterval *)v7 setAlwaysIncludeRemainingNon2GHzChannels:0];
  [(CWFAutoJoinRetryInterval *)v7 setIncludeAdjacent5GHzChannel:0];
  v8 = [(CWFAutoJoinRetryInterval *)v7 copy];
  [v8 setIncludeAdjacent5GHzChannel:1];
  v72 = [(CWFAutoJoinRetryInterval *)v6 copy];
  [v72 setAlwaysIncludeRemainingNon2GHzChannels:1];
  [v72 setAlwaysInclude6GHzPSCChannels:1];
  v9 = [(CWFAutoJoinRetryInterval *)v4 copy];
  [v9 setAlwaysIncludeRemainingNon2GHzChannels:1];
  [v9 setAlwaysInclude6GHzPSCChannels:1];
  v71 = [v9 copy];
  [v71 setAllowAutoHotspotFallback:1];
  v10 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:0 count:1];
  [v3 addObject:v10];

  v11 = [v5 autoJoinRetryInterval:20 count:1];
  [v3 addObject:v11];

  v12 = [v5 autoJoinRetryInterval:120 count:1];
  [v3 addObject:v12];

  v13 = [v5 autoJoinRetryInterval:240 count:1];
  [v3 addObject:v13];

  v14 = [v5 autoJoinRetryInterval:480 count:-1];
  [v3 addObject:v14];

  v15 = [v3 copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v15 forKeyedSubscript:&unk_1F5BBC8E0];

  [v3 removeAllObjects];
  v16 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:0 count:1];
  [v3 addObject:v16];

  v17 = 5;
  v18 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:5 count:2];
  [v3 addObject:v18];

  v19 = [v5 autoJoinRetryInterval:10 count:1];
  [v3 addObject:v19];

  v20 = [v5 autoJoinRetryInterval:120 count:1];
  [v3 addObject:v20];

  v21 = [v5 autoJoinRetryInterval:240 count:1];
  [v3 addObject:v21];

  v22 = [v5 autoJoinRetryInterval:480 count:-1];
  [v3 addObject:v22];

  v23 = [v3 copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v23 forKeyedSubscript:&unk_1F5BBC8F8];

  [v3 removeAllObjects];
  v24 = [v72 autoJoinRetryInterval:0 count:1];
  [v3 addObject:v24];

  v25 = [v9 autoJoinRetryInterval:5 count:2];
  [v3 addObject:v25];

  v26 = [v71 autoJoinRetryInterval:10 count:12];
  [v3 addObject:v26];

  v27 = [v71 autoJoinRetryInterval:20 count:-1];
  [v3 addObject:v27];

  v28 = [v3 copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v28 forKeyedSubscript:&unk_1F5BBC520];

  [v3 removeAllObjects];
  v29 = [(CWFAutoJoinRetryInterval *)v73 autoJoinRetryInterval:120 count:1];
  [v3 addObject:v29];

  v30 = [(CWFAutoJoinRetryInterval *)v73 autoJoinRetryInterval:240 count:1];
  [v3 addObject:v30];

  v31 = [(CWFAutoJoinRetryInterval *)v73 autoJoinRetryInterval:480 count:-1];
  [v3 addObject:v31];

  v32 = [v3 copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v32 forKeyedSubscript:&unk_1F5BBC6B8];

  [v3 removeAllObjects];
  v33 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:20 count:1];
  [v3 addObject:v33];

  v34 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:60 count:4];
  [v3 addObject:v34];

  v35 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:120 count:1];
  [v3 addObject:v35];

  v36 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:240 count:1];
  [v3 addObject:v36];

  v37 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:480 count:-1];
  [v3 addObject:v37];

  v38 = [v3 copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v38 forKeyedSubscript:&unk_1F5BBC910];

  [v3 removeAllObjects];
  v39 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:20 count:1];
  [v3 addObject:v39];

  v40 = [v5 autoJoinRetryInterval:20 count:1];
  [v3 addObject:v40];

  v41 = [v5 autoJoinRetryInterval:120 count:1];
  [v3 addObject:v41];

  v42 = [v5 autoJoinRetryInterval:240 count:1];
  [v3 addObject:v42];

  v43 = [v5 autoJoinRetryInterval:480 count:-1];
  [v3 addObject:v43];

  v44 = [v3 copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v44 forKeyedSubscript:&unk_1F5BBC730];

  [v3 removeAllObjects];
  do
  {
    v45 = [(CWFAutoJoinRetryInterval *)v7 autoJoinRetryInterval:0 count:2];
    [v3 addObject:v45];

    v46 = [v8 autoJoinRetryInterval:0 count:2];
    [v3 addObject:v46];

    v47 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:0 count:1];
    [v3 addObject:v47];

    --v17;
  }

  while (v17);
  v48 = [v3 copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v48 forKeyedSubscript:&unk_1F5BBC6A0];

  [v3 removeAllObjects];
  v49 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:360 count:1];
  [v3 addObject:v49];

  v50 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:900 count:-1];
  [v3 addObject:v50];

  v51 = [v3 copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v51 forKeyedSubscript:&unk_1F5BBC568];

  [v3 removeAllObjects];
  v52 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:900 count:-1];
  [v3 addObject:v52];

  v53 = [v3 copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v53 forKeyedSubscript:&unk_1F5BBC7C0];

  [v3 removeAllObjects];
  v54 = [v9 autoJoinRetryInterval:0 count:1];
  [v3 addObject:v54];

  v55 = [v9 autoJoinRetryInterval:5 count:2];
  [v3 addObject:v55];

  v56 = [v9 autoJoinRetryInterval:10 count:2];
  [v3 addObject:v56];

  v57 = [v9 autoJoinRetryInterval:20 count:16];
  [v3 addObject:v57];

  v58 = [v9 autoJoinRetryInterval:120 count:1];
  [v3 addObject:v58];

  v59 = [v9 autoJoinRetryInterval:240 count:1];
  [v3 addObject:v59];

  v60 = [v9 autoJoinRetryInterval:480 count:-1];
  [v3 addObject:v60];

  v61 = [v3 copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v61 forKeyedSubscript:&unk_1F5BBC928];

  [v3 removeAllObjects];
  v62 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:0 count:1];
  [v3 addObject:v62];

  v63 = [v5 autoJoinRetryInterval:5 count:2];
  [v3 addObject:v63];

  v64 = [v5 autoJoinRetryInterval:30 count:5];
  [v3 addObject:v64];

  v65 = [v5 autoJoinRetryInterval:60 count:5];
  [v3 addObject:v65];

  v66 = [v5 autoJoinRetryInterval:480 count:-1];
  [v3 addObject:v66];

  v67 = [v3 copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v67 forKeyedSubscript:&unk_1F5BBC940];

  [v3 removeAllObjects];
  v68 = CWFGetOSLog();
  if (v68)
  {
    v69 = CWFGetOSLog();
  }

  else
  {
    v69 = MEMORY[0x1E69E9C10];
    v70 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  [(NSMutableDictionary *)self->_retryIntervalMap enumerateKeysAndObjectsUsingBlock:&unk_1F5B8ACC0];
}

- (id)__retryIntervalWithScheduleIndex:(unint64_t)a3
{
  v32 = *MEMORY[0x1E69E9840];
  retrySchedule = self->_retrySchedule;
  if ([(CWFAutoJoinManager *)self __forceNearbyNetworkRetrySchedule])
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v29[0] = 67109376;
      v29[1] = 300;
      v30 = 1024;
      v31 = -80;
      LODWORD(v23) = 14;
      v22 = v29;
      _os_log_send_and_compose_impl();
    }

    retrySchedule = 10;
  }

  retryIntervalMap = self->_retryIntervalMap;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{retrySchedule, v22, v23}];
  v11 = [(NSMutableDictionary *)retryIntervalMap objectForKeyedSubscript:v10];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v25;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        if (__CFADD__(v15, [v18 count]))
        {
          v15 = -1;
        }

        else
        {
          v15 += [v18 count];
        }

        if (v15 > a3)
        {
          v19 = v18;
          goto LABEL_21;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_21:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)__retryInterval
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CWFAutoJoinManager *)v2 __retryIntervalWithScheduleIndex:v2->_retryScheduleIndex];
  objc_sync_exit(v2);

  return v3;
}

- (int64_t)__retryTriggerForRetrySchedule:(int64_t)a3
{
  if ((a3 - 2) > 9)
  {
    return 4;
  }

  else
  {
    return qword_1E0D81B18[a3 - 2];
  }
}

- (void)__updateRetrySchedule
{
  v50 = *MEMORY[0x1E69E9840];
  if (!self->_retryTimer)
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
    retryTimer = self->_retryTimer;
    self->_retryTimer = v4;

    v6 = self->_retryTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0C8C570;
    handler[3] = &unk_1E86E6010;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_source_set_timer(self->_retryTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_retryTimer);
  }

  if (!self->_activeRequest)
  {
    v7 = [(CWFAutoJoinManager *)self __retryIntervalWithScheduleIndex:self->_retryScheduleIndex];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 interval];
      v10 = 1000000000 * [v8 interval];
      v11 = [v8 interval];
      if (v9 <= v10)
      {
        v12 = 1000000000 * v11;
      }

      else
      {
        v12 = v11;
      }

      if ([(CWFAutoJoinManager *)self __applyRetryIntervalSkew:v12]> 0x7FFFFFFFFFFFFFFELL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = [v8 interval];
        v14 = 1000000000 * [v8 interval];
        v15 = [v8 interval];
        if (v13 <= v14)
        {
          v16 = 1000000000 * v15;
        }

        else
        {
          v16 = v15;
        }

        v17 = [(CWFAutoJoinManager *)self __applyRetryIntervalSkew:v16];
      }

      v22 = CWFGetOSLog();
      if (v22)
      {
        v23 = CWFGetOSLog();
      }

      else
      {
        v23 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_isRetryScheduled)
        {
          v25 = @"Re-scheduling";
        }

        else
        {
          v25 = @"Scheduling";
        }

        v26 = sub_1E0BEE2F0(self->_retrySchedule);
        retryScheduleIndex = self->_retryScheduleIndex;
        v40 = 138544386;
        v41 = v25;
        v42 = 2048;
        v43 = v17 / 0xF4240;
        v44 = 2114;
        v45 = v26;
        v46 = 2048;
        v47 = retryScheduleIndex;
        v48 = 2114;
        v49 = v8;
        _os_log_send_and_compose_impl();
      }

      self->_isRetryScheduled = 1;
      v28 = self->_retryTimer;
      v29 = dispatch_walltime(0, v17);
      v30 = v28;
    }

    else
    {
      isRetryScheduled = self->_isRetryScheduled;
      v19 = CWFGetOSLog();
      v20 = v19;
      if (!isRetryScheduled)
      {
        if (v19)
        {
          v31 = CWFGetOSLog();
        }

        else
        {
          v31 = MEMORY[0x1E69E9C10];
          v36 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v37 = sub_1E0BEE2F0(self->_retrySchedule);
          v38 = self->_retryScheduleIndex;
          v40 = 138543618;
          v41 = v37;
          v42 = 2048;
          v43 = v38;
          _os_log_send_and_compose_impl();
        }

        goto LABEL_33;
      }

      if (v19)
      {
        v21 = CWFGetOSLog();
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
        v32 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v33 = sub_1E0BEE2F0(self->_retrySchedule);
        v34 = self->_retryScheduleIndex;
        v40 = 138543618;
        v41 = v33;
        v42 = 2048;
        v43 = v34;
        _os_log_send_and_compose_impl();
      }

      self->_isRetryScheduled = 0;
      v30 = self->_retryTimer;
      v29 = -1;
    }

    dispatch_source_set_timer(v30, v29, 0xFFFFFFFFFFFFFFFFLL, 0);
LABEL_33:
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (BOOL)__calloutToAllowAutoJoinWithTrigger:(int64_t)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1E0BC2D60;
  v32 = sub_1E0BC61EC;
  v33 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B894F0);
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v38 = 134219010;
    v39 = v8 / 0x3B9ACA00;
    v40 = 2048;
    v41 = v8 % 0x3B9ACA00 / 0x3E8;
    v42 = 2082;
    v43 = "[CWFAutoJoinManager __calloutToAllowAutoJoinWithTrigger:error:]";
    v44 = 2082;
    v45 = "CWFAutoJoinManager.m";
    v46 = 1024;
    v47 = 7439;
    _os_log_send_and_compose_impl();
  }

  targetQueue = self->_targetQueue;
  v13 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8C9EC;
  block[3] = &unk_1E86E78D0;
  block[4] = self;
  v22 = &v34;
  v23 = &v28;
  v24 = v26;
  v25 = a3;
  v14 = v7;
  v21 = v14;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v15);

  dispatch_block_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    v16 = v29[5];
    if (v16)
    {
      *a4 = v16;
    }
  }

  v17 = *(v35 + 24);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

- (BOOL)__calloutToAllowKnownNetwork:(id)a3 trigger:(int64_t)a4 allowForSeamlessSSIDTransition:(id)a5 defer:(BOOL *)a6 queue:(id)a7 error:(id *)a8
{
  v74 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_1E0BC2D60;
  v52 = sub_1E0BC61EC;
  v53 = 0;
  v15 = [v12 copy];
  if (v14)
  {
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x2020000000;
    v47 = 0;
    v16 = dispatch_block_create(0, &unk_1F5B894D0);
    v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v64 = 134219010;
      v65 = v17 / 0x3B9ACA00;
      v66 = 2048;
      v67 = v17 % 0x3B9ACA00 / 0x3E8;
      v68 = 2082;
      v69 = "[CWFAutoJoinManager __calloutToAllowKnownNetwork:trigger:allowForSeamlessSSIDTransition:defer:queue:error:]";
      v70 = 2082;
      v71 = "CWFAutoJoinManager.m";
      v72 = 1024;
      v73 = 7482;
      _os_log_send_and_compose_impl();
    }

    v23 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C8D2A8;
    block[3] = &unk_1E86E7920;
    block[4] = self;
    v38 = v15;
    v45 = a4;
    v41 = &v58;
    v42 = &v54;
    v43 = &v48;
    v44 = v46;
    v39 = v13;
    v40 = v16;
    v24 = v16;
    v25 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v23, 0, block);
    dispatch_async(v14, v25);

    dispatch_block_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    _Block_object_dispose(v46, 8);
  }

  else
  {
    v20 = [(CWFAutoJoinManager *)self allowKnownNetworkHandler];

    if (v20)
    {
      v21 = [(CWFAutoJoinManager *)self allowKnownNetworkHandler];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_1E0C8D660;
      v36[3] = &unk_1E86E7948;
      v36[4] = &v58;
      v36[5] = &v54;
      v36[6] = &v48;
      (v21)[2](v21, v15, a4, v13, v36);
    }

    else
    {
      v30 = MEMORY[0x1E696ABC0];
      v62 = *MEMORY[0x1E696A578];
      v63 = @"CWFAutoJoinManager.allowKnownNetworkHandler() not configured";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v32 = [v30 errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:v31];
      v33 = v49[5];
      v49[5] = v32;
    }
  }

  if (a6 && (v55[3] & 1) != 0)
  {
    *a6 = 1;
  }

  if (a8)
  {
    v26 = v49[5];
    if (v26)
    {
      *a8 = v26;
    }
  }

  v27 = *(v59 + 24);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);

  v28 = *MEMORY[0x1E69E9840];
  return v27 & 1;
}

- (id)__calloutToScanForNetworksWithParameters:(id)a3 scanChannels:(id *)a4 error:(id *)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_1E0BC2D60;
  v51 = sub_1E0BC61EC;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_1E0BC2D60;
  v45 = sub_1E0BC61EC;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1E0BC2D60;
  v39 = sub_1E0BC61EC;
  v40 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v9 = dispatch_block_create(0, &unk_1F5B894B0);
  v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v53 = 134219010;
    v54 = v10 / 0x3B9ACA00;
    v55 = 2048;
    v56 = v10 % 0x3B9ACA00 / 0x3E8;
    v57 = 2082;
    v58 = "[CWFAutoJoinManager __calloutToScanForNetworksWithParameters:scanChannels:error:]";
    v59 = 2082;
    v60 = "CWFAutoJoinManager.m";
    v61 = 1024;
    v62 = 7541;
    LODWORD(v25) = 48;
    v24 = &v53;
    _os_log_send_and_compose_impl();
  }

  targetQueue = self->_targetQueue;
  v15 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8DAD8;
  block[3] = &unk_1E86E7998;
  block[4] = self;
  v16 = v8;
  v27 = v16;
  v29 = &v47;
  v30 = &v41;
  v31 = &v35;
  v32 = v33;
  v17 = v9;
  v28 = v17;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v15, 0, block);
  dispatch_async(targetQueue, v18);

  dispatch_block_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    v19 = v42[5];
    if (v19)
    {
      *a4 = v19;
    }
  }

  if (a5)
  {
    v20 = v36[5];
    if (v20)
    {
      *a5 = v20;
    }
  }

  if ([v48[5] count])
  {
    [(NSMutableSet *)self->_cumulativeScanResults addObjectsFromArray:v48[5]];
  }

  v21 = v48[5];

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)__calloutToPerformGASQueryWithParameters:(id)a3 GASQueryNetworks:(id *)a4 error:(id *)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_1E0BC2D60;
  v49 = sub_1E0BC61EC;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1E0BC2D60;
  v43 = sub_1E0BC61EC;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1E0BC2D60;
  v37 = sub_1E0BC61EC;
  v38 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v9 = dispatch_block_create(0, &unk_1F5B8ACE0);
  v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v51 = 134219010;
    v52 = v10 / 0x3B9ACA00;
    v53 = 2048;
    v54 = v10 % 0x3B9ACA00 / 0x3E8;
    v55 = 2082;
    v56 = "[CWFAutoJoinManager __calloutToPerformGASQueryWithParameters:GASQueryNetworks:error:]";
    v57 = 2082;
    v58 = "CWFAutoJoinManager.m";
    v59 = 1024;
    v60 = 7592;
    _os_log_send_and_compose_impl();
  }

  targetQueue = self->_targetQueue;
  v15 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8E2E0;
  block[3] = &unk_1E86E7998;
  block[4] = self;
  v16 = v8;
  v25 = v16;
  v27 = &v45;
  v28 = &v39;
  v29 = &v33;
  v30 = v31;
  v17 = v9;
  v26 = v17;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v15, 0, block);
  dispatch_async(targetQueue, v18);

  dispatch_block_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    v19 = v40[5];
    if (v19)
    {
      *a4 = v19;
    }
  }

  if (a5)
  {
    v20 = v34[5];
    if (v20)
    {
      *a5 = v20;
    }
  }

  v21 = v46[5];

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)__calloutToAllowJoinCandidate:(id)a3 trigger:(int64_t)a4 defer:(BOOL *)a5 error:(id *)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1E0BC2D60;
  v40 = sub_1E0BC61EC;
  v41 = 0;
  v11 = [v10 copy];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v12 = dispatch_block_create(0, &unk_1F5B8AD00);
  v13 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v14 = CWFGetOSLog();
  if (v14)
  {
    v15 = CWFGetOSLog();
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v50 = 134219010;
    v51 = v13 / 0x3B9ACA00;
    v52 = 2048;
    v53 = v13 % 0x3B9ACA00 / 0x3E8;
    v54 = 2082;
    v55 = "[CWFAutoJoinManager __calloutToAllowJoinCandidate:trigger:defer:error:]";
    v56 = 2082;
    v57 = "CWFAutoJoinManager.m";
    v58 = 1024;
    v59 = 7641;
    _os_log_send_and_compose_impl();
  }

  targetQueue = self->_targetQueue;
  v18 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8EA98;
  block[3] = &unk_1E86E79C0;
  block[4] = self;
  v19 = v11;
  v27 = v19;
  v29 = &v46;
  v30 = &v42;
  v31 = &v36;
  v32 = v34;
  v33 = a4;
  v20 = v12;
  v28 = v20;
  v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v18, 0, block);
  dispatch_async(targetQueue, v21);

  dispatch_block_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  if (a5 && (v43[3] & 1) != 0)
  {
    *a5 = 1;
  }

  if (a6)
  {
    v22 = v37[5];
    if (v22)
    {
      *a6 = v22;
    }
  }

  v23 = *(v47 + 24);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  v24 = *MEMORY[0x1E69E9840];
  return v23 & 1;
}

- (BOOL)__calloutToAssociateWithParameters:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1E0BC2D60;
  v32 = sub_1E0BC61EC;
  v33 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B89470);
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v34 = 134219010;
    v35 = v8 / 0x3B9ACA00;
    v36 = 2048;
    v37 = v8 % 0x3B9ACA00 / 0x3E8;
    v38 = 2082;
    v39 = "[CWFAutoJoinManager __calloutToAssociateWithParameters:error:]";
    v40 = 2082;
    v41 = "CWFAutoJoinManager.m";
    v42 = 1024;
    v43 = 7684;
    _os_log_send_and_compose_impl();
  }

  targetQueue = self->_targetQueue;
  v13 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8F18C;
  block[3] = &unk_1E86E7A10;
  block[4] = self;
  v14 = v6;
  v22 = v14;
  v24 = &v28;
  v25 = v26;
  v15 = v7;
  v23 = v15;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v16);

  dispatch_block_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v17 = v29[5];
  if (a4 && v17)
  {
    *a4 = v17;
    v17 = v29[5];
  }

  v18 = v17 == 0;

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (int64_t)__calloutToAllowAutoHotspotWithTrigger:(int64_t)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1E0BC2D60;
  v32 = sub_1E0BC61EC;
  v33 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B8AD20);
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v38 = 134219010;
    v39 = v8 / 0x3B9ACA00;
    v40 = 2048;
    v41 = v8 % 0x3B9ACA00 / 0x3E8;
    v42 = 2082;
    v43 = "[CWFAutoJoinManager __calloutToAllowAutoHotspotWithTrigger:error:]";
    v44 = 2082;
    v45 = "CWFAutoJoinManager.m";
    v46 = 1024;
    v47 = 7721;
    _os_log_send_and_compose_impl();
  }

  targetQueue = self->_targetQueue;
  v13 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8F854;
  block[3] = &unk_1E86E78D0;
  block[4] = self;
  v22 = &v34;
  v23 = &v28;
  v24 = v26;
  v25 = a3;
  v14 = v7;
  v21 = v14;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v15);

  dispatch_block_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    v16 = v29[5];
    if (v16)
    {
      *a4 = v16;
    }
  }

  v17 = v35[3];

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)__calloutToAllowHotspot:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1E0BC2D60;
  v33 = sub_1E0BC61EC;
  v34 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B8AD40);
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v39 = 134219010;
    v40 = v8 / 0x3B9ACA00;
    v41 = 2048;
    v42 = v8 % 0x3B9ACA00 / 0x3E8;
    v43 = 2082;
    v44 = "[CWFAutoJoinManager __calloutToAllowHotspot:error:]";
    v45 = 2082;
    v46 = "CWFAutoJoinManager.m";
    v47 = 1024;
    v48 = 7759;
    _os_log_send_and_compose_impl();
  }

  targetQueue = self->_targetQueue;
  v13 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8FF4C;
  block[3] = &unk_1E86E7A60;
  block[4] = self;
  v14 = v6;
  v22 = v14;
  v24 = &v35;
  v25 = &v29;
  v26 = v27;
  v15 = v7;
  v23 = v15;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v16);

  dispatch_block_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    v17 = v30[5];
    if (v17)
    {
      *a4 = v17;
    }
  }

  v18 = *(v36 + 24);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (void)__calloutToBrowseForHotspotsWithTimeout:(unint64_t)a3 maxCacheAge:(unint64_t)a4 cacheOnly:(BOOL)a5 reply:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v12 = CWFGetOSLog();
  if (v12)
  {
    v13 = CWFGetOSLog();
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v25 = 134219010;
    v26 = v11 / 0x3B9ACA00;
    v27 = 2048;
    v28 = v11 % 0x3B9ACA00 / 0x3E8;
    v29 = 2082;
    v30 = "[CWFAutoJoinManager __calloutToBrowseForHotspotsWithTimeout:maxCacheAge:cacheOnly:reply:]";
    v31 = 2082;
    v32 = "CWFAutoJoinManager.m";
    v33 = 1024;
    v34 = 7792;
    _os_log_send_and_compose_impl();
  }

  targetQueue = self->_targetQueue;
  v16 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C90504;
  block[3] = &unk_1E86E7AB0;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  block[4] = self;
  v21 = v10;
  v17 = v10;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v16, 0, block);
  dispatch_async(targetQueue, v18);

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)__calloutToAllowBrokenBackhaulPersonalHotspotFallbackAndReturnError:(id *)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1E0BC2D60;
  v29 = sub_1E0BC61EC;
  v30 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v5 = dispatch_block_create(0, &unk_1F5B8AD60);
  v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v35 = 134219010;
    v36 = v6 / 0x3B9ACA00;
    v37 = 2048;
    v38 = v6 % 0x3B9ACA00 / 0x3E8;
    v39 = 2082;
    v40 = "[CWFAutoJoinManager __calloutToAllowBrokenBackhaulPersonalHotspotFallbackAndReturnError:]";
    v41 = 2082;
    v42 = "CWFAutoJoinManager.m";
    v43 = 1024;
    v44 = 7816;
    _os_log_send_and_compose_impl();
  }

  targetQueue = self->_targetQueue;
  v11 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C90B28;
  block[3] = &unk_1E86E7B00;
  block[4] = self;
  v20 = &v31;
  v21 = &v25;
  v22 = v23;
  v12 = v5;
  v19 = v12;
  v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v11, 0, block);
  dispatch_async(targetQueue, v13);

  dispatch_block_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    v14 = v26[5];
    if (v14)
    {
      *a3 = v14;
    }
  }

  v15 = *(v32 + 24);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

- (void)__calloutToCheckForBrokenBackhaulAndReply:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134219010;
    v17 = v5 / 0x3B9ACA00;
    v18 = 2048;
    v19 = v5 % 0x3B9ACA00 / 0x3E8;
    v20 = 2082;
    v21 = "[CWFAutoJoinManager __calloutToCheckForBrokenBackhaulAndReply:]";
    v22 = 2082;
    v23 = "CWFAutoJoinManager.m";
    v24 = 1024;
    v25 = 7849;
    _os_log_send_and_compose_impl();
  }

  targetQueue = self->_targetQueue;
  v10 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C910D8;
  block[3] = &unk_1E86E64C0;
  block[4] = self;
  v15 = v4;
  v11 = v4;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10, 0, block);
  dispatch_async(targetQueue, v12);

  v13 = *MEMORY[0x1E69E9840];
}

- (id)__calloutToBrowseForHotspotsWithTimeout:(unint64_t)a3 maxCacheAge:(unint64_t)a4 cacheOnly:(BOOL)a5 error:(id *)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_1E0BC2D60;
  v44 = sub_1E0BC61EC;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1E0BC2D60;
  v38 = sub_1E0BC61EC;
  v39 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v11 = dispatch_block_create(0, &unk_1F5B8AD80);
  v12 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v13 = CWFGetOSLog();
  if (v13)
  {
    v14 = CWFGetOSLog();
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v46 = 134219010;
    v47 = v12 / 0x3B9ACA00;
    v48 = 2048;
    v49 = v12 % 0x3B9ACA00 / 0x3E8;
    v50 = 2082;
    v51 = "[CWFAutoJoinManager __calloutToBrowseForHotspotsWithTimeout:maxCacheAge:cacheOnly:error:]";
    v52 = 2082;
    v53 = "CWFAutoJoinManager.m";
    v54 = 1024;
    v55 = 7872;
    _os_log_send_and_compose_impl();
  }

  targetQueue = self->_targetQueue;
  v17 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C91770;
  block[3] = &unk_1E86E7B78;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  block[4] = self;
  v26 = &v40;
  v27 = &v34;
  v28 = v32;
  v18 = v11;
  v25 = v18;
  v19 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v17, 0, block);
  dispatch_async(targetQueue, v19);

  dispatch_block_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  if (a6)
  {
    v20 = v35[5];
    if (v20)
    {
      *a6 = v20;
    }
  }

  v21 = v41[5];

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)__calloutToConnectToHotspot:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1E0BC2D60;
  v32 = sub_1E0BC61EC;
  v33 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B8ADA0);
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v34 = 134219010;
    v35 = v8 / 0x3B9ACA00;
    v36 = 2048;
    v37 = v8 % 0x3B9ACA00 / 0x3E8;
    v38 = 2082;
    v39 = "[CWFAutoJoinManager __calloutToConnectToHotspot:error:]";
    v40 = 2082;
    v41 = "CWFAutoJoinManager.m";
    v42 = 1024;
    v43 = 7909;
    _os_log_send_and_compose_impl();
  }

  targetQueue = self->_targetQueue;
  v13 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C91E64;
  block[3] = &unk_1E86E7A10;
  block[4] = self;
  v14 = v6;
  v22 = v14;
  v24 = &v28;
  v25 = v26;
  v15 = v7;
  v23 = v15;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v16);

  dispatch_block_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v17 = v29[5];
  if (a4 && v17)
  {
    *a4 = v17;
    v17 = v29[5];
  }

  v18 = v17 == 0;

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

@end