@interface NWStatsManager
+ (id)getKernelMetrics:(id)a3;
+ (void)dumpKernelMetrics:(id)a3;
- (BOOL)setRcvBufsize:(int)a3;
- (NWStatsManager)initWithQueue:(id)a3;
- (NWStatsManagerDelegate)delegate;
- (id)getState;
- (id)identifierForUUID:(id)a3 derivation:(int *)a4;
- (id)stateDictionary;
- (int)_refreshSyncUsingBlock:(id)a3;
- (int)_refreshUsingBlock:(id)a3 completionBlock:(id)a4;
- (int)_setThresholds:(id)a3;
- (int)configure:(id)a3;
- (int)initialConfigure:(id)a3;
- (int)reconfigure:(id)a3;
- (int)statsRefreshCurrentUsage;
- (void)_adaptAfterDrop;
- (void)_addAllForProvider:(int)a3 filter:(unint64_t)a4 events:(unint64_t)a5;
- (void)_drainReadBuffer;
- (void)_handleCompletion:(unint64_t)a3;
- (void)_handleCounts:(nstat_msg_src_counts *)a3;
- (void)_handleMessage:(nstat_msg_hdr *)a3 length:(int64_t)a4;
- (void)_handleReads:(int64_t)a3;
- (void)_handleRemoveForSource:(id)a3;
- (void)_removeSourceInternal:(unint64_t)a3;
- (void)_restartPoll:(id)a3;
- (void)_sendDetailsRequestMessage:(unint64_t)a3;
- (void)_sendMessage:(nstat_msg_hdr *)a3 length:(int64_t)a4;
- (void)_sendPoll;
- (void)_sendRemoveSource:(unint64_t)a3;
- (void)_sendUpdateRequestMessage:(unint64_t)a3;
- (void)_setInterfaceTraceFd:(int)a3;
- (void)_startPoll:(id)a3;
- (void)_startQueuedPoll;
- (void)_trace:(char *)a3;
- (void)_traceMemoryBuf:(char *)a3 length:(int64_t)a4 tag:(char *)a5;
- (void)dealloc;
- (void)dumpState;
- (void)ignoreSource:(unint64_t)a3;
- (void)invalidate;
@end

@implementation NWStatsManager

- (NWStatsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_sendPoll
{
  v2[0] = self->_currentPollReference;
  v2[1] = 0x20000000003F1;
  v2[2] = -1;
  [(NWStatsManager *)self _sendMessage:v2 length:24];
}

- (int)statsRefreshCurrentUsage
{
  v3 = [(NWStatsManager *)self queuedPolls];
  v4 = [v3 count];

  if (v4 == 1)
  {
    return 1;
  }

  if (v4)
  {
    if (v4 < 4)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v5 = [(NWStatsManager *)self activePoll];
    v6 = v5 != 0;
  }

  return v6;
}

- (void)_traceMemoryBuf:(char *)a3 length:(int64_t)a4 tag:(char *)a5
{
  if (self->_interfaceTraceFd >= 1)
  {
    v14 = v5;
    v15 = v6;
    if (self->_iftracebuf)
    {
      v13.tv_sec = 0;
      *&v13.tv_usec = 0;
      gettimeofday(&v13, 0);
      snprintf(self->_iftracebuf, 0x1100uLL, "%ld.%06d %s len %zu\n", v13.tv_sec, v13.tv_usec, a5, a4);
      v11 = strlen(self->_iftracebuf) + 1;
      v12 = v11 + a4;
      if ((v11 + a4) >> 8 <= 0x10)
      {
        memcpy(&self->_iftracebuf[v11], a3, a4);
        write(self->_interfaceTraceFd, self->_iftracebuf, v12);
      }
    }
  }
}

- (void)_trace:(char *)a3
{
  if (a3 && self->_interfaceTraceFd >= 1)
  {
    v5 = strlen(a3) + 1;

    [(NWStatsManager *)self _traceMemoryBuf:a3 length:v5 tag:"Trace"];
  }
}

- (void)_sendMessage:(nstat_msg_hdr *)a3 length:(int64_t)a4
{
  v7 = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(NWStatsManager *)self readSource];

  if (v8)
  {
    a3->length = a4;
    a3->flags |= 1u;
    if (self->_interfaceTraceFd >= 1 && self->_iftracebuf)
    {
      [(NWStatsManager *)self _traceMemoryBuf:a3 length:a4 tag:"Output"];
    }

    if (send([(NWStatsManager *)self sockfd], a3, a4, 0) != a4 && a3->context)
    {

      [(NWStatsManager *)self _handleCompletion:?];
    }
  }
}

- (void)_sendUpdateRequestMessage:(unint64_t)a3
{
  v5 = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  if (![(NWStatsManager *)self isInvalidated])
  {
    v6 = xmmword_25BA77950;
    DWORD2(v6) = 1007;
    v7 = a3;
    [(NWStatsManager *)self _sendMessage:&v6 length:24];
  }
}

- (void)_sendDetailsRequestMessage:(unint64_t)a3
{
  v5 = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  if (![(NWStatsManager *)self isInvalidated])
  {
    v6 = xmmword_25BA77950;
    DWORD2(v6) = 1009;
    v7 = a3;
    [(NWStatsManager *)self _sendMessage:&v6 length:24];
  }
}

- (void)_sendRemoveSource:(unint64_t)a3
{
  v5 = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6[0] = 0;
  v6[1] = 1003;
  v6[2] = a3;
  [(NWStatsManager *)self _sendMessage:v6 length:24];
}

- (void)_startPoll:(id)a3
{
  v6 = a3;
  v4 = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(v4);

  [(NWStatsManager *)self activePoll];
  if (objc_claimAutoreleasedReturnValue())
  {
    [NWStatsManager _startPoll:];
  }

  [(NWStatsManager *)self setActivePoll:v6];
  nextPollReference = self->_nextPollReference;
  self->_currentPollReference = nextPollReference;
  self->_nextPollReference = nextPollReference + 1;
  [v6 setNtstatContext:?];
  [(NWStatsManager *)self _sendPoll];
}

- (void)_restartPoll:(id)a3
{
  v6 = a3;
  v4 = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(NWStatsManager *)self activePoll];
  if (v5 != v6)
  {
    [NWStatsManager _restartPoll:];
  }

  [(NWStatsManager *)self _sendPoll];
}

- (void)_handleRemoveForSource:(id)a3
{
  v6 = a3;
  v4 = [(NWStatsManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 createSnapshot:2 firstOccurrence:0];
    [v4 statsManager:self didReceiveNWSnapshot:v5];
  }
}

- (void)_adaptAfterDrop
{
  v20 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  if (v3 - self->_currentRcvBufTimestamp > 5.0)
  {
    currentRcvBufSize = self->_currentRcvBufSize;
    if (currentRcvBufSize < 0x80000)
    {
      if ([(NWStatsManager *)self setRcvBufsize:(currentRcvBufSize + 0x10000)])
      {
        ++self->_numAdaptiveRcvBufIncrements;
        v6 = NStatGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v11 = self->_currentRcvBufSize;
          numAdaptiveRcvBufIncrements = self->_numAdaptiveRcvBufIncrements;
          v16 = 67109376;
          v17 = v11;
          v18 = 1024;
          v19 = numAdaptiveRcvBufIncrements;
          v8 = "_adaptAfterDrop: updated buffer size to %d, adaptation count %d";
          v9 = v6;
          v10 = OS_LOG_TYPE_DEFAULT;
          v13 = 14;
LABEL_11:
          _os_log_impl(&dword_25BA3A000, v9, v10, v8, &v16, v13);
        }
      }

      else
      {
        v6 = NStatGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v14 = self->_currentRcvBufSize;
          v16 = 67109120;
          v17 = v14;
          v8 = "_adaptAfterDrop: unable to update buffer size from %d";
          v9 = v6;
          v10 = OS_LOG_TYPE_ERROR;
          goto LABEL_10;
        }
      }
    }

    else
    {
      v6 = NStatGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->_currentRcvBufSize;
        v16 = 67109120;
        v17 = v7;
        v8 = "_adaptAfterDrop: skip buffer size update as already at maximum %d";
        v9 = v6;
        v10 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
        v13 = 8;
        goto LABEL_11;
      }
    }

    self->_currentRcvBufTimestamp = v4;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleMessage:(nstat_msg_hdr *)a3 length:(int64_t)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(v7);

  type = a3->type;
  if (type > 10003)
  {
    if ((type - 10008) >= 2)
    {
      if (type == 10004)
      {
        if (a4 < 0x90)
        {
          goto LABEL_133;
        }

        v29 = *MEMORY[0x277D85DE8];

        [(NWStatsManager *)self _handleCounts:a3];
        return;
      }

      if (type != 10006 || a4 < 0x98)
      {
        goto LABEL_133;
      }

      context = a3[9].context;
      if (context == 6)
      {
        if (a4 < 0x190)
        {
          goto LABEL_133;
        }

        v17 = a3[1].context;
        context_low = LODWORD(a3[10].context);
        v19 = *&a3[9].type;
        v20 = *MEMORY[0x277D85DE8];

        [(NWStatsManager *)self _noteInterfaceSrcRef:v17 forInterface:context_low threshold:v19];
        return;
      }

      v22 = NStatGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v69) = context;
        v23 = "update message for unknown provider %d\n";
LABEL_79:
        v33 = v22;
        v34 = 8;
LABEL_131:
        _os_log_impl(&dword_25BA3A000, v33, OS_LOG_TYPE_ERROR, v23, buf, v34);
        goto LABEL_132;
      }

      goto LABEL_132;
    }

    if (a4 < 0x1E8)
    {
      goto LABEL_133;
    }

    v21 = a3[30].context;
    if ((v21 & 0xFFFFFFFE) == 2)
    {
      if (a4 <= 0x33F)
      {
        v22 = NStatGetLog();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_132;
        }

        *buf = 134218240;
        v69 = a4;
        v70 = 2048;
        v71 = 832;
        v23 = "TCP details message with size %ld below minimum %ld\n";
LABEL_130:
        v33 = v22;
        v34 = 22;
        goto LABEL_131;
      }

      goto LABEL_81;
    }

    if (v21 > 7)
    {
      if (v21 == 8)
      {
        if (a4 <= 0x33F)
        {
          v22 = NStatGetLog();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_132;
          }

          *buf = 134218240;
          v69 = a4;
          v70 = 2048;
          v71 = 832;
          v23 = "QUIC details message with size %ld below minimum %ld\n";
          goto LABEL_130;
        }

        goto LABEL_81;
      }

      if (v21 == 9)
      {
        if (a4 <= 0x2AF)
        {
          v22 = NStatGetLog();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_132;
          }

          *buf = 134218240;
          v69 = a4;
          v70 = 2048;
          v71 = 688;
          v23 = "Userland connection details message with size %ld below minimum %ld\n";
          goto LABEL_130;
        }

        goto LABEL_81;
      }

      if (v21 != 10)
      {
LABEL_77:
        v22 = NStatGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v69) = v21;
          v23 = "details message for unknown provider %d\n";
          goto LABEL_79;
        }

LABEL_132:

        goto LABEL_133;
      }
    }

    else if ((v21 - 4) >= 2)
    {
      if (v21 == 6)
      {
        goto LABEL_133;
      }

      goto LABEL_77;
    }

    if (a4 <= 0x2FF)
    {
      v22 = NStatGetLog();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_132;
      }

      *buf = 134218240;
      v69 = a4;
      v70 = 2048;
      v71 = 768;
      v23 = "UDP details message with size %ld below minimum %ld\n";
      goto LABEL_130;
    }

LABEL_81:
    v35 = [(NWStatsManager *)self delegate];
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3[1].context];
    v37 = [(NWStatsManager *)self internalSources];
    v67 = [v37 objectForKey:v36];

    flags = a3->flags;
    v66 = v35;
    if ((flags & 4) != 0)
    {
      v40 = 0;
      v39 = 0;
      v42 = 2;
      v41 = 32;
    }

    else if (a3->context == 1)
    {
      v39 = 0;
      v40 = 1;
      v41 = 8;
      v42 = 1;
    }

    else
    {
      v40 = 0;
      v39 = *&a3[1].type == 0;
      v41 = 24;
      if (*&a3[1].type)
      {
        v42 = 4;
      }

      else
      {
        v41 = 16;
        v42 = 3;
      }
    }

    ++*(&self->_providerCounts[v21].numSrcsAdded + v41);
    if (v67)
    {
      if (((v40 | [v67 removing]) & 1) == 0)
      {
        v43 = [(NWStatsManager *)self statsMonitor];
        if ([v67 updateWithDetails:a3 length:a4 monitor:v43])
        {

LABEL_101:
          v48 = [v67 createSnapshot:v42 firstOccurrence:{0, v66}];
          if ((a3->flags & 4) == 0)
          {
            goto LABEL_104;
          }

          v49 = [(NWStatsManager *)self internalSources];
          [v49 removeObjectForKey:v36];
LABEL_103:

LABEL_104:
          if (v48)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v51 = v48;
              v52 = v51;
              if (self->_trafficDeltaAdjustmentFactor > 0.0)
              {
                [v51 applyTrafficAdjustmentFactor:?];
              }

              if (self->_checkNESessionManagerVPNs)
              {
                v53 = [v52 interfaceIndex];
                v54 = +[NWStatsInterfaceRegistry sharedInstance];
                [v54 addInterfaceIndexToRegistry:v53];
                if ([v54 isTrackingInterfaceIndex:v53])
                {
                  [v52 donateBytesToAccumulator];
                }

                v55 = [v52 euuid];
                v56 = [v54 machOUUIDBelongsToVPNProvider:v55];

                if (v56)
                {
                  [v52 removeBytesFromAccumulator];
                }
              }
            }

            if (!v39)
            {
              goto LABEL_119;
            }

            v57 = [(NWStatsManager *)self activePoll];
            if (!v57)
            {
              goto LABEL_119;
            }

            v58 = v57;
            v59 = [(NWStatsManager *)self activePoll];
            v60 = [v59 deliveryBlock];

            if (!v60)
            {
LABEL_119:
              v63 = v66;
              if (objc_opt_respondsToSelector())
              {
                [v66 statsManager:self didReceiveNWSnapshot:v48];
              }

              goto LABEL_124;
            }

            v61 = [(NWStatsManager *)self activePoll];
            v62 = [v61 deliveryBlock];
            (v62)[2](v62, v48);
          }

LABEL_123:
          v63 = v66;
LABEL_124:

LABEL_125:
          v64 = *MEMORY[0x277D85DE8];

          return;
        }

        v50 = a3->flags;

        if ((v50 & 4) != 0)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      if ((v21 & 0xFFFFFFFE) == 2)
      {
        v44 = off_27996D9C0;
      }

      else
      {
        v45 = v21 - 4;
        if ((v21 - 4) >= 7 || ((0x73u >> v45) & 1) == 0)
        {
          [NWStatsManager _handleMessage:length:];
        }

        v44 = off_27996E0D0[v45];
      }

      v46 = objc_alloc(*v44);
      v47 = [(NWStatsManager *)self statsMonitor];
      v67 = [v46 initWithDetails:a3 length:a4 monitor:v47];

      if (v67)
      {
        v48 = [v67 createSnapshot:v42 firstOccurrence:1];
        if ((flags & 4) != 0)
        {
          goto LABEL_104;
        }

        v49 = [(NWStatsManager *)self internalSources];
        [v49 setObject:v67 forKey:v36];
        goto LABEL_103;
      }

      v67 = 0;
    }

    v48 = 0;
    goto LABEL_123;
  }

  if (type)
  {
    if (type != 10001)
    {
      if (type != 10002 || a4 < 0x18)
      {
        goto LABEL_133;
      }

      v9 = a3[1].context;
      v10 = a3->flags;
      v11 = [(NWStatsManager *)self internalSources];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
      v13 = [v11 objectForKey:v12];

      if (v10 == 8)
      {
        v14 = NStatGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          v69 = v9;
          v70 = 2112;
          v71 = v13;
          _os_log_impl(&dword_25BA3A000, v14, OS_LOG_TYPE_ERROR, "NSTAT_MSG_TYPE_SRC_REMOVED received reports drop, source ref %lld source %@", buf, 0x16u);
        }

        [(NWStatsManager *)self _adaptAfterDrop];
      }

      if (v13)
      {
        [(NWStatsManager *)self _removeSourceInternal:v9];
        switch(v10)
        {
          case 0:
            v15 = 544;
            goto LABEL_72;
          case 16:
            v15 = 560;
LABEL_72:
            ++*(&self->super.isa + v15);
            break;
          case 8:
            v15 = 552;
            goto LABEL_72;
        }
      }

      else
      {
        switch(v10)
        {
          case 0:
            v15 = 520;
            goto LABEL_72;
          case 16:
            v15 = 536;
            goto LABEL_72;
          case 8:
            v15 = 528;
            goto LABEL_72;
        }
      }

      goto LABEL_133;
    }

    if (a4 < 0x20)
    {
      goto LABEL_133;
    }

    v26 = a3[1].type;
    if (v26 > 0xA)
    {
      goto LABEL_133;
    }

    ++self->_providerCounts[v26].numSrcsAdded;
    if (v26 == 6)
    {
      v27 = a3[1].context;
      v28 = *MEMORY[0x277D85DE8];

      [(NWStatsManager *)self _sendUpdateRequestMessage:v27];
      return;
    }

    if (self->_eagerInstantiate)
    {
      v31 = a3[1].context;
      v32 = *MEMORY[0x277D85DE8];

      [(NWStatsManager *)self _sendDetailsRequestMessage:v31];
      return;
    }

LABEL_133:
    v65 = *MEMORY[0x277D85DE8];
    return;
  }

  currentPollReference = self->_currentPollReference;
  if (!currentPollReference || currentPollReference != a3->context)
  {
    goto LABEL_133;
  }

  if ((a3->flags & 2) != 0 && self->_continuationCount <= 0x27)
  {
    v25 = [(NWStatsManager *)self activePoll];
    if (!v25)
    {
      [NWStatsManager _handleMessage:length:];
    }

    v67 = [(NWStatsManager *)self activePoll];
    [(NWStatsManager *)self _restartPoll:?];
    goto LABEL_125;
  }

  v30 = *MEMORY[0x277D85DE8];

  [(NWStatsManager *)self _handleCompletion:?];
}

- (void)_drainReadBuffer
{
  v3 = recv([(NWStatsManager *)self sockfd], [(NWStatsManager *)self readBuffer], [(NWStatsManager *)self readBufferSize], 0);
  if (v3 >= 1)
  {
    for (i = v3; i > 0; i = recv([(NWStatsManager *)self sockfd], [(NWStatsManager *)self readBuffer], [(NWStatsManager *)self readBufferSize], 0))
    {
      v5 = [(NWStatsManager *)self readBuffer];
      if (i >= 0x10)
      {
        v6 = v5;
        do
        {
          v7 = *(v6 + 6);
          if (v7 < 0x10 || i < v7)
          {
            break;
          }

          if (self->_interfaceTraceFd >= 1)
          {
            if (self->_iftracebuf)
            {
              [(NWStatsManager *)self _traceMemoryBuf:v6 length:*(v6 + 6) tag:"Input"];
            }
          }

          v6 += v7;
          i -= v7;
        }

        while (i > 0xF);
      }
    }
  }
}

- (void)_handleReads:(int64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = 0;
  if (a3 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3;
  }

  do
  {
    v8 = recv([(NWStatsManager *)self sockfd], [(NWStatsManager *)self readBuffer], [(NWStatsManager *)self readBufferSize], 0);
    if (v8 < 1)
    {
      break;
    }

    v9 = v8;
    v10 = [(NWStatsManager *)self readBuffer];
    if (v9 >= 0x10)
    {
      v11 = v10;
      do
      {
        v12 = *(v11 + 6);
        if (v12 < 0x10 || v9 < v12)
        {
          break;
        }

        if (self->_interfaceTraceFd >= 1 && self->_iftracebuf)
        {
          [(NWStatsManager *)self _traceMemoryBuf:v11 length:*(v11 + 6) tag:"Input"];
        }

        v9 -= v12;
        [(NWStatsManager *)self _handleMessage:v11 length:v12];
        v11 += v12;
      }

      while (v9 > 0xF);
    }

    ++v6;
  }

  while (v6 != v7);

  objc_autoreleasePoolPop(v5);
}

- (void)_startQueuedPoll
{
  [(NWStatsManager *)self activePoll];
  if (objc_claimAutoreleasedReturnValue())
  {
    [NWStatsManager _startQueuedPoll];
  }

  v3 = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(NWStatsManager *)self queuedPolls];
  v8 = [v4 objectAtIndexedSubscript:0];

  v6 = v8;
  if (v8)
  {
    v7 = [(NWStatsManager *)self queuedPolls];
    [v7 removeObjectAtIndex:0];

    v5 = [(NWStatsManager *)self isInvalidated];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      v5 = [(NWStatsManager *)self _startPoll:v8];
      v6 = v8;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)_handleCompletion:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3 && self->_currentPollReference == a3)
  {
    self->_currentPollReference = 0;
    self->_continuationCount = 0;
    v13 = [(NWStatsManager *)self activePoll];
    [(NWStatsManager *)self setActivePoll:0];
    if (v13)
    {
      if (([v13 synchronous] & 1) == 0)
      {
        v5 = [v13 completionBlock];

        if (v5)
        {
          v6 = [v13 completionBlock];
          v6[2]();
        }
      }
    }

    v7 = [(NWStatsManager *)self queuedPolls];
    v8 = [v7 count];

    if (v8)
    {
      [(NWStatsManager *)self _startQueuedPoll];
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = NStatGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      currentPollReference = self->_currentPollReference;
      *buf = 134218240;
      v15 = currentPollReference;
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_25BA3A000, v10, OS_LOG_TYPE_ERROR, "mismatch, _currentPollReference %lld supplied reference %lld", buf, 0x16u);
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)_removeSourceInternal:(unint64_t)a3
{
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v4 = [(NWStatsManager *)self internalSources];
  v5 = [v4 objectForKey:v7];

  if (v5)
  {
    [v5 setRemoved:1];
    v6 = [(NWStatsManager *)self internalSources];
    [v6 removeObjectForKey:v7];

    [(NWStatsManager *)self _handleRemoveForSource:v5];
  }
}

- (void)_addAllForProvider:(int)a3 filter:(unint64_t)a4 events:(unint64_t)a5
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3 > 0xA || ((1 << a3) & 0x73C) == 0)
  {
    [NWStatsManager _addAllForProvider:filter:events:];
  }

  v9 = 0u;
  v6 = 0u;
  v10 = 0;
  DWORD2(v6) = 1002;
  LODWORD(v9) = a3;
  v7 = a4;
  v8 = a5;
  [(NWStatsManager *)self _sendMessage:&v6 length:56];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleCounts:(nstat_msg_src_counts *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(NWStatsManager *)self interfaceSources];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 srcRef] == a3->var1)
        {
          v13 = [(NWStatsManager *)self delegate];
          v14 = [v10 ifIndex];
          if (objc_opt_respondsToSelector())
          {
            [v13 statsManager:self thresholdReachedOn:v14];
          }

          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = NStatGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    var1 = a3->var1;
    *buf = 134217984;
    v21 = var1;
    _os_log_impl(&dword_25BA3A000, v11, OS_LOG_TYPE_DEFAULT, "Unexpected counts message on source ref %lld", buf, 0xCu);
  }

  [(NWStatsManager *)self _sendUpdateRequestMessage:a3->var1];
LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
}

- (int)_setThresholds:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (!v7)
  {
    v17 = 0;
    goto LABEL_20;
  }

  v8 = v7;
  v9 = *v27;
  v25 = v5;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v26 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = NStatGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          *buf = 138412546;
          v31 = v11;
          v32 = 2112;
          v33 = v19;
          _os_log_impl(&dword_25BA3A000, v12, OS_LOG_TYPE_ERROR, "Incorrect key format for configuring thresholds, %@ has class %@", buf, 0x16u);
        }

        goto LABEL_19;
      }

      v12 = v11;
      v13 = [v6 objectForKeyedSubscript:v12];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = NStatGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          *buf = 138412802;
          v31 = v13;
          v32 = 2112;
          v33 = v22;
          v34 = 2112;
          v35 = v12;
          _os_log_impl(&dword_25BA3A000, v20, OS_LOG_TYPE_ERROR, "Incorrect threshold format %@ of class %@ for configuring interface %@", buf, 0x20u);
        }

LABEL_19:
        v5 = v25;

        v17 = 22;
        goto LABEL_20;
      }

      v14 = v13;
      v15 = [v14 unsignedLongLongValue];
      v16 = [v12 unsignedIntegerValue];

      [(NWStatsManager *)self _setThreshold:v15 onInterface:v16];
    }

    v8 = [v6 countByEnumeratingWithState:&v26 objects:v36 count:16];
    v17 = 0;
    v5 = v25;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_20:

LABEL_21:
  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_setInterfaceTraceFd:(int)a3
{
  if (!self->_iftracebuf)
  {
    v5 = malloc_type_malloc(0x1100uLL, 0x70F9F761uLL);
    if (!v5)
    {
      __break(1u);
      return;
    }

    self->_iftracebuf = v5;
  }

  interfaceTraceFd = self->_interfaceTraceFd;
  if (interfaceTraceFd >= 1)
  {
    close(interfaceTraceFd);
  }

  self->_interfaceTraceFd = a3;
}

- (void)invalidate
{
  v3 = [(NWStatsManager *)self readSource];

  if (v3)
  {
    v4 = [(NWStatsManager *)self readSource];
    dispatch_source_cancel(v4);

    [(NWStatsManager *)self setReadSource:0];
  }

  v5 = [(NWStatsManager *)self activePoll];

  if (v5)
  {
    [(NWStatsManager *)self setActivePoll:0];
  }

  [(NWStatsManager *)self setQueuedPolls:0];
  while (1)
  {
    v6 = [(NWStatsManager *)self internalSources];
    v7 = [v6 count];

    if (!v7)
    {
      break;
    }

    v8 = [(NWStatsManager *)self internalSources];
    v9 = [v8 allKeys];

    v10 = [v9 objectAtIndexedSubscript:0];
    -[NWStatsManager _removeSourceInternal:](self, "_removeSourceInternal:", [v10 unsignedLongLongValue]);
  }

  [(NWStatsManager *)self setInternalSources:0];
  if (self->_interfaceTraceFd >= 1)
  {
    self->_interfaceTraceFd = 0;
    iftracebuf = self->_iftracebuf;
    if (iftracebuf)
    {
      free(iftracebuf);
      self->_iftracebuf = 0;
    }
  }

  [(NWStatsManager *)self setInvalidated:1];
}

- (void)dealloc
{
  readSource = self->_readSource;
  if (readSource)
  {
    dispatch_source_cancel(readSource);
    v4 = self->_readSource;
    self->_readSource = 0;
  }

  readBuffer = self->_readBuffer;
  if (readBuffer)
  {
    free(readBuffer);
    self->_readBuffer = 0;
  }

  v6.receiver = self;
  v6.super_class = NWStatsManager;
  [(NWStatsManager *)&v6 dealloc];
}

- (BOOL)setRcvBufsize:(int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (self->_currentRcvBufSize == a3)
  {
    goto LABEL_4;
  }

  if (setsockopt(self->_sockfd, 0xFFFF, 4098, &v9, 4u) != -1)
  {
    self->_currentRcvBufSize = v9;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_currentRcvBufTimestamp = v4;
LABEL_4:
    result = 1;
    goto LABEL_5;
  }

  v7 = NStatGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    currentRcvBufSize = self->_currentRcvBufSize;
    *buf = 67109376;
    v11 = currentRcvBufSize;
    v12 = 1024;
    v13 = v9;
    _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Unable to increment rcv buf size from %d to %d", buf, 0xEu);
  }

  result = 0;
LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (NWStatsManager)initWithQueue:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v24.receiver = self;
  v24.super_class = NWStatsManager;
  v6 = [(NWStatsManager *)&v24 init];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = socket(32, 2, 2);
  if (v7 == -1)
  {
LABEL_6:
    v6->_sockfd = -1;
    v9 = NStatGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_ERROR, "Unable to allocate a kernel control socket", &buf, 2u);
    }

    goto LABEL_9;
  }

  v8 = v7;
  buf = 0;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  *&buf_4[28] = 0u;
  v31 = 0u;
  strcpy(buf_4, "com.apple.network.statistics");
  if (ioctl(v7, 0xC0644E03uLL, &buf) == -1 || (v27 = 0, *&v26[12] = 0, v28 = 0, *v26 = 139296, *&v26[4] = buf, *&v26[8] = 0, connect(v8, v26, 0x20u)))
  {
LABEL_5:
    close(v8);
    goto LABEL_6;
  }

  v11 = fcntl(v8, 3, 0);
  if (fcntl(v8, 4, v11 | 4u) == -1)
  {
    v22 = NStatGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_25BA3A000, v22, OS_LOG_TYPE_ERROR, "Unable to set non-blocking", v25, 2u);
    }

    goto LABEL_5;
  }

  v6->_sockfd = v8;
  if ([(NWStatsManager *)v6 setRcvBufsize:0x20000])
  {
    objc_storeStrong(&v6->_clientQueue, a3);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    internalSources = v6->_internalSources;
    v6->_internalSources = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    queuedPolls = v6->_queuedPolls;
    v6->_queuedPolls = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    interfaceSources = v6->_interfaceSources;
    v6->_interfaceSources = v16;

    v18 = [[NWStatsMonitor alloc] initWithQueue:v5];
    statsMonitor = v6->_statsMonitor;
    v6->_statsMonitor = v18;

    v6->_nextPollReference = 2;
    if (v6->_clientQueue && v6->_internalSources && v6->_statsMonitor)
    {
LABEL_15:
      v10 = v6;
      goto LABEL_16;
    }

    v23 = NStatGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25BA3A000, v23, OS_LOG_TYPE_ERROR, "Unable to initialize Sources / queue / monitor", &buf, 2u);
    }
  }

  close(v6->_sockfd);
LABEL_9:
  v10 = 0;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int)initialConfigure:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = a3;
  currentRcvBufSize = self->_currentRcvBufSize;
  self->_consecutiveReadLimit = 20;
  self->_checkNESessionManagerVPNs = 1;
  [(NWStatsManager *)self setReadBufferSize:4096];
  v6 = [v4 objectForKeyedSubscript:@"kNWStatsParameterTargetSelector"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"kNWStatsParameterTargetSelector"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = [v4 objectForKeyedSubscript:@"kNWStatsParameterTargetSelector"];
  }

  else
  {
    v9 = [[NWStatsTargetSelector alloc] initWithSelection:v4];
  }

  v10 = v9;
  if (v9)
  {
    v11 = [(NWStatsTargetSelector *)v9 filter];
    v12 = [(NWStatsTargetSelector *)v10 connFilter];
    v13 = [(NWStatsTargetSelector *)v10 events];
    v14 = 0;
    v15 = v11 | 0x8000000000;
    goto LABEL_10;
  }

LABEL_7:
  v16 = NStatGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_25BA3A000, v16, OS_LOG_TYPE_ERROR, "initialConfigure: unexpected class for kNWStatsParameterTargetSelector", buf, 2u);
  }

  v10 = 0;
  v13 = 0;
  v12 = 0;
  v15 = 0x8000000000;
  v14 = 1;
LABEL_10:
  v17 = [v4 objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];

  if (v17)
  {
    v18 = [v4 objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];
    v19 = [v18 intValue];

    if (v19)
    {
      [(NWStatsManager *)self _setInterfaceTraceFd:v19];
    }
  }

  v20 = [v4 objectForKeyedSubscript:@"kNWStatsParameterDomainInfo"];

  if (v20)
  {
    v21 = [v4 objectForKeyedSubscript:@"kNWStatsParameterDomainInfo"];
    if ([v21 BOOLValue])
    {
      v15 |= 0x20000000000uLL;
      v22 = NStatGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v82 = v15;
        _os_log_impl(&dword_25BA3A000, v22, OS_LOG_TYPE_DEFAULT, "initialConfigure set NSTAT_EXTENSION_FILTER_DOMAIN_INFO, filter now 0x%llx", buf, 0xCu);
      }

      currentRcvBufSize += 0x10000;
    }
  }

  v23 = [v4 objectForKeyedSubscript:@"kNWStatsSelectKnownInbound"];

  if (v23)
  {
    v24 = [v4 objectForKeyedSubscript:@"kNWStatsSelectKnownInbound"];
    if ([v24 BOOLValue])
    {
      v15 |= 0x4000000uLL;
    }
  }

  v25 = [v4 objectForKeyedSubscript:@"kNWStatsSelectKnownOutbound"];

  if (v25)
  {
    v26 = [v4 objectForKeyedSubscript:@"kNWStatsSelectKnownOutbound"];
    if ([v26 BOOLValue])
    {
      v15 |= 0x8000000uLL;
    }
  }

  v27 = [v4 objectForKeyedSubscript:@"kNWStatsSelectKnownListener"];

  if (v27)
  {
    v28 = [v4 objectForKeyedSubscript:@"kNWStatsSelectKnownListener"];
    if ([v28 BOOLValue])
    {
      v15 |= 0x2000000uLL;
    }
  }

  v29 = [v4 objectForKeyedSubscript:@"kNWStatsParameterNECPClientTLV"];

  v76 = currentRcvBufSize;
  if (v29)
  {
    v15 |= 0x40000000000uLL;
    v12 |= 0x40000000000uLL;
    v30 = NStatGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v82 = v15;
      _os_log_impl(&dword_25BA3A000, v30, OS_LOG_TYPE_DEFAULT, "initialConfigure set NSTAT_EXTENSION_FILTER_NECP_TLV, filter now 0x%llx", buf, 0xCu);
    }
  }

  v31 = [v4 objectForKeyedSubscript:@"kNWStatsParameterNECPAncestralClientTLV"];

  if (v31)
  {
    v32 = v12 | 0x80000000000;
  }

  else
  {
    v32 = v12;
  }

  v33 = [v4 objectForKeyedSubscript:@"kNWStatsSelectConnHasNetAccess"];

  if (v33)
  {
    v34 = [v4 objectForKeyedSubscript:@"kNWStatsSelectConnHasNetAccess"];
    if ([v34 BOOLValue])
    {
      v32 |= 0x1000000uLL;
    }
  }

  v35 = [v4 objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnRefresh"];

  if (v35)
  {
    v36 = [v4 objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnRefresh"];
    if ([v36 BOOLValue])
    {
      v32 |= 0x20000000uLL;
    }
  }

  v37 = [v4 objectForKeyedSubscript:@"kNWStatsTuneMaxConsecutiveReads"];

  if (v37)
  {
    v38 = [v4 objectForKeyedSubscript:@"kNWStatsTuneMaxConsecutiveReads"];
    objc_opt_class();
    v39 = objc_opt_isKindOfClass();

    if (v39)
    {
      v40 = [v4 objectForKeyedSubscript:@"kNWStatsTuneMaxConsecutiveReads"];
      self->_consecutiveReadLimit = [v40 intValue];
    }
  }

  v41 = [v4 objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnClose"];

  if (v41)
  {
    v42 = [v4 objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnClose"];
    if ([v42 BOOLValue])
    {
      v32 |= 0x10000000uLL;
    }
  }

  v43 = [v4 objectForKeyedSubscript:@"kNWStatsOptimizeFrequentRefresh"];

  if (v43)
  {
    v44 = [v4 objectForKeyedSubscript:@"kNWStatsOptimizeFrequentRefresh"];
    if ([v44 BOOLValue])
    {
      [(NWStatsManager *)self setReadBufferSize:0x4000];
      v15 |= 0x2000000000uLL;
    }
  }

  v45 = [v4 objectForKeyedSubscript:@"kNWStatsSelectHasTrafficDelta"];
  if (v45)
  {
    v46 = v45;
    v47 = [v4 objectForKeyedSubscript:@"kNWStatsSelectHasTrafficDelta"];
    objc_opt_class();
    v48 = objc_opt_isKindOfClass();

    if (v48)
    {
      v49 = [v4 objectForKeyedSubscript:@"kNWStatsSelectHasTrafficDelta"];
      if ([v49 BOOLValue])
      {
        v15 |= 0x800000uLL;
      }
    }
  }

  v50 = [v4 objectForKeyedSubscript:@"kNWStatsParameterReportOpen"];

  if (v50)
  {
    v51 = [v4 objectForKeyedSubscript:@"kNWStatsParameterReportOpen"];
    v52 = [v51 BOOLValue];
    self->_eagerInstantiate = v52;
    if (v52)
    {
      v53 = [v4 objectForKeyedSubscript:@"kNWStatsParameterExperiment"];

      if (v53)
      {
        v54 = [v4 objectForKeyedSubscript:@"kNWStatsParameterExperiment"];
        if ([v54 BOOLValue])
        {
          v32 |= 0x200000uLL;
          v15 |= 0x200000uLL;
        }
      }
    }

    if (!self->_eagerInstantiate)
    {
      v32 |= 0x100000uLL;
      v15 |= 0x100000uLL;
    }
  }

  else
  {
    self->_eagerInstantiate = 0;
    v15 |= 0x100000uLL;
    v32 |= 0x100000uLL;
  }

  v55 = [v4 objectForKeyedSubscript:@"kNWStatsParameterTrafficDeltaAdjustmentFactor"];

  if (v55)
  {
    v56 = [v4 objectForKeyedSubscript:@"kNWStatsParameterTrafficDeltaAdjustmentFactor"];
    objc_opt_class();
    v57 = objc_opt_isKindOfClass();

    if (v57)
    {
      v58 = [v4 objectForKeyedSubscript:@"kNWStatsParameterTrafficDeltaAdjustmentFactor"];
      [v58 doubleValue];
      self->_trafficDeltaAdjustmentFactor = v59;
    }
  }

  v60 = [v4 objectForKeyedSubscript:@"kNWStatsParameterCheckNESessionManagerVPNs"];

  if (v60)
  {
    v61 = [v4 objectForKeyedSubscript:@"kNWStatsParameterCheckNESessionManagerVPNs"];
    objc_opt_class();
    v62 = objc_opt_isKindOfClass();

    if (v62)
    {
      v63 = [v4 objectForKeyedSubscript:@"kNWStatsParameterCheckNESessionManagerVPNs"];
      self->_checkNESessionManagerVPNs = [v63 BOOLValue];
    }
  }

  v64 = [(NWStatsManager *)self readBufferSize];
  if (!v64 || (v65 = malloc_type_malloc(v64, 0x46AA3AE4uLL)) == 0)
  {
    __break(1u);
  }

  self->_readBuffer = v65;
  v66 = dispatch_source_create(MEMORY[0x277D85D28], self->_sockfd, 0, self->_clientQueue);
  readSource = self->_readSource;
  self->_readSource = v66;

  v68 = self->_readSource;
  if (!v68)
  {
    close(self->_sockfd);
    v71 = 55;
    goto LABEL_102;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __35__NWStatsManager_initialConfigure___block_invoke;
  handler[3] = &unk_27996DB98;
  handler[4] = self;
  dispatch_source_set_event_handler(v68, handler);
  sockfd = self->_sockfd;
  v70 = self->_readSource;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __35__NWStatsManager_initialConfigure___block_invoke_2;
  v78[3] = &__block_descriptor_36_e5_v8__0l;
  v79 = sockfd;
  dispatch_source_set_cancel_handler(v70, v78);
  dispatch_resume(self->_readSource);
  [(NWStatsManager *)self _sendDetailsRequestMessage:-1];
  if (v14)
  {
    [(NWStatsManager *)self _addAllForProvider:2 filter:v15 events:v13];
    [(NWStatsManager *)self _drainReadBuffer];
  }

  else
  {
    if ([(NWStatsTargetSelector *)v10 shouldAddProvider:2])
    {
      [(NWStatsManager *)self _addAllForProvider:2 filter:v15 events:v13];
      [(NWStatsManager *)self _drainReadBuffer];
    }

    if (![(NWStatsTargetSelector *)v10 shouldAddProvider:4])
    {
LABEL_88:
      if ([(NWStatsTargetSelector *)v10 shouldAddProvider:3])
      {
        [(NWStatsManager *)self _addAllForProvider:3 filter:v15 events:v13];
        [(NWStatsManager *)self _drainReadBuffer];
      }

      if (![(NWStatsTargetSelector *)v10 shouldAddProvider:5])
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }
  }

  [(NWStatsManager *)self _addAllForProvider:4 filter:v15 events:v13];
  [(NWStatsManager *)self _drainReadBuffer];
  if ((v14 & 1) == 0)
  {
    goto LABEL_88;
  }

  [(NWStatsManager *)self _addAllForProvider:3 filter:v15 events:v13];
  [(NWStatsManager *)self _drainReadBuffer];
LABEL_91:
  [(NWStatsManager *)self _addAllForProvider:5 filter:v15 events:v13];
  [(NWStatsManager *)self _drainReadBuffer];
  if (v14)
  {
LABEL_93:
    [(NWStatsManager *)self _addAllForProvider:8 filter:v15 events:v13];
    [(NWStatsManager *)self _drainReadBuffer];
    goto LABEL_94;
  }

LABEL_92:
  if ([(NWStatsTargetSelector *)v10 shouldAddProvider:8])
  {
    goto LABEL_93;
  }

LABEL_94:
  if ([(NWStatsTargetSelector *)v10 shouldAddProvider:10])
  {
    [(NWStatsManager *)self _addAllForProvider:10 filter:v15 events:v13];
    [(NWStatsManager *)self _drainReadBuffer];
    v76 += 0x8000;
  }

  if ([(NWStatsTargetSelector *)v10 shouldAddProvider:9])
  {
    [(NWStatsManager *)self _addAllForProvider:9 filter:v32 | 0x120000000000 events:v13];
    [(NWStatsManager *)self _drainReadBuffer];
    v72 = v76 + 0x8000;
  }

  else
  {
    v72 = v76;
  }

  [(NWStatsManager *)self setRcvBufsize:v72];
  [(NWStatsManager *)self setConfigured:1];
  v73 = [v4 objectForKeyedSubscript:@"kNWStatsParameterThresholds"];
  v71 = [(NWStatsManager *)self _setThresholds:v73];

  if (self->_eagerInstantiate || self->_trafficDeltaAdjustmentFactor > 0.0)
  {
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __35__NWStatsManager_initialConfigure___block_invoke_3;
    v77[3] = &unk_27996DB98;
    v77[4] = self;
    [(NWStatsManager *)self _refreshUsingBlock:0 completionBlock:v77];
  }

LABEL_102:

  v74 = *MEMORY[0x277D85DE8];
  return v71;
}

uint64_t __35__NWStatsManager_initialConfigure___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 58) = 1;
  result = [*(a1 + 32) _handleReads:*(*(a1 + 32) + 28)];
  *(*(a1 + 32) + 58) = 0;
  return result;
}

void __35__NWStatsManager_initialConfigure___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 0;
  v1 = NStatGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_25BA3A000, v1, OS_LOG_TYPE_DEFAULT, "Initial update for opens completed", v2, 2u);
  }
}

- (int)reconfigure:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];

  if (v5)
  {
    interfaceTraceFd = self->_interfaceTraceFd;
    v7 = [v4 objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];
    v8 = [v7 intValue];

    if (interfaceTraceFd != v8)
    {
      v9 = [v4 objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];
      -[NWStatsManager _setInterfaceTraceFd:](self, "_setInterfaceTraceFd:", [v9 intValue]);
    }
  }

  v10 = [v4 objectForKeyedSubscript:@"kNWStatsParameterThresholds"];
  v11 = [(NWStatsManager *)self _setThresholds:v10];

  return v11;
}

- (int)configure:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NWStatsManager *)self isInvalidated])
  {
    v5 = NStatGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19[0]) = 0;
      _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_ERROR, "configure skipped as manager was invalidated", v19, 2u);
    }

    v6 = 6;
  }

  else
  {
    Default = CFAllocatorGetDefault();
    v8 = SecTaskCreateFromSelf(Default);
    if (v8)
    {
      v9 = v8;
      v10 = SecTaskCopyValueForEntitlement(v8, @"com.apple.private.network.statistics", 0);
      v11 = [v10 BOOLValue];
      v12 = SecTaskCopyValueForEntitlement(v9, @"com.apple.private.coreservices.canmapbundleidtouuid", 0);

      v13 = [v12 BOOLValue];
      CFRelease(v9);

      if (v11 && v13)
      {
        v14 = [(NWStatsManager *)self statsMonitor];
        [v14 configure:v4];

        if ([(NWStatsManager *)self configured])
        {
          v6 = [(NWStatsManager *)self reconfigure:v4];
        }

        else
        {
          v6 = [(NWStatsManager *)self initialConfigure:v4];
          [(NWStatsManager *)self setConfigured:1];
        }

        goto LABEL_16;
      }
    }

    else
    {
      v15 = NStatGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19[0]) = 0;
        _os_log_impl(&dword_25BA3A000, v15, OS_LOG_TYPE_ERROR, "NWStatsManager configure: unable to get task ref for entitlement check", v19, 2u);
      }

      v11 = 0;
      v13 = 0;
    }

    v16 = NStatGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v19[0] = 67109376;
      v19[1] = v11;
      v20 = 1024;
      v21 = v13;
      _os_log_impl(&dword_25BA3A000, v16, OS_LOG_TYPE_FAULT, "NWStatsManager configure: entitlements not held, netstats %d, mapping %d", v19, 0xEu);
    }

    [(NWStatsManager *)self invalidate];
    v6 = 1;
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int)_refreshUsingBlock:(id)a3 completionBlock:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NWStatsManager *)self queuedPolls];
  v9 = [v8 count];

  if (v9 < 4)
  {
    if ([(NWStatsManager *)self configured])
    {
      if ([(NWStatsManager *)self isInvalidated])
      {
        v12 = NStatGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v20[0]) = 0;
          _os_log_impl(&dword_25BA3A000, v12, OS_LOG_TYPE_ERROR, "_refreshUsingBlock skipped as manager was invalidated", v20, 2u);
        }

        v11 = 6;
      }

      else
      {
        v14 = objc_alloc_init(NWStatsPollHandler);
        v15 = v14;
        if (v14)
        {
          [(NWStatsPollHandler *)v14 setDeliveryBlock:v6];
          [(NWStatsPollHandler *)v15 setCompletionBlock:v7];
          [(NWStatsPollHandler *)v15 setManager:self];
          [(NWStatsPollHandler *)v15 setSynchronous:0];
          v16 = [(NWStatsManager *)self activePoll];

          if (v16)
          {
            v17 = [(NWStatsManager *)self queuedPolls];
            [v17 addObject:v15];
          }

          else
          {
            [(NWStatsManager *)self _startPoll:v15];
          }

          v11 = 0;
        }

        else
        {
          v11 = 12;
        }
      }
    }

    else
    {
      v13 = NStatGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(&dword_25BA3A000, v13, OS_LOG_TYPE_ERROR, "_refreshUsingBlock skipped as manager not yet configured", v20, 2u);
      }

      v11 = 19;
    }
  }

  else
  {
    v10 = NStatGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20[0] = 67109120;
      v20[1] = v9;
      _os_log_impl(&dword_25BA3A000, v10, OS_LOG_TYPE_ERROR, "_refreshUsingBlock skipped as current outstanding is %d", v20, 8u);
    }

    v11 = 35;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int)_refreshSyncUsingBlock:(id)a3
{
  v4 = a3;
  if ([(NWStatsManager *)self configured])
  {
    if ([(NWStatsManager *)self isInvalidated])
    {
      v5 = NStatGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_ERROR, "_refreshSyncUsingBlock skipped as manager was invalidated", buf, 2u);
      }

      v6 = 6;
    }

    else if (self->_handlingSocketReads)
    {
      v9 = NStatGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_ERROR, "_refreshSyncUsingBlock abort to prevent deadlock", v15, 2u);
      }

      v6 = 11;
    }

    else
    {
      v10 = objc_alloc_init(NWStatsPollHandler);
      v11 = v10;
      if (v10)
      {
        [(NWStatsPollHandler *)v10 setDeliveryBlock:v4];
        [(NWStatsPollHandler *)v11 setCompletionBlock:0];
        [(NWStatsPollHandler *)v11 setManager:self];
        [(NWStatsPollHandler *)v11 setSynchronous:1];
        v12 = [(NWStatsManager *)self activePoll];

        if (v12)
        {
          v13 = [(NWStatsManager *)self queuedPolls];
          [v13 addObject:v11];
        }

        else
        {
          [(NWStatsManager *)self _startPoll:v11];
        }

        self->_handlingSocketReads = 1;
        while (1)
        {
          v14 = [(NWStatsManager *)self activePoll];

          if (!v14)
          {
            break;
          }

          [(NWStatsManager *)self _handleReads:1];
        }

        v6 = 0;
        self->_handlingSocketReads = 0;
      }

      else
      {
        v6 = 12;
      }
    }
  }

  else
  {
    v7 = NStatGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "_refreshSyncUsingBlock skipped as manager not yet configured", v17, 2u);
    }

    v6 = 19;
  }

  return v6;
}

- (void)ignoreSource:(unint64_t)a3
{
  v5 = [(NWStatsManager *)self internalSources];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v8 = [v5 objectForKey:v6];

  v7 = v8;
  if (v8)
  {
    [v8 setRemoving:1];
    [(NWStatsManager *)self _sendRemoveSource:a3];
    v7 = v8;
  }
}

- (id)identifierForUUID:(id)a3 derivation:(int *)a4
{
  v6 = a3;
  v7 = [(NWStatsManager *)self statsMonitor];

  if (v7)
  {
    v8 = [(NWStatsManager *)self statsMonitor];
    v9 = [v8 identifierForUUID:v6 derivation:a4];
  }

  else
  {
    v9 = @"unavailable";
  }

  return v9;
}

- (id)stateDictionary
{
  v2 = [(NWStatsManager *)self statsMonitor];
  v3 = [v2 stateDictionary];

  return v3;
}

- (id)getState
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [(NWStatsManager *)self internalSources];
  v6 = [v4 initWithFormat:@"NWStatsManager %p: Current num sources %d current buf size %d after %d adaptations", self, objc_msgSend(v5, "count"), self->_currentRcvBufSize, self->_numAdaptiveRcvBufIncrements];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  numRemoveSourcesAfterFilter = self->_combinedCounts.numRemoveSourcesAfterFilter;
  v9 = [v7 initWithFormat:@"NWStatsManager %p: Source removes %lld after filter %lld after drop %lld", self, self->_combinedCounts.numRemoveSources, numRemoveSourcesAfterFilter, self->_combinedCounts.numRemoveSourcesAfterDrop];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  numRemovesAfterFilter = self->_combinedCounts.numRemovesAfterFilter;
  v12 = [v10 initWithFormat:@"NWStatsManager %p: No-source removes %lld after filter %lld after drop %lld", self, self->_combinedCounts.numRemoves, numRemovesAfterFilter, self->_combinedCounts.numRemovesAfterDrop];
  [v3 addObject:v12];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v13 = [(NWStatsManager *)self queuedPolls];
  v14 = [v13 countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = self;
    v17 = 0;
    v18 = *v62;
    do
    {
      v19 = 0;
      v20 = v17;
      do
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v61 + 1) + 8 * v19);

        v21 = [v17 description];
        [v3 addObject:v21];

        ++v19;
        v20 = v17;
      }

      while (v15 != v19);
      v15 = [v13 countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v15);

    self = v16;
  }

  v22 = &off_27996E108;
  p_numDetailsOnClose = &self->_providerCounts[1].numDetailsOnClose;
  for (i = 1; i != 11; ++i)
  {
    if (*(p_numDetailsOnClose - 4) || *(p_numDetailsOnClose - 3) || *(p_numDetailsOnClose - 2) || *(p_numDetailsOnClose - 1) || *p_numDetailsOnClose)
    {
      if (i >= 0xB)
      {
        v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown-%d", i];
      }

      else
      {
        v25 = *v22;
      }

      v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWStatsManager %p: %@ src-add %lld details open %lld poll %lld event %lld close %lld", self, v25, *(p_numDetailsOnClose - 4), *(p_numDetailsOnClose - 3), *(p_numDetailsOnClose - 2), *(p_numDetailsOnClose - 1), *p_numDetailsOnClose];
      [v3 addObject:v26];
    }

    ++v22;
    p_numDetailsOnClose += 5;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v27 = self;
  obj = [(NWStatsManager *)self interfaceSources];
  v28 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v58;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v58 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWStatsManager %p: monitoring interface %d with srcref %lld threshold %lld", v27, objc_msgSend(*(*(&v57 + 1) + 8 * j), "ifIndex"), objc_msgSend(*(*(&v57 + 1) + 8 * j), "srcRef"), objc_msgSend(*(*(&v57 + 1) + 8 * j), "threshold")];
        [v3 addObject:v32];
      }

      v29 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v29);
  }

  v33 = v27;
  v34 = [(NWStatsManager *)v27 internalSources];
  v35 = [v34 allKeys];

  v50 = v35;
  [v35 sortedArrayUsingSelector:sel_compare_];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obja = v56 = 0u;
  v36 = [obja countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v54;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v54 != v38)
        {
          objc_enumerationMutation(obja);
        }

        v40 = *(*(&v53 + 1) + 8 * k);
        v41 = objc_alloc(MEMORY[0x277CCACA8]);
        v42 = [v40 longLongValue];
        v43 = [(NWStatsManager *)v33 internalSources];
        v44 = [v43 objectForKeyedSubscript:v40];
        v45 = [v41 initWithFormat:@" ref %6lld --> %@", v42, v44];
        [v3 addObject:v45];
      }

      v37 = [obja countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v37);
  }

  if (v33->_checkNESessionManagerVPNs)
  {
    v46 = +[NWStatsInterfaceRegistry sharedInstance];
    v47 = [v46 getState];
    [v3 addObject:v47];
  }

  v48 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)dumpState
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(NWStatsManager *)self getState];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = NStatGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v15 = v7;
          _os_log_impl(&dword_25BA3A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)getKernelMetrics:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"kNtstatMetricsGlobal"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v31 = [v5 BOOLValue];
      v6 = v31 ^ 1;
    }

    else
    {
      v31 = 0;
      v6 = 1;
    }

    v7 = [v4 objectForKeyedSubscript:@"kNtstatMetricsSelf"];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v7 BOOLValue];
      v6 &= v8 ^ 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 objectForKeyedSubscript:@"kNtstatMetricsCurrent"];

    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [v9 BOOLValue];
      v6 &= v10 ^ 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v4 objectForKeyedSubscript:@"kNtstatMetricsPrevious"];

    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [v11 BOOLValue];
      v6 &= v12 ^ 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v4 objectForKeyedSubscript:@"kNtstatMetricsGrandTotal"];

    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [v13 BOOLValue];
      v6 &= v14 ^ 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v4 objectForKeyedSubscript:@"kNtstatMetricsReportZeroCounts"];

    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = [v15 BOOLValue];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v4 objectForKeyedSubscript:@"kNtstatMetricsPid"];

    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v30 = [v17 intValue];
      v6 = 0;
    }

    else
    {
      v30 = 0;
    }

    v18 = [v4 objectForKeyedSubscript:@"kNtstatMetricsSelf"];

    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = [v18 BOOLValue];
      v20 = v19 | v8;
      v6 &= v19 ^ 1;
    }

    else
    {
      v20 = v8;
    }

    v21 = [v4 objectForKeyedSubscript:@"kNtstatMetricsProcessName"];

    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = v21;
      v6 = 0;
    }

    else
    {
      v22 = 0;
    }

    v23 = v31;
  }

  else
  {
    v16 = 0;
    v14 = 0;
    v20 = 0;
    v12 = 0;
    v10 = 0;
    v23 = 0;
    v22 = 0;
    v30 = 0;
    v6 = 1;
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = v24;
  if ((v6 & 1) != 0 || v23)
  {
    getGlobalMetrics(v24, v16);
  }

  v26 = v6 | v10;
  if (v14)
  {
    getGrandTotalMetrics(v25, v16);
  }

  v27 = v6 | v12;
  if (v26)
  {
    getCurrentMetrics(v25, v16);
    goto LABEL_53;
  }

  if (v22)
  {
    getProcessMetrics(v25, v22, v16);
    goto LABEL_53;
  }

  if (v20)
  {
    v28 = getpid();
  }

  else
  {
    v28 = v30;
    if (!v30)
    {
      goto LABEL_53;
    }
  }

  getPidMetrics(v25, v28, v16);
LABEL_53:
  if (v27)
  {
    getPreviousMetrics(v25, v16);
  }

  return v25;
}

+ (void)dumpKernelMetrics:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  [a1 getKernelMetrics:a3];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v21 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v21)
  {
    v20 = *v29;
    do
    {
      v3 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v28 + 1) + 8 * v3);
        v5 = [v4 objectForKeyedSubscript:@"kNtstatMetricIdPretty"];
        v6 = NStatGetLog();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        v23 = v3;
        if (v5)
        {
          if (v7)
          {
            *buf = 138543362;
            v34 = v5;
            v8 = v6;
            v9 = "Metric: %{public}@";
LABEL_11:
            _os_log_impl(&dword_25BA3A000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
          }
        }

        else if (v7)
        {
          *buf = 138543362;
          v34 = v4;
          v8 = v6;
          v9 = "Unknown metric: %{public}@";
          goto LABEL_11;
        }

        v22 = v5;

        v10 = [v4 objectForKeyedSubscript:@"kNtstatMetricItems"];
        v11 = v10;
        if (v10)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v24 + 1) + 8 * i) objectForKeyedSubscript:@"kNtstatMetricItemPretty"];
                if (v16)
                {
                  v17 = NStatGetLog();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v34 = v16;
                    _os_log_impl(&dword_25BA3A000, v17, OS_LOG_TYPE_DEFAULT, "Metric:  %{public}@", buf, 0xCu);
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v13);
          }
        }

        v3 = v23 + 1;
      }

      while (v23 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v21);
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end