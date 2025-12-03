@interface NWStatsManager
+ (id)getKernelMetrics:(id)metrics;
+ (void)dumpKernelMetrics:(id)metrics;
- (BOOL)setRcvBufsize:(int)bufsize;
- (NWStatsManager)initWithQueue:(id)queue;
- (NWStatsManagerDelegate)delegate;
- (id)getState;
- (id)identifierForUUID:(id)d derivation:(int *)derivation;
- (id)stateDictionary;
- (int)_refreshSyncUsingBlock:(id)block;
- (int)_refreshUsingBlock:(id)block completionBlock:(id)completionBlock;
- (int)_setThresholds:(id)thresholds;
- (int)configure:(id)configure;
- (int)initialConfigure:(id)configure;
- (int)reconfigure:(id)reconfigure;
- (int)statsRefreshCurrentUsage;
- (void)_adaptAfterDrop;
- (void)_addAllForProvider:(int)provider filter:(unint64_t)filter events:(unint64_t)events;
- (void)_drainReadBuffer;
- (void)_handleCompletion:(unint64_t)completion;
- (void)_handleCounts:(nstat_msg_src_counts *)counts;
- (void)_handleMessage:(nstat_msg_hdr *)message length:(int64_t)length;
- (void)_handleReads:(int64_t)reads;
- (void)_handleRemoveForSource:(id)source;
- (void)_removeSourceInternal:(unint64_t)internal;
- (void)_restartPoll:(id)poll;
- (void)_sendDetailsRequestMessage:(unint64_t)message;
- (void)_sendMessage:(nstat_msg_hdr *)message length:(int64_t)length;
- (void)_sendPoll;
- (void)_sendRemoveSource:(unint64_t)source;
- (void)_sendUpdateRequestMessage:(unint64_t)message;
- (void)_setInterfaceTraceFd:(int)fd;
- (void)_startPoll:(id)poll;
- (void)_startQueuedPoll;
- (void)_trace:(char *)_trace;
- (void)_traceMemoryBuf:(char *)buf length:(int64_t)length tag:(char *)tag;
- (void)dealloc;
- (void)dumpState;
- (void)ignoreSource:(unint64_t)source;
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
  queuedPolls = [(NWStatsManager *)self queuedPolls];
  v4 = [queuedPolls count];

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
    activePoll = [(NWStatsManager *)self activePoll];
    v6 = activePoll != 0;
  }

  return v6;
}

- (void)_traceMemoryBuf:(char *)buf length:(int64_t)length tag:(char *)tag
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
      snprintf(self->_iftracebuf, 0x1100uLL, "%ld.%06d %s len %zu\n", v13.tv_sec, v13.tv_usec, tag, length);
      v11 = strlen(self->_iftracebuf) + 1;
      v12 = v11 + length;
      if ((v11 + length) >> 8 <= 0x10)
      {
        memcpy(&self->_iftracebuf[v11], buf, length);
        write(self->_interfaceTraceFd, self->_iftracebuf, v12);
      }
    }
  }
}

- (void)_trace:(char *)_trace
{
  if (_trace && self->_interfaceTraceFd >= 1)
  {
    v5 = strlen(_trace) + 1;

    [(NWStatsManager *)self _traceMemoryBuf:_trace length:v5 tag:"Trace"];
  }
}

- (void)_sendMessage:(nstat_msg_hdr *)message length:(int64_t)length
{
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  readSource = [(NWStatsManager *)self readSource];

  if (readSource)
  {
    message->length = length;
    message->flags |= 1u;
    if (self->_interfaceTraceFd >= 1 && self->_iftracebuf)
    {
      [(NWStatsManager *)self _traceMemoryBuf:message length:length tag:"Output"];
    }

    if (send([(NWStatsManager *)self sockfd], message, length, 0) != length && message->context)
    {

      [(NWStatsManager *)self _handleCompletion:?];
    }
  }
}

- (void)_sendUpdateRequestMessage:(unint64_t)message
{
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if (![(NWStatsManager *)self isInvalidated])
  {
    v6 = xmmword_25BA77950;
    DWORD2(v6) = 1007;
    messageCopy = message;
    [(NWStatsManager *)self _sendMessage:&v6 length:24];
  }
}

- (void)_sendDetailsRequestMessage:(unint64_t)message
{
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if (![(NWStatsManager *)self isInvalidated])
  {
    v6 = xmmword_25BA77950;
    DWORD2(v6) = 1009;
    messageCopy = message;
    [(NWStatsManager *)self _sendMessage:&v6 length:24];
  }
}

- (void)_sendRemoveSource:(unint64_t)source
{
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6[0] = 0;
  v6[1] = 1003;
  v6[2] = source;
  [(NWStatsManager *)self _sendMessage:v6 length:24];
}

- (void)_startPoll:(id)poll
{
  pollCopy = poll;
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  [(NWStatsManager *)self activePoll];
  if (objc_claimAutoreleasedReturnValue())
  {
    [NWStatsManager _startPoll:];
  }

  [(NWStatsManager *)self setActivePoll:pollCopy];
  nextPollReference = self->_nextPollReference;
  self->_currentPollReference = nextPollReference;
  self->_nextPollReference = nextPollReference + 1;
  [pollCopy setNtstatContext:?];
  [(NWStatsManager *)self _sendPoll];
}

- (void)_restartPoll:(id)poll
{
  pollCopy = poll;
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  activePoll = [(NWStatsManager *)self activePoll];
  if (activePoll != pollCopy)
  {
    [NWStatsManager _restartPoll:];
  }

  [(NWStatsManager *)self _sendPoll];
}

- (void)_handleRemoveForSource:(id)source
{
  sourceCopy = source;
  delegate = [(NWStatsManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [sourceCopy createSnapshot:2 firstOccurrence:0];
    [delegate statsManager:self didReceiveNWSnapshot:v5];
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

- (void)_handleMessage:(nstat_msg_hdr *)message length:(int64_t)length
{
  v72 = *MEMORY[0x277D85DE8];
  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  type = message->type;
  if (type > 10003)
  {
    if ((type - 10008) >= 2)
    {
      if (type == 10004)
      {
        if (length < 0x90)
        {
          goto LABEL_133;
        }

        v29 = *MEMORY[0x277D85DE8];

        [(NWStatsManager *)self _handleCounts:message];
        return;
      }

      if (type != 10006 || length < 0x98)
      {
        goto LABEL_133;
      }

      context = message[9].context;
      if (context == 6)
      {
        if (length < 0x190)
        {
          goto LABEL_133;
        }

        v17 = message[1].context;
        context_low = LODWORD(message[10].context);
        v19 = *&message[9].type;
        v20 = *MEMORY[0x277D85DE8];

        [(NWStatsManager *)self _noteInterfaceSrcRef:v17 forInterface:context_low threshold:v19];
        return;
      }

      v22 = NStatGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(lengthCopy4) = context;
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

    if (length < 0x1E8)
    {
      goto LABEL_133;
    }

    v21 = message[30].context;
    if ((v21 & 0xFFFFFFFE) == 2)
    {
      if (length <= 0x33F)
      {
        v22 = NStatGetLog();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_132;
        }

        *buf = 134218240;
        lengthCopy4 = length;
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
        if (length <= 0x33F)
        {
          v22 = NStatGetLog();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_132;
          }

          *buf = 134218240;
          lengthCopy4 = length;
          v70 = 2048;
          v71 = 832;
          v23 = "QUIC details message with size %ld below minimum %ld\n";
          goto LABEL_130;
        }

        goto LABEL_81;
      }

      if (v21 == 9)
      {
        if (length <= 0x2AF)
        {
          v22 = NStatGetLog();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_132;
          }

          *buf = 134218240;
          lengthCopy4 = length;
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
          LODWORD(lengthCopy4) = v21;
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

    if (length <= 0x2FF)
    {
      v22 = NStatGetLog();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_132;
      }

      *buf = 134218240;
      lengthCopy4 = length;
      v70 = 2048;
      v71 = 768;
      v23 = "UDP details message with size %ld below minimum %ld\n";
      goto LABEL_130;
    }

LABEL_81:
    delegate = [(NWStatsManager *)self delegate];
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:message[1].context];
    internalSources = [(NWStatsManager *)self internalSources];
    activePoll5 = [internalSources objectForKey:v36];

    flags = message->flags;
    v66 = delegate;
    if ((flags & 4) != 0)
    {
      v40 = 0;
      v39 = 0;
      v42 = 2;
      v41 = 32;
    }

    else if (message->context == 1)
    {
      v39 = 0;
      v40 = 1;
      v41 = 8;
      v42 = 1;
    }

    else
    {
      v40 = 0;
      v39 = *&message[1].type == 0;
      v41 = 24;
      if (*&message[1].type)
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
    if (activePoll5)
    {
      if (((v40 | [activePoll5 removing]) & 1) == 0)
      {
        statsMonitor = [(NWStatsManager *)self statsMonitor];
        if ([activePoll5 updateWithDetails:message length:length monitor:statsMonitor])
        {

LABEL_101:
          v48 = [activePoll5 createSnapshot:v42 firstOccurrence:{0, v66}];
          if ((message->flags & 4) == 0)
          {
            goto LABEL_104;
          }

          internalSources2 = [(NWStatsManager *)self internalSources];
          [internalSources2 removeObjectForKey:v36];
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
                interfaceIndex = [v52 interfaceIndex];
                v54 = +[NWStatsInterfaceRegistry sharedInstance];
                [v54 addInterfaceIndexToRegistry:interfaceIndex];
                if ([v54 isTrackingInterfaceIndex:interfaceIndex])
                {
                  [v52 donateBytesToAccumulator];
                }

                euuid = [v52 euuid];
                v56 = [v54 machOUUIDBelongsToVPNProvider:euuid];

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

            activePoll = [(NWStatsManager *)self activePoll];
            if (!activePoll)
            {
              goto LABEL_119;
            }

            v58 = activePoll;
            activePoll2 = [(NWStatsManager *)self activePoll];
            deliveryBlock = [activePoll2 deliveryBlock];

            if (!deliveryBlock)
            {
LABEL_119:
              v63 = v66;
              if (objc_opt_respondsToSelector())
              {
                [v66 statsManager:self didReceiveNWSnapshot:v48];
              }

              goto LABEL_124;
            }

            activePoll3 = [(NWStatsManager *)self activePoll];
            deliveryBlock2 = [activePoll3 deliveryBlock];
            (deliveryBlock2)[2](deliveryBlock2, v48);
          }

LABEL_123:
          v63 = v66;
LABEL_124:

LABEL_125:
          v64 = *MEMORY[0x277D85DE8];

          return;
        }

        v50 = message->flags;

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
      statsMonitor2 = [(NWStatsManager *)self statsMonitor];
      activePoll5 = [v46 initWithDetails:message length:length monitor:statsMonitor2];

      if (activePoll5)
      {
        v48 = [activePoll5 createSnapshot:v42 firstOccurrence:1];
        if ((flags & 4) != 0)
        {
          goto LABEL_104;
        }

        internalSources2 = [(NWStatsManager *)self internalSources];
        [internalSources2 setObject:activePoll5 forKey:v36];
        goto LABEL_103;
      }

      activePoll5 = 0;
    }

    v48 = 0;
    goto LABEL_123;
  }

  if (type)
  {
    if (type != 10001)
    {
      if (type != 10002 || length < 0x18)
      {
        goto LABEL_133;
      }

      v9 = message[1].context;
      v10 = message->flags;
      internalSources3 = [(NWStatsManager *)self internalSources];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
      v13 = [internalSources3 objectForKey:v12];

      if (v10 == 8)
      {
        v14 = NStatGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          lengthCopy4 = v9;
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

    if (length < 0x20)
    {
      goto LABEL_133;
    }

    v26 = message[1].type;
    if (v26 > 0xA)
    {
      goto LABEL_133;
    }

    ++self->_providerCounts[v26].numSrcsAdded;
    if (v26 == 6)
    {
      v27 = message[1].context;
      v28 = *MEMORY[0x277D85DE8];

      [(NWStatsManager *)self _sendUpdateRequestMessage:v27];
      return;
    }

    if (self->_eagerInstantiate)
    {
      v31 = message[1].context;
      v32 = *MEMORY[0x277D85DE8];

      [(NWStatsManager *)self _sendDetailsRequestMessage:v31];
      return;
    }

LABEL_133:
    v65 = *MEMORY[0x277D85DE8];
    return;
  }

  currentPollReference = self->_currentPollReference;
  if (!currentPollReference || currentPollReference != message->context)
  {
    goto LABEL_133;
  }

  if ((message->flags & 2) != 0 && self->_continuationCount <= 0x27)
  {
    activePoll4 = [(NWStatsManager *)self activePoll];
    if (!activePoll4)
    {
      [NWStatsManager _handleMessage:length:];
    }

    activePoll5 = [(NWStatsManager *)self activePoll];
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
      readBuffer = [(NWStatsManager *)self readBuffer];
      if (i >= 0x10)
      {
        v6 = readBuffer;
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

- (void)_handleReads:(int64_t)reads
{
  v5 = objc_autoreleasePoolPush();
  v6 = 0;
  if (reads <= 1)
  {
    readsCopy = 1;
  }

  else
  {
    readsCopy = reads;
  }

  do
  {
    v8 = recv([(NWStatsManager *)self sockfd], [(NWStatsManager *)self readBuffer], [(NWStatsManager *)self readBufferSize], 0);
    if (v8 < 1)
    {
      break;
    }

    v9 = v8;
    readBuffer = [(NWStatsManager *)self readBuffer];
    if (v9 >= 0x10)
    {
      v11 = readBuffer;
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

  while (v6 != readsCopy);

  objc_autoreleasePoolPop(v5);
}

- (void)_startQueuedPoll
{
  [(NWStatsManager *)self activePoll];
  if (objc_claimAutoreleasedReturnValue())
  {
    [NWStatsManager _startQueuedPoll];
  }

  clientQueue = [(NWStatsManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  queuedPolls = [(NWStatsManager *)self queuedPolls];
  v8 = [queuedPolls objectAtIndexedSubscript:0];

  v6 = v8;
  if (v8)
  {
    queuedPolls2 = [(NWStatsManager *)self queuedPolls];
    [queuedPolls2 removeObjectAtIndex:0];

    isInvalidated = [(NWStatsManager *)self isInvalidated];
    v6 = v8;
    if ((isInvalidated & 1) == 0)
    {
      isInvalidated = [(NWStatsManager *)self _startPoll:v8];
      v6 = v8;
    }
  }

  MEMORY[0x2821F96F8](isInvalidated, v6);
}

- (void)_handleCompletion:(unint64_t)completion
{
  v18 = *MEMORY[0x277D85DE8];
  if (completion && self->_currentPollReference == completion)
  {
    self->_currentPollReference = 0;
    self->_continuationCount = 0;
    activePoll = [(NWStatsManager *)self activePoll];
    [(NWStatsManager *)self setActivePoll:0];
    if (activePoll)
    {
      if (([activePoll synchronous] & 1) == 0)
      {
        completionBlock = [activePoll completionBlock];

        if (completionBlock)
        {
          completionBlock2 = [activePoll completionBlock];
          completionBlock2[2]();
        }
      }
    }

    queuedPolls = [(NWStatsManager *)self queuedPolls];
    v8 = [queuedPolls count];

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
      completionCopy = completion;
      _os_log_impl(&dword_25BA3A000, v10, OS_LOG_TYPE_ERROR, "mismatch, _currentPollReference %lld supplied reference %lld", buf, 0x16u);
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)_removeSourceInternal:(unint64_t)internal
{
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:internal];
  internalSources = [(NWStatsManager *)self internalSources];
  v5 = [internalSources objectForKey:v7];

  if (v5)
  {
    [v5 setRemoved:1];
    internalSources2 = [(NWStatsManager *)self internalSources];
    [internalSources2 removeObjectForKey:v7];

    [(NWStatsManager *)self _handleRemoveForSource:v5];
  }
}

- (void)_addAllForProvider:(int)provider filter:(unint64_t)filter events:(unint64_t)events
{
  v11 = *MEMORY[0x277D85DE8];
  if (provider > 0xA || ((1 << provider) & 0x73C) == 0)
  {
    [NWStatsManager _addAllForProvider:filter:events:];
  }

  v9 = 0u;
  v6 = 0u;
  v10 = 0;
  DWORD2(v6) = 1002;
  LODWORD(v9) = provider;
  filterCopy = filter;
  eventsCopy = events;
  [(NWStatsManager *)self _sendMessage:&v6 length:56];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleCounts:(nstat_msg_src_counts *)counts
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  interfaceSources = [(NWStatsManager *)self interfaceSources];
  v6 = [interfaceSources countByEnumeratingWithState:&v16 objects:v22 count:16];
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
          objc_enumerationMutation(interfaceSources);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 srcRef] == counts->var1)
        {
          delegate = [(NWStatsManager *)self delegate];
          ifIndex = [v10 ifIndex];
          if (objc_opt_respondsToSelector())
          {
            [delegate statsManager:self thresholdReachedOn:ifIndex];
          }

          goto LABEL_15;
        }
      }

      v7 = [interfaceSources countByEnumeratingWithState:&v16 objects:v22 count:16];
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
    var1 = counts->var1;
    *buf = 134217984;
    v21 = var1;
    _os_log_impl(&dword_25BA3A000, v11, OS_LOG_TYPE_DEFAULT, "Unexpected counts message on source ref %lld", buf, 0xCu);
  }

  [(NWStatsManager *)self _sendUpdateRequestMessage:counts->var1];
LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
}

- (int)_setThresholds:(id)thresholds
{
  v37 = *MEMORY[0x277D85DE8];
  thresholdsCopy = thresholds;
  v5 = thresholdsCopy;
  if (!thresholdsCopy)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = thresholdsCopy;
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
      unsignedLongLongValue = [v14 unsignedLongLongValue];
      unsignedIntegerValue = [v12 unsignedIntegerValue];

      [(NWStatsManager *)self _setThreshold:unsignedLongLongValue onInterface:unsignedIntegerValue];
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

- (void)_setInterfaceTraceFd:(int)fd
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

  self->_interfaceTraceFd = fd;
}

- (void)invalidate
{
  readSource = [(NWStatsManager *)self readSource];

  if (readSource)
  {
    readSource2 = [(NWStatsManager *)self readSource];
    dispatch_source_cancel(readSource2);

    [(NWStatsManager *)self setReadSource:0];
  }

  activePoll = [(NWStatsManager *)self activePoll];

  if (activePoll)
  {
    [(NWStatsManager *)self setActivePoll:0];
  }

  [(NWStatsManager *)self setQueuedPolls:0];
  while (1)
  {
    internalSources = [(NWStatsManager *)self internalSources];
    v7 = [internalSources count];

    if (!v7)
    {
      break;
    }

    internalSources2 = [(NWStatsManager *)self internalSources];
    allKeys = [internalSources2 allKeys];

    v10 = [allKeys objectAtIndexedSubscript:0];
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

- (BOOL)setRcvBufsize:(int)bufsize
{
  v14 = *MEMORY[0x277D85DE8];
  bufsizeCopy = bufsize;
  if (self->_currentRcvBufSize == bufsize)
  {
    goto LABEL_4;
  }

  if (setsockopt(self->_sockfd, 0xFFFF, 4098, &bufsizeCopy, 4u) != -1)
  {
    self->_currentRcvBufSize = bufsizeCopy;
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
    v13 = bufsizeCopy;
    _os_log_impl(&dword_25BA3A000, v7, OS_LOG_TYPE_ERROR, "Unable to increment rcv buf size from %d to %d", buf, 0xEu);
  }

  result = 0;
LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (NWStatsManager)initWithQueue:(id)queue
{
  v35 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
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
    objc_storeStrong(&v6->_clientQueue, queue);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    internalSources = v6->_internalSources;
    v6->_internalSources = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    queuedPolls = v6->_queuedPolls;
    v6->_queuedPolls = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    interfaceSources = v6->_interfaceSources;
    v6->_interfaceSources = v16;

    v18 = [[NWStatsMonitor alloc] initWithQueue:queueCopy];
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

- (int)initialConfigure:(id)configure
{
  v83 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  currentRcvBufSize = self->_currentRcvBufSize;
  self->_consecutiveReadLimit = 20;
  self->_checkNESessionManagerVPNs = 1;
  [(NWStatsManager *)self setReadBufferSize:4096];
  v6 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTargetSelector"];

  if (v6)
  {
    v7 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTargetSelector"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTargetSelector"];
  }

  else
  {
    v9 = [[NWStatsTargetSelector alloc] initWithSelection:configureCopy];
  }

  v10 = v9;
  if (v9)
  {
    filter = [(NWStatsTargetSelector *)v9 filter];
    connFilter = [(NWStatsTargetSelector *)v10 connFilter];
    events = [(NWStatsTargetSelector *)v10 events];
    v14 = 0;
    v15 = filter | 0x8000000000;
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
  events = 0;
  connFilter = 0;
  v15 = 0x8000000000;
  v14 = 1;
LABEL_10:
  v17 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];

  if (v17)
  {
    v18 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];
    intValue = [v18 intValue];

    if (intValue)
    {
      [(NWStatsManager *)self _setInterfaceTraceFd:intValue];
    }
  }

  v20 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterDomainInfo"];

  if (v20)
  {
    v21 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterDomainInfo"];
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

  v23 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectKnownInbound"];

  if (v23)
  {
    v24 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectKnownInbound"];
    if ([v24 BOOLValue])
    {
      v15 |= 0x4000000uLL;
    }
  }

  v25 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectKnownOutbound"];

  if (v25)
  {
    v26 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectKnownOutbound"];
    if ([v26 BOOLValue])
    {
      v15 |= 0x8000000uLL;
    }
  }

  v27 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectKnownListener"];

  if (v27)
  {
    v28 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectKnownListener"];
    if ([v28 BOOLValue])
    {
      v15 |= 0x2000000uLL;
    }
  }

  v29 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterNECPClientTLV"];

  v76 = currentRcvBufSize;
  if (v29)
  {
    v15 |= 0x40000000000uLL;
    connFilter |= 0x40000000000uLL;
    v30 = NStatGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v82 = v15;
      _os_log_impl(&dword_25BA3A000, v30, OS_LOG_TYPE_DEFAULT, "initialConfigure set NSTAT_EXTENSION_FILTER_NECP_TLV, filter now 0x%llx", buf, 0xCu);
    }
  }

  v31 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterNECPAncestralClientTLV"];

  if (v31)
  {
    v32 = connFilter | 0x80000000000;
  }

  else
  {
    v32 = connFilter;
  }

  v33 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectConnHasNetAccess"];

  if (v33)
  {
    v34 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectConnHasNetAccess"];
    if ([v34 BOOLValue])
    {
      v32 |= 0x1000000uLL;
    }
  }

  v35 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnRefresh"];

  if (v35)
  {
    v36 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnRefresh"];
    if ([v36 BOOLValue])
    {
      v32 |= 0x20000000uLL;
    }
  }

  v37 = [configureCopy objectForKeyedSubscript:@"kNWStatsTuneMaxConsecutiveReads"];

  if (v37)
  {
    v38 = [configureCopy objectForKeyedSubscript:@"kNWStatsTuneMaxConsecutiveReads"];
    objc_opt_class();
    v39 = objc_opt_isKindOfClass();

    if (v39)
    {
      v40 = [configureCopy objectForKeyedSubscript:@"kNWStatsTuneMaxConsecutiveReads"];
      self->_consecutiveReadLimit = [v40 intValue];
    }
  }

  v41 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnClose"];

  if (v41)
  {
    v42 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnClose"];
    if ([v42 BOOLValue])
    {
      v32 |= 0x10000000uLL;
    }
  }

  v43 = [configureCopy objectForKeyedSubscript:@"kNWStatsOptimizeFrequentRefresh"];

  if (v43)
  {
    v44 = [configureCopy objectForKeyedSubscript:@"kNWStatsOptimizeFrequentRefresh"];
    if ([v44 BOOLValue])
    {
      [(NWStatsManager *)self setReadBufferSize:0x4000];
      v15 |= 0x2000000000uLL;
    }
  }

  v45 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectHasTrafficDelta"];
  if (v45)
  {
    v46 = v45;
    v47 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectHasTrafficDelta"];
    objc_opt_class();
    v48 = objc_opt_isKindOfClass();

    if (v48)
    {
      v49 = [configureCopy objectForKeyedSubscript:@"kNWStatsSelectHasTrafficDelta"];
      if ([v49 BOOLValue])
      {
        v15 |= 0x800000uLL;
      }
    }
  }

  v50 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterReportOpen"];

  if (v50)
  {
    v51 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterReportOpen"];
    bOOLValue = [v51 BOOLValue];
    self->_eagerInstantiate = bOOLValue;
    if (bOOLValue)
    {
      v53 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterExperiment"];

      if (v53)
      {
        v54 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterExperiment"];
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

  v55 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTrafficDeltaAdjustmentFactor"];

  if (v55)
  {
    v56 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTrafficDeltaAdjustmentFactor"];
    objc_opt_class();
    v57 = objc_opt_isKindOfClass();

    if (v57)
    {
      v58 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterTrafficDeltaAdjustmentFactor"];
      [v58 doubleValue];
      self->_trafficDeltaAdjustmentFactor = v59;
    }
  }

  v60 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterCheckNESessionManagerVPNs"];

  if (v60)
  {
    v61 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterCheckNESessionManagerVPNs"];
    objc_opt_class();
    v62 = objc_opt_isKindOfClass();

    if (v62)
    {
      v63 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterCheckNESessionManagerVPNs"];
      self->_checkNESessionManagerVPNs = [v63 BOOLValue];
    }
  }

  readBufferSize = [(NWStatsManager *)self readBufferSize];
  if (!readBufferSize || (v65 = malloc_type_malloc(readBufferSize, 0x46AA3AE4uLL)) == 0)
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
    [(NWStatsManager *)self _addAllForProvider:2 filter:v15 events:events];
    [(NWStatsManager *)self _drainReadBuffer];
  }

  else
  {
    if ([(NWStatsTargetSelector *)v10 shouldAddProvider:2])
    {
      [(NWStatsManager *)self _addAllForProvider:2 filter:v15 events:events];
      [(NWStatsManager *)self _drainReadBuffer];
    }

    if (![(NWStatsTargetSelector *)v10 shouldAddProvider:4])
    {
LABEL_88:
      if ([(NWStatsTargetSelector *)v10 shouldAddProvider:3])
      {
        [(NWStatsManager *)self _addAllForProvider:3 filter:v15 events:events];
        [(NWStatsManager *)self _drainReadBuffer];
      }

      if (![(NWStatsTargetSelector *)v10 shouldAddProvider:5])
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }
  }

  [(NWStatsManager *)self _addAllForProvider:4 filter:v15 events:events];
  [(NWStatsManager *)self _drainReadBuffer];
  if ((v14 & 1) == 0)
  {
    goto LABEL_88;
  }

  [(NWStatsManager *)self _addAllForProvider:3 filter:v15 events:events];
  [(NWStatsManager *)self _drainReadBuffer];
LABEL_91:
  [(NWStatsManager *)self _addAllForProvider:5 filter:v15 events:events];
  [(NWStatsManager *)self _drainReadBuffer];
  if (v14)
  {
LABEL_93:
    [(NWStatsManager *)self _addAllForProvider:8 filter:v15 events:events];
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
    [(NWStatsManager *)self _addAllForProvider:10 filter:v15 events:events];
    [(NWStatsManager *)self _drainReadBuffer];
    v76 += 0x8000;
  }

  if ([(NWStatsTargetSelector *)v10 shouldAddProvider:9])
  {
    [(NWStatsManager *)self _addAllForProvider:9 filter:v32 | 0x120000000000 events:events];
    [(NWStatsManager *)self _drainReadBuffer];
    v72 = v76 + 0x8000;
  }

  else
  {
    v72 = v76;
  }

  [(NWStatsManager *)self setRcvBufsize:v72];
  [(NWStatsManager *)self setConfigured:1];
  v73 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterThresholds"];
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

- (int)reconfigure:(id)reconfigure
{
  reconfigureCopy = reconfigure;
  v5 = [reconfigureCopy objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];

  if (v5)
  {
    interfaceTraceFd = self->_interfaceTraceFd;
    v7 = [reconfigureCopy objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];
    intValue = [v7 intValue];

    if (interfaceTraceFd != intValue)
    {
      v9 = [reconfigureCopy objectForKeyedSubscript:@"kNWStatsParameterTraceFD"];
      -[NWStatsManager _setInterfaceTraceFd:](self, "_setInterfaceTraceFd:", [v9 intValue]);
    }
  }

  v10 = [reconfigureCopy objectForKeyedSubscript:@"kNWStatsParameterThresholds"];
  v11 = [(NWStatsManager *)self _setThresholds:v10];

  return v11;
}

- (int)configure:(id)configure
{
  v22 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
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
      bOOLValue = [v10 BOOLValue];
      v12 = SecTaskCopyValueForEntitlement(v9, @"com.apple.private.coreservices.canmapbundleidtouuid", 0);

      bOOLValue2 = [v12 BOOLValue];
      CFRelease(v9);

      if (bOOLValue && bOOLValue2)
      {
        statsMonitor = [(NWStatsManager *)self statsMonitor];
        [statsMonitor configure:configureCopy];

        if ([(NWStatsManager *)self configured])
        {
          v6 = [(NWStatsManager *)self reconfigure:configureCopy];
        }

        else
        {
          v6 = [(NWStatsManager *)self initialConfigure:configureCopy];
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

      bOOLValue = 0;
      bOOLValue2 = 0;
    }

    v16 = NStatGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v19[0] = 67109376;
      v19[1] = bOOLValue;
      v20 = 1024;
      v21 = bOOLValue2;
      _os_log_impl(&dword_25BA3A000, v16, OS_LOG_TYPE_FAULT, "NWStatsManager configure: entitlements not held, netstats %d, mapping %d", v19, 0xEu);
    }

    [(NWStatsManager *)self invalidate];
    v6 = 1;
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int)_refreshUsingBlock:(id)block completionBlock:(id)completionBlock
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionBlockCopy = completionBlock;
  queuedPolls = [(NWStatsManager *)self queuedPolls];
  v9 = [queuedPolls count];

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
          [(NWStatsPollHandler *)v14 setDeliveryBlock:blockCopy];
          [(NWStatsPollHandler *)v15 setCompletionBlock:completionBlockCopy];
          [(NWStatsPollHandler *)v15 setManager:self];
          [(NWStatsPollHandler *)v15 setSynchronous:0];
          activePoll = [(NWStatsManager *)self activePoll];

          if (activePoll)
          {
            queuedPolls2 = [(NWStatsManager *)self queuedPolls];
            [queuedPolls2 addObject:v15];
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

- (int)_refreshSyncUsingBlock:(id)block
{
  blockCopy = block;
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
        [(NWStatsPollHandler *)v10 setDeliveryBlock:blockCopy];
        [(NWStatsPollHandler *)v11 setCompletionBlock:0];
        [(NWStatsPollHandler *)v11 setManager:self];
        [(NWStatsPollHandler *)v11 setSynchronous:1];
        activePoll = [(NWStatsManager *)self activePoll];

        if (activePoll)
        {
          queuedPolls = [(NWStatsManager *)self queuedPolls];
          [queuedPolls addObject:v11];
        }

        else
        {
          [(NWStatsManager *)self _startPoll:v11];
        }

        self->_handlingSocketReads = 1;
        while (1)
        {
          activePoll2 = [(NWStatsManager *)self activePoll];

          if (!activePoll2)
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

- (void)ignoreSource:(unint64_t)source
{
  internalSources = [(NWStatsManager *)self internalSources];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:source];
  v8 = [internalSources objectForKey:v6];

  v7 = v8;
  if (v8)
  {
    [v8 setRemoving:1];
    [(NWStatsManager *)self _sendRemoveSource:source];
    v7 = v8;
  }
}

- (id)identifierForUUID:(id)d derivation:(int *)derivation
{
  dCopy = d;
  statsMonitor = [(NWStatsManager *)self statsMonitor];

  if (statsMonitor)
  {
    statsMonitor2 = [(NWStatsManager *)self statsMonitor];
    v9 = [statsMonitor2 identifierForUUID:dCopy derivation:derivation];
  }

  else
  {
    v9 = @"unavailable";
  }

  return v9;
}

- (id)stateDictionary
{
  statsMonitor = [(NWStatsManager *)self statsMonitor];
  stateDictionary = [statsMonitor stateDictionary];

  return stateDictionary;
}

- (id)getState
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  internalSources = [(NWStatsManager *)self internalSources];
  v6 = [v4 initWithFormat:@"NWStatsManager %p: Current num sources %d current buf size %d after %d adaptations", self, objc_msgSend(internalSources, "count"), self->_currentRcvBufSize, self->_numAdaptiveRcvBufIncrements];
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
  queuedPolls = [(NWStatsManager *)self queuedPolls];
  v14 = [queuedPolls countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v14)
  {
    v15 = v14;
    selfCopy = self;
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
          objc_enumerationMutation(queuedPolls);
        }

        v17 = *(*(&v61 + 1) + 8 * v19);

        v21 = [v17 description];
        [v3 addObject:v21];

        ++v19;
        v20 = v17;
      }

      while (v15 != v19);
      v15 = [queuedPolls countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v15);

    self = selfCopy;
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
  selfCopy2 = self;
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

        v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWStatsManager %p: monitoring interface %d with srcref %lld threshold %lld", selfCopy2, objc_msgSend(*(*(&v57 + 1) + 8 * j), "ifIndex"), objc_msgSend(*(*(&v57 + 1) + 8 * j), "srcRef"), objc_msgSend(*(*(&v57 + 1) + 8 * j), "threshold")];
        [v3 addObject:v32];
      }

      v29 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v29);
  }

  v33 = selfCopy2;
  internalSources2 = [(NWStatsManager *)selfCopy2 internalSources];
  allKeys = [internalSources2 allKeys];

  v50 = allKeys;
  [allKeys sortedArrayUsingSelector:sel_compare_];
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
        longLongValue = [v40 longLongValue];
        internalSources3 = [(NWStatsManager *)v33 internalSources];
        v44 = [internalSources3 objectForKeyedSubscript:v40];
        v45 = [v41 initWithFormat:@" ref %6lld --> %@", longLongValue, v44];
        [v3 addObject:v45];
      }

      v37 = [obja countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v37);
  }

  if (v33->_checkNESessionManagerVPNs)
  {
    v46 = +[NWStatsInterfaceRegistry sharedInstance];
    getState = [v46 getState];
    [v3 addObject:getState];
  }

  v48 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)dumpState
{
  v17 = *MEMORY[0x277D85DE8];
  getState = [(NWStatsManager *)self getState];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [getState countByEnumeratingWithState:&v10 objects:v16 count:16];
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
          objc_enumerationMutation(getState);
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

      v4 = [getState countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)getKernelMetrics:(id)metrics
{
  metricsCopy = metrics;
  v4 = metricsCopy;
  if (metricsCopy)
  {
    v5 = [metricsCopy objectForKeyedSubscript:@"kNtstatMetricsGlobal"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v5 BOOLValue];
      v6 = bOOLValue ^ 1;
    }

    else
    {
      bOOLValue = 0;
      v6 = 1;
    }

    v7 = [v4 objectForKeyedSubscript:@"kNtstatMetricsSelf"];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue2 = [v7 BOOLValue];
      v6 &= bOOLValue2 ^ 1;
    }

    else
    {
      bOOLValue2 = 0;
    }

    v9 = [v4 objectForKeyedSubscript:@"kNtstatMetricsCurrent"];

    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue3 = [v9 BOOLValue];
      v6 &= bOOLValue3 ^ 1;
    }

    else
    {
      bOOLValue3 = 0;
    }

    v11 = [v4 objectForKeyedSubscript:@"kNtstatMetricsPrevious"];

    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue4 = [v11 BOOLValue];
      v6 &= bOOLValue4 ^ 1;
    }

    else
    {
      bOOLValue4 = 0;
    }

    v13 = [v4 objectForKeyedSubscript:@"kNtstatMetricsGrandTotal"];

    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue5 = [v13 BOOLValue];
      v6 &= bOOLValue5 ^ 1;
    }

    else
    {
      bOOLValue5 = 0;
    }

    v15 = [v4 objectForKeyedSubscript:@"kNtstatMetricsReportZeroCounts"];

    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue6 = [v15 BOOLValue];
    }

    else
    {
      bOOLValue6 = 0;
    }

    v17 = [v4 objectForKeyedSubscript:@"kNtstatMetricsPid"];

    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      intValue = [v17 intValue];
      v6 = 0;
    }

    else
    {
      intValue = 0;
    }

    v18 = [v4 objectForKeyedSubscript:@"kNtstatMetricsSelf"];

    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue7 = [v18 BOOLValue];
      v20 = bOOLValue7 | bOOLValue2;
      v6 &= bOOLValue7 ^ 1;
    }

    else
    {
      v20 = bOOLValue2;
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

    v23 = bOOLValue;
  }

  else
  {
    bOOLValue6 = 0;
    bOOLValue5 = 0;
    v20 = 0;
    bOOLValue4 = 0;
    bOOLValue3 = 0;
    v23 = 0;
    v22 = 0;
    intValue = 0;
    v6 = 1;
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = v24;
  if ((v6 & 1) != 0 || v23)
  {
    getGlobalMetrics(v24, bOOLValue6);
  }

  v26 = v6 | bOOLValue3;
  if (bOOLValue5)
  {
    getGrandTotalMetrics(v25, bOOLValue6);
  }

  v27 = v6 | bOOLValue4;
  if (v26)
  {
    getCurrentMetrics(v25, bOOLValue6);
    goto LABEL_53;
  }

  if (v22)
  {
    getProcessMetrics(v25, v22, bOOLValue6);
    goto LABEL_53;
  }

  if (v20)
  {
    v28 = getpid();
  }

  else
  {
    v28 = intValue;
    if (!intValue)
    {
      goto LABEL_53;
    }
  }

  getPidMetrics(v25, v28, bOOLValue6);
LABEL_53:
  if (v27)
  {
    getPreviousMetrics(v25, bOOLValue6);
  }

  return v25;
}

+ (void)dumpKernelMetrics:(id)metrics
{
  v36 = *MEMORY[0x277D85DE8];
  [self getKernelMetrics:metrics];
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