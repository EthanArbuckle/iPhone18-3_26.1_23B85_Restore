@interface CWFAutoJoinManager
- (BOOL)__allowAutoJoinWithTrigger:(int64_t)trigger error:(id *)error;
- (BOOL)__allowBrokenBackhaulPersonalHotspotFallback;
- (BOOL)__allowHotspot:(id)hotspot error:(id *)error;
- (BOOL)__allowJoinCandidate:(id)candidate context:(id)context defer:(BOOL *)defer error:(id *)error;
- (BOOL)__allowKnownNetwork:(id)network context:(id)context allowForSeamlessSSIDTransition:(id)transition defer:(BOOL *)defer targetQueue:(id)queue error:(id *)error;
- (BOOL)__allowOpportunisticNetworkTransitionWithTrigger:(int64_t)trigger;
- (BOOL)__calloutToAllowAutoJoinWithTrigger:(int64_t)trigger error:(id *)error;
- (BOOL)__calloutToAllowBrokenBackhaulPersonalHotspotFallbackAndReturnError:(id *)error;
- (BOOL)__calloutToAllowHotspot:(id)hotspot error:(id *)error;
- (BOOL)__calloutToAllowJoinCandidate:(id)candidate trigger:(int64_t)trigger defer:(BOOL *)defer error:(id *)error;
- (BOOL)__calloutToAllowKnownNetwork:(id)network trigger:(int64_t)trigger allowForSeamlessSSIDTransition:(id)transition defer:(BOOL *)defer queue:(id)queue error:(id *)error;
- (BOOL)__calloutToAssociateWithParameters:(id)parameters error:(id *)error;
- (BOOL)__calloutToConnectToHotspot:(id)hotspot error:(id *)error;
- (BOOL)__candidateSupportsSeamlessSSIDTransition:(id)transition fromNetwork:(id)network context:(id)context;
- (BOOL)__connectToHotspot:(id)hotspot error:(id *)error;
- (BOOL)__defaultUserConfiguredNetworkPreference;
- (BOOL)__didRecentlyJoinAny6GHzOnlyNetworks:(id)networks;
- (BOOL)__discoverKnownNetworksWithContext:(id)context error:(id *)error;
- (BOOL)__hasJoinedAnyKnownNetworkSinceBoot;
- (BOOL)__isAutoJoinCancelled:(id *)cancelled;
- (BOOL)__isAutoJoinRequeued;
- (BOOL)__isAutoJoiningAtHome;
- (BOOL)__isDeferrableJoinCandidate:(id)candidate;
- (BOOL)__isDeferrableKnownNetwork:(id)network;
- (BOOL)__isEnabledKnownNetworkNearby;
- (BOOL)__isNonPinnedEAPTLSCandidate:(id)candidate;
- (BOOL)__matchAndJoinScanResults:(id)results allowPreAssociationScan:(BOOL)scan context:(id)context error:(id *)error;
- (BOOL)__nextRequest;
- (BOOL)__performJoinWithNetwork:(id)network context:(id)context error:(id *)error;
- (BOOL)__preflightMatchKnownNetworksForScanResult:(id)result;
- (BOOL)__shouldAllowPreAssocScan;
- (BOOL)__shouldBypassLockdownModeCheckForTrigger:(int64_t)trigger targetNetworkSSID:(id)d networkSSID:(id)iD;
- (BOOL)__shouldBypassUnusedNetworkPeriodCheckForTrigger:(int64_t)trigger knownNetwork:(id)network;
- (BOOL)__shouldIgnoreRequestWithTrigger:(int64_t)trigger;
- (BOOL)__shouldInvokeImmediatelyForTrigger:(int64_t)trigger;
- (BOOL)__shouldResetRetryIntervalIndexForTrigger:(int64_t)trigger previousTimestamp:(unint64_t)timestamp;
- (BOOL)__shouldThrottleAutoJoinTrigger:(int64_t)trigger;
- (BOOL)isKnownNetworkDisallowed:(id)disallowed;
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
- (id)__alreadyFoundFollowup6GHzBSSWithSignature:(id)signature;
- (id)__basicChannelRepresentation:(id)representation;
- (id)__cachedScanResultsWithChannelList:(id)list context:(id)context;
- (id)__calloutToBrowseForHotspotsWithTimeout:(unint64_t)timeout maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only error:(id *)error;
- (id)__calloutToPerformGASQueryWithParameters:(id)parameters GASQueryNetworks:(id *)networks error:(id *)error;
- (id)__calloutToScanForNetworksWithParameters:(id)parameters scanChannels:(id *)channels error:(id *)error;
- (id)__descriptionForError:(id)error;
- (id)__disallowedKnownNetworks;
- (id)__hiddenSSIDListForLocation:(id)location knownNetworks:(id)networks recentOnly:(BOOL)only nearbyOnly:(BOOL)nearbyOnly;
- (id)__knownNetworksList:(id)list containsMatchingKnownNetwork:(id)network;
- (id)__knownNetworksSupportingSeamlessSSIDTransition:(id)transition fromNetwork:(id)network allowSameSSID:(BOOL)d context:(id)context;
- (id)__morePreferredKnownNetworksWithCandidate:(id)candidate knownNetworks:(id)networks context:(id)context;
- (id)__passpointScanResults:(id)results;
- (id)__perform6GHzFollowupDiscoveryWithScanResults:(id)results SSIDList:(id)list dwellTime:(unint64_t)time context:(id)context error:(id *)error;
- (id)__performGASQueryWithScanResults:(id)results ANQPElementIDList:(id)list maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only error:(id *)error;
- (id)__performPreAssociationScanWithContext:(id)context network:(id)network;
- (id)__performScanWithChannelList:(id)list SSIDList:(id)dList passive:(BOOL)passive dwellTime:(unint64_t)time maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only isPreAssociationScan:(BOOL)scan checkForKnownNetworks:(BOOL)self0 error:(id *)self1;
- (id)__retryInterval;
- (id)__retryIntervalWithScheduleIndex:(unint64_t)index;
- (id)performAutoJoinWithParameters:(id)parameters reply:(id)reply;
- (int64_t)__allowAutoHotspotWithTrigger:(int64_t)trigger error:(id *)error;
- (int64_t)__calloutToAllowAutoHotspotWithTrigger:(int64_t)trigger error:(id *)error;
- (int64_t)__retryTriggerForRetrySchedule:(int64_t)schedule;
- (int64_t)retrySchedule;
- (unint64_t)__nextRequestInterval;
- (unsigned)__qosForAutoJoinTrigger:(int64_t)trigger;
- (void)__addDependentThrottleInterval:(unint64_t)interval trigger:(int64_t)trigger dependentTrigger:(int64_t)dependentTrigger;
- (void)__addDisallowedKnownNetwork:(id)network;
- (void)__addMatchingThrottleInterval:(unint64_t)interval triggers:(id)triggers;
- (void)__addRequest:(id)request;
- (void)__addWilcardThrottleInterval:(unint64_t)interval triggers:(id)triggers;
- (void)__calloutToBrowseForHotspotsWithTimeout:(unint64_t)timeout maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only reply:(id)reply;
- (void)__calloutToCheckForBrokenBackhaulAndReply:(id)reply;
- (void)__invalidateAllowedKnownNetworksCacheForTrigger:(int64_t)trigger;
- (void)__performAutoJoin;
- (void)__prepareKnownNetworksContext:(id)context;
- (void)__removeDisallowedKnownNetwork:(id)network;
- (void)__removeRedundantRequests:(id)requests;
- (void)__resetRetryIntervalIndex;
- (void)__scheduleDelayedAutoJoinMetricSubmission;
- (void)__setupRetryIntervals;
- (void)__setupThrottleIntervals;
- (void)__sortAndFilterUserConfiguredNetworks:(id)networks;
- (void)__sortHotspotCandidates:(id)candidates;
- (void)__sortJoinCandidates:(id)candidates context:(id)context;
- (void)__sortKnownNetworks:(id)networks;
- (void)__sortKnownNetworksByJoinTimestamp:(id)timestamp;
- (void)__submitAutoJoinMetric:(id)metric;
- (void)__unscheduleDelayedAutoJoinMetricSubmission;
- (void)__updateAutoJoinMetricAndStatistics:(id)statistics;
- (void)__updateAutoJoinMetricWithJoinStatus;
- (void)__updateAutoJoinState:(int64_t)state;
- (void)__updateDisallowedMatchedKnownNetworks;
- (void)__updateDiscoverTimestampForJoinCandidates:(id)candidates;
- (void)__updateNextRequestTimer;
- (void)__updateRNRChannel:(id)channel has6GHzOnlyBSS:(BOOL)s joinCandidate:(id)candidate;
- (void)__updateRecentlyMatchedCandidates;
- (void)__updateRetrySchedule;
- (void)__updateStatisticsWithPreAssocScanChannels:(id)channels;
- (void)__updateStatisticsWithScanChannels:(id)channels;
- (void)cancelAutoJoinWithUUID:(id)d error:(id)error reply:(id)reply;
- (void)invalidate;
- (void)resetStatistics;
- (void)setAssociatedNetwork:(id)network;
- (void)setJoinStatus:(id)status;
- (void)setKnownNetworks:(id)networks;
- (void)setLocation:(id)location;
- (void)setMaxCompatibilityEnabled:(BOOL)enabled;
- (void)setNearbyRecommendedNetworks:(id)networks;
- (void)setRetrySchedule:(int64_t)schedule;
- (void)setSupportedChannels:(id)channels;
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
        parameters = [v12 parameters];
        if (!-[CWFAutoJoinManager __shouldThrottleAutoJoinTrigger:](self, "__shouldThrottleAutoJoinTrigger:", [parameters trigger]))
        {
          break;
        }

        parameters2 = [v12 parameters];
        targetNetworkProfile = [parameters2 targetNetworkProfile];

        if (targetNetworkProfile)
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
      parameters3 = [v12 parameters];
      trigger = [parameters3 trigger];
      if (trigger - 44 < 8 || trigger <= 0x3F && ((1 << trigger) & 0xC000000000000010) != 0)
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
    __nextRequestInterval = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  __nextRequestInterval = [(CWFAutoJoinManager *)self __nextRequestInterval];
  if (__nextRequestInterval >= 1)
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
      v22 = __nextRequestInterval / 0xF4240uLL;
      _os_log_send_and_compose_impl();
    }

    self->_isNextRequestScheduled = 1;
    v13 = self->_nextRequestTimer;
    v14 = dispatch_walltime(0, __nextRequestInterval);
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
    selfCopy = self;
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
        parameters = [*(*(&v94 + 1) + 8 * v4) parameters];
        v8 = [v6 numberWithInteger:{objc_msgSend(parameters, "trigger")}];
        v9 = [(NSMutableDictionary *)throttleIntervalMap objectForKeyedSubscript:v8];

        if (!v9)
        {
          v9 = [(NSMutableDictionary *)selfCopy->_throttleIntervalMap objectForKeyedSubscript:&unk_1F5BBC5C8];
        }

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        intervals = [v9 intervals];
        allKeys = [intervals allKeys];

        v63 = allKeys;
        v74 = v9;
        v67 = [allKeys countByEnumeratingWithState:&v90 objects:v101 count:16];
        if (v67)
        {
          v65 = *v91;
          self = selfCopy;
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
              allKeys2 = [(NSMutableDictionary *)self->_throttleTimestampMap allKeys];
              v15 = [allKeys2 countByEnumeratingWithState:&v86 objects:v100 count:16];
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
                      objc_enumerationMutation(allKeys2);
                    }

                    v19 = *(*(&v86 + 1) + 8 * v18);
                    integerValue = [v13 integerValue];
                    if (integerValue == [v19 integerValue])
                    {
                      v21 = [(NSMutableDictionary *)self->_throttleTimestampMap objectForKeyedSubscript:v19];
                      intervals2 = [v9 intervals];
                      v23 = [intervals2 objectForKeyedSubscript:v13];

                      if (v23 && v21)
                      {
                        unsignedLongValue = [v21 unsignedLongValue];
                        v24 = v13;
                        v25 = v17;
                        v26 = allKeys2;
                        unsignedLongValue2 = [v23 unsignedLongValue];
                        v28 = 1000000000 * [v23 unsignedLongValue];
                        unsignedLongValue3 = [v23 unsignedLongValue];
                        v30 = 1000000000 * unsignedLongValue3;
                        v31 = unsignedLongValue2 > v28;
                        allKeys2 = v26;
                        v17 = v25;
                        v13 = v24;
                        v9 = v74;
                        self = selfCopy;
                        if (v31)
                        {
                          v30 = unsignedLongValue3;
                        }

                        v32 = v30 - (v73 - unsignedLongValue);
                        if (v3 >= v32)
                        {
                          v33 = v30 - (v73 - unsignedLongValue);
                        }

                        else
                        {
                          v33 = v3;
                        }

                        if (v3)
                        {
                          v32 = v33;
                        }

                        if (v30 > v73 - unsignedLongValue)
                        {
                          v3 = v32;
                        }
                      }

                      v16 = v76;
                    }

                    ++v18;
                  }

                  while (v16 != v18);
                  v16 = [allKeys2 countByEnumeratingWithState:&v86 objects:v100 count:16];
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
          self = selfCopy;
        }

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        intervalsBasedOnTriggerTimestamp = [v9 intervalsBasedOnTriggerTimestamp];
        allKeys3 = [intervalsBasedOnTriggerTimestamp allKeys];

        v64 = allKeys3;
        v68 = [allKeys3 countByEnumeratingWithState:&v82 objects:v99 count:16];
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
              allKeys4 = [(NSMutableDictionary *)self->_triggerTimestampMap allKeys];
              v39 = [allKeys4 countByEnumeratingWithState:&v78 objects:v98 count:16];
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
                      objc_enumerationMutation(allKeys4);
                    }

                    v43 = *(*(&v78 + 1) + 8 * v42);
                    integerValue2 = [v37 integerValue];
                    if (integerValue2 == [v43 integerValue])
                    {
                      v45 = [(NSMutableDictionary *)self->_triggerTimestampMap objectForKeyedSubscript:v43];
                      intervalsBasedOnTriggerTimestamp2 = [v9 intervalsBasedOnTriggerTimestamp];
                      v47 = [intervalsBasedOnTriggerTimestamp2 objectForKeyedSubscript:v37];

                      if (v47 && v45)
                      {
                        unsignedLongValue4 = [v45 unsignedLongValue];
                        v48 = v37;
                        v49 = v41;
                        v50 = allKeys4;
                        unsignedLongValue5 = [v47 unsignedLongValue];
                        v52 = 1000000000 * [v47 unsignedLongValue];
                        unsignedLongValue6 = [v47 unsignedLongValue];
                        v54 = 1000000000 * unsignedLongValue6;
                        v31 = unsignedLongValue5 > v52;
                        allKeys4 = v50;
                        v41 = v49;
                        v37 = v48;
                        v9 = v74;
                        self = selfCopy;
                        if (v31)
                        {
                          v54 = unsignedLongValue6;
                        }

                        v55 = v54 - (v73 - unsignedLongValue4);
                        if (v3 >= v55)
                        {
                          v56 = v54 - (v73 - unsignedLongValue4);
                        }

                        else
                        {
                          v56 = v3;
                        }

                        if (v3)
                        {
                          v55 = v56;
                        }

                        if (v54 > v73 - unsignedLongValue4)
                        {
                          v3 = v55;
                        }
                      }

                      v40 = v77;
                    }

                    ++v42;
                  }

                  while (v40 != v42);
                  v40 = [allKeys4 countByEnumeratingWithState:&v78 objects:v98 count:16];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(CWFAutoJoinStatistics *)selfCopy->_statistics copy];
  objc_sync_exit(selfCopy);

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

  date = [MEMORY[0x1E695DF00] date];
  [*(v2 + 20) setStartedAt:date];

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_invalidated)
  {
    *&selfCopy->_invalidated = 257;
    underlyingCancelError = selfCopy->_underlyingCancelError;
    selfCopy->_underlyingCancelError = 0;

    internalQueue = selfCopy->_internalQueue;
    v5 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C6A6D8;
    block[3] = &unk_1E86E6010;
    block[4] = selfCopy;
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v5, 0, block);
    dispatch_async(internalQueue, v6);
  }

  objc_sync_exit(selfCopy);
}

- (NSArray)nearbyRecommendedNetworks
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSArray *)selfCopy->_nearbyRecommendedNetworks copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setNearbyRecommendedNetworks:(id)networks
{
  networksCopy = networks;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nearbyRecommendedNetworks = selfCopy->_nearbyRecommendedNetworks;
  if (nearbyRecommendedNetworks != networksCopy && (!networksCopy || !nearbyRecommendedNetworks || ([(NSArray *)networksCopy isEqual:?]& 1) == 0))
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

    v11 = [(NSArray *)networksCopy copy];
    v12 = selfCopy->_nearbyRecommendedNetworks;
    selfCopy->_nearbyRecommendedNetworks = v11;

    selfCopy->_didConfigurationChangeSincePreviousAttempt = 1;
    [(CWFAutoJoinManager *)selfCopy __resetRetryIntervalIndex];
  }

  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(v5);
}

- (NSSet)knownNetworks
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSSet *)selfCopy->_knownNetworks copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)__submitAutoJoinMetric:(id)metric
{
  v21 = *MEMORY[0x1E69E9840];
  metricCopy = metric;
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
    coreAnalyticsEventName = [metricCopy coreAnalyticsEventName];
    autoJoinedNetwork = [metricCopy autoJoinedNetwork];
    if (autoJoinedNetwork || ([metricCopy userJoinedNetwork], (autoJoinedNetwork = objc_claimAutoreleasedReturnValue()) != 0))
    {
      scanErrors = autoJoinedNetwork;
    }

    else
    {
      scanErrors = [metricCopy scanErrors];
      if (![scanErrors count])
      {
        hotspot = [metricCopy hotspot];
        if (!hotspot)
        {
          if ([metricCopy autoHotspotMode] == 3)
          {
            autoHotspotBrowseError = [metricCopy autoHotspotBrowseError];

            if (autoHotspotBrowseError)
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

    v19 = coreAnalyticsEventName;
    v20 = metricCopy;
    AnalyticsSendEventLazy();

    v13 = v19;
LABEL_17:
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)__updateAutoJoinMetricWithJoinStatus
{
  selfCopy = self;
  v123 = *MEMORY[0x1E69E9840];
  scanResult = [(CWFJoinStatus *)self->_joinStatus scanResult];

  if (!scanResult)
  {
    goto LABEL_61;
  }

  if (![(CWFJoinStatus *)selfCopy->_joinStatus isAutoJoin])
  {
    goto LABEL_27;
  }

  autoJoinedNetwork = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric autoJoinedNetwork];
  sSID = [autoJoinedNetwork SSID];
  if (!sSID)
  {
    goto LABEL_26;
  }

  v6 = sSID;
  scanResult2 = [(CWFJoinStatus *)selfCopy->_joinStatus scanResult];
  sSID2 = [scanResult2 SSID];
  if (!sSID2)
  {

LABEL_26:
LABEL_27:
    if ([(CWFJoinStatus *)selfCopy->_joinStatus isAutoJoin])
    {
      goto LABEL_61;
    }

    startedAt = [(CWFJoinStatus *)selfCopy->_joinStatus startedAt];
    [startedAt timeIntervalSinceReferenceDate];
    v46 = v45;
    startedAt2 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric startedAt];
    [startedAt2 timeIntervalSinceReferenceDate];
    v49 = v48;

    if (v46 <= v49)
    {
      goto LABEL_61;
    }

    scanResult3 = [(CWFJoinStatus *)selfCopy->_joinStatus scanResult];
    knownNetworkProfile = [(CWFJoinStatus *)selfCopy->_joinStatus knownNetworkProfile];
    v52 = [scanResult3 scanResultWithMatchingKnownNetworkProfile:knownNetworkProfile];
    [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setUserJoinedNetwork:v52];

    userJoinedNetwork = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
    LODWORD(knownNetworkProfile) = [(CWFAutoJoinManager *)selfCopy __preflightMatchKnownNetworksForScanResult:userJoinedNetwork];

    if (knownNetworkProfile)
    {
      userJoinedNetwork2 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
      knownNetworks = [(CWFAutoJoinManager *)selfCopy knownNetworks];
      allObjects = [knownNetworks allObjects];
      v57 = sub_1E0BED85C(userJoinedNetwork2, allObjects);

      cachedMetric = selfCopy->_cachedMetric;
      if (v57)
      {
        [(CWFAutoJoinMetric *)cachedMetric setDidUserJoinKnownNetwork:1];
        scanResult4 = [(CWFJoinStatus *)selfCopy->_joinStatus scanResult];
        v60 = [scanResult4 scanResultWithMatchingKnownNetworkProfile:v57];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setUserJoinedNetwork:v60];
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
    obja = selfCopy->_lowRSSICandidates;
    v74 = [(NSMutableSet *)obja countByEnumeratingWithState:&v113 objects:v121 count:16];
    if (!v74)
    {
      goto LABEL_56;
    }

    v75 = v74;
    v76 = *v114;
    v104 = *v114;
    v106 = selfCopy;
    while (1)
    {
      for (i = 0; i != v75; ++i)
      {
        if (*v114 != v76)
        {
          objc_enumerationMutation(obja);
        }

        v78 = *(*(&v113 + 1) + 8 * i);
        matchingKnownNetworkProfile = [v78 matchingKnownNetworkProfile];
        userJoinedNetwork3 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
        matchingKnownNetworkProfile2 = [userJoinedNetwork3 matchingKnownNetworkProfile];
        v82 = matchingKnownNetworkProfile2;
        if (matchingKnownNetworkProfile == matchingKnownNetworkProfile2)
        {

LABEL_55:
          [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setDidUserJoinLowRSSINetwork:1];
LABEL_56:

          allKeys = [(NSMutableDictionary *)selfCopy->_disallowedKnownNetworksMap allKeys];
          userJoinedNetwork4 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
          matchingKnownNetworkProfile3 = [userJoinedNetwork4 matchingKnownNetworkProfile];
          identifier = [matchingKnownNetworkProfile3 identifier];
          v94 = [allKeys containsObject:identifier];

          if (v94)
          {
            [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setDidUserJoinDisallowedNetwork:1];
          }

          deferredKnownNetworks = selfCopy->_deferredKnownNetworks;
          userJoinedNetwork5 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
          matchingKnownNetworkProfile4 = [userJoinedNetwork5 matchingKnownNetworkProfile];
          LODWORD(deferredKnownNetworks) = [(NSMutableOrderedSet *)deferredKnownNetworks containsObject:matchingKnownNetworkProfile4];

          if (deferredKnownNetworks)
          {
            [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setDidUserJoinDeferredNetwork:1];
          }

          [(CWFAutoJoinManager *)selfCopy __submitAutoJoinMetric:selfCopy->_cachedMetric];
          goto LABEL_61;
        }

        matchingKnownNetworkProfile5 = [v78 matchingKnownNetworkProfile];
        if (!matchingKnownNetworkProfile5)
        {
          goto LABEL_50;
        }

        userJoinedNetwork6 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
        matchingKnownNetworkProfile6 = [userJoinedNetwork6 matchingKnownNetworkProfile];
        if (!matchingKnownNetworkProfile6)
        {

LABEL_50:
          continue;
        }

        v85 = matchingKnownNetworkProfile6;
        matchingKnownNetworkProfile7 = [v78 matchingKnownNetworkProfile];
        userJoinedNetwork7 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
        [userJoinedNetwork7 matchingKnownNetworkProfile];
        v89 = v88 = v75;
        v110 = [matchingKnownNetworkProfile7 isEqual:v89];

        v75 = v88;
        v76 = v104;

        selfCopy = v106;
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

  v9 = sSID2;
  autoJoinedNetwork2 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric autoJoinedNetwork];
  sSID3 = [autoJoinedNetwork2 SSID];
  [(CWFJoinStatus *)selfCopy->_joinStatus scanResult];
  v13 = v12 = selfCopy;
  sSID4 = [v13 SSID];
  v15 = [sSID3 isEqual:sSID4];

  selfCopy = v12;
  if (!v15)
  {
    goto LABEL_27;
  }

  associationEndedAt = [(CWFJoinStatus *)v12->_joinStatus associationEndedAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setJoinEndedAt:associationEndedAt];

  startedAt3 = [(CWFJoinStatus *)v12->_joinStatus startedAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setJoinStartedAt:startedAt3];

  iPv4AssignedAt = [(CWFJoinStatus *)v12->_joinStatus IPv4AssignedAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setRoutableIPv4AddressAt:iPv4AssignedAt];

  iPv4PrimaryAt = [(CWFJoinStatus *)v12->_joinStatus IPv4PrimaryAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setPrimaryIPv4InterfaceAt:iPv4PrimaryAt];

  iPv6AssignedAt = [(CWFJoinStatus *)v12->_joinStatus IPv6AssignedAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setRoutableIPv6AddressAt:iPv6AssignedAt];

  iPv6PrimaryAt = [(CWFJoinStatus *)v12->_joinStatus IPv6PrimaryAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setPrimaryIPv6InterfaceAt:iPv6PrimaryAt];

  wasAlreadyAssociatedToNetwork = [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric wasAlreadyAssociatedToNetwork];
  if (wasAlreadyAssociatedToNetwork)
  {
LABEL_9:

    goto LABEL_10;
  }

  if (v12->_prevAssociatedNetwork)
  {
    wasAlreadyAssociatedToNetwork = [(CWFJoinStatus *)v12->_joinStatus associationEndedAt];
    [wasAlreadyAssociatedToNetwork timeIntervalSinceReferenceDate];
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
      matchingKnownNetworkProfile8 = [v32 matchingKnownNetworkProfile];
      userJoinedNetwork8 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric userJoinedNetwork];
      matchingKnownNetworkProfile9 = [userJoinedNetwork8 matchingKnownNetworkProfile];
      v36 = matchingKnownNetworkProfile9;
      if (matchingKnownNetworkProfile8 == matchingKnownNetworkProfile9)
      {

LABEL_33:
        [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric setDidJoinPreviouslyLowRSSINetwork:1];
        goto LABEL_34;
      }

      matchingKnownNetworkProfile10 = [v32 matchingKnownNetworkProfile];
      if (!matchingKnownNetworkProfile10)
      {
        goto LABEL_21;
      }

      userJoinedNetwork9 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric userJoinedNetwork];
      matchingKnownNetworkProfile11 = [userJoinedNetwork9 matchingKnownNetworkProfile];
      if (!matchingKnownNetworkProfile11)
      {

LABEL_21:
        continue;
      }

      v39 = matchingKnownNetworkProfile11;
      matchingKnownNetworkProfile12 = [v32 matchingKnownNetworkProfile];
      userJoinedNetwork10 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric userJoinedNetwork];
      [userJoinedNetwork10 matchingKnownNetworkProfile];
      v43 = v42 = v29;
      v109 = [matchingKnownNetworkProfile12 isEqual:v43];

      v29 = v42;
      v30 = v103;

      selfCopy = v105;
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

  startedAt4 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric startedAt];
  if (startedAt4)
  {
    v62 = startedAt4;
    startedAt5 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric startedAt];
    if (startedAt5)
    {
      v64 = startedAt5;
      startedAt6 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric startedAt];
      startedAt7 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric startedAt];
      v67 = [startedAt6 isEqual:startedAt7];

      if (v67)
      {
        joinEndedAt = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric joinEndedAt];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setJoinEndedAt:joinEndedAt];

        joinStartedAt = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric joinStartedAt];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setJoinStartedAt:joinStartedAt];

        routableIPv4AddressAt = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric routableIPv4AddressAt];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setRoutableIPv4AddressAt:routableIPv4AddressAt];

        primaryIPv4InterfaceAt = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric primaryIPv4InterfaceAt];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setPrimaryIPv4InterfaceAt:primaryIPv4InterfaceAt];

        routableIPv6AddressAt = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric routableIPv6AddressAt];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setRoutableIPv6AddressAt:routableIPv6AddressAt];

        primaryIPv6InterfaceAt = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric primaryIPv6InterfaceAt];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setPrimaryIPv6InterfaceAt:primaryIPv6InterfaceAt];

        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setLinkRecoveryDelay:[(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric linkRecoveryDelay]];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setDidJoinPreviouslyLowRSSINetwork:[(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric didJoinPreviouslyLowRSSINetwork]];
      }
    }

    else
    {
    }
  }

  primaryIPv4InterfaceAt2 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric primaryIPv4InterfaceAt];
  if (primaryIPv4InterfaceAt2)
  {
    v100 = primaryIPv4InterfaceAt2;
    primaryIPv6InterfaceAt2 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric primaryIPv6InterfaceAt];

    if (primaryIPv6InterfaceAt2)
    {
      [(CWFAutoJoinManager *)selfCopy __unscheduleDelayedAutoJoinMetricSubmission];
      [(CWFAutoJoinManager *)selfCopy __submitAutoJoinMetric:selfCopy->_delayedSubmissionMetric];
      delayedSubmissionMetric = selfCopy->_delayedSubmissionMetric;
      selfCopy->_delayedSubmissionMetric = 0;
    }
  }

LABEL_61:
  v98 = *MEMORY[0x1E69E9840];
}

- (CWFScanResult)associatedNetwork
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_associatedNetwork;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setAssociatedNetwork:(id)network
{
  v54 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  associatedNetwork = selfCopy->_associatedNetwork;
  if (associatedNetwork != networkCopy && (!networkCopy || !associatedNetwork || ![(CWFScanResult *)networkCopy isEqual:?]))
  {
    goto LABEL_13;
  }

  matchingKnownNetworkProfile = [(CWFScanResult *)networkCopy matchingKnownNetworkProfile];
  matchingKnownNetworkProfile2 = [(CWFScanResult *)selfCopy->_associatedNetwork matchingKnownNetworkProfile];
  v9 = matchingKnownNetworkProfile2;
  if (matchingKnownNetworkProfile == matchingKnownNetworkProfile2)
  {

    goto LABEL_37;
  }

  matchingKnownNetworkProfile3 = [(CWFScanResult *)networkCopy matchingKnownNetworkProfile];
  if (!matchingKnownNetworkProfile3)
  {
    goto LABEL_12;
  }

  matchingKnownNetworkProfile4 = [(CWFScanResult *)selfCopy->_associatedNetwork matchingKnownNetworkProfile];
  if (!matchingKnownNetworkProfile4)
  {

LABEL_12:
    goto LABEL_13;
  }

  matchingKnownNetworkProfile5 = [(CWFScanResult *)networkCopy matchingKnownNetworkProfile];
  matchingKnownNetworkProfile6 = [(CWFScanResult *)selfCopy->_associatedNetwork matchingKnownNetworkProfile];
  v14 = [matchingKnownNetworkProfile5 isEqual:matchingKnownNetworkProfile6];

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
    v53 = networkCopy;
    LODWORD(v50) = 12;
    v49 = &v52;
    _os_log_send_and_compose_impl();
  }

  v18 = selfCopy->_associatedNetwork;
  if ((networkCopy == 0) == (v18 != 0))
  {
    v19 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    selfCopy->_linkChangeTimestamp = v19;
    if (v18)
    {
      selfCopy->_prevAssocBeforeTimestamp = v19;
      v20 = [(CWFScanResult *)selfCopy->_associatedNetwork copy];
      prevAssociatedNetwork = selfCopy->_prevAssociatedNetwork;
      selfCopy->_prevAssociatedNetwork = v20;
    }
  }

  v22 = [(CWFScanResult *)networkCopy copy:v49];
  v23 = selfCopy->_associatedNetwork;
  selfCopy->_associatedNetwork = v22;

  matchingKnownNetworkProfile7 = [(CWFScanResult *)selfCopy->_steerToNetwork matchingKnownNetworkProfile];
  identifier = [matchingKnownNetworkProfile7 identifier];
  if (!identifier)
  {
    goto LABEL_26;
  }

  matchingKnownNetworkProfile8 = [(CWFScanResult *)selfCopy->_associatedNetwork matchingKnownNetworkProfile];
  identifier2 = [matchingKnownNetworkProfile8 identifier];
  if (!identifier2)
  {

LABEL_26:
    goto LABEL_27;
  }

  matchingKnownNetworkProfile9 = [(CWFScanResult *)selfCopy->_steerToNetwork matchingKnownNetworkProfile];
  identifier3 = [matchingKnownNetworkProfile9 identifier];
  matchingKnownNetworkProfile10 = [(CWFScanResult *)selfCopy->_associatedNetwork matchingKnownNetworkProfile];
  identifier4 = [matchingKnownNetworkProfile10 identifier];
  v51 = [identifier3 isEqual:identifier4];

  if ((v51 & 1) == 0)
  {
LABEL_27:
    steerToNetwork = selfCopy->_steerToNetwork;
    selfCopy->_steerToNetwork = 0;

    steerFromNetwork = selfCopy->_steerFromNetwork;
    selfCopy->_steerFromNetwork = 0;
  }

  v34 = selfCopy->_associatedNetwork;
  if (v34)
  {
    networkProfile = [(CWFScanResult *)v34 networkProfile];
    identifier5 = [networkProfile identifier];
    if (identifier5)
    {
      allKeys = [(NSMutableDictionary *)selfCopy->_disallowedKnownNetworksMap allKeys];
      identifier6 = [networkProfile identifier];
      v39 = [allKeys containsObject:identifier6];

      if (v39)
      {
        disallowedKnownNetworksMap = selfCopy->_disallowedKnownNetworksMap;
        identifier7 = [networkProfile identifier];
        [(NSMutableDictionary *)disallowedKnownNetworksMap removeObjectForKey:identifier7];
      }
    }

    identifier8 = [networkProfile identifier];
    if (identifier8)
    {
      failedToJoinKnownNetworkIDs = selfCopy->_failedToJoinKnownNetworkIDs;
      identifier9 = [networkProfile identifier];
      LODWORD(failedToJoinKnownNetworkIDs) = [(NSMutableSet *)failedToJoinKnownNetworkIDs containsObject:identifier9];

      if (failedToJoinKnownNetworkIDs)
      {
        v45 = selfCopy->_failedToJoinKnownNetworkIDs;
        identifier10 = [networkProfile identifier];
        [(NSMutableSet *)v45 removeObject:identifier10];
      }
    }
  }

  else
  {
    [(CWFAutoJoinManager *)selfCopy __unscheduleDelayedAutoJoinMetricSubmission];
    [(CWFAutoJoinManager *)selfCopy __submitAutoJoinMetric:selfCopy->_delayedSubmissionMetric];
    delayedSubmissionMetric = selfCopy->_delayedSubmissionMetric;
    selfCopy->_delayedSubmissionMetric = 0;
  }

LABEL_37:
  objc_sync_exit(selfCopy);

  v48 = *MEMORY[0x1E69E9840];
}

- (CWFJoinStatus)joinStatus
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_joinStatus;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setJoinStatus:(id)status
{
  v13 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  joinStatus = selfCopy->_joinStatus;
  if (joinStatus != statusCopy && (!statusCopy || !joinStatus || ![(CWFJoinStatus *)statusCopy isEqual:?]))
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

    v10 = [(CWFJoinStatus *)statusCopy copy];
    v11 = selfCopy->_joinStatus;
    selfCopy->_joinStatus = v10;

    [(CWFAutoJoinManager *)selfCopy __updateAutoJoinMetricWithJoinStatus];
  }

  objc_sync_exit(selfCopy);

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

- (void)setKnownNetworks:(id)networks
{
  v55 = *MEMORY[0x1E69E9840];
  networksCopy = networks;
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  knownNetworks = selfCopy->_knownNetworks;
  v44 = networksCopy;
  if (knownNetworks != networksCopy && (!networksCopy || !knownNetworks || ([(NSSet *)networksCopy isEqual:?]& 1) == 0))
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
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
          context = [(NSSet *)selfCopy->_knownNetworks member:v14, v41, v42, context];
          if (context)
          {
            sSID = [v14 SSID];

            if (sSID)
            {
              sSID2 = [v14 SSID];
              [dictionary setObject:context forKeyedSubscript:sSID2];
            }

            if ([v14 isPasspoint])
            {
              domainName = [v14 domainName];
              [dictionary2 setObject:context forKeyedSubscript:domainName];
            }

            [v10 addObject:context];
          }

          else
          {
            v19 = [v14 copy];
            knownNetworkAllowCache = selfCopy->_knownNetworkAllowCache;
            identifier = [v14 identifier];
            [(NSMutableDictionary *)knownNetworkAllowCache setObject:0 forKeyedSubscript:identifier];

            knownNetworkAllowErrorCache = selfCopy->_knownNetworkAllowErrorCache;
            identifier2 = [v14 identifier];
            [(NSMutableDictionary *)knownNetworkAllowErrorCache setObject:0 forKeyedSubscript:identifier2];

            knownNetworkDeferCache = selfCopy->_knownNetworkDeferCache;
            identifier3 = [v14 identifier];
            [(NSMutableDictionary *)knownNetworkDeferCache setObject:0 forKeyedSubscript:identifier3];

            sSID3 = [v14 SSID];

            if (sSID3)
            {
              knownNetworkSSIDMap = selfCopy->_knownNetworkSSIDMap;
              sSID4 = [v14 SSID];
              v29 = [(NSMutableDictionary *)knownNetworkSSIDMap objectForKeyedSubscript:sSID4];

              if (!v29 || (v30 = [v29 effectiveSupportedSecurityTypes], v30 != objc_msgSend(v14, "effectiveSupportedSecurityTypes")))
              {
                v45 = 1;
              }

              sSID5 = [v14 SSID];
              [dictionary setObject:v19 forKeyedSubscript:sSID5];
            }

            if ([v14 isPasspoint])
            {
              knownNetworkPasspointDomainMap = selfCopy->_knownNetworkPasspointDomainMap;
              domainName2 = [v14 domainName];
              v34 = [(NSMutableDictionary *)knownNetworkPasspointDomainMap objectForKeyedSubscript:domainName2];

              if (!v34 || (v35 = [v34 effectiveSupportedSecurityTypes], v35 != objc_msgSend(v14, "effectiveSupportedSecurityTypes")))
              {
                v45 = 1;
              }

              domainName3 = [v14 domainName];
              [dictionary2 setObject:v19 forKeyedSubscript:domainName3];
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
    v38 = selfCopy->_knownNetworks;
    selfCopy->_knownNetworks = v37;

    [(NSMutableDictionary *)selfCopy->_knownNetworkSSIDMap setDictionary:dictionary];
    [(NSMutableDictionary *)selfCopy->_knownNetworkPasspointDomainMap setDictionary:dictionary2];
    allObjects = [(NSSet *)selfCopy->_knownNetworks allObjects];
    [(CWFAutoJoinStatistics *)selfCopy->_statistics setKnownNetworks:allObjects];

    if (v45)
    {
      selfCopy->_didConfigurationChangeSincePreviousAttempt = 1;
      selfCopy->_resetCachedKnownNetworksContext = 1;
      [(CWFAutoJoinManager *)selfCopy __resetRetryIntervalIndex];
    }
  }

  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(context);
  v40 = *MEMORY[0x1E69E9840];
}

- (NSSet)supportedChannels
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSSet *)selfCopy->_supportedChannels copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setSupportedChannels:(id)channels
{
  channelsCopy = channels;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  supportedChannels = selfCopy->_supportedChannels;
  if (supportedChannels != channelsCopy && (!channelsCopy || !supportedChannels || ([(NSSet *)channelsCopy isEqual:?]& 1) == 0))
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

    if (selfCopy->_supportedChannels)
    {
      v10 = [(NSSet *)channelsCopy isSubsetOfSet:?];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(NSSet *)channelsCopy copy:v13];
    v12 = selfCopy->_supportedChannels;
    selfCopy->_supportedChannels = v11;

    if (!v10)
    {
      selfCopy->_didConfigurationChangeSincePreviousAttempt = 1;
      selfCopy->_resetCachedKnownNetworksContext = 1;
      [(CWFAutoJoinManager *)selfCopy __resetRetryIntervalIndex];
    }
  }

  objc_sync_exit(selfCopy);
}

- (CLLocation)location
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(CLLocation *)selfCopy->_location copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  location = selfCopy->_location;
  if (location != locationCopy && (!locationCopy || !location || ([(CLLocation *)locationCopy isEqual:?]& 1) == 0))
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

    if (!locationCopy || (v10 = selfCopy->_location) == 0 || ([(CLLocation *)v10 distanceFromLocation:locationCopy], v11 > 20.0))
    {
      selfCopy->_resetCachedKnownNetworksContext = 1;
    }

    v12 = [(CLLocation *)locationCopy copy:v19];
    v13 = selfCopy->_location;
    selfCopy->_location = v12;

    loiTypes = selfCopy->_loiTypes;
    selfCopy->_loiTypes = 0;

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
      defaultManager = [v15 defaultManager];
      v18 = selfCopy->_location;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1E0C6CE64;
      v21[3] = &unk_1E86E7698;
      v21[4] = selfCopy;
      [defaultManager fetchLocationsOfInterestWithinDistance:v18 ofLocation:v21 withHandler:100.1];
    }
  }

  objc_sync_exit(selfCopy);
}

- (int64_t)retrySchedule
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  retrySchedule = selfCopy->_retrySchedule;
  objc_sync_exit(selfCopy);

  return retrySchedule;
}

- (void)setRetrySchedule:(int64_t)schedule
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_retrySchedule != schedule)
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
      v8 = sub_1E0BEE2F0(selfCopy->_retrySchedule);
      v9 = sub_1E0BEE2F0(schedule);
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      LODWORD(v12) = 22;
      v11 = &v13;
      _os_log_send_and_compose_impl();
    }

    selfCopy->_retrySchedule = schedule;
    [(CWFAutoJoinManager *)selfCopy __setupThrottleIntervals];
    if (!selfCopy->_invalidated && (selfCopy->_isRetryScheduled || [(CWFAutoJoinManager *)selfCopy __shouldAlwaysUpdateRetrySchedule:schedule]))
    {
      [(CWFAutoJoinManager *)selfCopy __updateRetrySchedule:v11];
    }
  }

  objc_sync_exit(selfCopy);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setMaxCompatibilityEnabled:(BOOL)enabled
{
  obj = self;
  objc_sync_enter(obj);
  obj->_maxCompatibilityEnabled = enabled;
  objc_sync_exit(obj);
}

- (BOOL)maxCompatibilityEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  maxCompatibilityEnabled = selfCopy->_maxCompatibilityEnabled;
  objc_sync_exit(selfCopy);

  return maxCompatibilityEnabled;
}

- (id)performAutoJoinWithParameters:(id)parameters reply:(id)reply
{
  v39 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  replyCopy = reply;
  v8 = objc_alloc_init(CWFAutoJoinRequest);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(CWFAutoJoinRequest *)v8 setUUID:uUID];

  [(CWFAutoJoinRequest *)v8 setParameters:parametersCopy];
  [(CWFAutoJoinRequest *)v8 setReply:replyCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_invalidated)
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
      uUID2 = [(CWFAutoJoinRequest *)v8 UUID];
      uUIDString = [uUID2 UUIDString];
      v16 = [uUIDString substringToIndex:5];
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

    targetQueue = selfCopy->_targetQueue;
    v22 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C6D58C;
    block[3] = &unk_1E86E6AF0;
    v28 = replyCopy;
    v23 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v22, 0, block);
    dispatch_async(targetQueue, v23);
  }

  else
  {
    [(CWFAutoJoinManager *)selfCopy __addRequest:v8];
  }

  objc_sync_exit(selfCopy);

  uUID3 = [(CWFAutoJoinRequest *)v8 UUID];

  v25 = *MEMORY[0x1E69E9840];

  return uUID3;
}

- (void)cancelAutoJoinWithUUID:(id)d error:(id)error reply:(id)reply
{
  v121 = *MEMORY[0x1E69E9840];
  dCopy = d;
  errorCopy = error;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v91 = selfCopy;
  if (selfCopy->_invalidated)
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
      uUIDString = [dCopy UUIDString];
      [uUIDString substringToIndex:5];
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

    targetQueue = selfCopy->_targetQueue;
    v25 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C6E6E0;
    block[3] = &unk_1E86E6AF0;
    v109 = replyCopy;
    v26 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v25, 0, block);
    dispatch_async(targetQueue, v26);
  }

  else if (dCopy)
  {
    uUID = [(CWFAutoJoinRequest *)selfCopy->_activeRequest UUID];
    v13 = [dCopy isEqual:uUID];

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
        activeRequest = selfCopy->_activeRequest;
        v111 = 138543362;
        v112 = activeRequest;
        _os_log_send_and_compose_impl();
      }

      selfCopy->_cancelled = 1;
      v56 = [errorCopy copy];
      underlyingCancelError = selfCopy->_underlyingCancelError;
      selfCopy->_underlyingCancelError = v56;

      internalQueue = selfCopy->_internalQueue;
      v59 = qos_class_self();
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = sub_1E0C6E8C4;
      v106[3] = &unk_1E86E64C0;
      v106[4] = selfCopy;
      v107 = replyCopy;
      v60 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v59, 0, v106);
      dispatch_async(internalQueue, v60);
    }

    else
    {
      for (i = 0; i < [(NSMutableArray *)selfCopy->_pendingRequests count]; ++i)
      {
        v28 = [(NSMutableArray *)selfCopy->_pendingRequests objectAtIndexedSubscript:i];
        uUID2 = [v28 UUID];
        v30 = [dCopy isEqual:uUID2];

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

          v66 = selfCopy->_targetQueue;
          v67 = qos_class_self();
          v102[0] = MEMORY[0x1E69E9820];
          v102[1] = 3221225472;
          v102[2] = sub_1E0C6EC7C;
          v102[3] = &unk_1E86E6CA8;
          v68 = v28;
          v103 = v68;
          v104 = errorCopy;
          v105 = replyCopy;
          v69 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v67, 0, v102);
          dispatch_async(v66, v69);

          [(NSMutableArray *)selfCopy->_pendingRequests removeObjectAtIndex:i];
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
        uUIDString2 = [dCopy UUIDString];
        [uUIDString2 substringToIndex:5];
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

      v85 = selfCopy->_targetQueue;
      v86 = qos_class_self();
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = sub_1E0C6EEE0;
      v100[3] = &unk_1E86E6AF0;
      v101 = replyCopy;
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
    obj = selfCopy->_pendingRequests;
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
          v95 = errorCopy;
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
      v50 = [errorCopy copy];
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
        code = [(NSError *)v91->_underlyingCancelError code];
        v111 = 138543618;
        v112 = v71;
        v113 = 2048;
        v114 = code;
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
    v93 = replyCopy;
    v75 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v74, 0, v92);
    dispatch_async(v73, v75);
  }

LABEL_66:
  objc_sync_exit(v91);

  v76 = *MEMORY[0x1E69E9840];
}

- (CWFAutoJoinMetric)metric
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)resetStatistics
{
  v13 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
    statistics = selfCopy->_statistics;
    _os_log_send_and_compose_impl();
  }

  v6 = objc_alloc_init(CWFAutoJoinStatistics);
  v7 = selfCopy->_statistics;
  selfCopy->_statistics = v6;

  date = [MEMORY[0x1E695DF00] date];
  [(CWFAutoJoinStatistics *)selfCopy->_statistics setStartedAt:date];

  statisticsSubmissionTimer = selfCopy->_statisticsSubmissionTimer;
  if (statisticsSubmissionTimer)
  {
    v10 = dispatch_walltime(0, 86400000000000);
    dispatch_source_set_timer(statisticsSubmissionTimer, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x1E69E9840];
}

- (NSSet)recentlyMatchedCandidates
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_recentlyMatchedCandidates copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)__updateRecentlyMatchedCandidates
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableSet *)self->_matchedCandidates mutableCopy];
  v4 = [(NSMutableSet *)self->_disallowedMatchedCandidates mutableCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_recentlyMatchedCandidates minusSet:v3];
  [(NSMutableSet *)selfCopy->_recentlyMatchedCandidates minusSet:v4];
  [(NSMutableSet *)selfCopy->_recentlyMatchedCandidates unionSet:v3];
  [(NSMutableSet *)selfCopy->_recentlyMatchedCandidates unionSet:v4];
  v6 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = selfCopy->_recentlyMatchedCandidates;
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

  [(NSMutableSet *)selfCopy->_recentlyMatchedCandidates minusSet:v6];
  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x1E69E9840];
}

- (id)__hiddenSSIDListForLocation:(id)location knownNetworks:(id)networks recentOnly:(BOOL)only nearbyOnly:(BOOL)nearbyOnly
{
  onlyCopy = only;
  v76 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  networksCopy = networks;
  v55 = objc_autoreleasePoolPush();
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  if (networksCopy)
  {
    allObjects = [networksCopy allObjects];
    [orderedSet addObjectsFromArray:allObjects];

    [(CWFAutoJoinManager *)self __sortKnownNetworks:orderedSet];
  }

  v56 = networksCopy;
  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet3 = [MEMORY[0x1E695DFA0] orderedSet];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v13 = v12;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = orderedSet;
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
        bSSList = [v15 BSSList];
        v63 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastAssociatedAt" ascending:0];
        v74 = v63;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
        v64 = bSSList;
        v18 = [bSSList sortedArrayUsingDescriptors:v17];

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

              location = [*(*(&v65 + 1) + 8 * j) location];
              v26 = location;
              if (locationCopy)
              {
                if (location)
                {
                  [locationCopy horizontalAccuracy];
                  if (v27 >= 0.0)
                  {
                    [locationCopy horizontalAccuracy];
                    if (v28 <= 100.0)
                    {
                      [v26 horizontalAccuracy];
                      if (v29 >= 0.0)
                      {
                        [v26 horizontalAccuracy];
                        if (v30 <= 100.0)
                        {
                          [v26 distanceFromLocation:locationCopy];
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

        networkName = [v15 networkName];
        if (networkName && ([v15 isPasspoint] & 1) == 0)
        {
          if ([v15 hiddenState] == 2)
          {
            wasHiddenBefore = [v15 wasHiddenBefore];
            if (!wasHiddenBefore)
            {
              goto LABEL_42;
            }

            v34 = wasHiddenBefore;
            wasHiddenBefore2 = [v15 wasHiddenBefore];
            [wasHiddenBefore2 timeIntervalSinceNow];
            v37 = v36;
            wasHiddenBefore3 = [v15 wasHiddenBefore];
            [wasHiddenBefore3 timeIntervalSinceNow];
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

          if (onlyCopy)
          {
            lastJoinedAt = [v15 lastJoinedAt];
            [lastJoinedAt timeIntervalSinceReferenceDate];
            if (v13 - v42 <= 2592000.0)
            {
            }

            else
            {
              lastDiscoveredAt = [v15 lastDiscoveredAt];
              [lastDiscoveredAt timeIntervalSinceReferenceDate];
              v45 = v13 - v44;

              if (v45 > 2592000.0)
              {
                goto LABEL_42;
              }
            }
          }

          if (v22)
          {
            v46 = orderedSet3;
          }

          else
          {
            v46 = orderedSet2;
          }

          [v46 addObject:networkName];
        }

LABEL_42:
      }

      v62 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v62);
  }

  if ([orderedSet3 count] || objc_msgSend(orderedSet2, "count"))
  {
    orderedSet4 = [MEMORY[0x1E695DFA0] orderedSet];
    array = [orderedSet3 array];
    [orderedSet4 addObjectsFromArray:array];

    v50 = v55;
    v49 = v56;
    if (!nearbyOnly)
    {
      array2 = [orderedSet2 array];
      [orderedSet4 addObjectsFromArray:array2];
    }
  }

  else
  {
    orderedSet4 = 0;
    v50 = v55;
    v49 = v56;
  }

  objc_autoreleasePoolPop(v50);
  v52 = *MEMORY[0x1E69E9840];

  return orderedSet4;
}

- (NSOrderedSet)recentLocationBasedHiddenSSIDList
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  location = [(CWFAutoJoinManager *)selfCopy location];
  knownNetworks = [(CWFAutoJoinManager *)selfCopy knownNetworks];
  v5 = [(CWFAutoJoinManager *)selfCopy __hiddenSSIDListForLocation:location knownNetworks:knownNetworks recentOnly:1 nearbyOnly:1];

  objc_sync_exit(selfCopy);

  return v5;
}

- (NSOrderedSet)locationBasedHiddenSSIDList
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  location = [(CWFAutoJoinManager *)selfCopy location];
  knownNetworks = [(CWFAutoJoinManager *)selfCopy knownNetworks];
  v5 = [(CWFAutoJoinManager *)selfCopy __hiddenSSIDListForLocation:location knownNetworks:knownNetworks recentOnly:0 nearbyOnly:1];

  objc_sync_exit(selfCopy);

  return v5;
}

- (NSOrderedSet)hiddenSSIDList
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  location = [(CWFAutoJoinManager *)selfCopy location];
  knownNetworks = [(CWFAutoJoinManager *)selfCopy knownNetworks];
  v5 = [(CWFAutoJoinManager *)selfCopy __hiddenSSIDListForLocation:location knownNetworks:knownNetworks recentOnly:0 nearbyOnly:0];

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)__updateStatisticsWithScanChannels:(id)channels
{
  v16 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [channelsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(channelsCopy);
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

      v6 = [channelsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)__updateStatisticsWithPreAssocScanChannels:(id)channels
{
  v16 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [channelsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(channelsCopy);
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

      v6 = [channelsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)__updateAutoJoinMetricAndStatistics:(id)statistics
{
  statisticsCopy = statistics;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [statisticsCopy copy];
  cachedMetric = selfCopy->_cachedMetric;
  selfCopy->_cachedMetric = v5;

  if ([statisticsCopy result])
  {
    autoJoinedNetwork = [statisticsCopy autoJoinedNetwork];
    if (autoJoinedNetwork)
    {

LABEL_6:
      [(CWFAutoJoinManager *)selfCopy __submitAutoJoinMetric:selfCopy->_delayedSubmissionMetric];
      v9 = [statisticsCopy copy];
      delayedSubmissionMetric = selfCopy->_delayedSubmissionMetric;
      selfCopy->_delayedSubmissionMetric = v9;

      [(CWFAutoJoinManager *)selfCopy __scheduleDelayedAutoJoinMetricSubmission];
      [(CWFAutoJoinManager *)selfCopy __updateAutoJoinMetricWithJoinStatus];
      goto LABEL_8;
    }
  }

  if ([statisticsCopy autoHotspotResult])
  {
    hotspot = [statisticsCopy hotspot];

    if (hotspot)
    {
      goto LABEL_6;
    }
  }

  [(CWFAutoJoinManager *)selfCopy __submitAutoJoinMetric:statisticsCopy];
LABEL_8:
  wasAlreadyAssociatedToNetwork = [statisticsCopy wasAlreadyAssociatedToNetwork];

  if (wasAlreadyAssociatedToNetwork)
  {
    [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoJoinAlreadyAssociatedCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoJoinAlreadyAssociatedCount]+ 1];
  }

  autoJoinTriggerCounts = [(CWFAutoJoinStatistics *)selfCopy->_statistics autoJoinTriggerCounts];
  v13 = MEMORY[0x1E696AD98];
  autoJoinParameters = [statisticsCopy autoJoinParameters];
  v15 = [v13 numberWithInteger:{objc_msgSend(autoJoinParameters, "trigger")}];
  v16 = [autoJoinTriggerCounts objectForKeyedSubscript:v15];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  autoJoinTriggerCounts2 = [(CWFAutoJoinStatistics *)selfCopy->_statistics autoJoinTriggerCounts];
  v20 = MEMORY[0x1E696AD98];
  autoJoinParameters2 = [statisticsCopy autoJoinParameters];
  v22 = [v20 numberWithInteger:{objc_msgSend(autoJoinParameters2, "trigger")}];
  [autoJoinTriggerCounts2 setObject:v18 forKeyedSubscript:v22];

  error = [statisticsCopy error];

  if (error)
  {
    [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoJoinAbortedCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoJoinAbortedCount]+ 1];
  }

  scanChannels = [statisticsCopy scanChannels];
  [(CWFAutoJoinManager *)selfCopy __updateStatisticsWithScanChannels:scanChannels];

  preAssociationScanChannels = [statisticsCopy preAssociationScanChannels];
  [(CWFAutoJoinManager *)selfCopy __updateStatisticsWithPreAssocScanChannels:preAssociationScanChannels];

  statistics = selfCopy->_statistics;
  followup6GHzScanChannels = [statisticsCopy followup6GHzScanChannels];
  -[CWFAutoJoinStatistics setFollowup6GHzScanChannelCount:](statistics, "setFollowup6GHzScanChannelCount:", -[CWFAutoJoinStatistics followup6GHzScanChannelCount](statistics, "followup6GHzScanChannelCount") + [followup6GHzScanChannels count]);

  v28 = selfCopy->_statistics;
  gASQueryNetworks = [statisticsCopy GASQueryNetworks];
  -[CWFAutoJoinStatistics setGASQueryCount:](v28, "setGASQueryCount:", -[CWFAutoJoinStatistics GASQueryCount](v28, "GASQueryCount") + [gASQueryNetworks count]);

  autoJoinedNetwork2 = [statisticsCopy autoJoinedNetwork];

  if (autoJoinedNetwork2)
  {
    [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoJoinDidFindCandidateCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoJoinDidFindCandidateCount]+ 1];
    if ([statisticsCopy result])
    {
      [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoJoinDidJoinCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoJoinDidJoinCount]+ 1];
    }
  }

  if ([statisticsCopy autoHotspotWasAttempted] && objc_msgSend(statisticsCopy, "autoHotspotMode") == 3)
  {
    [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoHotspotCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoHotspotCount]+ 1];
    hotspot2 = [statisticsCopy hotspot];

    if (hotspot2)
    {
      [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoHotspotDidFindCandidateCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoHotspotDidFindCandidateCount]+ 1];
      if ([statisticsCopy autoHotspotResult])
      {
        [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoHotspotDidJoinCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoHotspotDidJoinCount]+ 1];
      }
    }

    autoHotspotError = [statisticsCopy autoHotspotError];

    if (autoHotspotError)
    {
      [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoHotspotAbortedCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoHotspotAbortedCount]+ 1];
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)__shouldIgnoreRequestWithTrigger:(int64_t)trigger
{
  v18 = *MEMORY[0x1E69E9840];
  if (trigger != 32)
  {
    if (trigger != 58 && trigger != 34)
    {
      goto LABEL_5;
    }

    associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];

    if (associatedNetwork)
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

    v11 = sub_1E0BCC05C(trigger);
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
    parameters = [(CWFAutoJoinRequest *)activeRequest parameters];
    if ([parameters trigger] == 32)
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

    parameters2 = [(CWFAutoJoinRequest *)self->_activeRequest parameters];
    trigger = [parameters2 trigger];

    if (trigger == 47)
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

- (BOOL)__shouldResetRetryIntervalIndexForTrigger:(int64_t)trigger previousTimestamp:(unint64_t)timestamp
{
  result = 0;
  if (trigger <= 0x3B)
  {
    if (((1 << trigger) & 0x90000032010018CLL) != 0)
    {
      return 1;
    }

    else if (trigger == 19)
    {
      return clock_gettime_nsec_np(_CLOCK_MONOTONIC) - timestamp > 0x45D964B800;
    }
  }

  return result;
}

- (BOOL)__shouldInvokeImmediatelyForTrigger:(int64_t)trigger
{
  result = 0;
  if ((trigger - 9) <= 0x3B)
  {
    if (((1 << (trigger - 9)) & 0xE88004001800911) != 0)
    {
      return 1;
    }

    else if (trigger == 61)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      retryScheduleIndex = selfCopy->_retryScheduleIndex;
      objc_sync_exit(selfCopy);

      return retryScheduleIndex != 0;
    }
  }

  return result;
}

- (void)__removeRedundantRequests:(id)requests
{
  v69 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  array = [MEMORY[0x1E695DF70] array];
  v48 = requestsCopy;
  if ([(NSMutableArray *)self->_pendingRequests count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->_pendingRequests objectAtIndexedSubscript:v5];
      parameters = [v6 parameters];
      mode = [parameters mode];
      parameters2 = [requestsCopy parameters];
      if (mode == [parameters2 mode])
      {
        break;
      }

LABEL_24:
      if (++v5 >= [(NSMutableArray *)self->_pendingRequests count])
      {
        goto LABEL_27;
      }
    }

    parameters3 = [v6 parameters];
    obj = [parameters3 targetNetworkProfile];
    identifier = [obj identifier];
    parameters4 = [requestsCopy parameters];
    targetNetworkProfile = [parameters4 targetNetworkProfile];
    identifier2 = [targetNetworkProfile identifier];
    if (identifier == identifier2)
    {
      v49 = parameters3;
    }

    else
    {
      parameters5 = [v6 parameters];
      targetNetworkProfile2 = [parameters5 targetNetworkProfile];
      identifier3 = [targetNetworkProfile2 identifier];
      if (!identifier3)
      {
        identifier3 = 0;
        v15 = 0;
LABEL_20:

LABEL_21:
        if (v15)
        {
          [array addObject:v6];
        }

        requestsCopy = v48;
        goto LABEL_24;
      }

      v49 = parameters3;
      parameters6 = [v48 parameters];
      targetNetworkProfile3 = [parameters6 targetNetworkProfile];
      identifier4 = [targetNetworkProfile3 identifier];
      if (!identifier4)
      {
        identifier4 = 0;
        v15 = 0;
        goto LABEL_19;
      }

      parameters7 = [v6 parameters];
      targetNetworkProfile4 = [parameters7 targetNetworkProfile];
      identifier5 = [targetNetworkProfile4 identifier];
      parameters8 = [v48 parameters];
      targetNetworkProfile5 = [parameters8 targetNetworkProfile];
      [targetNetworkProfile5 identifier];
      v35 = v38 = identifier5;
      if (![identifier5 isEqual:?])
      {
        v15 = 0;
LABEL_16:

LABEL_19:
        goto LABEL_20;
      }
    }

    parameters9 = [v6 parameters];
    trigger = [parameters9 trigger];
    if (trigger - 44 < 8 || trigger <= 0x3F && ((1 << trigger) & 0xC000000000000010) != 0)
    {

      v15 = 0;
    }

    else
    {
      v15 = [v6 allowAutoHotspotFallback] ^ 1;
    }

    parameters3 = v49;
    if (identifier == identifier2)
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
  obja = array;
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

- (void)__invalidateAllowedKnownNetworksCacheForTrigger:(int64_t)trigger
{
  v30 = *MEMORY[0x1E69E9840];
  if (trigger <= 0x28 && ((1 << trigger) & 0x101A03A0100) != 0)
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
          identifier = [v8 identifier];

          if (identifier)
          {
            if ((trigger & 0xFFFFFFFFFFFFFFFELL) == 0x14 && [v8 isEAP] && !objc_msgSend(v8, "isSystemMode"))
            {
              goto LABEL_19;
            }

            v10 = 0;
            if (((1 << trigger) & 0x101A00A0100) != 0)
            {
              knownNetworkAllowCache = self->_knownNetworkAllowCache;
              identifier2 = [v8 identifier];
              v4 = [(NSMutableDictionary *)knownNetworkAllowCache objectForKeyedSubscript:identifier2];
              if (v4)
              {
                v12 = self->_knownNetworkAllowCache;
                identifier3 = [v8 identifier];
                v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:identifier3];
                v10 = [v14 BOOLValue] ^ 1;
              }

              else
              {
                v10 = 0;
              }
            }

            if (((1 << trigger) & 0x101A00A0100) != 0)
            {
            }

            if (v10)
            {
LABEL_19:
              v15 = self->_knownNetworkAllowCache;
              identifier4 = [v8 identifier];
              [(NSMutableDictionary *)v15 setObject:0 forKeyedSubscript:identifier4];

              knownNetworkAllowErrorCache = self->_knownNetworkAllowErrorCache;
              identifier5 = [v8 identifier];
              [(NSMutableDictionary *)knownNetworkAllowErrorCache setObject:0 forKeyedSubscript:identifier5];

              knownNetworkDeferCache = self->_knownNetworkDeferCache;
              identifier6 = [v8 identifier];
              [(NSMutableDictionary *)knownNetworkDeferCache setObject:0 forKeyedSubscript:identifier6];
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

- (unsigned)__qosForAutoJoinTrigger:(int64_t)trigger
{
  if (trigger > 0x3F)
  {
    return 25;
  }

  if (((1 << trigger) & 0xC00FF00000000010) != 0)
  {
    return 21;
  }

  if (((1 << trigger) & 0xC0010020010104) != 0)
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

- (void)__addRequest:(id)request
{
  v145 = *MEMORY[0x1E69E9840];
  requestCopy = request;
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
    *v137 = requestCopy;
    LODWORD(v95) = 12;
    v93 = &v136;
    _os_log_send_and_compose_impl();
  }

  parameters = [requestCopy parameters];
  trigger = [parameters trigger];

  triggerTimestampMap = self->_triggerTimestampMap;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:trigger];
  v12 = [(NSMutableDictionary *)triggerTimestampMap objectForKeyedSubscript:v11];
  unsignedLongValue = [v12 unsignedLongValue];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC)];
  v15 = self->_triggerTimestampMap;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:trigger];
  [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];

  v99 = trigger;
  if ([(CWFAutoJoinManager *)self __shouldResetRetryIntervalIndexForTrigger:trigger previousTimestamp:unsignedLongValue])
  {
    [(CWFAutoJoinManager *)self __resetRetryIntervalIndex];
  }

  v17 = trigger;
  if (trigger - 44 >= 8 && (trigger > 0x3F || ((1 << trigger) & 0xC000000000000010) == 0))
  {
    [requestCopy setAllowAutoHotspotFallback:{-[CWFAutoJoinManager __shouldAllowAutoHotspotForTrigger:](self, "__shouldAllowAutoHotspotForTrigger:", trigger, v93, v95)}];
  }

  [(CWFAutoJoinManager *)self __invalidateAllowedKnownNetworksCacheForTrigger:trigger, v93, v95];
  if ((trigger & 0xFFFFFFFFFFFFFFDFLL) == 8)
  {
    prevAssociatedNetwork = self->_prevAssociatedNetwork;
    self->_prevAssociatedNetwork = 0;

    self->_prevAssocBeforeTimestamp = 0;
  }

  activeRequest = self->_activeRequest;
  selfCopy = self;
  v117 = requestCopy;
  if (!activeRequest || self->_cancelled)
  {
    v97 = 0;
    goto LABEL_37;
  }

  parameters2 = [(CWFAutoJoinRequest *)activeRequest parameters];
  if ([parameters2 trigger] == trigger)
  {
    parameters3 = [(CWFAutoJoinRequest *)self->_activeRequest parameters];
    mode = [parameters3 mode];
    parameters4 = [requestCopy parameters];
    if (mode != [parameters4 mode])
    {
      v97 = 0;
LABEL_35:

      v17 = v99;
      goto LABEL_36;
    }

    parameters5 = [(CWFAutoJoinRequest *)self->_activeRequest parameters];
    [parameters5 targetNetworkProfile];
    v25 = requestCopy;
    v27 = v26 = self;
    identifier = [v27 identifier];
    parameters6 = [v25 parameters];
    targetNetworkProfile = [parameters6 targetNetworkProfile];
    identifier2 = [targetNetworkProfile identifier];
    if (identifier != identifier2)
    {
      parameters7 = [(CWFAutoJoinRequest *)v26->_activeRequest parameters];
      targetNetworkProfile2 = [parameters7 targetNetworkProfile];
      identifier3 = [targetNetworkProfile2 identifier];
      if (!identifier3)
      {
        v97 = 0;
LABEL_33:

LABEL_34:
        self = selfCopy;
        requestCopy = v117;
        goto LABEL_35;
      }

      v120 = identifier3;
      v122 = parameters7;
      parameters8 = [v117 parameters];
      targetNetworkProfile3 = [parameters8 targetNetworkProfile];
      identifier4 = [targetNetworkProfile3 identifier];
      if (!identifier4)
      {
        v97 = 0;
LABEL_32:

        parameters7 = v122;
        goto LABEL_33;
      }

      identifier9 = identifier4;
      parameters9 = [(CWFAutoJoinRequest *)selfCopy->_activeRequest parameters];
      targetNetworkProfile4 = [parameters9 targetNetworkProfile];
      identifier5 = [targetNetworkProfile4 identifier];
      parameters10 = [v117 parameters];
      targetNetworkProfile5 = [parameters10 targetNetworkProfile];
      identifier6 = [targetNetworkProfile5 identifier];
      if (![identifier5 isEqual:?])
      {
        v97 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v107Identifier = identifier5;
    }

    allowAutoHotspotFallback = [(CWFAutoJoinRequest *)selfCopy->_activeRequest allowAutoHotspotFallback];
    v97 = allowAutoHotspotFallback ^ [v117 allowAutoHotspotFallback] ^ 1;
    identifier5 = v107Identifier;
    if (identifier == identifier2)
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
      parameters11 = [v42 parameters];
      if ([parameters11 trigger] != v17)
      {
        goto LABEL_50;
      }

      parameters12 = [v42 parameters];
      mode2 = [parameters12 mode];
      parameters13 = [requestCopy parameters];
      if (mode2 != [parameters13 mode])
      {

        v39 = v125;
LABEL_50:

        goto LABEL_61;
      }

      parameters14 = [v42 parameters];
      targetNetworkProfile6 = [parameters14 targetNetworkProfile];
      identifier7 = [targetNetworkProfile6 identifier];
      parameters15 = [requestCopy parameters];
      targetNetworkProfile7 = [parameters15 targetNetworkProfile];
      identifier8 = [targetNetworkProfile7 identifier];
      if (identifier7 == identifier8)
      {
        parameters16 = parameters9;
      }

      else
      {
        parameters16 = [v42 parameters];
        targetNetworkProfile3 = [parameters16 targetNetworkProfile];
        identifier9 = [targetNetworkProfile3 identifier];
        if (!identifier9)
        {
          v53 = 0;
          identifier9 = 0;
          goto LABEL_59;
        }

        targetNetworkProfile5 = [v117 parameters];
        identifier6 = [targetNetworkProfile5 targetNetworkProfile];
        v107Identifier = [identifier6 identifier];
        if (!v107Identifier)
        {
          v107Identifier = 0;
          v53 = 0;
          v17 = v99;
          goto LABEL_58;
        }

        v114 = parameters14;
        parameters17 = [v42 parameters];
        targetNetworkProfile8 = [parameters17 targetNetworkProfile];
        identifier10 = [targetNetworkProfile8 identifier];
        parameters18 = [v117 parameters];
        targetNetworkProfile9 = [parameters18 targetNetworkProfile];
        [targetNetworkProfile9 identifier];
        v100 = v103 = identifier10;
        if (![identifier10 isEqual:?])
        {
          v53 = 0;
          v17 = v99;
          parameters14 = v114;
LABEL_57:

LABEL_58:
LABEL_59:

          goto LABEL_60;
        }

        v17 = v99;
        parameters14 = v114;
      }

      allowAutoHotspotFallback2 = [v42 allowAutoHotspotFallback];
      v53 = allowAutoHotspotFallback2 ^ [v117 allowAutoHotspotFallback] ^ 1;
      if (identifier7 != identifier8)
      {
        goto LABEL_57;
      }

LABEL_60:
      parameters9 = parameters16;

      requestCopy = v117;
      v40 = v110;
      v37 = v112;
      v39 = v125;
      if (v53)
      {

        v54 = selfCopy;
        if (![(CWFAutoJoinManager *)selfCopy __shouldIgnoreRequestWithTrigger:v17])
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
        v131 = requestCopy;
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

  v54 = selfCopy;
  if ([(CWFAutoJoinManager *)selfCopy __shouldIgnoreRequestWithTrigger:v17])
  {
    goto LABEL_70;
  }

  if (v97 && !selfCopy->_didConfigurationChangeSincePreviousAttempt)
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
    v129 = requestCopy;
    v74 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v73, 0, v128);
    dispatch_async(v72, v74);

    v66 = v129;
    goto LABEL_87;
  }

  if ([(CWFAutoJoinManager *)selfCopy __shouldInvokeImmediatelyForTrigger:v17])
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

    if (selfCopy->_activeRequest && !selfCopy->_requeued)
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

      pendingRequests = selfCopy->_pendingRequests;
      v82 = [(CWFAutoJoinRequest *)selfCopy->_activeRequest copy];
      [(NSMutableArray *)pendingRequests insertObject:v82 atIndex:0];

      selfCopy->_requeued = 1;
    }

    date = [MEMORY[0x1E695DF00] date];
    [requestCopy setAddedAt:date];

    [(NSMutableArray *)selfCopy->_pendingRequests insertObject:requestCopy atIndex:0];
  }

  else
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [requestCopy setAddedAt:date2];

    [(NSMutableArray *)selfCopy->_pendingRequests addObject:requestCopy];
  }

  if (selfCopy->_activeRequest)
  {
    v84 = [(CWFAutoJoinManager *)selfCopy __qosForAutoJoinTrigger:v17];
    if (v84 > selfCopy->_highestPendingQoS)
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
        highestPendingQoS = selfCopy->_highestPendingQoS;
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

      selfCopy->_highestPendingQoS = v85;
      internalQueue = selfCopy->_internalQueue;
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = sub_1E0C72DA0;
      v126[3] = &unk_1E86E6778;
      v126[4] = selfCopy;
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

- (void)__updateAutoJoinState:(int64_t)state
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    self->_state = state;
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
    block[5] = state;
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
        knownNetworks = [(CWFAutoJoinManager *)self knownNetworks];
        allObjects = [knownNetworks allObjects];
        v12 = sub_1E0BED85C(v8, allObjects);

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

- (id)__descriptionForError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v5 = *MEMORY[0x1E696A578];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  userInfo2 = [errorCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  userInfo3 = [v8 userInfo];
  v10 = [userInfo3 objectForKeyedSubscript:v5];

  v11 = v8;
  v12 = v10;
  if (v8 || (v11 = errorCopy, v12 = v6, errorCopy))
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
  associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  parameters = [(CWFAutoJoinRequest *)selfCopy->_activeRequest parameters];
  v438 = [parameters copy];

  uUID = [(CWFAutoJoinRequest *)obj->_activeRequest UUID];
  v406 = [uUID copy];

  retrySchedule = obj->_retrySchedule;
  retryScheduleIndex = obj->_retryScheduleIndex;
  allowAutoHotspotFallback = [(CWFAutoJoinRequest *)obj->_activeRequest allowAutoHotspotFallback];
  v8 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC520];
  unsignedLongValue = [v8 unsignedLongValue];

  triggerTimestampMap = obj->_triggerTimestampMap;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v438, "trigger")}];
  v11 = [(NSMutableDictionary *)triggerTimestampMap objectForKeyedSubscript:v10];
  unsignedLongValue2 = [v11 unsignedLongValue];

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
    supportedChannels = 0;
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
    nearbyRecommendedNetworks = 0;
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
  if (!associatedNetwork && [(NSMutableSet *)obj->_failedToJoinKnownNetworkIDs count])
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
  [(CWFAutoJoinMetric *)obj->_metric setWasAlreadyAssociatedToNetwork:associatedNetwork];
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
  if (associatedNetwork)
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
  autoJoinParameters = [(CWFAutoJoinContext *)v439 autoJoinParameters];
  if ([autoJoinParameters trigger] == 54)
  {

LABEL_26:
    [(CWFAutoJoinContext *)v439 setMaxScanChannelCount:1];
    [(CWFAutoJoinContext *)v439 setMaxScanCacheAge:0];
    [(CWFAutoJoinContext *)v439 setDwellTime:40];
    goto LABEL_33;
  }

  autoJoinParameters2 = [(CWFAutoJoinContext *)v439 autoJoinParameters];
  v34 = [autoJoinParameters2 trigger] == 55;

  if (v34)
  {
    goto LABEL_26;
  }

  autoJoinParameters3 = [(CWFAutoJoinContext *)v439 autoJoinParameters];
  v36 = [autoJoinParameters3 trigger] == 45;

  if (v36)
  {
    v37 = 1;
  }

  else
  {
    autoJoinParameters4 = [(CWFAutoJoinContext *)v439 autoJoinParameters];
    v39 = [autoJoinParameters4 trigger] == 58;

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
      trigger = [v438 trigger];
      v40 = 0;
      if (trigger - 44 >= 8 && (trigger > 0x3F || ((1 << trigger) & 0xC000000000000010) == 0))
      {
        v163 = 20000;
        if (didConfigurationChangeSincePreviousAttempt)
        {
          v163 = 0;
        }

        if (associatedNetwork)
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
    preferredChannels = [v438 preferredChannels];
    v43 = [preferredChannels copy];
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

  trigger2 = [v438 trigger];
  if (trigger2 - 44 < 8 || (v431 = 0, trigger2 <= 0x3F) && ((1 << trigger2) & 0xC000000000000010) != 0)
  {
    __retryInterval = [(CWFAutoJoinManager *)v435 __retryInterval];
    v431 = __retryInterval;
    if (__retryInterval)
    {
      -[CWFAutoJoinContext setBSSChannelsOnly:](v439, "setBSSChannelsOnly:", [__retryInterval BSSChannelsOnly]);
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
    autoJoinParameters5 = [(CWFAutoJoinContext *)v439 autoJoinParameters];
    [autoJoinParameters5 setPreferredChannels:v51];
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
  supportedChannels = [(CWFAutoJoinManager *)v435 supportedChannels];
  if (![supportedChannels count])
  {
    v363 = MEMORY[0x1E696ABC0];
    v534 = *MEMORY[0x1E696A578];
    v535[0] = @"No configured channels";
    array5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v535 forKeys:&v534 count:1];
    v158 = [v363 errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:array5];

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
    nearbyRecommendedNetworks = 0;
    v421 = 0;
    v441 = 0;
    knownNetworks = 0;
    v405 = 0;
    v436 = 0;
    goto LABEL_364;
  }

  [(CWFAutoJoinManager *)v435 __updateAutoJoinState:1];
  knownNetworks = [(CWFAutoJoinManager *)v435 knownNetworks];
  nearbyRecommendedNetworks = [(CWFAutoJoinManager *)v435 nearbyRecommendedNetworks];
  if (![knownNetworks count] && !objc_msgSend(nearbyRecommendedNetworks, "count"))
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

  if (allowAutoHotspotFallback && (-[CWFAutoJoinManager __calloutToAllowAutoHotspotWithTrigger:error:](v435, "__calloutToAllowAutoHotspotWithTrigger:error:", [v438 trigger], 0) & 0xFFFFFFFFFFFFFFFELL) == 2)
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
      if (associatedNetwork)
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
        mode = [v438 mode];
        v272 = v497[5];
        if (mode == 3)
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
        array5 = v451;
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
      allObjects = [knownNetworks allObjects];
      [(CWFAutoJoinContext *)v439 setInclude6GHzChannels:[(CWFAutoJoinManager *)v435 __didRecentlyJoinAny6GHzOnlyNetworks:allObjects]];
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
      include6GHzChannels = [(CWFAutoJoinContext *)v439 include6GHzChannels];
      v66 = "NOT ";
      if (include6GHzChannels)
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

  targetNetworkProfile = [v438 targetNetworkProfile];
  if (targetNetworkProfile)
  {
    allObjects2 = [knownNetworks allObjects];
    v405 = [(CWFAutoJoinManager *)v435 __knownNetworksList:allObjects2 containsMatchingKnownNetwork:targetNetworkProfile];

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
      array5 = v486;
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
        v386 = [(CWFAutoJoinManager *)v435 __discoverKnownNetworksWithContext:v76 error:&v485, v381, v386];
        v158 = v485;

        if (v386)
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
          v399 = knownNetworks;
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
        array5 = CWFGetOSLog();
      }

      else
      {
        array5 = MEMORY[0x1E69E9C10];
        v80 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(array5, OS_LOG_TYPE_DEFAULT))
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
      v84 = [knownNetworks count];
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
    v85 = knownNetworks;
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
      v97 = [nearbyRecommendedNetworks count];
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
    v98 = nearbyRecommendedNetworks;
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

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet3 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet4 = [MEMORY[0x1E695DFA0] orderedSet];
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
  v399 = knownNetworks;
  v467 = v399;
  v468 = v435;
  v428 = v439;
  v469 = v428;
  v441 = orderedSet;
  v470 = v441;
  v421 = orderedSet2;
  v471 = v421;
  v413 = orderedSet3;
  v472 = v413;
  v474 = &v506;
  v398 = orderedSet4;
  v473 = v398;
  v475 = &v502;
  dispatch_sync(v115, block);

  if (!associatedNetwork || ![v441 count])
  {
    goto LABEL_232;
  }

  matchingKnownNetworkProfile = [associatedNetwork matchingKnownNetworkProfile];
  isCarPlay = [matchingKnownNetworkProfile isCarPlay];

  if (isCarPlay)
  {
    v367 = CWFGetOSLog();
    if (v367)
    {
      array5 = CWFGetOSLog();
    }

    else
    {
      array5 = MEMORY[0x1E69E9C10];
      v372 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(array5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_516;
    }

    v510 = 138543362;
    *v511 = associatedNetwork;
    LODWORD(v386) = 12;
    v381 = &v510;
    goto LABEL_503;
  }

  if ([v438 trigger] != 45)
  {
    if ([v438 trigger] == 58)
    {
      array5 = [MEMORY[0x1E695DFA8] set];
      associatedNetwork2 = [(CWFAutoJoinManager *)v435 associatedNetwork];
      channel = [associatedNetwork2 channel];
      if (([channel is6GHz] & 1) == 0)
      {
        channel2 = [v397 channel];
        is6GHz = [channel2 is6GHz];

        if (!is6GHz)
        {
          goto LABEL_170;
        }

        array = [v441 array];
        matchingKnownNetworkProfile2 = [v397 matchingKnownNetworkProfile];
        associatedNetwork2 = [(CWFAutoJoinManager *)v435 __knownNetworksList:array containsMatchingKnownNetwork:matchingKnownNetworkProfile2];

        if (!associatedNetwork2)
        {
LABEL_169:

LABEL_170:
          matchingKnownNetworkProfile3 = [associatedNetwork matchingKnownNetworkProfile];
          array2 = [v441 array];
          v138 = [(CWFAutoJoinManager *)v435 __morePreferredKnownNetworksWithCandidate:matchingKnownNetworkProfile3 knownNetworks:array2 context:v428];
          v139 = [v138 set];
          [array5 unionSet:v139];

          if ([(CWFAutoJoinManager *)v435 __isDeferrableJoinCandidate:associatedNetwork])
          {
            matchingKnownNetworkProfile4 = [associatedNetwork matchingKnownNetworkProfile];
            wasMoreRecentlyJoinedByUser = [matchingKnownNetworkProfile4 wasMoreRecentlyJoinedByUser];

            if ((wasMoreRecentlyJoinedByUser & 1) == 0)
            {
              v142 = [v421 set];
              [array5 unionSet:v142];
            }
          }

          [v441 intersectSet:array5];
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
            *v511 = associatedNetwork;
            LODWORD(v386) = 12;
            v381 = &v510;
            _os_log_send_and_compose_impl();
          }

          goto LABEL_515;
        }

        [(CWFAutoJoinContext *)v428 setInclude6GHzChannels:1];
        v530 = associatedNetwork2;
        channel = [MEMORY[0x1E695DEC8] arrayWithObjects:&v530 count:1];
        v134 = [(CWFAutoJoinManager *)v435 __knownNetworksSupportingSeamlessSSIDTransition:channel fromNetwork:associatedNetwork allowSameSSID:1 context:v428];
        v135 = [v134 set];
        [array5 unionSet:v135];
      }

      goto LABEL_169;
    }

    if ([v438 trigger] == 54 || objc_msgSend(v438, "trigger") == 55)
    {
      trigger3 = [v438 trigger];
      if (trigger3 != 54 && [v438 trigger] == 55)
      {
        array3 = [v441 array];
        associatedNetwork3 = [(CWFAutoJoinManager *)v435 associatedNetwork];
        v148 = [(CWFAutoJoinManager *)v435 __knownNetworksSupportingSeamlessSSIDTransition:array3 fromNetwork:associatedNetwork3 allowSameSSID:0 context:v428];
        v149 = [v148 count] == 0;

        if (v149)
        {
          [(CWFAutoJoinContext *)v428 setBSSChannelsOnly:1];
        }
      }

      array4 = [v441 array];
      associatedNetwork4 = [(CWFAutoJoinManager *)v435 associatedNetwork];
      v152 = [(CWFAutoJoinManager *)v435 __knownNetworksSupportingSeamlessSSIDTransition:array4 fromNetwork:associatedNetwork4 allowSameSSID:trigger3 != 54 context:v428];
      v153 = [v152 count] == 0;

      if (v153)
      {
        v374 = MEMORY[0x1E696ABC0];
        v528 = *MEMORY[0x1E696A578];
        v529 = @"Already associated and no seamless SSID transition candidates configured";
        array5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v529 forKeys:&v528 count:1];
        v158 = [v374 errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:array5];

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

      array5 = [v441 array];
      associatedNetwork5 = [(CWFAutoJoinManager *)v435 associatedNetwork];
      v155 = [(CWFAutoJoinManager *)v435 __knownNetworksSupportingSeamlessSSIDTransition:array5 fromNetwork:associatedNetwork5 allowSameSSID:1 context:v428];
      v156 = [v155 set];
      [v441 intersectSet:v156];

      goto LABEL_231;
    }

    if ([v438 trigger] == 68)
    {
      if ([associatedNetwork isPersonalHotspot])
      {
        goto LABEL_232;
      }

      v180 = CWFGetOSLog();
      if (v180)
      {
        array5 = CWFGetOSLog();
      }

      else
      {
        array5 = MEMORY[0x1E69E9C10];
        v377 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(array5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_516;
      }

      LOWORD(v510) = 0;
      LODWORD(v386) = 2;
      v381 = &v510;
    }

    else if ([v438 trigger] == 32 || objc_msgSend(v438, "trigger") == 47 || (objc_msgSend(associatedNetwork, "matchingKnownNetworkProfile"), v181 = objc_claimAutoreleasedReturnValue(), v182 = objc_msgSend(v181, "wasMoreRecentlyJoinedByUser"), v181, !v182))
    {
      if (-[CWFAutoJoinManager __allowOpportunisticNetworkTransitionWithTrigger:](v435, "__allowOpportunisticNetworkTransitionWithTrigger:", [v438 trigger]))
      {
        goto LABEL_232;
      }

      v183 = CWFGetOSLog();
      if (v183)
      {
        array5 = CWFGetOSLog();
      }

      else
      {
        array5 = MEMORY[0x1E69E9C10];
        v378 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(array5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_516;
      }

      v510 = 138543362;
      *v511 = associatedNetwork;
      LODWORD(v386) = 12;
      v381 = &v510;
    }

    else
    {
      v379 = CWFGetOSLog();
      if (v379)
      {
        array5 = CWFGetOSLog();
      }

      else
      {
        array5 = MEMORY[0x1E69E9C10];
        v380 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(array5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_516;
      }

      v510 = 138543362;
      *v511 = associatedNetwork;
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
    knownNetworks = v399;
    goto LABEL_188;
  }

  array5 = [MEMORY[0x1E695DFA8] set];
  associatedNetwork6 = [(CWFAutoJoinManager *)v435 associatedNetwork];
  channel3 = [associatedNetwork6 channel];
  if ([channel3 is6GHz])
  {
LABEL_158:

    goto LABEL_159;
  }

  channel4 = [v397 channel];
  is6GHz2 = [channel4 is6GHz];

  if (!is6GHz2)
  {
    goto LABEL_160;
  }

  array6 = [v441 array];
  matchingKnownNetworkProfile5 = [v397 matchingKnownNetworkProfile];
  associatedNetwork6 = [(CWFAutoJoinManager *)v435 __knownNetworksList:array6 containsMatchingKnownNetwork:matchingKnownNetworkProfile5];

  if (associatedNetwork6)
  {
    [(CWFAutoJoinContext *)v428 setInclude6GHzChannels:1];
    v531 = associatedNetwork6;
    channel3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v531 count:1];
    v124 = [(CWFAutoJoinManager *)v435 __knownNetworksSupportingSeamlessSSIDTransition:channel3 fromNetwork:associatedNetwork allowSameSSID:1 context:v428];
    v125 = [v124 set];
    [array5 unionSet:v125];

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

    matchingKnownNetworkProfile6 = [associatedNetwork matchingKnownNetworkProfile];
    array7 = [v441 array];
    v174 = [(CWFAutoJoinManager *)v435 __morePreferredKnownNetworksWithCandidate:matchingKnownNetworkProfile6 knownNetworks:array7 context:v428];
    v175 = [v174 set];
    [array5 unionSet:v175];

    if ([(CWFAutoJoinManager *)v435 __isDeferrableJoinCandidate:associatedNetwork])
    {
      matchingKnownNetworkProfile7 = [associatedNetwork matchingKnownNetworkProfile];
      wasMoreRecentlyJoinedByUser2 = [matchingKnownNetworkProfile7 wasMoreRecentlyJoinedByUser];

      if ((wasMoreRecentlyJoinedByUser2 & 1) == 0)
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
        [array5 unionSet:v185];
      }
    }
  }

  [v441 intersectSet:{array5, v384, v389}];
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
      *v511 = associatedNetwork;
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
  if ([v441 count] || objc_msgSend(nearbyRecommendedNetworks, "count"))
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
        array5 = [MEMORY[0x1E695DFA0] orderedSet];
        v258 = [v441 set];
        [array5 unionSet:v258];

        v259 = [v398 set];
        [array5 unionSet:v259];

        [v427 setKnownNetworks:array5];
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
            knownNetworks = v399;
            goto LABEL_363;
          }

          v432 = v260;
LABEL_341:
          if (associatedNetwork)
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
        knownNetworks = v399;
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

      array5 = [MEMORY[0x1E695DF70] array];
      recentChannelList = [v160 recentChannelList];
      remainingChannelList = [v160 remainingChannelList];
      v228 = [recentChannelList arrayByAddingObjectsFromArray:remainingChannelList];

      recentChannelList2 = [v160 recentChannelList];
      if ([recentChannelList2 count] >= 2)
      {

        v231 = 2;
      }

      else
      {
        recentChannelList3 = [v160 recentChannelList];
        v231 = [recentChannelList3 count];

        if (!v231)
        {
          goto LABEL_297;
        }
      }

      for (k = 0; k != v231; ++k)
      {
        hiddenNetworkChannels = obj->_hiddenNetworkChannels;
        recentChannelList4 = [v160 recentChannelList];
        v235 = [recentChannelList4 objectAtIndexedSubscript:k];
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
              [array5 addObject:v240];
            }
          }

          v237 = [v236 countByEnumeratingWithState:&v458 objects:v527 count:16];
        }

        while (v237);
      }

      array8 = [MEMORY[0x1E695DF70] array];
      [v160 setRecentChannelList:array8];

      [v160 setRemainingChannelList:array5];
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
        v245 = [array5 count];
        v246 = [array5 componentsJoinedByString:@", "];
        v510 = 134218242;
        *v511 = v245;
        *&v511[8] = 2114;
        v512 = v246;
        LODWORD(v386) = 22;
        v381 = &v510;
        _os_log_send_and_compose_impl();
      }

      if ([array5 count])
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
  if (allowAutoHotspotFallback)
  {
    goto LABEL_354;
  }

  v434 = v170;
  v436 = 0;
  v428 = v439;
  v429 = v432;
  v399 = knownNetworks;
LABEL_365:
  autoHotspotBrowseDuration = [(CWFAutoJoinMetric *)obj->_metric scanDuration:v381]|| [(CWFAutoJoinMetric *)obj->_metric autoHotspotBrowseDuration];
  v276 = obj;
  objc_sync_enter(v276);
  v425 = *(v276 + 257);
  v440 = *(v276 + 258);
  v277 = v276[33];
  if (v277)
  {
    code = [v277 code];
  }

  else
  {
    code = 0;
  }

  reply = [(CWFAutoJoinRequest *)obj->_activeRequest reply];
  v433 = [reply copy];

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
    trigger4 = [v438 trigger];
    if (trigger4 - 44 < 8 || trigger4 <= 0x3F && ((1 << trigger4) & 0xC000000000000010) != 0)
    {
      ++obj->_retryScheduleIndex;
    }
  }

  if ((v276[32] & 1) == 0 && (([v276 __shouldPrioritizeRetryOverNewRequest:{objc_msgSend(v438, "trigger")}] & 1) != 0 || (objc_msgSend(v276, "__nextRequest") & 1) == 0) && (v276[15] & 1) == 0)
  {
    if (!v434 || (v425 & 1) != 0 || (v285 = [v438 trigger], v285 - 44 >= 8) && (v285 > 0x3F || ((1 << v285) & 0xC000000000000010) == 0))
    {
      if (code == 37)
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

  v390 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC538, v385, v390];
  unsignedLongValue3 = [v390 unsignedLongValue];

  v291 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC550];
  unsignedLongValue4 = [v291 unsignedLongValue];

  v293 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC568];
  unsignedLongValue5 = [v293 unsignedLongValue];

  v295 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC580];
  unsignedLongValue6 = [v295 unsignedLongValue];

  v297 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC598];
  unsignedLongValue7 = [v297 unsignedLongValue];

  if (v436 && ([v438 trigger] == 54 || objc_msgSend(v438, "trigger") == 55))
  {
    [v276[36] setObject:0 forKeyedSubscript:&unk_1F5BBC5B0];
  }

  if (autoHotspotBrowseDuration)
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
    if (linkChangeTimestamp < unsignedLongValue || unsignedLongValue2 == unsignedLongValue)
    {
      v306 = CWFGetBootTime();
      v307 = [v306 dateByAddingTimeInterval:unsignedLongValue / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByLinkDownAt:v307];
    }

    if (linkChangeTimestamp < unsignedLongValue3 || unsignedLongValue2 == unsignedLongValue3)
    {
      v308 = CWFGetBootTime();
      v309 = [v308 dateByAddingTimeInterval:unsignedLongValue3 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByFirstUnlockAt:v309];
    }

    if (linkChangeTimestamp < unsignedLongValue4 || unsignedLongValue2 == unsignedLongValue4)
    {
      v310 = CWFGetBootTime();
      v311 = [v310 dateByAddingTimeInterval:unsignedLongValue4 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByDeviceWakeAt:v311];
    }

    if (linkChangeTimestamp < unsignedLongValue5 || unsignedLongValue2 == unsignedLongValue5)
    {
      v312 = CWFGetBootTime();
      v313 = [v312 dateByAddingTimeInterval:unsignedLongValue5 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByWiFiOnAt:v313];
    }

    if (linkChangeTimestamp < unsignedLongValue6 || unsignedLongValue2 == unsignedLongValue6)
    {
      v314 = CWFGetBootTime();
      v315 = [v314 dateByAddingTimeInterval:unsignedLongValue6 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByMotionEndedAt:v315];
    }

    if (linkChangeTimestamp < unsignedLongValue7 || unsignedLongValue2 == unsignedLongValue7)
    {
      v316 = CWFGetBootTime();
      v317 = [v316 dateByAddingTimeInterval:unsignedLongValue7 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByAutoJoinEnabledAt:v317];
    }

    wasAlreadyAssociatedToNetwork = [(CWFAutoJoinMetric *)obj->_metric wasAlreadyAssociatedToNetwork];
    if (!wasAlreadyAssociatedToNetwork)
    {
      wasAlreadyAssociatedToNetwork = [(CWFAutoJoinMetric *)obj->_metric autoJoinedNetwork];
      matchingKnownNetworkProfile8 = [wasAlreadyAssociatedToNetwork matchingKnownNetworkProfile];
      identifier = [matchingKnownNetworkProfile8 identifier];
      if (identifier)
      {
        matchingKnownNetworkProfile9 = [v404 matchingKnownNetworkProfile];
        identifier2 = [matchingKnownNetworkProfile9 identifier];
        if (identifier2)
        {
          autoJoinedNetwork = [(CWFAutoJoinMetric *)obj->_metric autoJoinedNetwork];
          matchingKnownNetworkProfile10 = [autoJoinedNetwork matchingKnownNetworkProfile];
          identifier3 = [matchingKnownNetworkProfile10 identifier];
          matchingKnownNetworkProfile11 = [v404 matchingKnownNetworkProfile];
          identifier4 = [matchingKnownNetworkProfile11 identifier];
          v410 = [identifier3 isEqual:identifier4];

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

          matchingKnownNetworkProfile12 = [*(*(&v447 + 1) + 8 * n) matchingKnownNetworkProfile];
          identifier5 = [matchingKnownNetworkProfile12 identifier];
          [v326 addObject:identifier5];
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
      uUIDString = [v406 UUIDString];
      v437 = [uUIDString substringToIndex:5];
      endedAt = [(CWFAutoJoinMetric *)obj->_metric endedAt];
      [endedAt timeIntervalSinceReferenceDate];
      v344 = v343;
      startedAt = [(CWFAutoJoinMetric *)obj->_metric startedAt];
      [startedAt timeIntervalSinceReferenceDate];
      v347 = v346;
      result = [(CWFAutoJoinMetric *)obj->_metric result];
      error = [(CWFAutoJoinMetric *)obj->_metric error];
      v420 = [v276 __descriptionForError:error];
      scanChannels = [(CWFAutoJoinMetric *)obj->_metric scanChannels];
      v394 = [scanChannels count];
      autoHotspotWasAttempted = [(CWFAutoJoinMetric *)obj->_metric autoHotspotWasAttempted];
      if (autoHotspotWasAttempted)
      {
        autoHotspotEndedAt = [(CWFAutoJoinMetric *)obj->_metric autoHotspotEndedAt];
        [autoHotspotEndedAt timeIntervalSinceReferenceDate];
        v350 = v349;
        autoHotspotStartedAt = [(CWFAutoJoinMetric *)obj->_metric autoHotspotStartedAt];
        [autoHotspotStartedAt timeIntervalSinceReferenceDate];
        v352 = ((v350 - v351) * 1000.0);
      }

      else
      {
        v352 = 0;
      }

      autoHotspotResult = [(CWFAutoJoinMetric *)obj->_metric autoHotspotResult];
      autoHotspotError = [(CWFAutoJoinMetric *)obj->_metric autoHotspotError];
      [v276 __descriptionForError:autoHotspotError];
      obja = startedAt;
      v355 = v393 = uUIDString;
      v510 = 138545666;
      *v511 = v437;
      *&v511[8] = 2048;
      v512 = ((v344 - v347) * 1000.0);
      v513 = 1024;
      *v514 = result;
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
      v521 = autoHotspotResult;
      v522 = 2114;
      v523 = v355;
      _os_log_send_and_compose_impl();

      v160 = v401;
      if (autoHotspotWasAttempted)
      {
      }
    }

    [v276 __updateDisallowedMatchedKnownNetworks];
    allObjects3 = [v276[56] allObjects];
    [v276 __updateDiscoverTimestampForJoinCandidates:allObjects3];

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

    targetQueue = [v276 targetQueue];
    v444[0] = MEMORY[0x1E69E9820];
    v444[1] = 3221225472;
    v444[2] = sub_1E0C785B8;
    v444[3] = &unk_1E86E6BE0;
    v446 = v433;
    v445 = v434;
    dispatch_sync(targetQueue, v444);
  }

  _Block_object_dispose(&v490, 8);

  _Block_object_dispose(&v496, 8);
  _Block_object_dispose(&v502, 8);

  _Block_object_dispose(&v506, 8);
  v362 = *MEMORY[0x1E69E9840];
}

- (void)__sortKnownNetworks:(id)networks
{
  v4 = MEMORY[0x1E695DF70];
  networksCopy = networks;
  array = [v4 array];
  knownNetworkComparator = [(CWFAutoJoinManager *)self knownNetworkComparator];
  if (knownNetworkComparator)
  {
    v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:knownNetworkComparator];
    [array addObject:v7];
  }

  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedAt" ascending:0];
  [array addObject:v8];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedAt" ascending:0];
  [array addObject:v9];
  [networksCopy sortUsingDescriptors:array];
}

- (void)__sortKnownNetworksByJoinTimestamp:(id)timestamp
{
  v3 = MEMORY[0x1E695DF70];
  timestampCopy = timestamp;
  array = [v3 array];
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedByUserAt" ascending:0];
  [array addObject:v5];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedBySystemAt" ascending:0];
  [array addObject:v6];
  [timestampCopy sortUsingDescriptors:array];
}

- (void)__sortAndFilterUserConfiguredNetworks:(id)networks
{
  networksCopy = networks;
  array = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedByUserAt" ascending:0];
  [array addObject:v6];
  knownNetworkComparator = [(CWFAutoJoinManager *)self knownNetworkComparator];
  if (knownNetworkComparator)
  {
    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:knownNetworkComparator];
    [array addObject:v8];
  }

  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedAt" ascending:0];
  [array addObject:v9];
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedAt" ascending:0];
  [array addObject:v10];
  [networksCopy sortUsingDescriptors:array];
  firstObject = [networksCopy firstObject];
  lastJoinedByUserAt = [firstObject lastJoinedByUserAt];

  if (lastJoinedByUserAt)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_1E0C78B34;
    v18 = &unk_1E86E7780;
    v19 = lastJoinedByUserAt;
    v20 = array2;
    v14 = array2;
    [networksCopy enumerateObjectsUsingBlock:&v15];
    [networksCopy removeObjectsInArray:{v14, v15, v16, v17, v18}];
  }
}

- (id)__basicChannelRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    channel = [representationCopy channel];
    band = [representationCopy band];

    v7 = [CWFChannel channelWithNumber:channel band:band width:20];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)__knownNetworksList:(id)list containsMatchingKnownNetwork:(id)network
{
  v34 = *MEMORY[0x1E69E9840];
  listCopy = list;
  networkCopy = network;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = listCopy;
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
      identifier = [networkCopy identifier];
      identifier2 = [v11 identifier];
      v14 = identifier2;
      if (identifier == identifier2)
      {

LABEL_17:
        v23 = v11;
        goto LABEL_18;
      }

      identifier3 = [networkCopy identifier];
      if (identifier3)
      {
        v16 = identifier3;
        identifier4 = [v11 identifier];
        if (identifier4)
        {
          v18 = identifier4;
          [networkCopy identifier];
          v19 = networkCopy;
          v21 = v20 = v9;
          identifier5 = [v11 identifier];
          v28 = [v21 isEqual:identifier5];

          v9 = v20;
          networkCopy = v19;
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

- (BOOL)__didRecentlyJoinAny6GHzOnlyNetworks:(id)networks
{
  v68 = *MEMORY[0x1E69E9840];
  networksCopy = networks;
  location = [(CWFAutoJoinManager *)self location];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = v6;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v8 = networksCopy;
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
          lastJoinedOnAnyDeviceAt = [v13 lastJoinedOnAnyDeviceAt];
          [lastJoinedOnAnyDeviceAt timeIntervalSinceReferenceDate];
          v16 = v7 - v15;

          if (v16 <= 2592000.0)
          {
            if (!location)
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
            bSSList = [v13 BSSList];
            v18 = [bSSList countByEnumeratingWithState:&v54 objects:v66 count:16];
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
                identifier = [v13 identifier];
                redactedForWiFi = [identifier redactedForWiFi];
                v62 = 138543362;
                v63 = redactedForWiFi;
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
                  objc_enumerationMutation(bSSList);
                }

                v23 = *(*(&v54 + 1) + 8 * i);
                lastAssociatedAt = [v23 lastAssociatedAt];
                [lastAssociatedAt timeIntervalSinceReferenceDate];
                v26 = v7 - v25;

                if (v26 <= 2592000.0)
                {
                  location2 = [v23 location];
                  if (!location2)
                  {
                    goto LABEL_32;
                  }

                  v28 = location2;
                  [location2 distanceFromLocation:location];
                  v30 = v29;
                  [v28 horizontalAccuracy];
                  v32 = v30 - v31;
                  [location horizontalAccuracy];
                  v34 = v32 - v33;

                  if (v34 <= 3000.0)
                  {
                    goto LABEL_32;
                  }

                  v20 = 1;
                }
              }

              v19 = [bSSList countByEnumeratingWithState:&v54 objects:v66 count:16];
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
              identifier2 = [v13 identifier];
              redactedForWiFi2 = [identifier2 redactedForWiFi];
              v62 = 138543618;
              v63 = redactedForWiFi2;
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

- (void)__prepareKnownNetworksContext:(id)context
{
  v373[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  [(CWFAutoJoinManager *)self __updateAutoJoinState:1];
  v316 = contextCopy;
  knownNetworks = [contextCopy knownNetworks];
  v6 = [knownNetworks mutableCopy];

  if ([v316 preferUserConfiguredNetworks])
  {
    [(CWFAutoJoinManager *)selfCopy __sortAndFilterUserConfiguredNetworks:v6];
  }

  else
  {
    [(CWFAutoJoinManager *)selfCopy __sortKnownNetworks:v6];
  }

  v274 = v6;
  [v316 setKnownNetworks:v6];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet3 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet4 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet5 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet6 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet7 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet8 = [MEMORY[0x1E695DFA0] orderedSet];
  v275 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:1];
  supportedChannels = [(CWFAutoJoinManager *)selfCopy supportedChannels];
  v373[0] = v275;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v373 count:1];
  v9 = [supportedChannels sortedArrayUsingDescriptors:v8];

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
      autoJoinParameters = [v316 autoJoinParameters];
      if ([autoJoinParameters trigger] == 54)
      {

LABEL_12:
        if (![v13 is5GHz])
        {
          continue;
        }

        goto LABEL_13;
      }

      autoJoinParameters2 = [v316 autoJoinParameters];
      v16 = [autoJoinParameters2 trigger] == 55;

      if (v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v17 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v13];
      [orderedSet8 addObject:v17];
      if ([v13 is2GHz])
      {
        channel = [v13 channel];
        v19 = orderedSet;
        if (channel != 1)
        {
          channel2 = [v13 channel];
          v19 = orderedSet;
          if (channel2 != 6)
          {
            if ([v13 channel] == 11)
            {
              v19 = orderedSet;
            }

            else
            {
              v19 = orderedSet2;
            }
          }
        }
      }

      else if ([v13 is5GHz])
      {
        if ([v13 isDFS])
        {
          v19 = orderedSet4;
        }

        else
        {
          v19 = orderedSet3;
        }
      }

      else
      {
        is6GHz = [v13 is6GHz];
        v19 = orderedSet7;
        if (is6GHz)
        {
          if ([v13 is6GHzPSC])
          {
            v19 = orderedSet5;
          }

          else
          {
            v19 = orderedSet6;
          }
        }
      }

      [v19 addObject:v17];
    }

    v10 = [obj countByEnumeratingWithState:&v341 objects:v372 count:16];
  }

  while (v10);
LABEL_30:

  orderedSet9 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet10 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet11 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet12 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet13 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet14 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet15 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet16 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet17 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet18 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet19 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet20 = [MEMORY[0x1E695DFA0] orderedSet];
  v271 = [MEMORY[0x1E695DFA8] set];
  location = [(CWFAutoJoinManager *)selfCopy location];
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
    maxBSSChannelAge = [v316 maxBSSChannelAge];
    [v316 minBSSLocationAccuracy];
    v27 = v26;
    [v316 maxBSSLocationDistance];
    v29 = v28;
    maxBSSChannelCount = [v316 maxBSSChannelCount];
    maxHiddenKnownNetworkSSIDAge = [v316 maxHiddenKnownNetworkSSIDAge];
    v32 = [location description];
    redactedSensitiveContentForWiFi = [v32 redactedSensitiveContentForWiFi];
    autoJoinParameters3 = [v316 autoJoinParameters];
    preferredChannels = [autoJoinParameters3 preferredChannels];
    v345 = 134219522;
    v346 = maxBSSChannelAge;
    v347 = 2048;
    v348 = v27;
    v349 = 2048;
    v350 = v29;
    v351 = 2048;
    v352 = maxBSSChannelCount;
    v353 = 2048;
    v354 = maxHiddenKnownNetworkSSIDAge;
    v355 = 2114;
    v356 = redactedSensitiveContentForWiFi;
    v357 = 2114;
    v358 = preferredChannels;
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
  autoJoinParameters4 = [v316 autoJoinParameters];
  preferredChannels2 = [autoJoinParameters4 preferredChannels];

  v40 = [preferredChannels2 countByEnumeratingWithState:&v337 objects:v371 count:16];
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
          objc_enumerationMutation(preferredChannels2);
        }

        v260 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:*(*(&v337 + 1) + 8 * j), v256, v260];
        if ([orderedSet8 containsObject:v260])
        {
          [orderedSet9 addObject:v260];
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
            v346 = v260;
            LODWORD(v260) = 12;
            v256 = &v345;
            _os_log_send_and_compose_impl();
          }
        }
      }

      v40 = [preferredChannels2 countByEnumeratingWithState:&v337 objects:v371 count:16];
    }

    while (v40);
  }

  array = [orderedSet9 array];
  [orderedSet10 addObjectsFromArray:array];

  array2 = [v274 array];
  v50 = [array2 copy];

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
      orderedSet21 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet22 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet23 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet24 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet25 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet26 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet27 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet28 = [MEMORY[0x1E695DFA0] orderedSet];
      bSSList = [v313 BSSList];
      v283 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastAssociatedAt" ascending:0];
      v369 = v283;
      v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v369 count:1];
      v52 = [bSSList sortedArrayUsingDescriptors:v51];

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
            location2 = [v314 location];
            if (location2)
            {
              v53 = location != 0;
            }

            else
            {
              v53 = 0;
            }

            if (!v53)
            {
              goto LABEL_69;
            }

            [location horizontalAccuracy];
            if (v54 < 0.0)
            {
              goto LABEL_69;
            }

            [location horizontalAccuracy];
            v56 = v55;
            [v316 minBSSLocationAccuracy];
            if (v56 > v57)
            {
              goto LABEL_69;
            }

            [location2 horizontalAccuracy];
            if (v58 >= 0.0 && ([location2 horizontalAccuracy], v60 = v59, objc_msgSend(v316, "minBSSLocationAccuracy"), v60 <= v61) && (objc_msgSend(location2, "distanceFromLocation:", location), v63 = v62, objc_msgSend(v316, "maxBSSLocationDistance"), v63 <= v64))
            {
              v65 = 1;
              v286 = 1;
            }

            else
            {
LABEL_69:
              v65 = 0;
            }

            channel3 = [v314 channel];
            v311 = [channel3 copy];

            if (v311)
            {
              array3 = [MEMORY[0x1E695DF70] array];
              v307 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v311];
              if ([v307 is6GHz])
              {
                colocated2GHzRNRChannel = [v314 colocated2GHzRNRChannel];
                if (colocated2GHzRNRChannel)
                {
                  v69 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:colocated2GHzRNRChannel];
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
                    identifier = [v313 identifier];
                    redactedForWiFi = [identifier redactedForWiFi];
                    v345 = 138543874;
                    v346 = v69;
                    v347 = 2114;
                    v348 = v307;
                    v349 = 2114;
                    v350 = redactedForWiFi;
                    LODWORD(v261) = 32;
                    v257 = &v345;
                    _os_log_send_and_compose_impl();
                  }

                  [array3 addObject:v69];
                }

                colocated5GHzRNRChannel = [v314 colocated5GHzRNRChannel];
                if (colocated5GHzRNRChannel)
                {
                  v76 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:colocated5GHzRNRChannel];
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
                    identifier2 = [v313 identifier];
                    redactedForWiFi2 = [identifier2 redactedForWiFi];
                    v345 = 138543874;
                    v346 = v76;
                    v347 = 2114;
                    v348 = v307;
                    v349 = 2114;
                    v350 = redactedForWiFi2;
                    LODWORD(v261) = 32;
                    v257 = &v345;
                    _os_log_send_and_compose_impl();
                  }

                  [array3 addObject:v76];
                }
              }

              [array3 addObject:{v307, v257, v261}];
              v327 = 0u;
              v328 = 0u;
              v325 = 0u;
              v326 = 0u;
              v82 = array3;
              v83 = [v82 countByEnumeratingWithState:&v325 objects:v367 count:16];
              if (v83)
              {
                v84 = *v326;
                if (v65)
                {
                  v85 = orderedSet24;
                }

                else
                {
                  v85 = orderedSet28;
                }

                if (v65)
                {
                  v86 = orderedSet21;
                }

                else
                {
                  v86 = orderedSet25;
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
                    if ([orderedSet8 containsObject:{v88, v257, v261}])
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
                          identifier3 = [v313 identifier];
                          redactedForWiFi3 = [identifier3 redactedForWiFi];
                          v345 = 138543618;
                          v346 = v88;
                          v347 = 2114;
                          v348 = redactedForWiFi3;
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
                        identifier4 = [v313 identifier];
                        redactedForWiFi4 = [identifier4 redactedForWiFi];
                        v345 = 138543618;
                        v346 = redactedForWiFi4;
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
      v108 = orderedSet21;
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
              v115 = orderedSet23;
            }

            else
            {
              v115 = orderedSet22;
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
      v116 = orderedSet25;
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
              v122 = orderedSet27;
            }

            else
            {
              v122 = orderedSet26;
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

      array4 = [orderedSet22 array];
      [orderedSet15 addObjectsFromArray:array4];

      array5 = [orderedSet23 array];
      [orderedSet16 addObjectsFromArray:array5];

      array6 = [orderedSet24 array];
      [orderedSet17 addObjectsFromArray:array6];

      array7 = [orderedSet26 array];
      [orderedSet12 addObjectsFromArray:array7];

      array8 = [orderedSet27 array];
      [orderedSet13 addObjectsFromArray:array8];

      array9 = [orderedSet28 array];
      [orderedSet14 addObjectsFromArray:array9];

      networkName = [v313 networkName];
      if (networkName && ([v313 isPasspoint] & 1) == 0)
      {
        if ([v313 hiddenState] == 2)
        {
          wasHiddenBefore = [v313 wasHiddenBefore];
          if (!wasHiddenBefore)
          {
            goto LABEL_159;
          }

          wasHiddenBefore2 = [v313 wasHiddenBefore];
          [wasHiddenBefore2 timeIntervalSinceNow];
          v150 = v149 >= 0.0;
          wasHiddenBefore3 = [v313 wasHiddenBefore];
          [wasHiddenBefore3 timeIntervalSinceNow];
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
          lastJoinedAt = [v313 lastJoinedAt];
          [lastJoinedAt timeIntervalSinceReferenceDate];
          v156 = v155;
          if (v37 - v155 <= [v316 maxHiddenKnownNetworkSSIDAge])
          {
          }

          else
          {
            lastDiscoveredAt = [v313 lastDiscoveredAt];
            [lastDiscoveredAt timeIntervalSinceReferenceDate];
            v159 = v37 - v158 > [v316 maxHiddenKnownNetworkSSIDAge];

            if (v159)
            {
              goto LABEL_159;
            }
          }
        }

        if (v286)
        {
          v160 = orderedSet20;
        }

        else
        {
          v160 = orderedSet19;
        }

        [v160 addObject:networkName];
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
        domainName = [v313 domainName];

        if (domainName)
        {
          [v131 addObject:&unk_1F5BBC5E0];
        }

        nAIRealmNameList = [v313 NAIRealmNameList];
        v134 = [nAIRealmNameList count];

        if (v134)
        {
          [v131 addObject:&unk_1F5BBC5F8];
        }

        roamingConsortiumList = [v313 roamingConsortiumList];
        v136 = [roamingConsortiumList count];

        if (v136)
        {
          [v131 addObject:&unk_1F5BBC610];
        }

        cellularNetworkInfo = [v313 cellularNetworkInfo];
        v138 = [cellularNetworkInfo count];

        if (v138)
        {
          [v131 addObject:&unk_1F5BBC628];
        }

        [v131 addObject:&unk_1F5BBC640];
        allObjects = [v131 allObjects];
        [v271 addObjectsFromArray:allObjects];
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
        identifier5 = [v313 identifier];
        redactedForWiFi5 = [identifier5 redactedForWiFi];
        v145 = redactedForWiFi5;
        v345 = 138545666;
        v146 = "no";
        if (v286)
        {
          v146 = "yes";
        }

        v346 = redactedForWiFi5;
        v347 = 2082;
        v348 = v146;
        v349 = 2082;
        v350 = v130;
        v351 = 2114;
        v352 = orderedSet22;
        v353 = 2114;
        v354 = orderedSet23;
        v355 = 2114;
        v356 = orderedSet24;
        v357 = 2114;
        v358 = orderedSet26;
        v359 = 2114;
        v360 = orderedSet27;
        v361 = 2114;
        v362 = orderedSet28;
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

  if ([orderedSet15 count] || objc_msgSend(orderedSet16, "count") || objc_msgSend(orderedSet17, "count"))
  {
    [(CWFAutoJoinMetric *)selfCopy->_metric setDidUseLocationOptimizedChannelList:1, v256, v260];
  }

  v163 = selfCopy;
  objc_sync_enter(v163);
  parameters = [v163[19] parameters];
  mode = [parameters mode];

  objc_sync_exit(v163);
  LODWORD(parameters) = [v316 BSSChannelsOnly];
  array10 = [orderedSet15 array];
  [orderedSet10 addObjectsFromArray:array10];

  if (!parameters)
  {
    array11 = [orderedSet16 array];
    [orderedSet10 addObjectsFromArray:array11];

    array12 = [orderedSet17 array];
    [orderedSet10 addObjectsFromArray:array12];

    array13 = [orderedSet12 array];
    [orderedSet10 addObjectsFromArray:array13];

    array14 = [orderedSet13 array];
    [orderedSet10 addObjectsFromArray:array14];

    array15 = [orderedSet14 array];
    [orderedSet10 addObjectsFromArray:array15];
    goto LABEL_208;
  }

  array16 = [orderedSet12 array];
  [orderedSet10 addObjectsFromArray:array16];

  if (![orderedSet10 count])
  {
    array15 = [MEMORY[0x1E695DFA0] orderedSet];
    array17 = [orderedSet17 array];
    [array15 addObjectsFromArray:array17];

    array18 = [orderedSet14 array];
    [array15 addObjectsFromArray:array18];

    v168Array = [array15 array];
    v172 = [array15 count];
    if (v172 >= [v316 maxBSSChannelCount])
    {
      maxBSSChannelCount2 = [v316 maxBSSChannelCount];
    }

    else
    {
      maxBSSChannelCount2 = [array15 count];
    }

    v178 = [v168Array subarrayWithRange:{0, maxBSSChannelCount2, v256, v260}];
    [orderedSet10 addObjectsFromArray:v178];

LABEL_208:
  }

  if (([v316 BSSChannelsOnly] & 1) == 0)
  {
    array19 = [orderedSet array];
    [orderedSet11 addObjectsFromArray:array19];

    array20 = [orderedSet2 array];
    [orderedSet11 addObjectsFromArray:array20];

    array21 = [orderedSet3 array];
    [orderedSet11 addObjectsFromArray:array21];

    array22 = [orderedSet4 array];
    [orderedSet11 addObjectsFromArray:array22];

    if ([v316 include6GHzChannels])
    {
      if (_os_feature_enabled_impl())
      {
        array23 = [orderedSet5 array];
        [orderedSet11 addObjectsFromArray:array23];

        if (_os_feature_enabled_impl())
        {
          array24 = [orderedSet6 array];
          [orderedSet11 addObjectsFromArray:array24];
        }
      }
    }

    array25 = [orderedSet7 array];
    [orderedSet11 addObjectsFromArray:array25];

    [orderedSet11 minusOrderedSet:orderedSet10];
  }

  array26 = [orderedSet20 array];
  [orderedSet18 addObjectsFromArray:array26];

  array27 = [orderedSet19 array];
  [orderedSet18 addObjectsFromArray:array27];

  if (mode == 1 && v162)
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

  array28 = [orderedSet10 array];
  v192 = [array28 copy];
  [v316 setRecentChannelList:v192];

  array29 = [orderedSet11 array];
  v194 = [array29 copy];
  [v316 setRemainingChannelList:v194];

  autoJoinParameters5 = [v316 autoJoinParameters];
  if ([autoJoinParameters5 trigger] != 32)
  {
    autoJoinParameters6 = [v316 autoJoinParameters];
    if ([autoJoinParameters6 trigger] == 47)
    {
      bSSChannelsOnly = [v316 BSSChannelsOnly];

      if ((bSSChannelsOnly & 1) == 0)
      {
        goto LABEL_265;
      }

      goto LABEL_227;
    }

    goto LABEL_263;
  }

  bSSChannelsOnly2 = [v316 BSSChannelsOnly];

  if (!bSSChannelsOnly2)
  {
    goto LABEL_265;
  }

LABEL_227:
  v199 = [orderedSet9 count];
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
    autoJoinParameters5 = [orderedSet9 firstObject];
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
      channel4 = [autoJoinParameters5 channel];
      v345 = 134217984;
      v346 = channel4;
      LODWORD(v263) = 12;
      v259 = &v345;
      _os_log_send_and_compose_impl();
    }

    if ([autoJoinParameters5 band] == 2)
    {
      if (![v316 includeAdjacent5GHzChannel])
      {
        goto LABEL_262;
      }

      channel5 = [autoJoinParameters5 channel];
      v208 = 4;
      if (channel5 > 148)
      {
        if (channel5 > 156)
        {
          if (channel5 != 157)
          {
            if (channel5 != 161)
            {
              goto LABEL_262;
            }

            goto LABEL_254;
          }

LABEL_255:
          v209 = [autoJoinParameters5 channel] + v208;
          if (v209)
          {
            v210 = [autoJoinParameters5 copy];
            [v210 setChannel:v209];
            [orderedSet9 addObject:v210];
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
          if (channel5 == 149)
          {
            goto LABEL_255;
          }

          if (channel5 == 153)
          {
            goto LABEL_254;
          }
        }
      }

      else
      {
        if (channel5 <= 43)
        {
          if (channel5 != 36)
          {
            if (channel5 != 40)
            {
              goto LABEL_262;
            }

LABEL_254:
            v208 = -4;
          }

          goto LABEL_255;
        }

        if (channel5 == 44)
        {
          goto LABEL_255;
        }

        if (channel5 == 48)
        {
          goto LABEL_254;
        }
      }

LABEL_262:
      autoJoinParameters6 = [orderedSet9 array];
      v214 = [autoJoinParameters6 copy];
      [v316 setRecentChannelList:v214];

LABEL_263:
    }
  }

LABEL_265:
  if (([v316 passiveScan] & 1) == 0)
  {
    if ([orderedSet18 count])
    {
      array30 = [orderedSet18 array];
      [v316 setSSIDList:array30];
    }

    else
    {
      [v316 setSSIDList:0];
    }
  }

  if ([v271 count])
  {
    allObjects2 = [v271 allObjects];
    [v316 setANQPElementIDList:allObjects2];
  }

  else
  {
    [v316 setANQPElementIDList:0];
  }

  channelList = [v163[25] channelList];
  v218 = channelList == 0;

  if (v218)
  {
    array31 = [orderedSet9 array];
    v221 = v163[25];
    v220 = v163 + 25;
    [v221 setPreferredChannelList:array31];

    recentChannelList = [v316 recentChannelList];
    [*v220 setRecentChannelList:recentChannelList];

    remainingChannelList = [v316 remainingChannelList];
    [*v220 setRemainingChannelList:remainingChannelList];

    recentChannelList2 = [v316 recentChannelList];
    remainingChannelList2 = [v316 remainingChannelList];
    v226 = [recentChannelList2 arrayByAddingObjectsFromArray:remainingChannelList2];
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
    sSIDList = [v316 SSIDList];
    v231 = [sSIDList count];
    sSIDList2 = [v316 SSIDList];
    v233 = [sSIDList2 componentsJoinedByString:{@", "}];
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
    aNQPElementIDList = [v316 ANQPElementIDList];
    v238 = [aNQPElementIDList count];
    aNQPElementIDList2 = [v316 ANQPElementIDList];
    v240 = [aNQPElementIDList2 componentsJoinedByString:{@", "}];
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
    recentChannelList3 = [v316 recentChannelList];
    v245 = [recentChannelList3 count];
    recentChannelList4 = [v316 recentChannelList];
    v247 = [recentChannelList4 componentsJoinedByString:{@", "}];
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
    remainingChannelList3 = [v316 remainingChannelList];
    v252 = [remainingChannelList3 count];
    remainingChannelList4 = [v316 remainingChannelList];
    v254 = [remainingChannelList4 componentsJoinedByString:{@", "}];
    v345 = 134218242;
    v346 = v252;
    v347 = 2114;
    v348 = v254;
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(context);
  v255 = *MEMORY[0x1E69E9840];
}

- (id)__cachedScanResultsWithChannelList:(id)list context:(id)context
{
  contextCopy = context;
  listCopy = list;
  LOWORD(v19) = 0;
  v8 = -[CWFAutoJoinManager __performScanWithChannelList:SSIDList:passive:dwellTime:maxCacheAge:cacheOnly:isPreAssociationScan:checkForKnownNetworks:error:](self, "__performScanWithChannelList:SSIDList:passive:dwellTime:maxCacheAge:cacheOnly:isPreAssociationScan:checkForKnownNetworks:error:", listCopy, 0, 0, 0, [contextCopy maxScanCacheAge], 1, v19, 0);

  if ([v8 count])
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    aNQPElementIDList = [contextCopy ANQPElementIDList];
    v11 = [aNQPElementIDList count];

    if (v11)
    {
      v12 = [(CWFAutoJoinManager *)self __passpointScanResults:v8];
      if ([v12 count])
      {
        aNQPElementIDList2 = [contextCopy ANQPElementIDList];
        maxANQPCacheAge = [contextCopy maxANQPCacheAge];
        autoJoinParameters = [contextCopy autoJoinParameters];
        v16 = -[CWFAutoJoinManager __performGASQueryWithScanResults:ANQPElementIDList:maxCacheAge:cacheOnly:error:](self, "__performGASQueryWithScanResults:ANQPElementIDList:maxCacheAge:cacheOnly:error:", v12, aNQPElementIDList2, maxANQPCacheAge, [autoJoinParameters mode] == 3, 0);

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

  allObjects = [v9 allObjects];

  return allObjects;
}

- (BOOL)__hasJoinedAnyKnownNetworkSinceBoot
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_hasJoinedAnyKnownNetworkSinceBoot)
  {
    hasJoinedAnyKnownNetworkSinceBoot = 1;
  }

  else
  {
    v4 = CWFGetBootTime();
    knownNetworks = selfCopy->_knownNetworks;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E0C7BD14;
    v8[3] = &unk_1E86E77A8;
    v6 = v4;
    v9 = v6;
    v10 = selfCopy;
    [(NSSet *)knownNetworks enumerateObjectsUsingBlock:v8];

    hasJoinedAnyKnownNetworkSinceBoot = selfCopy->_hasJoinedAnyKnownNetworkSinceBoot;
  }

  objc_sync_exit(selfCopy);

  return hasJoinedAnyKnownNetworkSinceBoot & 1;
}

- (id)__performPreAssociationScanWithContext:(id)context network:(id)network
{
  v248[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  networkCopy = network;
  matchingKnownNetworkProfile = [networkCopy matchingKnownNetworkProfile];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:1];
  selfCopy = self;
  supportedChannels = [(CWFAutoJoinManager *)self supportedChannels];
  v182 = v8;
  v248[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v248 count:1];
  v11 = [supportedChannels sortedArrayUsingDescriptors:v10];

  orderedSet3 = [MEMORY[0x1E695DFA0] orderedSet];
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
        v17 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v16];
        [orderedSet addObject:v17];
        if ([v16 is6GHzPSC])
        {
          [orderedSet3 addObject:v17];
        }

        if (([v16 is6GHz] & 1) == 0)
        {
          [orderedSet2 addObject:v17];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v220 objects:v247 count:16];
    }

    while (v13);
  }

  orderedSet4 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet5 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet6 = [MEMORY[0x1E695DFA0] orderedSet];
  v18 = [MEMORY[0x1E695DFA8] set];
  location = [(CWFAutoJoinManager *)selfCopy location];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v21 = v20;
  channel = [networkCopy channel];
  v23 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:channel];

  scanChannels = [(CWFAutoJoinMetric *)selfCopy->_metric scanChannels];
  [v18 addObjectsFromArray:scanChannels];

  preAssociationScanChannels = [(CWFAutoJoinMetric *)selfCopy->_metric preAssociationScanChannels];
  [v18 addObjectsFromArray:preAssociationScanChannels];

  followup6GHzScanChannels = [(CWFAutoJoinMetric *)selfCopy->_metric followup6GHzScanChannels];
  v185 = v18;
  [v18 addObjectsFromArray:followup6GHzScanChannels];

  v27 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - selfCopy->_beginTimestamp) / 0xF4240;
  v198 = contextCopy;
  v199 = location;
  v183 = v23;
  v179 = v27;
  if (v23 && [networkCopy age] > v27 && (objc_msgSend(v18, "containsObject:", v23) & 1) == 0)
  {
    v102 = MEMORY[0x1E696AEC0];
    shortSSID = [networkCopy shortSSID];
    bSSID = [networkCopy BSSID];
    channel2 = [networkCopy channel];
    v106 = [v102 stringWithFormat:@"%lu/%@/%lu", shortSSID, bSSID, objc_msgSend(channel2, "channel")];

    v107 = [(NSMutableDictionary *)selfCopy->_followup6GHzRNRMap objectForKeyedSubscript:v106];
    v108 = [(NSMutableDictionary *)selfCopy->_followup6GHzFILSDMap objectForKeyedSubscript:v106];
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
        identifier = [matchingKnownNetworkProfile identifier];
        redactedForWiFi = [identifier redactedForWiFi];
        v169 = [networkCopy age];
        v224 = 138544130;
        v225 = v183;
        v226 = 2114;
        v227 = redactedForWiFi;
        v228 = 2048;
        v229 = v169;
        v230 = 2048;
        v231 = v179;
        LODWORD(v175) = 42;
        v170 = &v224;
        _os_log_send_and_compose_impl();
      }

      [orderedSet4 addObject:v183];
      location = v199;
    }

    v184 = 0;
    contextCopy = v198;
  }

  else
  {
    v184 = [MEMORY[0x1E695DFA0] orderedSetWithObject:networkCopy];
  }

  bSSList = [matchingKnownNetworkProfile BSSList];
  v180 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastAssociatedAt" ascending:0];
  v246 = v180;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v246 count:1];
  v181 = bSSList;
  v30 = [bSSList sortedArrayUsingDescriptors:v29];

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
    v31 = orderedSet;
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
        if (![contextCopy maxBSSChannelAge] || (objc_msgSend(v33, "lastAssociatedAt"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "timeIntervalSinceReferenceDate"), v36 = v21 - v35, v37 = objc_msgSend(contextCopy, "maxBSSChannelAge"), v34, v36 <= v37))
        {
          if ([contextCopy maxBSSChannelCount] && v209 >= objc_msgSend(contextCopy, "maxBSSChannelCount"))
          {
            goto LABEL_93;
          }

          location2 = [v33 location];
          v39 = 0;
          v205 = location2;
          if (location && location2)
          {
            [location horizontalAccuracy];
            if (v40 < 0.0)
            {
              goto LABEL_32;
            }

            [location horizontalAccuracy];
            v42 = v41;
            [contextCopy minBSSLocationAccuracy];
            if (v42 > v43)
            {
              goto LABEL_32;
            }

            [v205 horizontalAccuracy];
            if (v44 >= 0.0 && ([v205 horizontalAccuracy], v46 = v45, objc_msgSend(contextCopy, "minBSSLocationAccuracy"), v46 <= v47) && (objc_msgSend(v205, "distanceFromLocation:", location), v49 = v48, objc_msgSend(contextCopy, "maxBSSLocationDistance"), v49 <= v50))
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

          channel3 = [v33 channel];
          v52 = [channel3 copy];

          v204 = v52;
          if (v52)
          {
            array = [MEMORY[0x1E695DF70] array];
            v54 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v52];
            v55 = v54;
            if ([v54 is6GHz])
            {
              colocated2GHzRNRChannel = [v33 colocated2GHzRNRChannel];
              v202 = colocated2GHzRNRChannel;
              if (colocated2GHzRNRChannel)
              {
                v191 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:colocated2GHzRNRChannel];
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
                  identifier2 = [matchingKnownNetworkProfile identifier];
                  redactedForWiFi2 = [identifier2 redactedForWiFi];
                  v224 = 138543874;
                  v225 = v191;
                  v226 = 2114;
                  v227 = v55;
                  v228 = 2114;
                  v229 = redactedForWiFi2;
                  LODWORD(v176) = 32;
                  v171 = &v224;
                  _os_log_send_and_compose_impl();

                  v54 = v55;
                }

                [array addObject:v191];
                colocated2GHzRNRChannel = v202;
              }

              colocated5GHzRNRChannel = [v33 colocated5GHzRNRChannel];
              if (colocated5GHzRNRChannel)
              {
                v192 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:colocated5GHzRNRChannel];
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
                  identifier3 = [matchingKnownNetworkProfile identifier];
                  redactedForWiFi3 = [identifier3 redactedForWiFi];
                  v224 = 138543874;
                  v225 = v192;
                  v226 = 2114;
                  v227 = v55;
                  v228 = 2114;
                  v229 = redactedForWiFi3;
                  LODWORD(v176) = 32;
                  v171 = &v224;
                  _os_log_send_and_compose_impl();

                  v54 = v55;
                }

                [array addObject:v192];
                colocated2GHzRNRChannel = v202;
              }
            }

            else
            {
              [array addObject:v54];
            }

            v203 = v32;
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v68 = array;
            v69 = [v68 countByEnumeratingWithState:&v212 objects:v244 count:16];
            if (v69)
            {
              v70 = v69;
              v71 = *v213;
              v72 = orderedSet5;
              if (v39)
              {
                v72 = orderedSet6;
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
                      identifier4 = [matchingKnownNetworkProfile identifier];
                      [identifier4 redactedForWiFi];
                      v82 = v81 = matchingKnownNetworkProfile;
                      v224 = 138543618;
                      v225 = v82;
                      v226 = 2114;
                      v227 = v74;
                      LODWORD(v176) = 22;
                      v171 = &v224;
                      _os_log_send_and_compose_impl();

                      matchingKnownNetworkProfile = v81;
                      v31 = orderedSet;
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
                      identifier5 = [matchingKnownNetworkProfile identifier];
                      redactedForWiFi4 = [identifier5 redactedForWiFi];
                      v224 = 138543618;
                      v225 = redactedForWiFi4;
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

                  scanChannels2 = [(CWFAutoJoinMetric *)selfCopy->_metric scanChannels];
                  v76 = [scanChannels2 containsObject:v74];

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

            contextCopy = v198;
            location = v199;
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
  v31 = orderedSet;
LABEL_93:

  array2 = [orderedSet6 array];
  [orderedSet4 addObjectsFromArray:array2];

  array3 = [orderedSet5 array];
  [orderedSet4 addObjectsFromArray:array3];

  networkName = [matchingKnownNetworkProfile networkName];
  if (!networkName || ([matchingKnownNetworkProfile isPasspoint] & 1) != 0)
  {
    goto LABEL_95;
  }

  if ([matchingKnownNetworkProfile hiddenState] == 2)
  {
    wasHiddenBefore = [matchingKnownNetworkProfile wasHiddenBefore];
    if (!wasHiddenBefore)
    {
      goto LABEL_95;
    }

    v95 = wasHiddenBefore;
    wasHiddenBefore2 = [matchingKnownNetworkProfile wasHiddenBefore];
    [wasHiddenBefore2 timeIntervalSinceNow];
    v98 = v97;
    wasHiddenBefore3 = [matchingKnownNetworkProfile wasHiddenBefore];
    [wasHiddenBefore3 timeIntervalSinceNow];
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
  v93 = [MEMORY[0x1E695DEC8] arrayWithObject:{networkName, v171}];
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
    identifier6 = [matchingKnownNetworkProfile identifier];
    redactedForWiFi5 = [identifier6 redactedForWiFi];
    v115 = "no";
    v210 = networkName;
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
    maxBSSChannelAge = [contextCopy maxBSSChannelAge];
    [contextCopy minBSSLocationAccuracy];
    v120 = v119;
    [contextCopy maxBSSLocationDistance];
    v122 = v121;
    maxBSSChannelCount = [contextCopy maxBSSChannelCount];
    v124 = [location description];
    [v124 redactedSensitiveContentForWiFi];
    v126 = v125 = matchingKnownNetworkProfile;
    v224 = 138545666;
    v225 = redactedForWiFi5;
    v226 = 2082;
    v227 = v116;
    v31 = orderedSet;
    v228 = 2082;
    v229 = v115;
    v230 = 2114;
    v231 = orderedSet6;
    v232 = 2114;
    v233 = orderedSet5;
    v234 = 2048;
    v235 = maxBSSChannelAge;
    v93 = v117;
    v236 = 2048;
    v237 = v120;
    v238 = 2048;
    v239 = v122;
    v240 = 2048;
    v241 = maxBSSChannelCount;
    contextCopy = v198;
    v242 = 2114;
    v243 = v126;
    LODWORD(v176) = 102;
    v171 = &v224;
    _os_log_send_and_compose_impl();

    matchingKnownNetworkProfile = v125;
    networkName = v210;

    location = v199;
  }

  autoJoinParameters = [contextCopy autoJoinParameters];
  mode = [autoJoinParameters mode];

  if (mode == 2)
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

    array4 = [orderedSet3 array];
    [orderedSet4 addObjectsFromArray:array4];
  }

  v133 = networkCopy;
  matchingKnownNetworkProfile2 = [networkCopy matchingKnownNetworkProfile];
  lastJoinedBySystemAt = [matchingKnownNetworkProfile2 lastJoinedBySystemAt];
  if (lastJoinedBySystemAt)
  {
  }

  else
  {
    matchingKnownNetworkProfile3 = [networkCopy matchingKnownNetworkProfile];
    addReason = [matchingKnownNetworkProfile3 addReason];

    v133 = networkCopy;
    if (addReason != 8)
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

    matchingKnownNetworkProfile2 = [orderedSet2 array];
    [orderedSet4 addObjectsFromArray:matchingKnownNetworkProfile2];
    v133 = networkCopy;
  }

LABEL_133:
  channel4 = [v133 channel];
  if ([channel4 is6GHz])
  {
    matchingKnownNetworkProfile4 = [v133 matchingKnownNetworkProfile];
    lastJoinedAt = [matchingKnownNetworkProfile4 lastJoinedAt];

    v133 = networkCopy;
    if (!lastJoinedAt)
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

      array5 = [orderedSet2 array];
      [orderedSet4 addObjectsFromArray:array5];

      array6 = [orderedSet3 array];
      [orderedSet4 addObjectsFromArray:array6];

      [contextCopy setDidForceAllRemainingChannels:1];
      v133 = networkCopy;
    }
  }

  else
  {
  }

  v149 = [orderedSet4 count];
  [orderedSet4 minusSet:v185];
  if ([orderedSet4 count])
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

    array7 = [orderedSet4 array];
    BYTE1(v174) = [contextCopy skipRemainingNon2GHzChannelsUnlessKnownNetworkFound];
    LOBYTE(v174) = 1;
    v154 = [(CWFAutoJoinManager *)selfCopy __performScanWithChannelList:array7 SSIDList:v93 passive:0 dwellTime:0 maxCacheAge:v179 cacheOnly:0 isPreAssociationScan:v174 checkForKnownNetworks:0 error:?];

    if (v154)
    {
      orderedSet7 = v184;
      if (!v184)
      {
        orderedSet7 = [MEMORY[0x1E695DFA0] orderedSet];
      }

      [orderedSet7 removeObjectsInArray:v154];
      v184 = orderedSet7;
      [orderedSet7 addObjectsFromArray:v154];
      autoJoinParameters2 = [contextCopy autoJoinParameters];
      if ([autoJoinParameters2 trigger] != 54)
      {
        autoJoinParameters3 = [contextCopy autoJoinParameters];
        trigger = [autoJoinParameters3 trigger];

        if (trigger == 55)
        {
          v133 = networkCopy;
          location = v199;
          goto LABEL_170;
        }

        autoJoinParameters2 = [(CWFAutoJoinManager *)selfCopy __perform6GHzFollowupDiscoveryWithScanResults:v154 SSIDList:v93 dwellTime:0 context:contextCopy error:0];
        location = v199;
        if (autoJoinParameters2)
        {
          [orderedSet7 removeObjectsInArray:autoJoinParameters2];
          [orderedSet7 addObjectsFromArray:autoJoinParameters2];
        }
      }
    }

    v133 = networkCopy;
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

  array8 = [v184 array];

  v164 = *MEMORY[0x1E69E9840];

  return array8;
}

- (BOOL)__discoverKnownNetworksWithContext:(id)context error:(id *)error
{
  v149 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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
    maxScanCycles = [contextCopy maxScanCycles];
    v143 = 2048;
    maxScanChannelCount = [contextCopy maxScanChannelCount];
    v145 = 2048;
    maxScanSSIDCount = [contextCopy maxScanSSIDCount];
    v147 = 2048;
    minRSSI = [contextCopy minRSSI];
    LODWORD(v108) = 42;
    v106 = &v141;
    _os_log_send_and_compose_impl();
  }

  autoJoinParameters = [contextCopy autoJoinParameters];
  v138 = 0;
  v10 = -[CWFAutoJoinManager __allowAutoJoinWithTrigger:error:](self, "__allowAutoJoinWithTrigger:error:", [autoJoinParameters trigger], &v138);
  v11 = v138;

  if (!v10)
  {
    array2 = 0;
    array = 0;
    v21 = 0;
    v102 = 0;
    v12 = 0;
    v16 = 0;
    v35 = 0;
    errorCopy2 = error;
    if (error)
    {
      goto LABEL_115;
    }

    goto LABEL_117;
  }

  context = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:1];
  supportedChannels = [(CWFAutoJoinManager *)self supportedChannels];
  v140 = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v140 count:1];
  v15 = [supportedChannels sortedArrayUsingDescriptors:v14];

  [(CWFAutoJoinManager *)self __updateAutoJoinState:2];
  v113 = v15;
  if ([contextCopy cacheOnly])
  {
    v16 = [(CWFAutoJoinManager *)self __cachedScanResultsWithChannelList:v15 context:contextCopy];
    if ([v16 count])
    {
      v137 = v11;
      v17 = [(CWFAutoJoinManager *)self __matchAndJoinScanResults:v16 allowPreAssociationScan:[(CWFAutoJoinManager *)self __shouldAllowPreAssocScan] context:contextCopy error:&v137];
      v18 = v137;

      if (v17)
      {
        array2 = 0;
        array = 0;
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
  if ([contextCopy cacheOnly])
  {
    array2 = 0;
    array = 0;
    v21 = 0;
    v35 = 0;
    goto LABEL_114;
  }

  v110 = v16;
  v111 = v12;
  v19 = MEMORY[0x1E695DF70];
  recentChannelList = [contextCopy recentChannelList];
  v21 = [v19 arrayWithArray:recentChannelList];

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  remainingChannelList = [contextCopy remainingChannelList];
  v23 = [remainingChannelList countByEnumeratingWithState:&v133 objects:v139 count:16];
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
          objc_enumerationMutation(remainingChannelList);
        }

        v27 = *(*(&v133 + 1) + 8 * i);
        if ([v27 is2GHz])
        {
          v28 = array;
        }

        else
        {
          v28 = array2;
        }

        [v28 addObject:v27];
      }

      v24 = [remainingChannelList countByEnumeratingWithState:&v133 objects:v139 count:16];
    }

    while (v24);
  }

  [v21 addObjectsFromArray:array];
  [v21 addObjectsFromArray:array2];
  v29 = 0;
  v117 = v21;
  while (2)
  {
    sSIDList = [contextCopy SSIDList];
    sSIDList2 = [contextCopy SSIDList];
    v32 = [sSIDList2 count] - v29;
    maxScanSSIDCount2 = [contextCopy maxScanSSIDCount];
    if (v32 >= maxScanSSIDCount2)
    {
      maxScanSSIDCount3 = [contextCopy maxScanSSIDCount];
    }

    else
    {
      sSIDList3 = [contextCopy SSIDList];
      maxScanSSIDCount3 = [sSIDList3 count] - v29;
    }

    v118 = [sSIDList subarrayWithRange:{v29, maxScanSSIDCount3}];
    if (v32 < maxScanSSIDCount2)
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

      autoJoinParameters2 = [contextCopy autoJoinParameters];
      trigger = [autoJoinParameters2 trigger];
      v132 = v11;
      v36 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:trigger error:&v132];
      v40 = v132;

      if (!v36)
      {
        break;
      }

      [v21 count];
      recentChannelList2 = [contextCopy recentChannelList];
      if (v123 >= [recentChannelList2 count])
      {
      }

      else
      {
        autoJoinParameters3 = [contextCopy autoJoinParameters];
        mode = [autoJoinParameters3 mode];

        if (mode != 2)
        {
          [contextCopy maxScanChannelCount];
          recentChannelList3 = [contextCopy recentChannelList];
          [recentChannelList3 count];

          v120 = 0;
          goto LABEL_53;
        }
      }

      if (([contextCopy alwaysIncludeRemainingNon2GHzChannels] & 1) != 0 || (!objc_msgSend(contextCopy, "skipRemainingNon2GHzChannelsUnlessKnownNetworkFound") || self->_didDiscoverKnownNetworks) && self->_didDiscoverBSS)
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

        recentChannelList4 = [contextCopy recentChannelList];
        [recentChannelList4 count];
        [array count];

        v120 = 1;
      }

LABEL_53:
      orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
      v53 = [v21 subarrayWithRange:?];
      v54 = [v53 count];
      maxScanCacheAge = [contextCopy maxScanCacheAge];
      if ([contextCopy useCacheForPreviouslyScannedChannels])
      {
        maxScanCacheAge += (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - self->_beginTimestamp) / 0xF4240;
      }

      passiveScan = [contextCopy passiveScan];
      dwellTime = [contextCopy dwellTime];
      skipRemainingNon2GHzChannelsUnlessKnownNetworkFound = [contextCopy skipRemainingNon2GHzChannelsUnlessKnownNetworkFound];
      v131 = 0;
      v109 = &v131;
      BYTE1(v107) = skipRemainingNon2GHzChannelsUnlessKnownNetworkFound;
      LOBYTE(v107) = 0;
      v59 = [CWFAutoJoinManager __performScanWithChannelList:"__performScanWithChannelList:SSIDList:passive:dwellTime:maxCacheAge:cacheOnly:isPreAssociationScan:checkForKnownNetworks:error:" SSIDList:v53 passive:v118 dwellTime:passiveScan maxCacheAge:dwellTime cacheOnly:maxScanCacheAge isPreAssociationScan:0 checkForKnownNetworks:? error:?];
      v119 = v131;
      if ([v59 count])
      {
        [orderedSet removeObjectsInArray:v59];
        [orderedSet addObjectsFromArray:v59];
      }

      v123 += v54;
      autoJoinParameters4 = [contextCopy autoJoinParameters];
      trigger2 = [autoJoinParameters4 trigger];
      v130 = v40;
      v62 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:trigger2 error:&v130];
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
        if (self->_didDiscoverKnownNetworks || ([contextCopy skipRemainingNon2GHzChannelsUnlessKnownNetworkFound] & 1) == 0 && self->_didDiscoverBSS)
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

          passiveScan2 = [contextCopy passiveScan];
          dwellTime2 = [contextCopy dwellTime];
          skipRemainingNon2GHzChannelsUnlessKnownNetworkFound2 = [contextCopy skipRemainingNon2GHzChannelsUnlessKnownNetworkFound];
          v129 = v119;
          v109 = &v129;
          BYTE1(v107) = skipRemainingNon2GHzChannelsUnlessKnownNetworkFound2;
          LOBYTE(v107) = 0;
          v72 = [CWFAutoJoinManager __performScanWithChannelList:"__performScanWithChannelList:SSIDList:passive:dwellTime:maxCacheAge:cacheOnly:isPreAssociationScan:checkForKnownNetworks:error:" SSIDList:v63 passive:v118 dwellTime:passiveScan2 maxCacheAge:dwellTime2 cacheOnly:maxScanCacheAge isPreAssociationScan:0 checkForKnownNetworks:? error:?];
          v73 = v129;

          v59 = v72;
          if ([v72 count])
          {
            [orderedSet removeObjectsInArray:v72];
            [orderedSet addObjectsFromArray:v72];
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

      if (![orderedSet count])
      {
        goto LABEL_99;
      }

      autoJoinParameters5 = [contextCopy autoJoinParameters];
      if ([autoJoinParameters5 trigger] != 54)
      {
        autoJoinParameters6 = [contextCopy autoJoinParameters];
        trigger3 = [autoJoinParameters6 trigger];

        if (trigger3 == 55)
        {
          goto LABEL_83;
        }

        array3 = [orderedSet array];
        v128 = 0;
        autoJoinParameters5 = [(CWFAutoJoinManager *)self __perform6GHzFollowupDiscoveryWithScanResults:array3 SSIDList:v118 dwellTime:0 context:contextCopy error:&v128];

        if (autoJoinParameters5)
        {
          [orderedSet removeObjectsInArray:autoJoinParameters5];
          [orderedSet addObjectsFromArray:autoJoinParameters5];
        }
      }

LABEL_83:
      array4 = [orderedSet array];
      __shouldAllowPreAssocScan = [(CWFAutoJoinManager *)self __shouldAllowPreAssocScan];
      v127 = v11;
      v81 = [(CWFAutoJoinManager *)self __matchAndJoinScanResults:array4 allowPreAssociationScan:__shouldAllowPreAssocScan context:contextCopy error:&v127];
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
      autoJoinParameters7 = [contextCopy autoJoinParameters];
      trigger4 = [autoJoinParameters7 trigger];
      v126 = v82;
      v36 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:trigger4 error:&v126];
      v11 = v126;

      if (!v36)
      {
        v97 = v59;
        v89 = v63;
        v35 = 0;
        v98 = 1;
        goto LABEL_97;
      }

      if (!v120 || ![contextCopy skipRemainingNon2GHzChannelsUnlessKnownNetworkFound] || self->_didDiscoverKnownNetworks)
      {
        aNQPElementIDList = [contextCopy ANQPElementIDList];
        v86 = [aNQPElementIDList count];

        if (v86)
        {
          array5 = [orderedSet array];
          v88 = [(CWFAutoJoinManager *)self __passpointScanResults:array5];

          if ([v88 count])
          {
            v89 = v63;
            aNQPElementIDList2 = [contextCopy ANQPElementIDList];
            maxANQPCacheAge = [contextCopy maxANQPCacheAge];
            v125 = 0;
            v92 = [(CWFAutoJoinManager *)self __performGASQueryWithScanResults:v88 ANQPElementIDList:aNQPElementIDList2 maxCacheAge:maxANQPCacheAge cacheOnly:0 error:&v125];
            v93 = v125;

            if ([v92 count])
            {
              __shouldAllowPreAssocScan2 = [(CWFAutoJoinManager *)self __shouldAllowPreAssocScan];
              v124 = v11;
              v95 = [(CWFAutoJoinManager *)self __matchAndJoinScanResults:v92 allowPreAssociationScan:__shouldAllowPreAssocScan2 context:contextCopy error:&v124];
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

    sSIDList4 = [contextCopy SSIDList];
    v29 = v116;
    if (v116 < [sSIDList4 count])
    {
      v100 = v116 / [contextCopy maxScanSSIDCount];
      if (!(v35 & 1 | (v100 >= [contextCopy maxScanCycles])))
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
  errorCopy2 = error;
  if (error)
  {
LABEL_115:
    if (v11)
    {
      v103 = v11;
      *errorCopy2 = v11;
    }
  }

LABEL_117:

  v104 = *MEMORY[0x1E69E9840];
  return v35 & 1;
}

- (void)__updateDiscoverTimestampForJoinCandidates:(id)candidates
{
  v40 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = candidates;
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

- (void)__updateRNRChannel:(id)channel has6GHzOnlyBSS:(BOOL)s joinCandidate:(id)candidate
{
  v37 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  candidateCopy = candidate;
  v10 = [candidateCopy copy];
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
  sCopy = s;
  v24 = candidateCopy;
  v25 = channelCopy;
  v17 = channelCopy;
  v18 = candidateCopy;
  v19 = v10;
  v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v16, 0, block);
  dispatch_async(targetQueue, v20);

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)__shouldAllowPreAssocScan
{
  autoJoinParameters = [(CWFAutoJoinMetric *)self->_metric autoJoinParameters];
  trigger = [autoJoinParameters trigger];

  return trigger != 32 && trigger != 47;
}

- (BOOL)__preflightMatchKnownNetworksForScanResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sSID = [resultCopy SSID];
  if (sSID && (knownNetworkSSIDMap = selfCopy->_knownNetworkSSIDMap, [resultCopy SSID], v8 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](knownNetworkSSIDMap, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, sSID, v9))
  {
    v10 = 1;
  }

  else
  {
    v9 = 0;
    if ([resultCopy isPasspoint])
    {
      v10 = [(NSMutableDictionary *)selfCopy->_knownNetworkPasspointDomainMap count]!= 0;
    }

    else
    {
      v10 = 0;
    }
  }

  objc_sync_exit(selfCopy);
  return v10;
}

- (BOOL)__matchAndJoinScanResults:(id)results allowPreAssociationScan:(BOOL)scan context:(id)context error:(id *)error
{
  scanCopy = scan;
  v404 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  contextCopy = context;
  autoJoinParameters = [contextCopy autoJoinParameters];
  v392 = 0;
  v8 = -[CWFAutoJoinManager __allowAutoJoinWithTrigger:error:](self, "__allowAutoJoinWithTrigger:error:", [autoJoinParameters trigger], &v392);
  v302 = v392;

  if (!v8)
  {
    associatedNetwork = 0;
    array2 = 0;
    array = 0;
    obj = 0;
    goto LABEL_367;
  }

  context = objc_autoreleasePoolPush();
  v9 = [resultsCopy mutableCopy];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];
  if (associatedNetwork && ([v9 containsObject:associatedNetwork] & 1) == 0)
  {
    [v9 addObject:associatedNetwork];
  }

  v390 = 0u;
  v391 = 0u;
  v388 = 0u;
  v389 = 0u;
  obj = v9;
  sSID12 = [obj countByEnumeratingWithState:&v388 objects:v403 count:16];
  if (sSID12)
  {
    v345 = *v389;
    sSID13 = 138543362;
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
          shortSSID = [v11 shortSSID];
          bSSID = [v11 BSSID];
          channel = [v11 channel];
          v353 = [v12 stringWithFormat:@"%lu/%@/%lu", shortSSID, bSSID, objc_msgSend(channel, "channel")];

          sSID11 = [(NSMutableDictionary *)self->_followup6GHzRNRMap objectForKeyedSubscript:v353];
          channel2 = [v11 channel];
          if (![channel2 is6GHz] || (objc_msgSend(contextCopy, "include6GHzChannels") & 1) != 0)
          {

            goto LABEL_14;
          }

          if (!sSID11)
          {

            goto LABEL_34;
          }

          channel3 = [sSID11 channel];
          is6GHz = [channel3 is6GHz];

          if (is6GHz)
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
            autoJoinParameters2 = [contextCopy autoJoinParameters];
            trigger = [autoJoinParameters2 trigger];
            autoJoinParameters3 = [contextCopy autoJoinParameters];
            targetNetworkProfile = [autoJoinParameters3 targetNetworkProfile];
            sSID = [targetNetworkProfile SSID];
            sSID2 = [v11 SSID];
            if ([(CWFAutoJoinManager *)self __shouldBypassLockdownModeCheckForTrigger:trigger targetNetworkSSID:sSID networkSSID:sSID2])
            {

              goto LABEL_21;
            }

            isAllowedInLockdownMode = [v11 isAllowedInLockdownMode];

            if (isAllowedInLockdownMode)
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

          knownNetworks = [contextCopy knownNetworks];
          array3 = [knownNetworks array];
          v341 = sub_1E0BED85C(v11, array3);

          if (!v341)
          {
            goto LABEL_120;
          }

          isPasspoint = [v11 isPasspoint];
          if (isPasspoint != [v341 isPasspoint])
          {
            if ([contextCopy allowSSIDBasedMatchingForPasspointNetworks])
            {
              __disallowedKnownNetworks = [(CWFAutoJoinManager *)self __disallowedKnownNetworks];
              v30 = sub_1E0BED85C(v11, __disallowedKnownNetworks);

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
          matchedCandidateAt = [(CWFAutoJoinMetric *)self->_metric matchedCandidateAt];
          v32 = matchedCandidateAt == 0;

          if (v32)
          {
            date = [MEMORY[0x1E695DF00] date];
            [(CWFAutoJoinMetric *)self->_metric setMatchedCandidateAt:date];
          }

          if (-[CWFAutoJoinMetric bestCandidateRSSI](self->_metric, "bestCandidateRSSI") && (v34 = -[CWFAutoJoinMetric bestCandidateRSSI](self->_metric, "bestCandidateRSSI"), v34 > [v11 RSSI]))
          {
            bestCandidateRSSI = [(CWFAutoJoinMetric *)self->_metric bestCandidateRSSI];
          }

          else
          {
            bestCandidateRSSI = [v11 RSSI];
          }

          [(CWFAutoJoinMetric *)self->_metric setBestCandidateRSSI:bestCandidateRSSI];
          updatedAllowCacheKnownNetworks = self->_updatedAllowCacheKnownNetworks;
          identifier = [v341 identifier];
          LOBYTE(updatedAllowCacheKnownNetworks) = [(NSMutableSet *)updatedAllowCacheKnownNetworks containsObject:identifier];

          if ((updatedAllowCacheKnownNetworks & 1) == 0)
          {
            knownNetworkAllowCache = self->_knownNetworkAllowCache;
            identifier2 = [v341 identifier];
            [(NSMutableDictionary *)knownNetworkAllowCache setObject:0 forKeyedSubscript:identifier2];

            knownNetworkDeferCache = self->_knownNetworkDeferCache;
            identifier3 = [v341 identifier];
            [(NSMutableDictionary *)knownNetworkDeferCache setObject:0 forKeyedSubscript:identifier3];

            knownNetworkAllowErrorCache = self->_knownNetworkAllowErrorCache;
            identifier4 = [v341 identifier];
            [(NSMutableDictionary *)knownNetworkAllowErrorCache setObject:0 forKeyedSubscript:identifier4];
          }

          v48 = [v11 scanResultWithMatchingKnownNetworkProfile:v341];
          [(NSMutableSet *)self->_matchedCandidates addObject:v48];
          selfCopy = self;
          objc_sync_enter(selfCopy);
          rSSI = [v48 RSSI];
          lowRSSICandidates = self->_lowRSSICandidates;
          if (rSSI > -81)
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

          objc_sync_exit(selfCopy);

          rSSI2 = [v11 RSSI];
          if (rSSI2 < [contextCopy minRSSI])
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
              minRSSI = [contextCopy minRSSI];
              v394 = 134218242;
              *v395 = minRSSI;
              *&v395[8] = 2114;
              *&v395[10] = v11;
              LODWORD(v296) = 22;
              v294 = &v394;
              _os_log_send_and_compose_impl();
            }

            goto LABEL_140;
          }

          autoJoinParameters4 = [contextCopy autoJoinParameters];
          if ([autoJoinParameters4 trigger] == 54)
          {

            goto LABEL_52;
          }

          autoJoinParameters5 = [contextCopy autoJoinParameters];
          v61 = [autoJoinParameters5 trigger] == 55;

          if (!v61)
          {
            associatedNetwork2 = [(CWFAutoJoinManager *)selfCopy associatedNetwork];
            v68 = [(CWFAutoJoinManager *)selfCopy __candidateSupportsSeamlessSSIDTransition:v48 fromNetwork:associatedNetwork2 context:contextCopy];

            if (!v68)
            {
              goto LABEL_77;
            }

            matchingKnownNetworkProfile = [associatedNetwork matchingKnownNetworkProfile];
            matchingKnownNetworkProfile2 = [v48 matchingKnownNetworkProfile];
            v402 = matchingKnownNetworkProfile2;
            v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v402 count:1];
            v72 = [(CWFAutoJoinManager *)selfCopy __morePreferredKnownNetworksWithCandidate:matchingKnownNetworkProfile knownNetworks:v71 context:contextCopy];
            v73 = v72 == 0;

            if (!v73)
            {
              goto LABEL_77;
            }

            channel4 = [v48 channel];
            is2GHz = [channel4 is2GHz];

            if (!is2GHz)
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
          sSID3 = [v48 SSID];
          sSID4 = [associatedNetwork SSID];
          v64 = sSID4;
          if (sSID3 == sSID4)
          {

            goto LABEL_77;
          }

          sSID5 = [v48 SSID];
          if (sSID5)
          {
            sSID6 = [associatedNetwork SSID];
            if (sSID6)
            {
              sSID7 = [v48 SSID];
              sSID8 = [associatedNetwork SSID];
              if ([sSID7 isEqual:sSID8])
              {

                v66 = 0;
                goto LABEL_76;
              }

              v78 = 1;
            }

            else
            {
              v78 = 0;
              sSID6 = 0;
            }
          }

          else
          {
            v78 = 0;
          }

          associatedNetwork3 = [(CWFAutoJoinManager *)selfCopy associatedNetwork];
          v81 = [(CWFAutoJoinManager *)selfCopy __candidateSupportsSeamlessSSIDTransition:v48 fromNetwork:associatedNetwork3 context:contextCopy];

          v66 = !v81;
          if (v78)
          {

            if (!sSID5)
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

          if (sSID5)
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

          channel5 = [v11 channel];
          if ([channel5 is6GHz])
          {
            allowStandalone6GHz = [contextCopy allowStandalone6GHz];

            if ((allowStandalone6GHz & 1) == 0)
            {
              matchingKnownNetworkProfile3 = [v48 matchingKnownNetworkProfile];
              isStandalone6G = [matchingKnownNetworkProfile3 isStandalone6G];

              if (isStandalone6G)
              {
                knownNetworks2 = [(CWFAutoJoinManager *)selfCopy knownNetworks];
                allObjects = [knownNetworks2 allObjects];
                v92 = [(CWFAutoJoinManager *)selfCopy __knownNetworksSupportingSeamlessSSIDTransition:allObjects fromNetwork:v48 allowSameSSID:0 context:contextCopy];

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
                      matchingKnownNetworkProfile4 = [v48 matchingKnownNetworkProfile];
                      lastDiscoveredAt = [matchingKnownNetworkProfile4 lastDiscoveredAt];

                      matchingKnownNetworkProfile5 = [v48 matchingKnownNetworkProfile];
                      lastJoinedAt = [matchingKnownNetworkProfile5 lastJoinedAt];

                      lastDiscoveredAt2 = [v95 lastDiscoveredAt];
                      lastJoinedAt2 = [v95 lastJoinedAt];
                      if (lastDiscoveredAt)
                      {
                        if (lastDiscoveredAt2)
                        {
                          [lastDiscoveredAt timeIntervalSinceReferenceDate];
                          v103 = v102;
                          [lastDiscoveredAt2 timeIntervalSinceReferenceDate];
                          v105 = floor(v103) < floor(v104);
                          [lastDiscoveredAt timeIntervalSinceReferenceDate];
                          v107 = v106;
                          [lastDiscoveredAt2 timeIntervalSinceReferenceDate];
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

                      if (!lastJoinedAt || !lastJoinedAt2)
                      {
                        goto LABEL_102;
                      }

                      [lastJoinedAt timeIntervalSinceReferenceDate];
                      v111 = v110;
                      [lastJoinedAt2 timeIntervalSinceReferenceDate];
                      v113 = floor(v111) < floor(v112);
                      [lastJoinedAt timeIntervalSinceReferenceDate];
                      v115 = v114;
                      [lastJoinedAt2 timeIntervalSinceReferenceDate];
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
                      networkName = [v48 networkName];
                      v394 = 138543362;
                      *v395 = networkName;
                      LODWORD(v296) = 12;
                      v294 = &v394;
                      _os_log_send_and_compose_impl();
                    }

                    [array addObject:v48];
                    goto LABEL_117;
                  }
                }

                else
                {
                }
              }

              [array2 addObject:{v48, v294}];
LABEL_117:

              goto LABEL_118;
            }
          }

          else
          {
          }

          [array addObject:{v48, v294, v296}];
          goto LABEL_117;
        }

LABEL_121:
        v10 = v10 + 1;
      }

      while (v10 != sSID12);
      v134 = [obj countByEnumeratingWithState:&v388 objects:v403 count:16];
      sSID12 = v134;
    }

    while (v134);
  }

  if (![array2 count])
  {
    goto LABEL_201;
  }

  array4 = [MEMORY[0x1E695DF70] array];
  v382 = 0u;
  v383 = 0u;
  v380 = 0u;
  v381 = 0u;
  v304 = array2;
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
      autoJoinParameters6 = [contextCopy autoJoinParameters];
      targetNetworkProfile2 = [autoJoinParameters6 targetNetworkProfile];
      identifier5 = [targetNetworkProfile2 identifier];
      matchingKnownNetworkProfile6 = [v354 matchingKnownNetworkProfile];
      identifier6 = [matchingKnownNetworkProfile6 identifier];
      v139 = identifier6;
      if (identifier5 == identifier6)
      {

LABEL_162:
LABEL_163:
        [array4 addObject:v354];
        continue;
      }

      autoJoinParameters7 = [contextCopy autoJoinParameters];
      targetNetworkProfile3 = [autoJoinParameters7 targetNetworkProfile];
      identifier7 = [targetNetworkProfile3 identifier];
      if (identifier7)
      {
        matchingKnownNetworkProfile7 = [v354 matchingKnownNetworkProfile];
        identifier8 = [matchingKnownNetworkProfile7 identifier];
        if (identifier8)
        {
          autoJoinParameters8 = [contextCopy autoJoinParameters];
          targetNetworkProfile4 = [autoJoinParameters8 targetNetworkProfile];
          identifier9 = [targetNetworkProfile4 identifier];
          matchingKnownNetworkProfile8 = [v354 matchingKnownNetworkProfile];
          identifier10 = [matchingKnownNetworkProfile8 identifier];
          v323 = [identifier9 isEqual:identifier10];

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
      autoJoinParameters6 = array;
      v347 = [autoJoinParameters6 countByEnumeratingWithState:&v376 objects:v399 count:16];
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
            objc_enumerationMutation(autoJoinParameters6);
          }

          v147 = *(*(&v376 + 1) + 8 * j);
          sSID9 = [v354 SSID];
          sSID10 = [v147 SSID];
          if (sSID9 != sSID10)
          {
            sSID11 = [v354 SSID];
            if (!sSID11)
            {
              goto LABEL_182;
            }

            sSID12 = [v147 SSID];
            if (!sSID12)
            {
              goto LABEL_181;
            }

            sSID6 = [v354 SSID];
            sSID13 = [v147 SSID];
            if (([sSID6 isEqual:sSID13] & 1) == 0)
            {

LABEL_181:
LABEL_182:

              continue;
            }
          }

          matchingKnownNetworkProfile9 = [v354 matchingKnownNetworkProfile];
          identifier11 = [matchingKnownNetworkProfile9 identifier];
          matchingKnownNetworkProfile10 = [v147 matchingKnownNetworkProfile];
          identifier12 = [matchingKnownNetworkProfile10 identifier];
          if (identifier11 == identifier12)
          {
            v339 = 1;
          }

          else
          {
            matchingKnownNetworkProfile11 = [v354 matchingKnownNetworkProfile];
            identifier13 = [matchingKnownNetworkProfile11 identifier];
            if (identifier13)
            {
              matchingKnownNetworkProfile12 = [v147 matchingKnownNetworkProfile];
              identifier14 = [matchingKnownNetworkProfile12 identifier];
              if (identifier14)
              {
                matchingKnownNetworkProfile13 = [v354 matchingKnownNetworkProfile];
                identifier15 = [matchingKnownNetworkProfile13 identifier];
                matchingKnownNetworkProfile14 = [v147 matchingKnownNetworkProfile];
                identifier16 = [matchingKnownNetworkProfile14 identifier];
                v339 = [identifier15 isEqual:identifier16];
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

          if (sSID9 != sSID10)
          {
          }

          if (v339)
          {
            goto LABEL_162;
          }
        }

        v347 = [autoJoinParameters6 countByEnumeratingWithState:&v376 objects:v399 count:16];
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
      matchingKnownNetworkProfile15 = [v354 matchingKnownNetworkProfile];
      -[CWFAutoJoinMetric setDidExclude6GHzOnlyNetwork:](self->_metric, "setDidExclude6GHzOnlyNetwork:", [matchingKnownNetworkProfile15 wasRecently6GHzOnlyOnAnyDevice]);
    }

    v308 = [v304 countByEnumeratingWithState:&v380 objects:v400 count:16];
  }

  while (v308);
LABEL_200:

  [array addObjectsFromArray:array4];
LABEL_201:
  if ([array count])
  {
    [(CWFAutoJoinManager *)self __updateAutoJoinState:3];
    [(CWFAutoJoinManager *)self __sortJoinCandidates:array context:contextCopy];
    if (!associatedNetwork)
    {
      goto LABEL_224;
    }

    autoJoinParameters9 = [contextCopy autoJoinParameters];
    if ([autoJoinParameters9 trigger] == 54)
    {

      goto LABEL_208;
    }

    autoJoinParameters10 = [contextCopy autoJoinParameters];
    v165 = [autoJoinParameters10 trigger] == 55;

    if (v165)
    {
LABEL_208:
      v374 = 0u;
      v375 = 0u;
      v372 = 0u;
      v373 = 0u;
      v355 = array;
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
          if ([(CWFAutoJoinManager *)self __allowJoinCandidate:v169 context:contextCopy defer:0 error:0])
          {
            sSID14 = [v169 SSID];
            sSID15 = [associatedNetwork SSID];
            v172 = sSID15;
            if (sSID14 == sSID15)
            {

LABEL_230:
              v340 = 1;
              goto LABEL_231;
            }

            sSID16 = [v169 SSID];
            if (sSID16)
            {
              sSID17 = [associatedNetwork SSID];
              if (sSID17)
              {
                sSID18 = [v169 SSID];
                sSID19 = [associatedNetwork SSID];
                v177 = [sSID18 isEqual:sSID19];

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
    v321 = array;
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
          autoJoinParameters11 = [contextCopy autoJoinParameters];
          trigger2 = [autoJoinParameters11 trigger];
          v367 = v302;
          v8 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:trigger2 error:&v367];
          v350 = v367;

          if (!v8)
          {
            goto LABEL_364;
          }

          v366 = 0;
          v365 = 0;
          v184 = [(CWFAutoJoinManager *)self __allowJoinCandidate:v352 context:contextCopy defer:&v366 error:&v365];
          v185 = v365;
          if (v184)
          {
            v348 = v185;
            if ([contextCopy allowDeferredCandidates] & 1) == 0 && (v366)
            {
              selfCopy2 = self;
              objc_sync_enter(selfCopy2);
              deferredKnownNetworks = self->_deferredKnownNetworks;
              matchingKnownNetworkProfile16 = [v352 matchingKnownNetworkProfile];
              [(NSMutableOrderedSet *)deferredKnownNetworks addObject:matchingKnownNetworkProfile16];

              objc_sync_exit(selfCopy2);
            }

            else
            {
              if (!v340)
              {
                goto LABEL_248;
              }

              selfCopy2 = [v352 SSID];
              sSID20 = [associatedNetwork SSID];
              v188 = sSID20;
              if (selfCopy2 == sSID20)
              {

                goto LABEL_248;
              }

              sSID21 = [v352 SSID];
              if (sSID21)
              {
                sSID22 = [associatedNetwork SSID];
                if (sSID22)
                {
                  sSID23 = [v352 SSID];
                  sSID24 = [associatedNetwork SSID];
                  v193 = [sSID23 isEqual:sSID24];

                  if (!v193)
                  {
                    goto LABEL_344;
                  }

LABEL_248:
                  allKeys = [(NSMutableDictionary *)self->_deferredColocatedJoinCandidateMap allKeys];
                  matchingKnownNetworkProfile17 = [v352 matchingKnownNetworkProfile];
                  identifier17 = [matchingKnownNetworkProfile17 identifier];
                  v197 = [allKeys containsObject:identifier17];

                  if (v197)
                  {
                    allValues = [(NSMutableDictionary *)self->_deferredColocatedJoinCandidateMap allValues];
                    selfCopy2 = [allValues mutableCopy];

                    [(CWFAutoJoinManager *)self __sortKnownNetworksByJoinTimestamp:selfCopy2];
                    matchingKnownNetworkProfile18 = [v352 matchingKnownNetworkProfile];
                    identifier18 = [matchingKnownNetworkProfile18 identifier];
                    firstObject = [(CWFAutoJoinManager *)selfCopy2 firstObject];
                    identifier19 = [firstObject identifier];
                    if (identifier18 == identifier19)
                    {
                      v330 = 1;
                    }

                    else
                    {
                      matchingKnownNetworkProfile19 = [v352 matchingKnownNetworkProfile];
                      identifier20 = [matchingKnownNetworkProfile19 identifier];
                      if (identifier20)
                      {
                        firstObject2 = [(CWFAutoJoinManager *)selfCopy2 firstObject];
                        identifier21 = [firstObject2 identifier];
                        if (identifier21)
                        {
                          matchingKnownNetworkProfile20 = [v352 matchingKnownNetworkProfile];
                          identifier22 = [matchingKnownNetworkProfile20 identifier];
                          firstObject3 = [(CWFAutoJoinManager *)selfCopy2 firstObject];
                          identifier23 = [firstObject3 identifier];
                          v330 = [identifier22 isEqual:identifier23];
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
                    matchingKnownNetworkProfile21 = [v352 matchingKnownNetworkProfile];
                    knownNetworks3 = [(CWFAutoJoinManager *)self knownNetworks];
                    allObjects2 = [knownNetworks3 allObjects];
                    selfCopy2 = [(CWFAutoJoinManager *)self __morePreferredKnownNetworksWithCandidate:matchingKnownNetworkProfile21 knownNetworks:allObjects2 context:contextCopy];

                    if ([(CWFAutoJoinManager *)selfCopy2 count])
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
                        v214 = [(CWFAutoJoinManager *)selfCopy2 count];
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
                      selfCopy2 = selfCopy2;
                      v215 = [(CWFAutoJoinManager *)selfCopy2 countByEnumeratingWithState:&v361 objects:v396 count:16];
                      if (v215)
                      {
                        v216 = *v362;
                        do
                        {
                          for (k = 0; k != v215; ++k)
                          {
                            if (*v362 != v216)
                            {
                              objc_enumerationMutation(selfCopy2);
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

                          v215 = [(CWFAutoJoinManager *)selfCopy2 countByEnumeratingWithState:&v361 objects:v396 count:16];
                        }

                        while (v215);
                      }

                      matchingKnownNetworkProfile22 = [v352 matchingKnownNetworkProfile];
                      deferredColocatedJoinCandidateMap = self->_deferredColocatedJoinCandidateMap;
                      matchingKnownNetworkProfile23 = [v352 matchingKnownNetworkProfile];
                      identifier24 = [matchingKnownNetworkProfile23 identifier];
                      [(NSMutableDictionary *)deferredColocatedJoinCandidateMap setObject:matchingKnownNetworkProfile22 forKeyedSubscript:identifier24];

                      [(CWFAutoJoinMetric *)self->_metric setDidDeferJoinToDiscoverMorePreferredNetwork:1];
                      v226 = [contextCopy copy];
                      [v226 setKnownNetworks:selfCopy2];
                      [v226 setPassiveScan:0];
                      [v226 setUseCacheForPreviouslyScannedChannels:1];
                      [v226 setAllowDeferredCandidates:1];
                      rSSI3 = [v352 RSSI];
                      if (rSSI3 - 3 < [contextCopy minRSSI] && objc_msgSend(v352, "RSSI") >= -87)
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
                          minRSSI2 = [contextCopy minRSSI];
                          minRSSI3 = [v226 minRSSI];
                          v394 = 67109632;
                          *v395 = 3;
                          *&v395[4] = 2048;
                          *&v395[6] = minRSSI2;
                          *&v395[14] = 2048;
                          *&v395[16] = minRSSI3;
                          LODWORD(v296) = 28;
                          v295 = &v394;
                          _os_log_send_and_compose_impl();
                        }
                      }

                      v295 = [(NSMutableDictionary *)self->_cachedKnownNetworksContexts objectForKeyedSubscript:v226, v295];
                      v239 = v295;
                      if (v295)
                      {
                        v240 = v226;
                        v226 = v295;
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

                      autoJoinParameters12 = [contextCopy autoJoinParameters];
                      trigger3 = [autoJoinParameters12 trigger];
                      v359 = v241;
                      v244 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:trigger3 error:&v359];
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
                      matchingKnownNetworkProfile24 = [associatedNetwork matchingKnownNetworkProfile];
                      identifier25 = [matchingKnownNetworkProfile24 identifier];
                      matchingKnownNetworkProfile25 = [v352 matchingKnownNetworkProfile];
                      identifier26 = [matchingKnownNetworkProfile25 identifier];
                      v252 = [identifier25 isEqual:identifier26];

                      if (v252)
                      {
                        v287 = CWFGetOSLog();
                        if (v287)
                        {
                          selfCopy2 = CWFGetOSLog();
                        }

                        else
                        {
                          selfCopy2 = MEMORY[0x1E69E9C10];
                          v289 = MEMORY[0x1E69E9C10];
                        }

                        if (os_log_type_enabled(&selfCopy2->super, OS_LOG_TYPE_DEFAULT))
                        {
                          v394 = 138543362;
                          *v395 = associatedNetwork;
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

                    autoJoinParameters13 = [contextCopy autoJoinParameters];
                    if ([autoJoinParameters13 trigger] == 54)
                    {
                    }

                    else
                    {
                      autoJoinParameters14 = [contextCopy autoJoinParameters];
                      v255 = [autoJoinParameters14 trigger] == 55;

                      if (!v255)
                      {
                        associatedNetwork4 = [(CWFAutoJoinManager *)self associatedNetwork];
                        matchingKnownNetworkProfile26 = [associatedNetwork4 matchingKnownNetworkProfile];
                        matchingKnownNetworkProfile27 = [v352 matchingKnownNetworkProfile];
                        v259 = [matchingKnownNetworkProfile26 compareUserPriority:matchingKnownNetworkProfile27] == 1;

                        if (v259)
                        {
                          v288 = CWFGetOSLog();
                          if (v288)
                          {
                            selfCopy2 = CWFGetOSLog();
                          }

                          else
                          {
                            selfCopy2 = MEMORY[0x1E69E9C10];
                            v290 = MEMORY[0x1E69E9C10];
                          }

                          if (!os_log_type_enabled(&selfCopy2->super, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_362;
                          }

                          v394 = 138543362;
                          *v395 = associatedNetwork;
LABEL_361:
                          LOBYTE(v8) = 1;
                          _os_log_send_and_compose_impl();
                          goto LABEL_363;
                        }
                      }
                    }

                    if (scanCopy)
                    {
                      selfCopy2 = [(CWFAutoJoinManager *)self __performPreAssociationScanWithContext:contextCopy network:v352];
                      if ([(CWFAutoJoinManager *)selfCopy2 count])
                      {
                        v358 = v350;
                        v260 = [(CWFAutoJoinManager *)self __matchAndJoinScanResults:selfCopy2 allowPreAssociationScan:0 context:contextCopy error:&v358];
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
                      v262 = [(CWFAutoJoinManager *)self __performJoinWithNetwork:v352 context:contextCopy error:&v357];
                      v263 = v357;
                      selfCopy2 = v263;
                      if (v262)
                      {
                        goto LABEL_362;
                      }

                      if ([(CWFAutoJoinManager *)v263 code]== -3936 || [(CWFAutoJoinManager *)selfCopy2 code]== -3947)
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
                          code = [(CWFAutoJoinManager *)selfCopy2 code];
                          v394 = 134217984;
                          *v395 = code;
                          v295 = &v394;
                          _os_log_send_and_compose_impl();
                        }

                        channel6 = [v352 channel];
                        v393 = channel6;
                        v269 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v393 count:1];
                        sSIDList = [contextCopy SSIDList];
                        dwellTime = [contextCopy dwellTime];
                        v296 = 0;
                        BYTE1(v295) = [contextCopy skipRemainingNon2GHzChannelsUnlessKnownNetworkFound];
                        LOBYTE(v295) = 0;
                        v272 = [CWFAutoJoinManager __performScanWithChannelList:"__performScanWithChannelList:SSIDList:passive:dwellTime:maxCacheAge:cacheOnly:isPreAssociationScan:checkForKnownNetworks:error:" SSIDList:v269 passive:sSIDList dwellTime:0 maxCacheAge:dwellTime cacheOnly:0 isPreAssociationScan:0 checkForKnownNetworks:? error:?];

                        v356 = selfCopy2;
                        LOBYTE(channel6) = [(CWFAutoJoinManager *)self __performJoinWithNetwork:v352 context:contextCopy error:&v356];
                        v273 = v356;

                        if (channel6)
                        {
                          LOBYTE(v8) = 1;
                          selfCopy2 = v273;
                          goto LABEL_363;
                        }

                        selfCopy2 = v273;
                      }

                      if ([(CWFAutoJoinManager *)selfCopy2 code]!= -3936 && [(CWFAutoJoinManager *)selfCopy2 code]!= -3947)
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
                        matchingKnownNetworkProfile28 = [v352 matchingKnownNetworkProfile];
                        identifier27 = [matchingKnownNetworkProfile28 identifier];
                        [(NSMutableSet *)failedToJoinKnownNetworkIDs addObject:identifier27];

                        v280 = self->_deferredColocatedJoinCandidateMap;
                        matchingKnownNetworkProfile29 = [v352 matchingKnownNetworkProfile];
                        identifier28 = [matchingKnownNetworkProfile29 identifier];
                        [(NSMutableDictionary *)v280 setObject:0 forKeyedSubscript:identifier28];
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
    [(CWFAutoJoinManager *)self __updateDiscoverTimestampForJoinCandidates:array2];
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
  if (error && v302)
  {
    v291 = v302;
    *error = v302;
  }

  v292 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)__isAutoJoiningAtHome
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  loiTypes = selfCopy->_loiTypes;
  if (loiTypes && [(NSArray *)loiTypes count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = selfCopy->_loiTypes;
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

  objc_sync_exit(selfCopy);

  v9 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (BOOL)__isAutoJoinCancelled:(id *)cancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cancelled = selfCopy->_cancelled;
  v6 = selfCopy->_underlyingCancelError;
  objc_sync_exit(selfCopy);

  if (cancelled)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"Auto-join has been cancelled" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [dictionary setObject:v6 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A798];
    v10 = [dictionary copy];
    v11 = [v8 errorWithDomain:v9 code:89 userInfo:v10];

    [(CWFAutoJoinMetric *)selfCopy->_metric setWasCancelled:1];
    if (cancelled && v11)
    {
      v12 = v11;
      *cancelled = v11;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  requeued = selfCopy->_requeued;
  objc_sync_exit(selfCopy);

  return requeued;
}

- (BOOL)__allowOpportunisticNetworkTransitionWithTrigger:(int64_t)trigger
{
  v4 = _os_feature_enabled_impl();
  v5 = 0x180030C001101uLL >> (trigger - 20);
  if ((trigger - 20) > 0x30)
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"BBH PH fallback is not allowed" forKeyedSubscript:*MEMORY[0x1E696A578]];
    if (v4)
    {
      [dictionary setObject:v4 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];

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

- (BOOL)__allowAutoJoinWithTrigger:(int64_t)trigger error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  __isAutoJoinRequeued = [(CWFAutoJoinManager *)self __isAutoJoinRequeued];
  if (__isAutoJoinRequeued)
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

  if (trigger == 67 && ![(CWFAutoJoinManager *)self __allowBrokenBackhaulPersonalHotspotFallback])
  {
LABEL_23:
    v17 = 0;
    goto LABEL_13;
  }

  allowAutoJoinHandler = [(CWFAutoJoinManager *)self allowAutoJoinHandler];

  if (!allowAutoJoinHandler)
  {
    goto LABEL_8;
  }

  v25 = 0;
  v11 = [(CWFAutoJoinManager *)self __calloutToAllowAutoJoinWithTrigger:trigger error:&v25];
  v12 = v25;
  v13 = v12;
  if (v11)
  {

LABEL_8:
    v14 = 1;
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"Auto-join is not allowed" forKeyedSubscript:*MEMORY[0x1E696A578]];
  if (v13)
  {
    [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];

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
    v28 = __isAutoJoinRequeued;
    v29 = 1024;
    v30 = v17;
    v31 = 2114;
    v32 = v21;
    _os_log_send_and_compose_impl();
  }

  [(CWFAutoJoinMetric *)self->_metric setWasAborted:1];
  v14 = 0;
  if (error)
  {
LABEL_19:
    if (v9)
    {
      v22 = v9;
      *error = v9;
    }
  }

LABEL_21:

  v23 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)__shouldBypassUnusedNetworkPeriodCheckForTrigger:(int64_t)trigger knownNetwork:(id)network
{
  networkCopy = network;
  v6 = networkCopy;
  if ((trigger - 32) <= 0x21 && ((1 << (trigger - 32)) & 0x200008001) != 0)
  {
    v7 = 1;
  }

  else if ([networkCopy addReason] == 7 || objc_msgSend(v6, "addReason") == 12)
  {
    lastJoinedBySystemAt = [v6 lastJoinedBySystemAt];
    v7 = lastJoinedBySystemAt == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)__shouldBypassLockdownModeCheckForTrigger:(int64_t)trigger targetNetworkSSID:(id)d networkSSID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v9 = iDCopy;
  if (trigger == 7)
  {
    if (dCopy == iDCopy)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (dCopy && iDCopy)
      {
        v10 = [dCopy isEqual:iDCopy];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)__isDeferrableKnownNetwork:(id)network
{
  networkCopy = network;
  v5 = ([networkCopy isCarPlay] & 1) == 0 && ((objc_msgSend(networkCopy, "isHotspot") & 1) != 0 || (objc_msgSend(networkCopy, "isPersonalHotspot") & 1) != 0 || objc_msgSend(networkCopy, "addReason") == 10 || (objc_msgSend(networkCopy, "isOpen") & 1) != 0 || (objc_msgSend(networkCopy, "isOWE") & 1) != 0 || (objc_msgSend(networkCopy, "isWAPI") & 1) != 0 || objc_msgSend(networkCopy, "isPSK") && ((objc_msgSend(networkCopy, "isWEP") & 1) != 0 || objc_msgSend(networkCopy, "isWPA")));
  if ([networkCopy networkOfInterestHomeState] == 2 && -[CWFAutoJoinManager __isAutoJoiningAtHome](self, "__isAutoJoiningAtHome"))
  {
    location = [(CWFAutoJoinManager *)self location];
    v7 = [networkCopy wasManuallyJoinedRecentlyInProximityOf:location] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v5 | v7;
}

- (BOOL)__isDeferrableJoinCandidate:(id)candidate
{
  candidateCopy = candidate;
  matchingKnownNetworkProfile = [candidateCopy matchingKnownNetworkProfile];
  if ([matchingKnownNetworkProfile isCarPlay])
  {
    v6 = 0;
  }

  else
  {
    matchingKnownNetworkProfile2 = [candidateCopy matchingKnownNetworkProfile];
    if ([(CWFAutoJoinManager *)self __isDeferrableKnownNetwork:matchingKnownNetworkProfile2])
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1E0BF1240(candidateCopy);
    }
  }

  return v6;
}

- (BOOL)__allowKnownNetwork:(id)network context:(id)context allowForSeamlessSSIDTransition:(id)transition defer:(BOOL *)defer targetQueue:(id)queue error:(id *)error
{
  v117 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  contextCopy = context;
  transitionCopy = transition;
  queueCopy = queue;
  bOOLValue2 = 0;
  autoJoinParameters = [contextCopy autoJoinParameters];
  trigger = [autoJoinParameters trigger];

  associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  knownNetworkAllowCache = selfCopy->_knownNetworkAllowCache;
  identifier = [networkCopy identifier];
  v104 = [(NSMutableDictionary *)knownNetworkAllowCache objectForKeyedSubscript:identifier];

  knownNetworkDeferCache = selfCopy->_knownNetworkDeferCache;
  identifier2 = [networkCopy identifier];
  v102 = [(NSMutableDictionary *)knownNetworkDeferCache objectForKeyedSubscript:identifier2];

  knownNetworkAllowErrorCache = selfCopy->_knownNetworkAllowErrorCache;
  identifier3 = [networkCopy identifier];
  v103 = [(NSMutableDictionary *)knownNetworkAllowErrorCache objectForKeyedSubscript:identifier3];

  objc_sync_exit(selfCopy);
  if ([networkCopy isAutoJoinDisabled])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"Known network profile is disabled" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
LABEL_3:
    v26 = v25;
LABEL_4:
    LOBYTE(v27) = 0;
    goto LABEL_5;
  }

  if (!-[CWFAutoJoinManager __shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:](selfCopy, "__shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:", trigger, networkCopy) && (([networkCopy isCaptive] & 1) != 0 || objc_msgSend(networkCopy, "wasCaptive")) && ((objc_msgSend(networkCopy, "isOpen") & 1) != 0 || objc_msgSend(networkCopy, "isOWE")))
  {
    lastJoinedOnAnyDeviceAt = [networkCopy lastJoinedOnAnyDeviceAt];
    if (lastJoinedOnAnyDeviceAt)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v58 = v57;
      lastJoinedOnAnyDeviceAt2 = [networkCopy lastJoinedOnAnyDeviceAt];
      [lastJoinedOnAnyDeviceAt2 timeIntervalSinceReferenceDate];
      v61 = v58 - v60;

      if (v61 > 1209600.0)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Captive known network profile unused for %d weeks", 2];
        [dictionary setObject:v62 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
        goto LABEL_3;
      }
    }
  }

  if (!-[CWFAutoJoinManager __shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:](selfCopy, "__shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:", trigger, networkCopy) && (([networkCopy isOpen] & 1) != 0 || objc_msgSend(networkCopy, "isOWE")))
  {
    lastJoinedOnAnyDeviceAt3 = [networkCopy lastJoinedOnAnyDeviceAt];
    if (lastJoinedOnAnyDeviceAt3)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v31 = v30;
      lastJoinedOnAnyDeviceAt4 = [networkCopy lastJoinedOnAnyDeviceAt];
      [lastJoinedOnAnyDeviceAt4 timeIntervalSinceReferenceDate];
      v34 = v31 - v33;

      if (v34 > 1209600.0)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Open known network profile unused for %d weeks", 2];
        [dictionary setObject:v35 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
        goto LABEL_3;
      }
    }
  }

  if (![(CWFAutoJoinManager *)selfCopy __shouldBypassUnusedNetworkPeriodCheckForTrigger:trigger knownNetwork:networkCopy])
  {
    lastJoinedOnAnyDeviceAt5 = [networkCopy lastJoinedOnAnyDeviceAt];
    if (lastJoinedOnAnyDeviceAt5)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v38 = v37;
      lastJoinedOnAnyDeviceAt6 = [networkCopy lastJoinedOnAnyDeviceAt];
      [lastJoinedOnAnyDeviceAt6 timeIntervalSinceReferenceDate];
      v41 = v38 - v40;

      if (v41 > 43545600.0)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Known network profile unused for %d weeks", 72];
        [dictionary setObject:v42 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
        goto LABEL_3;
      }
    }
  }

  if (!-[CWFAutoJoinManager __shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:](selfCopy, "__shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:", trigger, networkCopy) && (([networkCopy isOpen] & 1) != 0 || objc_msgSend(networkCopy, "isOWE")))
  {
    lastJoinedByUserAt = [networkCopy lastJoinedByUserAt];
    if (!lastJoinedByUserAt)
    {
      lastJoinedOnAnyDeviceAt7 = [networkCopy lastJoinedOnAnyDeviceAt];
      if (!lastJoinedOnAnyDeviceAt7)
      {
        addedAt = [networkCopy addedAt];
        if (!addedAt)
        {
          goto LABEL_63;
        }
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v48 = v47;
      lastJoinedOnAnyDeviceAt8 = [networkCopy lastJoinedOnAnyDeviceAt];
      [lastJoinedOnAnyDeviceAt8 timeIntervalSinceReferenceDate];
      if (v48 - v50 > 86400.0)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v52 = v51;
        addedAt2 = [networkCopy addedAt];
        [addedAt2 timeIntervalSinceReferenceDate];
        v55 = v52 - v54;

        if (lastJoinedOnAnyDeviceAt7)
        {
        }

        else
        {
        }

        if (v55 > 86400.0)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          86400 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Open known network profile never joined by user/UI unused for %d seconds", 86400];
          [dictionary setObject:86400 forKeyedSubscript:*MEMORY[0x1E696A578]];

          v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
          goto LABEL_3;
        }

        goto LABEL_63;
      }

      if (lastJoinedOnAnyDeviceAt7)
      {
        lastJoinedByUserAt = lastJoinedOnAnyDeviceAt7;
      }

      else
      {
        lastJoinedByUserAt = addedAt;
      }
    }
  }

LABEL_63:
  if ([associatedNetwork isPersonalHotspot])
  {
    brokenBackhaulStateUpdatedAt = [networkCopy brokenBackhaulStateUpdatedAt];
    [brokenBackhaulStateUpdatedAt timeIntervalSinceNow];
    v77 = v76;
    v78 = v76 >= 0.0;
    brokenBackhaulStateUpdatedAt2 = [networkCopy brokenBackhaulStateUpdatedAt];
    [brokenBackhaulStateUpdatedAt2 timeIntervalSinceNow];
    if (!v78)
    {
      v80 = -v80;
    }

    v81 = v80 < 3600.0;
    if (v80 < 3600.0 && [networkCopy brokenBackhaulState] != 4)
    {
      v81 = [networkCopy brokenBackhaulState] == 3;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    3600 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Known network profile with recently (<%ds) broken backhaul not allowed when already associated to PH", 3600];
    [dictionary setObject:3600 forKeyedSubscript:*MEMORY[0x1E696A578]];

    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
    goto LABEL_3;
  }

LABEL_71:
  if (!transitionCopy && v104)
  {
    bOOLValue = [v104 BOOLValue];
    bOOLValue2 = [v102 BOOLValue];
    if ((bOOLValue & 1) == 0)
    {
      userInfo = [v103 userInfo];
      dictionary = [userInfo mutableCopy];

      [dictionary setObject:@"Known network profile is not allowed by daemon (cached)" forKeyedSubscript:*MEMORY[0x1E696A578]];
      v84 = MEMORY[0x1E696ABC0];
      domain = [v103 domain];
      v26 = [v84 errorWithDomain:domain code:objc_msgSend(v103 userInfo:{"code"), dictionary}];

      goto LABEL_4;
    }

    goto LABEL_78;
  }

  allowKnownNetworkHandler = [(CWFAutoJoinManager *)selfCopy allowKnownNetworkHandler];

  if (!allowKnownNetworkHandler)
  {
LABEL_78:
    dictionary = 0;
    v26 = 0;
    LOBYTE(v27) = 1;
    goto LABEL_5;
  }

  v109 = 0;
  v27 = [(CWFAutoJoinManager *)selfCopy __calloutToAllowKnownNetwork:networkCopy trigger:trigger allowForSeamlessSSIDTransition:transitionCopy defer:&bOOLValue2 queue:queueCopy error:&v109];
  v100 = v109;
  if (v27)
  {
    dictionary = 0;
    v26 = 0;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"Known network profile is not allowed by daemon" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [dictionary setObject:v100 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
  }

  if (!transitionCopy)
  {
    v88 = selfCopy;
    objc_sync_enter(v88);
    v89 = [MEMORY[0x1E696AD98] numberWithBool:v27];
    v90 = selfCopy->_knownNetworkAllowCache;
    identifier4 = [networkCopy identifier];
    [(NSMutableDictionary *)v90 setObject:v89 forKeyedSubscript:identifier4];

    v92 = selfCopy->_knownNetworkAllowErrorCache;
    identifier5 = [networkCopy identifier];
    [(NSMutableDictionary *)v92 setObject:v26 forKeyedSubscript:identifier5];

    v94 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue2];
    v95 = selfCopy->_knownNetworkDeferCache;
    identifier6 = [networkCopy identifier];
    [(NSMutableDictionary *)v95 setObject:v94 forKeyedSubscript:identifier6];

    updatedAllowCacheKnownNetworks = v88->_updatedAllowCacheKnownNetworks;
    identifier7 = [networkCopy identifier];
    [(NSMutableSet *)updatedAllowCacheKnownNetworks addObject:identifier7];

    objc_sync_exit(v88);
  }

LABEL_5:
  if ([(CWFAutoJoinManager *)selfCopy __isDeferrableKnownNetwork:networkCopy])
  {
    bOOLValue2 = 1;
  }

  lastJoinedByUserAt2 = [networkCopy lastJoinedByUserAt];
  if (lastJoinedByUserAt2)
  {
  }

  else if ([contextCopy preferUserConfiguredNetworks])
  {
    bOOLValue2 = 1;
  }

  if (v27)
  {
    [(CWFAutoJoinManager *)selfCopy __removeDisallowedKnownNetwork:networkCopy];
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
      identifier8 = [networkCopy identifier];
      redactedForWiFi = [identifier8 redactedForWiFi];
      v66 = [(CWFAutoJoinManager *)selfCopy __descriptionForError:v26];
      v111 = 138543874;
      v112 = redactedForWiFi;
      v113 = 2114;
      v114 = v66;
      v115 = 2114;
      v116 = networkCopy;
      _os_log_send_and_compose_impl();
    }

    if (!transitionCopy)
    {
      [(CWFAutoJoinManager *)selfCopy __addDisallowedKnownNetwork:networkCopy];
    }
  }

  if (defer && bOOLValue2 == 1)
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
      identifier9 = [networkCopy identifier];
      redactedForWiFi2 = [identifier9 redactedForWiFi];
      v111 = 138543618;
      v112 = redactedForWiFi2;
      v113 = 2114;
      v114 = networkCopy;
      _os_log_send_and_compose_impl();
    }

    *defer = bOOLValue2;
  }

  if (error && v26)
  {
    v72 = v26;
    *error = v26;
  }

  v73 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)isKnownNetworkDisallowed:(id)disallowed
{
  disallowedCopy = disallowed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [disallowedCopy identifier];
  if (identifier)
  {
    allKeys = [(NSMutableDictionary *)selfCopy->_disallowedKnownNetworksMap allKeys];
    identifier2 = [disallowedCopy identifier];
    v9 = [allKeys containsObject:identifier2];
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(selfCopy);
  return v9;
}

- (void)__removeDisallowedKnownNetwork:(id)network
{
  networkCopy = network;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [networkCopy identifier];

  if (identifier)
  {
    disallowedKnownNetworksMap = selfCopy->_disallowedKnownNetworksMap;
    identifier2 = [networkCopy identifier];
    [(NSMutableDictionary *)disallowedKnownNetworksMap removeObjectForKey:identifier2];
  }

  objc_sync_exit(selfCopy);
}

- (void)__addDisallowedKnownNetwork:(id)network
{
  networkCopy = network;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [networkCopy identifier];

  if (identifier)
  {
    disallowedKnownNetworksMap = selfCopy->_disallowedKnownNetworksMap;
    identifier2 = [networkCopy identifier];
    [(NSMutableDictionary *)disallowedKnownNetworksMap setObject:networkCopy forKey:identifier2];
  }

  objc_sync_exit(selfCopy);
}

- (id)__disallowedKnownNetworks
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_disallowedKnownNetworksMap allValues];
  v4 = [allValues copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)__knownNetworksSupportingSeamlessSSIDTransition:(id)transition fromNetwork:(id)network allowSameSSID:(BOOL)d context:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  networkCopy = network;
  contextCopy = context;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v14 = CWFKnownNetworksSupportingSeamlessSSIDTransitionForScanResult(networkCopy, transitionCopy, d);
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
        if ([(CWFAutoJoinManager *)self __allowKnownNetwork:v19 context:contextCopy allowForSeamlessSSIDTransition:networkCopy defer:0 targetQueue:self->_targetQueue error:0])
        {
          [orderedSet addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = [orderedSet copy];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)__candidateSupportsSeamlessSSIDTransition:(id)transition fromNetwork:(id)network context:(id)context
{
  transitionCopy = transition;
  networkCopy = network;
  contextCopy = context;
  if (CWFScanResultSupportsSeamlessSSIDTransition(networkCopy, transitionCopy))
  {
    matchingKnownNetworkProfile = [transitionCopy matchingKnownNetworkProfile];
    v12 = [(CWFAutoJoinManager *)self __allowKnownNetwork:matchingKnownNetworkProfile context:contextCopy allowForSeamlessSSIDTransition:networkCopy defer:0 targetQueue:self->_targetQueue error:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)__performGASQueryWithScanResults:(id)results ANQPElementIDList:(id)list maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v110 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  listCopy = list;
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
    *v100 = onlyCopy;
    *&v100[4] = 2048;
    *&v100[6] = age;
    LODWORD(v78) = 18;
    v77 = &v99;
    _os_log_send_and_compose_impl();
  }

  v80 = onlyCopy;
  ageCopy = age;

  array = [MEMORY[0x1E695DF70] array];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = resultsCopy;
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
        networkName = [v20 networkName];
        [v20 BSSID];
        v78 = v77 = networkName;
        v23 = [v21 stringWithFormat:@"'%@'/%@"];
        [array addObject:v23];
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
    v28 = [array componentsJoinedByString:{@", "}];
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
    v32 = [listCopy count];
    v33 = [listCopy componentsJoinedByString:{@", "}];
    v99 = 134218242;
    *v100 = v32;
    *&v100[8] = 2114;
    *&v100[10] = v33;
    LODWORD(v78) = 22;
    v77 = &v99;
    _os_log_send_and_compose_impl();
  }

  v34 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  performGASQueryHandler = [(CWFAutoJoinManager *)self performGASQueryHandler];

  v83 = listCopy;
  if (performGASQueryHandler)
  {
    v36 = objc_alloc_init(CWFANQPParameters);
    [(CWFANQPParameters *)v36 setScanResults:obj];
    [(CWFANQPParameters *)v36 setANQPElementIDList:listCopy];
    [(CWFANQPParameters *)v36 setAcceptableCacheAge:ageCopy];
    v92 = 0;
    v93 = 0;
    v37 = [(CWFAutoJoinManager *)self __calloutToPerformGASQueryWithParameters:v36 GASQueryNetworks:&v93 error:&v92];
    v38 = v93;
    v39 = v92;
    if (v37)
    {
      if ([v38 count])
      {
        gASQueryNetworks = [(CWFAutoJoinMetric *)self->_metric GASQueryNetworks];
        metric = self->_metric;
        if (gASQueryNetworks)
        {
          gASQueryNetworks2 = [(CWFAutoJoinMetric *)metric GASQueryNetworks];
          [gASQueryNetworks2 arrayByAddingObjectsFromArray:v38];
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
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:@"Failed to perform GAS/ANQP" forKeyedSubscript:*MEMORY[0x1E696A578]];
      [dictionary setObject:v39 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v79 = dictionary;
      v46 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:dictionary];
    }
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary2 setObject:@"CWFAutoJoinManager.performGASQueryHandler() not configured" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v79 = dictionary2;
    v46 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:dictionary2];
    v38 = 0;
    v37 = 0;
  }

  v49 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v34;
  [(CWFAutoJoinMetric *)self->_metric setGASQueryDuration:[(CWFAutoJoinMetric *)self->_metric GASQueryDuration]+ v49 / 0xF4240];
  if (v46)
  {
    gASQueryErrors = [(CWFAutoJoinMetric *)self->_metric GASQueryErrors];
    if (gASQueryErrors)
    {
      gASQueryErrors2 = [(CWFAutoJoinMetric *)self->_metric GASQueryErrors];
      v52 = [gASQueryErrors2 arrayByAddingObject:v46];
      [(CWFAutoJoinMetric *)self->_metric setGASQueryErrors:v52];
    }

    else
    {
      gASQueryErrors2 = [MEMORY[0x1E695DEC8] arrayWithObject:v46];
      [(CWFAutoJoinMetric *)self->_metric setGASQueryErrors:gASQueryErrors2];
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
    v108 = ageCopy;
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

  if (error && v84)
  {
    v73 = v84;
    *error = v84;
  }

  v74 = v63;

  v75 = *MEMORY[0x1E69E9840];
  return v63;
}

- (id)__performScanWithChannelList:(id)list SSIDList:(id)dList passive:(BOOL)passive dwellTime:(unint64_t)time maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only isPreAssociationScan:(BOOL)scan checkForKnownNetworks:(BOOL)self0 error:(id *)self1
{
  onlyCopy = only;
  passiveCopy = passive;
  scanCopy4 = scan;
  v126 = *MEMORY[0x1E69E9840];
  listCopy = list;
  dListCopy = dList;
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
    timeCopy = time;
    v115 = 1024;
    *v116 = onlyCopy;
    *&v116[4] = 2048;
    *&v116[6] = age;
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
    v26 = [listCopy count];
    v27 = [listCopy componentsJoinedByString:{@", "}];
    v113 = 134218242;
    timeCopy = v26;
    v115 = 2114;
    *v116 = v27;
    LODWORD(v92) = 22;
    v91 = &v113;
    _os_log_send_and_compose_impl();

    scanCopy4 = scan;
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
    v31 = [dListCopy count];
    v32 = [dListCopy componentsJoinedByString:{@", "}];
    v113 = 134218242;
    timeCopy = v31;
    v115 = 2114;
    *v116 = v32;
    LODWORD(v92) = 22;
    v91 = &v113;
    _os_log_send_and_compose_impl();

    scanCopy4 = scan;
  }

  v33 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  scanForNetworksHandler = [(CWFAutoJoinManager *)self scanForNetworksHandler];

  v98 = dListCopy;
  v99 = listCopy;
  ageCopy = age;
  if (scanForNetworksHandler)
  {
    v35 = objc_alloc_init(CWFScanParameters);
    [(CWFScanParameters *)v35 setBSSType:3];
    [(CWFScanParameters *)v35 setPHYMode:1];
    [(CWFScanParameters *)v35 setNumberOfScans:1];
    [(CWFScanParameters *)v35 setIncludeHiddenNetworks:1];
    [(CWFScanParameters *)v35 setAddScanDurationToMaxAge:1];
    [(CWFScanParameters *)v35 setChannels:listCopy];
    [(CWFScanParameters *)v35 setSSIDList:dListCopy];
    [(CWFScanParameters *)v35 setDwellTime:time];
    [(CWFScanParameters *)v35 setScanFlags:2592];
    v94 = v33;
    if (onlyCopy)
    {
      [(CWFScanParameters *)v35 setScanType:3];
    }

    else
    {
      if (passiveCopy)
      {
        v40 = 2;
      }

      else
      {
        v40 = 1;
      }

      [(CWFScanParameters *)v35 setScanType:v40, v91, v92];
      [(CWFScanParameters *)v35 setAcceptableCacheAge:age];
    }

    [(CWFScanParameters *)v35 setMaximumAge:age, v91, v92];
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
        if (scanCopy4)
        {
          [(CWFAutoJoinMetric *)metric preAssociationScanChannels];
        }

        else
        {
          [(CWFAutoJoinMetric *)metric scanChannels];
        }
        v43 = ;
        v100 = v38;
        HIDWORD(v92) = onlyCopy;
        v97 = v43;
        if (v43)
        {
          array = [v43 mutableCopy];
        }

        else
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        v46 = array;
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
        scanCopy4 = scan;
        if (scan)
        {
          [(CWFAutoJoinMetric *)v53 setPreAssociationScanChannels:v46];
        }

        else
        {
          [(CWFAutoJoinMetric *)v53 setScanChannels:v46];
        }

        onlyCopy = HIDWORD(v92);

        v38 = v100;
      }

      v54 = v39;
      v96 = 0;
      v37 = 0;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:@"Failed to perform scan" forKeyedSubscript:*MEMORY[0x1E696A578]];
      [dictionary setObject:v41 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v96 = dictionary;
      v37 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:dictionary];
    }

    v33 = v94;
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary2 setObject:@"CWFAutoJoinManager.scanForNetworksHandler() not configured" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v96 = dictionary2;
    v37 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:dictionary2];
    v38 = 0;
    v39 = 0;
  }

  v55 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v33) / 0xF4240;
  v56 = self->_metric;
  if (scanCopy4)
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
    scanErrors = [(CWFAutoJoinMetric *)self->_metric scanErrors];
    v59 = [scanErrors arrayByAddingObject:v37];
    [(CWFAutoJoinMetric *)self->_metric setScanErrors:v59];
  }

  else
  {
    scanErrors = [MEMORY[0x1E695DEC8] arrayWithObject:v37];
    [(CWFAutoJoinMetric *)self->_metric setScanErrors:scanErrors];
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
    timeCopy = v63;
    v115 = 2048;
    *v116 = v55;
    *&v116[8] = 2048;
    *&v116[10] = v64;
    v117 = 2114;
    v118 = v65;
    v119 = 2048;
    v120 = v66;
    v121 = 1024;
    v122 = onlyCopy;
    v123 = 2048;
    v124 = ageCopy;
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
    if (onlyCopy)
    {
      v70 = " Cache";
    }

    else
    {
      v70 = "";
    }

    v71 = [v39 count];
    v113 = 136446466;
    timeCopy = v70;
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
          timeCopy = v78;
          _os_log_send_and_compose_impl();
        }

        channel = [v78 channel];
        v83 = [(CWFAutoJoinManager *)self __basicChannelRepresentation:channel];

        scanChannels = [(CWFAutoJoinMetric *)self->_metric scanChannels];
        v85 = [scanChannels containsObject:v83];

        if (v85)
        {
          self->_didDiscoverBSS = 1;
          sSID = [v78 SSID];
          v87 = [sSID length];

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

  if (networks)
  {
    self->_didDiscoverKnownNetworks = [(CWFAutoJoinManager *)self __isEnabledKnownNetworkNearby];
  }

  if (error && v95)
  {
    v88 = v95;
    *error = v95;
  }

  v89 = *MEMORY[0x1E69E9840];

  return v72;
}

- (id)__alreadyFoundFollowup6GHzBSSWithSignature:(id)signature
{
  v35 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
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
            shortSSID = [v12 shortSSID];
            bSSID = [v12 BSSID];
            channel = [v12 channel];
            v17 = [v13 stringWithFormat:@"%lu/%@/%lu", shortSSID, bSSID, objc_msgSend(channel, "channel")];

            if (signatureCopy)
            {
              if (v17 && ([v17 isEqual:signatureCopy] & 1) != 0)
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

- (id)__perform6GHzFollowupDiscoveryWithScanResults:(id)results SSIDList:(id)list dwellTime:(unint64_t)time context:(id)context error:(id *)error
{
  v253 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  listCopy = list;
  contextCopy = context;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

  [resultsCopy sortedArrayUsingComparator:&unk_1F5B891D0];
  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  v169 = v231 = 0u;
  selfCopy = self;
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
        channel = [v17 channel];
        v21 = [(CWFAutoJoinManager *)self __basicChannelRepresentation:channel];

        if ([v199 containsObject:v21])
        {
          v193 = v21;
          sSID = [v17 SSID];
          shortSSID = [v17 shortSSID];
          v224 = 0u;
          v225 = 0u;
          v226 = 0u;
          v227 = 0u;
          knownNetworks = [contextCopy knownNetworks];
          v203 = [knownNetworks countByEnumeratingWithState:&v224 objects:v250 count:16];
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
                objc_enumerationMutation(knownNetworks);
              }

              v25 = *(*(&v224 + 1) + 8 * j);
              v26 = objc_autoreleasePoolPush();
              sSID2 = [v25 SSID];
              shortSSID2 = [v25 shortSSID];
              v29 = shortSSID2;
              if (sSID2)
              {
                v30 = sSID == 0;
              }

              else
              {
                v30 = 1;
              }

              if (v30)
              {
                if (!shortSSID || shortSSID != shortSSID2)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                v31 = [sSID2 isEqual:sSID];
                if (shortSSID)
                {
                  v32 = shortSSID == v29;
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
              bSSID = [v17 BSSID];
              v36 = v17;
              channel2 = [v17 channel];
              v38 = [v34 stringWithFormat:@"%lu/%@/%lu", shortSSID, bSSID, objc_msgSend(channel2, "channel")];

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

              v42 = [(NSMutableDictionary *)selfCopy->_followup6GHzFILSDMap objectForKeyedSubscript:v38];

              if (!v42)
              {
                [(NSMutableDictionary *)selfCopy->_followup6GHzFILSDMap setObject:v36 forKeyedSubscript:v38];
              }

              v163 = [(CWFAutoJoinManager *)selfCopy __alreadyFoundFollowup6GHzBSSWithSignature:v38, v161, v163];
              if (v163)
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

                array = v205;
                if (!v205)
                {
                  array = [MEMORY[0x1E695DF70] array];
                }

                v205 = array;
                [array addObject:{v163, v160, v162}];
              }

              else
              {
                v46 = objc_alloc_init(CWFScanParameters);
                networkName = [v25 networkName];
                [(CWFScanParameters *)v46 setSSID:networkName];

                bSSID2 = [v36 BSSID];
                [(CWFScanParameters *)v46 setBSSID:bSSID2];

                v249 = v193;
                v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v249 count:1];
                [(CWFScanParameters *)v46 setChannels:v49];

                [(CWFScanParameters *)v46 setBSSType:3];
                [(CWFScanParameters *)v46 setPHYMode:1];
                [(CWFScanParameters *)v46 setNumberOfScans:1];
                [(CWFScanParameters *)v46 setIncludeHiddenNetworks:1];
                [(CWFScanParameters *)v46 setAcceptableCacheAge:0];
                [(CWFScanParameters *)v46 setDwellTime:time];
                [(CWFScanParameters *)v46 setScanFlags:1056];
                [(CWFScanParameters *)v46 setScanType:1];
                [dictionary setObject:v46 forKeyedSubscript:v38];
              }

              self = selfCopy;

              v17 = v36;
LABEL_55:

              objc_autoreleasePoolPop(v26);
            }

            v203 = [knownNetworks countByEnumeratingWithState:&v224 objects:v250 count:16];
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
        rNRBSSList = [v17 RNRBSSList];
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v223 = 0u;
        v53 = rNRBSSList;
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
              channel3 = [v55 channel];
              if ([channel3 is6GHz])
              {
                shortSSID3 = [v55 shortSSID];
                if (shortSSID3 || [v55 isSameSSID] && (shortSSID3 = objc_msgSend(v194, "shortSSID")) != 0)
                {
                  v58 = shortSSID3;
                  bSSID3 = [v55 BSSID];
                  if (bSSID3)
                  {
                    v186 = k;
                    v218 = 0u;
                    v219 = 0u;
                    v216 = 0u;
                    v217 = 0u;
                    knownNetworks2 = [contextCopy knownNetworks];
                    v204 = [knownNetworks2 countByEnumeratingWithState:&v216 objects:v247 count:16];
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
                            objc_enumerationMutation(knownNetworks2);
                          }

                          v61 = *(*(&v216 + 1) + 8 * v60);
                          v62 = objc_autoreleasePoolPush();
                          if (v58 == [v61 shortSSID])
                          {
                            v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu/%@/%lu", v58, bSSID3, objc_msgSend(channel3, "channel")];
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

                            v67 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:channel3];
                            if ([v199 containsObject:v67])
                            {
                              v68 = [(NSMutableDictionary *)selfCopy->_followup6GHzRNRMap objectForKeyedSubscript:v63];

                              if (!v68)
                              {
                                [(NSMutableDictionary *)selfCopy->_followup6GHzRNRMap setObject:v194 forKeyedSubscript:v63];
                              }

                              v162 = [(CWFAutoJoinManager *)selfCopy __alreadyFoundFollowup6GHzBSSWithSignature:v63, v160, v162];
                              if (v162)
                              {
                                v70 = v162;
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

                                array2 = v205;
                                if (!v205)
                                {
                                  array2 = [MEMORY[0x1E695DF70] array];
                                }

                                v205 = array2;
                                [array2 addObject:{v70, v160, v162}];
                              }

                              else
                              {
                                v73 = objc_alloc_init(CWFScanParameters);
                                networkName2 = [v61 networkName];
                                [(CWFScanParameters *)v73 setSSID:networkName2];

                                [(CWFScanParameters *)v73 setBSSID:bSSID3];
                                v246 = v67;
                                v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v246 count:1];
                                [(CWFScanParameters *)v73 setChannels:v75];

                                [(CWFScanParameters *)v73 setBSSType:3];
                                [(CWFScanParameters *)v73 setPHYMode:1];
                                [(CWFScanParameters *)v73 setNumberOfScans:1];
                                [(CWFScanParameters *)v73 setIncludeHiddenNetworks:1];
                                [(CWFScanParameters *)v73 setAcceptableCacheAge:0];
                                [(CWFScanParameters *)v73 setDwellTime:time];
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
                                [dictionary setObject:v73 forKeyedSubscript:v63];

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

                            self = selfCopy;
                          }

                          objc_autoreleasePoolPop(v62);
                          ++v60;
                        }

                        while (v204 != v60);
                        v81 = [knownNetworks2 countByEnumeratingWithState:&v216 objects:v247 count:16];
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

  if ([dictionary count])
  {
    followup6GHzScanChannels = [(CWFAutoJoinMetric *)self->_metric followup6GHzScanChannels];
    v164 = followup6GHzScanChannels;
    if (followup6GHzScanChannels)
    {
      array3 = [followup6GHzScanChannels mutableCopy];
    }

    else
    {
      array3 = [MEMORY[0x1E695DF70] array];
    }

    v172 = array3;

    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    allKeys = [dictionary allKeys];
    v90 = [allKeys countByEnumeratingWithState:&v212 objects:v245 count:16];
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
      v182 = allKeys;
      do
      {
        v93 = 0;
        v187 = v91;
        do
        {
          if (*v213 != v192)
          {
            objc_enumerationMutation(allKeys);
          }

          v198 = v93;
          v94 = *(*(&v212 + 1) + 8 * v93);
          v195 = objc_autoreleasePoolPush();
          v95 = [dictionary objectForKeyedSubscript:v94];
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

            array4 = v205;
            v106 = v195;
            v105 = v198;
            if (!v205)
            {
              array4 = [MEMORY[0x1E695DF70] array];
            }

            v205 = array4;
            [array4 addObject:{v96, v160, v162}];
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
                sSID3 = [v202 SSID];
                shortSSID4 = [v202 shortSSID];
                bSSID4 = [v202 BSSID];
                redactedForWiFi = [bSSID4 redactedForWiFi];
                channels = [v202 channels];
                firstObject = [channels firstObject];
                v237 = 138544130;
                v238 = sSID3;
                v239 = 2048;
                v240 = shortSSID4;
                v241 = 2114;
                v242 = redactedForWiFi;
                v243 = 2114;
                v244 = firstObject;
                LODWORD(v162) = 42;
                v160 = &v237;
                _os_log_send_and_compose_impl();

                v91 = v187;
                allKeys = v182;
              }

              array5 = v205;
              if (!v205)
              {
                array5 = [MEMORY[0x1E695DF70] array];
              }

              v205 = array5;
              [array5 addObjectsFromArray:{v99, v160, v162}];
              self = selfCopy;
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
                sSID4 = [v202 SSID];
                shortSSID5 = [v202 shortSSID];
                bSSID5 = [v202 BSSID];
                redactedForWiFi2 = [bSSID5 redactedForWiFi];
                channels2 = [v202 channels];
                firstObject2 = [channels2 firstObject];
                v237 = 138544130;
                v238 = sSID4;
                v239 = 2048;
                v240 = shortSSID5;
                v241 = 2114;
                v242 = redactedForWiFi2;
                v243 = 2114;
                v244 = firstObject2;
                LODWORD(v162) = 42;
                v160 = &v237;
                _os_log_send_and_compose_impl();

                v116 = v202;
              }

              v123 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
              v124 = selfCopy;
              scanForNetworksHandler = [(CWFAutoJoinManager *)selfCopy scanForNetworksHandler];

              if (scanForNetworksHandler)
              {
                v211 = 0;
                [(CWFAutoJoinManager *)selfCopy __calloutToScanForNetworksWithParameters:v116 scanChannels:0 error:&v211];
                v127 = v126 = v116;
                v128 = v211;
                v185 = v128;
                if (v127)
                {
                  channels3 = [v126 channels];
                  firstObject3 = [channels3 firstObject];

                  [v172 addObject:firstObject3];
                  array6 = v205;
                  if (!v205)
                  {
                    array6 = [MEMORY[0x1E695DF70] array];
                  }

                  v205 = array6;
                  [array6 addObjectsFromArray:{v127, v160, v162}];
                  v124 = selfCopy;
                  [(NSMutableDictionary *)selfCopy->_followup6GHzScanResultsMap setObject:v127 forKeyedSubscript:v126];
                }

                else
                {
                  v133 = v128;
                  dictionary2 = [MEMORY[0x1E695DF90] dictionary];

                  [dictionary2 setObject:@"Failed to perform 6GHz followup scan" forKeyedSubscript:v177];
                  [dictionary2 setObject:v133 forKeyedSubscript:v168];
                  [MEMORY[0x1E696ABC0] errorWithDomain:v176 code:2 userInfo:dictionary2];
                  firstObject3 = v189;
                  v189 = v178 = dictionary2;
                  v124 = selfCopy;
                }
              }

              else
              {
                dictionary3 = [MEMORY[0x1E695DF90] dictionary];

                [dictionary3 setObject:@"CWFAutoJoinManager.scanForNetworksHandler() not configured" forKeyedSubscript:v177];
                [MEMORY[0x1E696ABC0] errorWithDomain:v176 code:6 userInfo:dictionary3];
                v127 = 0;
                v185 = 0;
                firstObject3 = v189;
                v189 = v178 = dictionary3;
              }

              v135 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v123;
              [(CWFAutoJoinMetric *)v124->_metric setFollowup6GHzScanDuration:[(CWFAutoJoinMetric *)v124->_metric followup6GHzScanDuration]+ v135 / 0xF4240];
              if (v189)
              {
                scanErrors = [(CWFAutoJoinMetric *)v124->_metric scanErrors];
                if (scanErrors)
                {
                  scanErrors2 = [(CWFAutoJoinMetric *)v124->_metric scanErrors];
                  v138 = [scanErrors2 arrayByAddingObject:v189];
                  [(CWFAutoJoinMetric *)v124->_metric setScanErrors:v138];
                }

                else
                {
                  scanErrors2 = [MEMORY[0x1E695DEC8] arrayWithObject:v189];
                  [(CWFAutoJoinMetric *)v124->_metric setScanErrors:scanErrors2];
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
                v144 = [(CWFAutoJoinManager *)selfCopy __descriptionForError:v189];
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

              self = selfCopy;
              allKeys = v182;
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
        v91 = [allKeys countByEnumeratingWithState:&v212 objects:v245 count:16];
      }

      while (v91);
    }

    else
    {
      v178 = 0;
      v189 = 0;
    }

    [(CWFAutoJoinMetric *)self->_metric setFollowup6GHzScanChannels:v172];
    if (error)
    {
      v88 = v178;
      if (v189)
      {
        *error = v189;
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

- (id)__passpointScanResults:(id)results
{
  v18 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [resultsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    array = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isPasspoint])
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          [array addObject:v9];
        }
      }

      v5 = [resultsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    array = 0;
  }

  v10 = [array copy];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)__isNonPinnedEAPTLSCandidate:(id)candidate
{
  matchingKnownNetworkProfile = [candidate matchingKnownNetworkProfile];
  if (![matchingKnownNetworkProfile isEAP])
  {
    goto LABEL_9;
  }

  acceptedEAPTypes = [matchingKnownNetworkProfile acceptedEAPTypes];
  v5 = [acceptedEAPTypes containsObject:&unk_1F5BBC658];

  acceptedEAPTypes2 = [matchingKnownNetworkProfile acceptedEAPTypes];
  v7 = [acceptedEAPTypes2 containsObject:&unk_1F5BBC670];

  if (v5 && v7)
  {
    acceptedEAPTypes3 = [matchingKnownNetworkProfile acceptedEAPTypes];
    v9 = [acceptedEAPTypes3 count];

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

    acceptedEAPTypes4 = [matchingKnownNetworkProfile acceptedEAPTypes];
    v11 = [acceptedEAPTypes4 count];

    if (v11 != 1)
    {
      goto LABEL_9;
    }
  }

  tLSTrustedServerNames = [matchingKnownNetworkProfile TLSTrustedServerNames];
  v13 = [tLSTrustedServerNames count] == 0;

LABEL_10:
  return v13;
}

- (BOOL)__allowJoinCandidate:(id)candidate context:(id)context defer:(BOOL *)defer error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  contextCopy = context;
  v68 = 0;
  autoJoinParameters = [contextCopy autoJoinParameters];
  trigger = [autoJoinParameters trigger];

  failedToJoinKnownNetworkIDs = self->_failedToJoinKnownNetworkIDs;
  matchingKnownNetworkProfile = [candidateCopy matchingKnownNetworkProfile];
  identifier = [matchingKnownNetworkProfile identifier];
  LODWORD(failedToJoinKnownNetworkIDs) = [(NSMutableSet *)failedToJoinKnownNetworkIDs containsObject:identifier];

  if (failedToJoinKnownNetworkIDs)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = dictionary;
    v19 = *MEMORY[0x1E696A578];
    v20 = @"Already failed to auto-join known network profile";
LABEL_18:
    [dictionary setObject:v20 forKeyedSubscript:v19];
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary2];
    v31 = 0;
LABEL_19:

    goto LABEL_20;
  }

  channel = [candidateCopy channel];
  if ([channel is6GHz] && !-[CWFAutoJoinManager maxCompatibilityEnabled](self, "maxCompatibilityEnabled"))
  {
    matchingKnownNetworkProfile2 = [candidateCopy matchingKnownNetworkProfile];
    isStandalone6G = [matchingKnownNetworkProfile2 isStandalone6G];

    if (isStandalone6G)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  channel2 = [candidateCopy channel];
  if ([channel2 is6GHz])
  {

    if ((trigger & 0xFFFFFFFFFFFFFFFELL) == 0x36)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      dictionary2 = dictionary;
      v19 = *MEMORY[0x1E696A578];
      v20 = @"6G is not allowed with current trigger";
      goto LABEL_18;
    }
  }

  else
  {
  }

  channel3 = [candidateCopy channel];
  is6GHz = [channel3 is6GHz];

  if ((is6GHz & 1) == 0 && trigger == 45)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = dictionary;
    v19 = *MEMORY[0x1E696A578];
    v20 = @"non-6G is not allowed with current trigger";
    goto LABEL_18;
  }

  channel4 = [candidateCopy channel];
  if (([channel4 is6GHz] & 1) == 0)
  {

    goto LABEL_48;
  }

  matchingKnownNetworkProfile3 = [candidateCopy matchingKnownNetworkProfile];
  disable6EMode = [matchingKnownNetworkProfile3 disable6EMode];

  if (disable6EMode == 2)
  {
LABEL_17:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = dictionary;
    v19 = *MEMORY[0x1E696A578];
    v20 = @"6G is not allowed with this network";
    goto LABEL_18;
  }

LABEL_48:
  matchingKnownNetworkProfile4 = [candidateCopy matchingKnownNetworkProfile];
  targetQueue = self->_targetQueue;
  v67 = 0;
  v55 = [(CWFAutoJoinManager *)self __allowKnownNetwork:matchingKnownNetworkProfile4 context:contextCopy allowForSeamlessSSIDTransition:0 defer:&v68 targetQueue:targetQueue error:&v67];
  v30 = v67;

  if (v55)
  {
    deferCopy = defer;
    matchingKnownNetworkProfile5 = [candidateCopy matchingKnownNetworkProfile];
    if ([matchingKnownNetworkProfile5 addReason] == 10 && ((objc_msgSend(candidateCopy, "isOpen") & 1) != 0 || (objc_msgSend(candidateCopy, "isOWE") & 1) != 0 || (objc_msgSend(candidateCopy, "isWAPI") & 1) != 0 || objc_msgSend(candidateCopy, "isPSK") && ((objc_msgSend(candidateCopy, "isWEP") & 1) != 0 || (objc_msgSend(candidateCopy, "isWPA") & 1) != 0) || (objc_msgSend(candidateCopy, "hasWEP104Cipher") & 1) != 0 || (objc_msgSend(candidateCopy, "hasWEP40Cipher") & 1) != 0 || (objc_msgSend(candidateCopy, "hasTKIPCipher") & 1) != 0))
    {
      matchingKnownNetworkProfile6 = [candidateCopy matchingKnownNetworkProfile];
      lastJoinedByUserAt = [matchingKnownNetworkProfile6 lastJoinedByUserAt];

      if (!lastJoinedByUserAt)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [dictionary2 setObject:@"Carrier-based known network profile with weak security never joined by user" forKeyedSubscript:*MEMORY[0x1E696A578]];
        v60 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary2];

        v31 = 0;
        v30 = v60;
        defer = deferCopy;
        goto LABEL_19;
      }
    }

    else
    {
    }

    allowJoinCandidateHandler = [(CWFAutoJoinManager *)self allowJoinCandidateHandler];

    if (allowJoinCandidateHandler)
    {
      v66 = 0;
      v62 = [(CWFAutoJoinManager *)self __calloutToAllowJoinCandidate:candidateCopy trigger:trigger defer:&v68 error:&v66];
      dictionary2 = v66;
      defer = deferCopy;
      if (v62)
      {
        v31 = 1;
      }

      else
      {
        dictionary3 = [MEMORY[0x1E695DF90] dictionary];
        [dictionary3 setObject:@"Join candidate is not allowed by daemon" forKeyedSubscript:*MEMORY[0x1E696A578]];
        [dictionary3 setObject:dictionary2 forKeyedSubscript:*MEMORY[0x1E696AA08]];
        v64 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary3];

        v31 = 0;
        v30 = v64;
      }

      goto LABEL_19;
    }

    v31 = 1;
    defer = deferCopy;
  }

  else
  {
    v31 = 0;
  }

LABEL_20:
  if ([(CWFAutoJoinManager *)self __isDeferrableJoinCandidate:candidateCopy])
  {
    v68 = 1;
  }

  matchingKnownNetworkProfile7 = [candidateCopy matchingKnownNetworkProfile];
  lastJoinedByUserAt2 = [matchingKnownNetworkProfile7 lastJoinedByUserAt];
  if (!lastJoinedByUserAt2)
  {
    preferUserConfiguredNetworks = [contextCopy preferUserConfiguredNetworks];

    if (preferUserConfiguredNetworks)
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
    if (!defer)
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
    matchingKnownNetworkProfile8 = [candidateCopy matchingKnownNetworkProfile];
    [matchingKnownNetworkProfile8 identifier];
    v65 = contextCopy;
    errorCopy = error;
    v41 = v40 = defer;
    redactedForWiFi = [v41 redactedForWiFi];
    v43 = [(CWFAutoJoinManager *)self __descriptionForError:v30];
    v69 = 138543874;
    v70 = redactedForWiFi;
    v71 = 2114;
    v72 = v43;
    v73 = 2114;
    v74 = candidateCopy;
    _os_log_send_and_compose_impl();

    defer = v40;
    error = errorCopy;
    contextCopy = v65;
  }

  if (defer)
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
        matchingKnownNetworkProfile9 = [candidateCopy matchingKnownNetworkProfile];
        identifier2 = [matchingKnownNetworkProfile9 identifier];
        redactedForWiFi2 = [identifier2 redactedForWiFi];
        v69 = 138543618;
        v70 = redactedForWiFi2;
        v71 = 2114;
        v72 = candidateCopy;
        _os_log_send_and_compose_impl();
      }

      *defer = v68;
    }
  }

LABEL_43:
  if (error && v30)
  {
    v50 = v30;
    *error = v30;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v31;
}

- (BOOL)__performJoinWithNetwork:(id)network context:(id)context error:(id *)error
{
  v127 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  contextCopy = context;
  selfCopy = self;
  associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];
  v107 = networkCopy;
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
  associateToNetworkHandler = [(CWFAutoJoinManager *)self associateToNetworkHandler];

  if (!associateToNetworkHandler)
  {
    v122 = *MEMORY[0x1E696A578];
    v123 = @"CWFAutoJoinManager.associateToNetworkHandler() not configured";
    userInfo = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:userInfo];
    v21 = 0;
    v99 = 0;
    v105 = 0;
    associatedNetwork2 = v107;
    goto LABEL_58;
  }

  v99 = objc_alloc_init(CWFAssocParameters);
  [(CWFAssocParameters *)v99 setScanResult:v107];
  sSID = [v107 SSID];
  sSID2 = [associatedNetwork SSID];
  v14 = sSID2;
  if (sSID == sSID2)
  {
  }

  else
  {
    sSID3 = [v107 SSID];
    if (sSID3)
    {
      sSID4 = [associatedNetwork SSID];
      if (sSID4)
      {
        sSID5 = [v107 SSID];
        sSID6 = [associatedNetwork SSID];
        v19 = ([sSID5 isEqual:sSID6] & 1) != 0 || -[CWFAutoJoinManager __candidateSupportsSeamlessSSIDTransition:fromNetwork:context:](selfCopy, "__candidateSupportsSeamlessSSIDTransition:fromNetwork:context:", v107, associatedNetwork, contextCopy);
      }

      else
      {
        v19 = [(CWFAutoJoinManager *)selfCopy __candidateSupportsSeamlessSSIDTransition:v107 fromNetwork:associatedNetwork context:contextCopy];
      }

      if (v19)
      {
        goto LABEL_20;
      }

LABEL_15:
      v24 = 0;
      goto LABEL_41;
    }

    v23 = [(CWFAutoJoinManager *)selfCopy __candidateSupportsSeamlessSSIDTransition:v107 fromNetwork:associatedNetwork context:contextCopy];

    if (!v23)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  v25 = [(CWFAutoJoinManager *)selfCopy colocatedScopeID:v91];
  [(CWFAssocParameters *)v99 setColocatedScopeID:v25];

  autoJoinParameters = [contextCopy autoJoinParameters];
  if ([autoJoinParameters trigger] == 54)
  {
  }

  else
  {
    autoJoinParameters2 = [contextCopy autoJoinParameters];
    v24 = [autoJoinParameters2 trigger] == 55;

    if (!v24)
    {
      goto LABEL_41;
    }
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  autoJoinParameters3 = [contextCopy autoJoinParameters];
  obj = [autoJoinParameters3 preferredChannels];

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
      v106 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v30];
      channel = [v107 channel];
      v32 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:channel];
      v33 = v32;
      if (v106 == v32)
      {

LABEL_39:
        [(CWFAssocParameters *)v99 setForceBSSID:1];
        goto LABEL_40;
      }

      v34 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v30];
      if (v34)
      {
        channel2 = [v107 channel];
        v36 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:channel2];
        if (v36)
        {
          v37 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v30];
          channel3 = [v107 channel];
          v39 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:channel3];
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
  autoJoinParameters4 = [contextCopy autoJoinParameters];
  if ([autoJoinParameters4 mode] == 2 && !objc_msgSend(contextCopy, "BSSChannelsOnly"))
  {
  }

  else
  {
    didForceAllRemainingChannels = [contextCopy didForceAllRemainingChannels];

    if ((didForceAllRemainingChannels & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  allObjects = [(NSMutableSet *)selfCopy->_cumulativeScanResults allObjects];
  v44 = CWFScanResultHas6GHzOnlyBSS(v107, allObjects, &unk_1F5B8AC80);

  if (v44)
  {
    v21 = 1;
LABEL_49:
    [(CWFAssocParameters *)v99 setHas6GHzOnlyBSS:1];
    goto LABEL_50;
  }

LABEL_48:
  matchingKnownNetworkProfile = [v107 matchingKnownNetworkProfile];
  wasRecently6GHzOnlyOnAnyDevice = [matchingKnownNetworkProfile wasRecently6GHzOnlyOnAnyDevice];

  v21 = 0;
  if (wasRecently6GHzOnlyOnAnyDevice)
  {
    goto LABEL_49;
  }

LABEL_50:
  v109 = 0;
  v105 = [(CWFAutoJoinManager *)selfCopy __calloutToAssociateWithParameters:v99 error:&v109];
  v47 = v109;
  v48 = v47;
  if (v105)
  {
    associatedNetwork2 = [(CWFAutoJoinManager *)selfCopy associatedNetwork];

    if (v24)
    {
      v49 = selfCopy;
      objc_sync_enter(v49);
      v50 = [associatedNetwork copy];
      steerFromNetwork = v49->_steerFromNetwork;
      v49->_steerFromNetwork = v50;

      v52 = [associatedNetwork2 copy];
      steerToNetwork = v49->_steerToNetwork;
      v49->_steerToNetwork = v52;

      objc_sync_exit(v49);
    }

    userInfo = 0;
    v20 = 0;
  }

  else
  {
    userInfo = [v47 userInfo];
    if (!userInfo)
    {
      v124 = *MEMORY[0x1E696A578];
      v125 = @"Failed to join to network";
      userInfo = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
    }

    v54 = MEMORY[0x1E696ABC0];
    code = [v48 code];
    v20 = [v54 errorWithDomain:*MEMORY[0x1E696A798] code:code userInfo:userInfo];
    associatedNetwork2 = v107;
  }

LABEL_58:
  v93 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (v20)
  {
    joinErrors = [(CWFAutoJoinMetric *)selfCopy->_metric joinErrors];
    if (joinErrors)
    {
      joinErrors2 = [(CWFAutoJoinMetric *)selfCopy->_metric joinErrors];
      v58 = [joinErrors2 arrayByAddingObject:v20];
      [(CWFAutoJoinMetric *)selfCopy->_metric setJoinErrors:v58];
    }

    else
    {
      joinErrors2 = [MEMORY[0x1E695DEC8] arrayWithObject:v20];
      [(CWFAutoJoinMetric *)selfCopy->_metric setJoinErrors:joinErrors2];
    }
  }

  v59 = MEMORY[0x1E696AEC0];
  shortSSID = [associatedNetwork2 shortSSID];
  bSSID = [associatedNetwork2 BSSID];
  channel4 = [associatedNetwork2 channel];
  v63 = [v59 stringWithFormat:@"%lu/%@/%lu", shortSSID, bSSID, objc_msgSend(channel4, "channel")];

  v64 = [(NSMutableDictionary *)selfCopy->_followup6GHzRNRMap objectForKeyedSubscript:v63];
  obja = [(NSMutableDictionary *)selfCopy->_followup6GHzFILSDMap objectForKeyedSubscript:v63];
  [(CWFAutoJoinMetric *)selfCopy->_metric setWas6EPreferOn:[(CWFAutoJoinManager *)selfCopy maxCompatibilityEnabled]];
  matchingKnownNetworkProfile2 = [associatedNetwork2 matchingKnownNetworkProfile];
  -[CWFAutoJoinMetric setWas6EDisabled:](selfCopy->_metric, "setWas6EDisabled:", [matchingKnownNetworkProfile2 disable6EMode] == 2);
  if (v105)
  {
    channel5 = [v64 channel];
    v66 = [associatedNetwork2 copy];
    [(CWFAutoJoinManager *)selfCopy __updateRNRChannel:channel5 has6GHzOnlyBSS:v21 joinCandidate:v66];

    channel6 = [associatedNetwork2 channel];
    if ([channel6 is6GHz])
    {
      allowStandalone6GHz = [contextCopy allowStandalone6GHz];

      if ((allowStandalone6GHz & 1) == 0)
      {
        [(CWFAutoJoinMetric *)selfCopy->_metric setWas6GHzDeprioritized:0];
      }
    }

    else
    {
    }

    sSID7 = [associatedNetwork SSID];
    sSID8 = [associatedNetwork2 SSID];
    if (sSID7 == sSID8)
    {
      [(CWFAutoJoinMetric *)selfCopy->_metric setDidTriggerReassoc:1];
    }

    else
    {
      sSID9 = [associatedNetwork SSID];
      if (sSID9)
      {
        sSID10 = [associatedNetwork2 SSID];
        if (sSID10)
        {
          sSID11 = [associatedNetwork SSID];
          sSID12 = [associatedNetwork2 SSID];
          -[CWFAutoJoinMetric setDidTriggerReassoc:](selfCopy->_metric, "setDidTriggerReassoc:", [sSID11 isEqual:sSID12]);
        }

        else
        {
          [(CWFAutoJoinMetric *)selfCopy->_metric setDidTriggerReassoc:0];
        }
      }

      else
      {
        [(CWFAutoJoinMetric *)selfCopy->_metric setDidTriggerReassoc:0];
      }
    }

    if (![(CWFAutoJoinMetric *)selfCopy->_metric didTriggerReassoc])
    {
      colocatedScopeID = [(CWFAssocParameters *)v99 colocatedScopeID];
      [(CWFAutoJoinMetric *)selfCopy->_metric setDidPerformSeamlessSSIDTransition:colocatedScopeID != 0];
    }

    v76 = selfCopy;
    objc_sync_enter(v76);
    deferredKnownNetworks = v76->_deferredKnownNetworks;
    matchingKnownNetworkProfile3 = [associatedNetwork2 matchingKnownNetworkProfile];
    LODWORD(deferredKnownNetworks) = [(NSMutableOrderedSet *)deferredKnownNetworks containsObject:matchingKnownNetworkProfile3];

    if (deferredKnownNetworks)
    {
      [(CWFAutoJoinMetric *)selfCopy->_metric setDidJoinDeferredNetwork:1];
    }

    objc_sync_exit(v76);
  }

  if (v64)
  {
    [(CWFAutoJoinMetric *)selfCopy->_metric setWasDiscoveredViaRNR:1];
  }

  else if (obja)
  {
    [(CWFAutoJoinMetric *)selfCopy->_metric setWasDiscoveredViaFILSD:1];
  }

  v79 = [(CWFAutoJoinManager *)selfCopy __alreadyFoundFollowup6GHzBSSWithSignature:v63];

  if (v79)
  {
    [(CWFAutoJoinMetric *)selfCopy->_metric setWasDiscoveredVia6GHzFollowup:1];
  }

  [(CWFAutoJoinMetric *)selfCopy->_metric setAutoJoinedNetwork:associatedNetwork2];
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

    v85 = [(CWFAutoJoinManager *)selfCopy __descriptionForError:v20];
    autoJoinedNetwork = [(CWFAutoJoinMetric *)selfCopy->_metric autoJoinedNetwork];
    v114 = 136446978;
    v115 = v84;
    v116 = 2048;
    v117 = (v93 - v94) / 0xF4240;
    v118 = 2114;
    v119 = v85;
    v120 = 2114;
    v121 = autoJoinedNetwork;
    _os_log_send_and_compose_impl();
  }

  v87 = v20 == 0;
  if (!error)
  {
    v87 = 1;
  }

  if (!v87)
  {
    v88 = v20;
    *error = v20;
  }

  v89 = *MEMORY[0x1E69E9840];
  return v105;
}

- (void)__sortJoinCandidates:(id)candidates context:(id)context
{
  contextCopy = context;
  candidatesCopy = candidates;
  preferUserConfiguredNetworks = [contextCopy preferUserConfiguredNetworks];
  autoJoinParameters = [contextCopy autoJoinParameters];

  trigger = [autoJoinParameters trigger];
  associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];
  joinCandidateComparator = [(CWFAutoJoinManager *)self joinCandidateComparator];
  v12 = sub_1E0BEFAA0(1, preferUserConfiguredNetworks, trigger, associatedNetwork, joinCandidateComparator);
  [candidatesCopy sortUsingDescriptors:v12];
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
          allValues = [(NSMutableDictionary *)self->_disallowedKnownNetworksMap allValues];
          v10 = sub_1E0BED85C(v8, allValues);

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

- (id)__morePreferredKnownNetworksWithCandidate:(id)candidate knownNetworks:(id)networks context:(id)context
{
  v75 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  networksCopy = networks;
  contextCopy = context;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v63 = contextCopy;
  autoJoinParameters = [contextCopy autoJoinParameters];
  trigger = [autoJoinParameters trigger];

  lastJoinedAt = [candidateCopy lastJoinedAt];
  lastDiscoveredAt = [candidateCopy lastDiscoveredAt];
  networkGroupID = [candidateCopy networkGroupID];
  networkGroupPriority = [candidateCopy networkGroupPriority];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v14 = v13;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = networksCopy;
  v15 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (!v15)
  {
    v17 = contextCopy;
    goto LABEL_47;
  }

  v16 = v15;
  v69 = *v71;
  v65 = trigger & 0xFFFFFFFFFFFFFFFCLL;
  v17 = contextCopy;
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
      identifier = [candidateCopy identifier];
      identifier2 = [v19 identifier];
      v22 = [identifier isEqual:identifier2];

      if (v22 & 1) != 0 || !-[CWFAutoJoinManager __allowKnownNetwork:context:allowForSeamlessSSIDTransition:defer:targetQueue:error:](self, "__allowKnownNetwork:context:allowForSeamlessSSIDTransition:defer:targetQueue:error:", v19, v17, 0, 0, self->_targetQueue, 0) || ([v19 isPersonalHotspot])
      {
        goto LABEL_31;
      }

      if ([candidateCopy compareUserPriority:v19] == -1)
      {
        addedAt = [v19 addedAt];
        lastJoinedAt2 = [v19 lastJoinedAt];
        lastDiscoveredAt2 = [v19 lastDiscoveredAt];
        [lastJoinedAt2 timeIntervalSinceReferenceDate];
        if (v14 - v28 < 1209600.0)
        {
          goto LABEL_18;
        }

        [lastDiscoveredAt2 timeIntervalSinceReferenceDate];
        if (v14 - v29 < 1209600.0)
        {
          goto LABEL_18;
        }

        [addedAt timeIntervalSinceReferenceDate];
        if (v14 - v30 < 1209600.0)
        {
          goto LABEL_18;
        }

        [lastJoinedAt2 timeIntervalSinceReferenceDate];
        v32 = v31;
        [lastJoinedAt timeIntervalSinceReferenceDate];
        if (v32 > v33)
        {
          goto LABEL_18;
        }

        [lastDiscoveredAt2 timeIntervalSinceReferenceDate];
        v35 = v34;
        [lastDiscoveredAt timeIntervalSinceReferenceDate];
        if (v35 > v36)
        {
          goto LABEL_18;
        }

        if (lastJoinedAt2 && lastJoinedAt)
        {
          [lastJoinedAt2 timeIntervalSinceReferenceDate];
          v42 = floor(v41);
          [lastJoinedAt timeIntervalSinceReferenceDate];
          v44 = floor(v43);
          [lastJoinedAt2 timeIntervalSinceReferenceDate];
          v46 = floor(v45);
          [lastJoinedAt timeIntervalSinceReferenceDate];
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
        if (!lastDiscoveredAt2 || !lastDiscoveredAt)
        {
          goto LABEL_19;
        }

        [lastDiscoveredAt2 timeIntervalSinceReferenceDate];
        v50 = floor(v49);
        [lastDiscoveredAt timeIntervalSinceReferenceDate];
        v52 = floor(v51);
        [lastDiscoveredAt2 timeIntervalSinceReferenceDate];
        v54 = floor(v53);
        [lastDiscoveredAt timeIntervalSinceReferenceDate];
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
        if (([candidateCopy networkOfInterestHomeState] == 1 || objc_msgSend(candidateCopy, "networkOfInterestHomeState") == 3) && objc_msgSend(v19, "networkOfInterestHomeState") == 2 && -[CWFAutoJoinManager __isAutoJoiningAtHome](self, "__isAutoJoiningAtHome"))
        {
          location = [(CWFAutoJoinManager *)self location];
          v39 = [v19 wasManuallyJoinedRecentlyInProximityOf:location];

          v17 = v63;
          v37 = v39 ^ 1;
        }

        if (v65 != 52 && (v37 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      }

      networkGroupID2 = [v19 networkGroupID];
      if (([networkGroupID isEqualToString:networkGroupID2] & 1) == 0)
      {

        goto LABEL_31;
      }

      networkGroupPriority2 = [v19 networkGroupPriority];

      if (networkGroupPriority < networkGroupPriority2)
      {
LABEL_26:
        if ([(CWFAutoJoinManager *)self __allowKnownNetwork:v19 context:v17 allowForSeamlessSSIDTransition:0 defer:0 targetQueue:self->_targetQueue error:0])
        {
          orderedSet2 = orderedSet;
          if (!orderedSet)
          {
            orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
          }

          orderedSet = orderedSet2;
          [orderedSet2 addObject:v19];
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

  v58 = [orderedSet copy];
  v59 = *MEMORY[0x1E69E9840];

  return v58;
}

- (BOOL)__connectToHotspot:(id)hotspot error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  hotspotCopy = hotspot;
  associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];
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
    v50 = hotspotCopy;
    LODWORD(v45) = 12;
    v44 = &v49;
    _os_log_send_and_compose_impl();
  }

  v9 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  connectToHotspotHandler = [(CWFAutoJoinManager *)self connectToHotspotHandler];

  if (connectToHotspotHandler)
  {
    v11 = CWFGetBootTime();
    v12 = [v11 dateByAddingTimeInterval:v9 / 1000000000.0];
    [(CWFAutoJoinMetric *)self->_metric setAutoHotspotJoinStartedAt:v12];

    v48 = 0;
    v13 = [(CWFAutoJoinManager *)self __calloutToConnectToHotspot:hotspotCopy error:&v48];
    v14 = v48;
    if (v13)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v16 = [associatedNetwork copy];
      brokenBackhaulNetwork = selfCopy->_brokenBackhaulNetwork;
      selfCopy->_brokenBackhaulNetwork = v16;

      objc_sync_exit(selfCopy);
      dictionary = 0;
      v19 = 0;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:@"Failed to connect to hotspot" forKeyedSubscript:*MEMORY[0x1E696A578]];
      v20 = MEMORY[0x1E696ABC0];
      code = [v14 code];
      v19 = [v20 errorWithDomain:*MEMORY[0x1E696A798] code:code userInfo:dictionary];
    }
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"CWFAutoJoinManager.connectToHotspotHandler() not configured" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:dictionary];
    v13 = 0;
  }

  v22 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  if (v19)
  {
    autoHotspotJoinErrors = [(CWFAutoJoinMetric *)self->_metric autoHotspotJoinErrors];
    if (autoHotspotJoinErrors)
    {
      autoHotspotJoinErrors2 = [(CWFAutoJoinMetric *)self->_metric autoHotspotJoinErrors];
      v25 = [autoHotspotJoinErrors2 arrayByAddingObject:v19];
      [(CWFAutoJoinMetric *)self->_metric setAutoHotspotJoinErrors:v25];
    }

    else
    {
      autoHotspotJoinErrors2 = [MEMORY[0x1E695DEC8] arrayWithObject:v19];
      [(CWFAutoJoinMetric *)self->_metric setAutoHotspotJoinErrors:autoHotspotJoinErrors2];
    }
  }

  [(CWFAutoJoinMetric *)self->_metric setHotspot:hotspotCopy, v44, v45];
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

    autoHotspotJoinEndedAt = [(CWFAutoJoinMetric *)self->_metric autoHotspotJoinEndedAt];
    [autoHotspotJoinEndedAt timeIntervalSinceReferenceDate];
    v35 = v34;
    autoHotspotJoinStartedAt = [(CWFAutoJoinMetric *)self->_metric autoHotspotJoinStartedAt];
    [autoHotspotJoinStartedAt timeIntervalSinceReferenceDate];
    v38 = v37;
    v39 = [(CWFAutoJoinManager *)self __descriptionForError:v19];
    v49 = 136446978;
    v50 = v32;
    v51 = 2048;
    v52 = ((v35 - v38) * 1000.0);
    v53 = 2114;
    v54 = v39;
    v55 = 2114;
    v56 = hotspotCopy;
    _os_log_send_and_compose_impl();
  }

  v40 = v19 == 0;
  if (!error)
  {
    v40 = 1;
  }

  if (!v40)
  {
    v41 = v19;
    *error = v19;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)__sortHotspotCandidates:(id)candidates
{
  v12[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  candidatesCopy = candidates;
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
  [candidatesCopy sortUsingDescriptors:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (int64_t)__allowAutoHotspotWithTrigger:(int64_t)trigger error:(id *)error
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
    v10 = [(CWFAutoJoinManager *)self __calloutToAllowAutoHotspotWithTrigger:trigger error:&v22];
    v11 = v22;
    v12 = v11;
    if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {

      if (!error)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"Auto-hotspot is not allowed" forKeyedSubscript:*MEMORY[0x1E696A578]];
    if (v12)
    {
      [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];

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
  if (error)
  {
LABEL_13:
    if (v8)
    {
      v17 = v8;
      *error = v8;
    }
  }

LABEL_15:

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)__allowHotspot:(id)hotspot error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  hotspotCopy = hotspot;
  allowHotspotHandler = [(CWFAutoJoinManager *)self allowHotspotHandler];

  if (!allowHotspotHandler)
  {
    goto LABEL_4;
  }

  v20 = 0;
  v8 = [(CWFAutoJoinManager *)self __calloutToAllowHotspot:hotspotCopy error:&v20];
  v9 = v20;
  v10 = v9;
  if (v8)
  {

    allowHotspotHandler = 0;
LABEL_4:
    v11 = 1;
    goto LABEL_5;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"Hotspot is not allowed by daemon" forKeyedSubscript:*MEMORY[0x1E696A578]];
  if (v10)
  {
    [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  allowHotspotHandler = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];

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
    v18 = [(CWFAutoJoinManager *)self __descriptionForError:allowHotspotHandler];
    v21 = 138543618;
    v22 = hotspotCopy;
    v23 = 2114;
    v24 = v18;
    _os_log_send_and_compose_impl();
  }

  v11 = 0;
  if (error && allowHotspotHandler)
  {
    v19 = allowHotspotHandler;
    v11 = 0;
    *error = allowHotspotHandler;
  }

LABEL_5:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)__addDependentThrottleInterval:(unint64_t)interval trigger:(int64_t)trigger dependentTrigger:(int64_t)dependentTrigger
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(CWFAutoJoinThrottle);
  [(CWFAutoJoinThrottle *)v9 setTrigger:trigger];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:dependentTrigger];
  v16 = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:interval];
  v17[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [(CWFAutoJoinThrottle *)v9 setIntervalsBasedOnTriggerTimestamp:v12];

  throttleIntervalMap = self->_throttleIntervalMap;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:trigger];
  [(NSMutableDictionary *)throttleIntervalMap setObject:v9 forKeyedSubscript:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)__addMatchingThrottleInterval:(unint64_t)interval triggers:(id)triggers
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = triggers;
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
        integerValue = [v10 integerValue];
        v21 = v10;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:interval];
        v22 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v14 = [CWFAutoJoinThrottle autoJoinThrottleWithTrigger:integerValue intervals:v13];
        [(NSMutableDictionary *)self->_throttleIntervalMap setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)__addWilcardThrottleInterval:(unint64_t)interval triggers:(id)triggers
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = triggers;
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
        integerValue = [v10 integerValue];
        v21 = &unk_1F5BBC5C8;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:interval];
        v22 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v14 = [CWFAutoJoinThrottle autoJoinThrottleWithTrigger:integerValue intervals:v13];
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
      selfCopy2 = self;
LABEL_9:

      MEMORY[0x1EEE66B58](selfCopy2, sel___addMatchingThrottleInterval_triggers_);
      return;
    }

LABEL_8:
    v8 = *MEMORY[0x1E69E9840];
    selfCopy2 = self;
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
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [standardUserDefaults objectForKey:@"assoc_retry_awdl_rt_throttle_interval"];

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
        unsignedIntegerValue = [v10 unsignedIntegerValue];
        LODWORD(v18) = 22;
        v17 = &v19;
        _os_log_send_and_compose_impl();
      }

      unsignedIntegerValue2 = [v10 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 900;
    }
  }

  else
  {
    unsignedIntegerValue2 = 900;
  }

  [(CWFAutoJoinManager *)self __addDependentThrottleInterval:unsignedIntegerValue2 trigger:45 dependentTrigger:57, v17, v18];
  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)__shouldThrottleAutoJoinTrigger:(int64_t)trigger
{
  v93 = *MEMORY[0x1E69E9840];
  v65 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  throttleIntervalMap = self->_throttleIntervalMap;
  triggerCopy = trigger;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:trigger];
  v7 = [(NSMutableDictionary *)throttleIntervalMap objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [(NSMutableDictionary *)self->_throttleIntervalMap objectForKeyedSubscript:&unk_1F5BBC5C8];
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  intervals = [v7 intervals];
  allKeys = [intervals allKeys];

  selfCopy = self;
  v67 = v7;
  v59 = [allKeys countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (v59)
  {
    v10 = *v82;
    v63 = allKeys;
    v56 = *v82;
    do
    {
      v11 = 0;
      do
      {
        if (*v82 != v10)
        {
          objc_enumerationMutation(allKeys);
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
              integerValue = [v12 integerValue];
              if (integerValue == [v17 integerValue])
              {
                v19 = [(NSMutableDictionary *)self->_throttleTimestampMap objectForKeyedSubscript:v17];
                intervals2 = [v7 intervals];
                v21 = [intervals2 objectForKeyedSubscript:v12];

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
                  unsignedLongLongValue = [v19 unsignedLongLongValue];
                  unsignedLongValue = [v21 unsignedLongValue];
                  v25 = 1000000000 * [v21 unsignedLongValue];
                  unsignedLongValue2 = [v21 unsignedLongValue];
                  v27 = 1000000000 * unsignedLongValue2;
                  v28 = unsignedLongValue > v25;
                  self = selfCopy;
                  v7 = v67;
                  if (v28)
                  {
                    v27 = unsignedLongValue2;
                  }

                  if (v65 - unsignedLongLongValue < v27)
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

                    allKeys2 = v63;

                    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                    {
                      v52 = sub_1E0BCC05C(triggerCopy);
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
        allKeys = v63;
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
  intervalsBasedOnTriggerTimestamp = [v7 intervalsBasedOnTriggerTimestamp];
  allKeys2 = [intervalsBasedOnTriggerTimestamp allKeys];

  v60 = [allKeys2 countByEnumeratingWithState:&v73 objects:v86 count:16];
  if (v60)
  {
    v31 = *v74;
    v64 = allKeys2;
    v57 = *v74;
    do
    {
      v32 = 0;
      do
      {
        if (*v74 != v31)
        {
          objc_enumerationMutation(allKeys2);
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
            integerValue2 = [v33 integerValue];
            if (integerValue2 == [v38 integerValue])
            {
              v19 = [(NSMutableDictionary *)self->_triggerTimestampMap objectForKeyedSubscript:v38];
              intervalsBasedOnTriggerTimestamp2 = [v7 intervalsBasedOnTriggerTimestamp];
              v21 = [intervalsBasedOnTriggerTimestamp2 objectForKeyedSubscript:v33];

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
                unsignedLongLongValue2 = [v19 unsignedLongLongValue];
                unsignedLongValue3 = [v21 unsignedLongValue];
                v44 = 1000000000 * [v21 unsignedLongValue];
                unsignedLongValue4 = [v21 unsignedLongValue];
                v46 = 1000000000 * unsignedLongValue4;
                v28 = unsignedLongValue3 > v44;
                self = selfCopy;
                v7 = v67;
                if (v28)
                {
                  v46 = unsignedLongValue4;
                }

                if (v65 - unsignedLongLongValue2 < v46)
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

                  allKeys2 = v64;

                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    v52 = sub_1E0BCC05C(triggerCopy);
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
        allKeys2 = v64;
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
  array = [MEMORY[0x1E695DF70] array];
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
  [array addObject:v10];

  v11 = [v5 autoJoinRetryInterval:20 count:1];
  [array addObject:v11];

  v12 = [v5 autoJoinRetryInterval:120 count:1];
  [array addObject:v12];

  v13 = [v5 autoJoinRetryInterval:240 count:1];
  [array addObject:v13];

  v14 = [v5 autoJoinRetryInterval:480 count:-1];
  [array addObject:v14];

  v15 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v15 forKeyedSubscript:&unk_1F5BBC8E0];

  [array removeAllObjects];
  v16 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:0 count:1];
  [array addObject:v16];

  v17 = 5;
  v18 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:5 count:2];
  [array addObject:v18];

  v19 = [v5 autoJoinRetryInterval:10 count:1];
  [array addObject:v19];

  v20 = [v5 autoJoinRetryInterval:120 count:1];
  [array addObject:v20];

  v21 = [v5 autoJoinRetryInterval:240 count:1];
  [array addObject:v21];

  v22 = [v5 autoJoinRetryInterval:480 count:-1];
  [array addObject:v22];

  v23 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v23 forKeyedSubscript:&unk_1F5BBC8F8];

  [array removeAllObjects];
  v24 = [v72 autoJoinRetryInterval:0 count:1];
  [array addObject:v24];

  v25 = [v9 autoJoinRetryInterval:5 count:2];
  [array addObject:v25];

  v26 = [v71 autoJoinRetryInterval:10 count:12];
  [array addObject:v26];

  v27 = [v71 autoJoinRetryInterval:20 count:-1];
  [array addObject:v27];

  v28 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v28 forKeyedSubscript:&unk_1F5BBC520];

  [array removeAllObjects];
  v29 = [(CWFAutoJoinRetryInterval *)v73 autoJoinRetryInterval:120 count:1];
  [array addObject:v29];

  v30 = [(CWFAutoJoinRetryInterval *)v73 autoJoinRetryInterval:240 count:1];
  [array addObject:v30];

  v31 = [(CWFAutoJoinRetryInterval *)v73 autoJoinRetryInterval:480 count:-1];
  [array addObject:v31];

  v32 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v32 forKeyedSubscript:&unk_1F5BBC6B8];

  [array removeAllObjects];
  v33 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:20 count:1];
  [array addObject:v33];

  v34 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:60 count:4];
  [array addObject:v34];

  v35 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:120 count:1];
  [array addObject:v35];

  v36 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:240 count:1];
  [array addObject:v36];

  v37 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:480 count:-1];
  [array addObject:v37];

  v38 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v38 forKeyedSubscript:&unk_1F5BBC910];

  [array removeAllObjects];
  v39 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:20 count:1];
  [array addObject:v39];

  v40 = [v5 autoJoinRetryInterval:20 count:1];
  [array addObject:v40];

  v41 = [v5 autoJoinRetryInterval:120 count:1];
  [array addObject:v41];

  v42 = [v5 autoJoinRetryInterval:240 count:1];
  [array addObject:v42];

  v43 = [v5 autoJoinRetryInterval:480 count:-1];
  [array addObject:v43];

  v44 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v44 forKeyedSubscript:&unk_1F5BBC730];

  [array removeAllObjects];
  do
  {
    v45 = [(CWFAutoJoinRetryInterval *)v7 autoJoinRetryInterval:0 count:2];
    [array addObject:v45];

    v46 = [v8 autoJoinRetryInterval:0 count:2];
    [array addObject:v46];

    v47 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:0 count:1];
    [array addObject:v47];

    --v17;
  }

  while (v17);
  v48 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v48 forKeyedSubscript:&unk_1F5BBC6A0];

  [array removeAllObjects];
  v49 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:360 count:1];
  [array addObject:v49];

  v50 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:900 count:-1];
  [array addObject:v50];

  v51 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v51 forKeyedSubscript:&unk_1F5BBC568];

  [array removeAllObjects];
  v52 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:900 count:-1];
  [array addObject:v52];

  v53 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v53 forKeyedSubscript:&unk_1F5BBC7C0];

  [array removeAllObjects];
  v54 = [v9 autoJoinRetryInterval:0 count:1];
  [array addObject:v54];

  v55 = [v9 autoJoinRetryInterval:5 count:2];
  [array addObject:v55];

  v56 = [v9 autoJoinRetryInterval:10 count:2];
  [array addObject:v56];

  v57 = [v9 autoJoinRetryInterval:20 count:16];
  [array addObject:v57];

  v58 = [v9 autoJoinRetryInterval:120 count:1];
  [array addObject:v58];

  v59 = [v9 autoJoinRetryInterval:240 count:1];
  [array addObject:v59];

  v60 = [v9 autoJoinRetryInterval:480 count:-1];
  [array addObject:v60];

  v61 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v61 forKeyedSubscript:&unk_1F5BBC928];

  [array removeAllObjects];
  v62 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:0 count:1];
  [array addObject:v62];

  v63 = [v5 autoJoinRetryInterval:5 count:2];
  [array addObject:v63];

  v64 = [v5 autoJoinRetryInterval:30 count:5];
  [array addObject:v64];

  v65 = [v5 autoJoinRetryInterval:60 count:5];
  [array addObject:v65];

  v66 = [v5 autoJoinRetryInterval:480 count:-1];
  [array addObject:v66];

  v67 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v67 forKeyedSubscript:&unk_1F5BBC940];

  [array removeAllObjects];
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

- (id)__retryIntervalWithScheduleIndex:(unint64_t)index
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

        if (v15 > index)
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(CWFAutoJoinManager *)selfCopy __retryIntervalWithScheduleIndex:selfCopy->_retryScheduleIndex];
  objc_sync_exit(selfCopy);

  return v3;
}

- (int64_t)__retryTriggerForRetrySchedule:(int64_t)schedule
{
  if ((schedule - 2) > 9)
  {
    return 4;
  }

  else
  {
    return qword_1E0D81B18[schedule - 2];
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
      interval = [v7 interval];
      v10 = 1000000000 * [v8 interval];
      interval2 = [v8 interval];
      if (interval <= v10)
      {
        v12 = 1000000000 * interval2;
      }

      else
      {
        v12 = interval2;
      }

      if ([(CWFAutoJoinManager *)self __applyRetryIntervalSkew:v12]> 0x7FFFFFFFFFFFFFFELL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        interval3 = [v8 interval];
        v14 = 1000000000 * [v8 interval];
        interval4 = [v8 interval];
        if (interval3 <= v14)
        {
          v16 = 1000000000 * interval4;
        }

        else
        {
          v16 = interval4;
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

- (BOOL)__calloutToAllowAutoJoinWithTrigger:(int64_t)trigger error:(id *)error
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
  triggerCopy = trigger;
  v14 = v7;
  v21 = v14;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v15);

  dispatch_block_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v16 = v29[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v35 + 24);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

- (BOOL)__calloutToAllowKnownNetwork:(id)network trigger:(int64_t)trigger allowForSeamlessSSIDTransition:(id)transition defer:(BOOL *)defer queue:(id)queue error:(id *)error
{
  v74 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  transitionCopy = transition;
  queueCopy = queue;
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
  v15 = [networkCopy copy];
  if (queueCopy)
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
    triggerCopy = trigger;
    v41 = &v58;
    v42 = &v54;
    v43 = &v48;
    v44 = v46;
    v39 = transitionCopy;
    v40 = v16;
    v24 = v16;
    v25 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v23, 0, block);
    dispatch_async(queueCopy, v25);

    dispatch_block_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    _Block_object_dispose(v46, 8);
  }

  else
  {
    allowKnownNetworkHandler = [(CWFAutoJoinManager *)self allowKnownNetworkHandler];

    if (allowKnownNetworkHandler)
    {
      allowKnownNetworkHandler2 = [(CWFAutoJoinManager *)self allowKnownNetworkHandler];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_1E0C8D660;
      v36[3] = &unk_1E86E7948;
      v36[4] = &v58;
      v36[5] = &v54;
      v36[6] = &v48;
      (allowKnownNetworkHandler2)[2](allowKnownNetworkHandler2, v15, trigger, transitionCopy, v36);
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

  if (defer && (v55[3] & 1) != 0)
  {
    *defer = 1;
  }

  if (error)
  {
    v26 = v49[5];
    if (v26)
    {
      *error = v26;
    }
  }

  v27 = *(v59 + 24);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);

  v28 = *MEMORY[0x1E69E9840];
  return v27 & 1;
}

- (id)__calloutToScanForNetworksWithParameters:(id)parameters scanChannels:(id *)channels error:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
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
  v16 = parametersCopy;
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
  if (channels)
  {
    v19 = v42[5];
    if (v19)
    {
      *channels = v19;
    }
  }

  if (error)
  {
    v20 = v36[5];
    if (v20)
    {
      *error = v20;
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

- (id)__calloutToPerformGASQueryWithParameters:(id)parameters GASQueryNetworks:(id *)networks error:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
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
  v16 = parametersCopy;
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
  if (networks)
  {
    v19 = v40[5];
    if (v19)
    {
      *networks = v19;
    }
  }

  if (error)
  {
    v20 = v34[5];
    if (v20)
    {
      *error = v20;
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

- (BOOL)__calloutToAllowJoinCandidate:(id)candidate trigger:(int64_t)trigger defer:(BOOL *)defer error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
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
  v11 = [candidateCopy copy];
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
  triggerCopy = trigger;
  v20 = v12;
  v28 = v20;
  v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v18, 0, block);
  dispatch_async(targetQueue, v21);

  dispatch_block_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  if (defer && (v43[3] & 1) != 0)
  {
    *defer = 1;
  }

  if (error)
  {
    v22 = v37[5];
    if (v22)
    {
      *error = v22;
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

- (BOOL)__calloutToAssociateWithParameters:(id)parameters error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
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
  v14 = parametersCopy;
  v22 = v14;
  v24 = &v28;
  v25 = v26;
  v15 = v7;
  v23 = v15;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v16);

  dispatch_block_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v17 = v29[5];
  if (error && v17)
  {
    *error = v17;
    v17 = v29[5];
  }

  v18 = v17 == 0;

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (int64_t)__calloutToAllowAutoHotspotWithTrigger:(int64_t)trigger error:(id *)error
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
  triggerCopy = trigger;
  v14 = v7;
  v21 = v14;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v15);

  dispatch_block_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v16 = v29[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = v35[3];

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)__calloutToAllowHotspot:(id)hotspot error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  hotspotCopy = hotspot;
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
  v14 = hotspotCopy;
  v22 = v14;
  v24 = &v35;
  v25 = &v29;
  v26 = v27;
  v15 = v7;
  v23 = v15;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v16);

  dispatch_block_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v17 = v30[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = *(v36 + 24);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (void)__calloutToBrowseForHotspotsWithTimeout:(unint64_t)timeout maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only reply:(id)reply
{
  v35 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
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
  timeoutCopy = timeout;
  ageCopy = age;
  onlyCopy = only;
  block[4] = self;
  v21 = replyCopy;
  v17 = replyCopy;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v16, 0, block);
  dispatch_async(targetQueue, v18);

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)__calloutToAllowBrokenBackhaulPersonalHotspotFallbackAndReturnError:(id *)error
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
  if (error)
  {
    v14 = v26[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = *(v32 + 24);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

- (void)__calloutToCheckForBrokenBackhaulAndReply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
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
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10, 0, block);
  dispatch_async(targetQueue, v12);

  v13 = *MEMORY[0x1E69E9840];
}

- (id)__calloutToBrowseForHotspotsWithTimeout:(unint64_t)timeout maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only error:(id *)error
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
  timeoutCopy = timeout;
  ageCopy = age;
  onlyCopy = only;
  block[4] = self;
  v26 = &v40;
  v27 = &v34;
  v28 = v32;
  v18 = v11;
  v25 = v18;
  v19 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v17, 0, block);
  dispatch_async(targetQueue, v19);

  dispatch_block_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v20 = v35[5];
    if (v20)
    {
      *error = v20;
    }
  }

  v21 = v41[5];

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)__calloutToConnectToHotspot:(id)hotspot error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  hotspotCopy = hotspot;
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
  v14 = hotspotCopy;
  v22 = v14;
  v24 = &v28;
  v25 = v26;
  v15 = v7;
  v23 = v15;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v16);

  dispatch_block_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v17 = v29[5];
  if (error && v17)
  {
    *error = v17;
    v17 = v29[5];
  }

  v18 = v17 == 0;

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

@end