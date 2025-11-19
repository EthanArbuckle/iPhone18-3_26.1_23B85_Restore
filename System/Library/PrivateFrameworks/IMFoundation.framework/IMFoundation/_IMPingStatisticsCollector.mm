@interface _IMPingStatisticsCollector
- (BOOL)logStatsToFile:(id)a3 error:(id *)a4;
- (_IMPingStatisticsCollector)init;
- (double)_computeMedianTime:(id)a3;
- (double)_computeStandardDeviation:(id)a3 numPings:(int)a4 averageRTT:(double)a5;
- (id)pingStats;
- (id)pingStatsForLastNSeconds:(double)a3;
- (timeval)timeSentForPacket:(int)a3;
- (void)addEchoReplyPacket:(int)a3;
- (void)dealloc;
- (void)timeoutOldSequenceNumbers:(double)a3;
@end

@implementation _IMPingStatisticsCollector

- (_IMPingStatisticsCollector)init
{
  v12.receiver = self;
  v12.super_class = _IMPingStatisticsCollector;
  v2 = [(_IMPingStatisticsCollector *)&v12 init];
  if (v2)
  {
    for (i = 8; i != 1288; i += 8)
    {
      v4 = *(&v2->super.isa + i);
      *(&v2->super.isa + i) = 0;
    }

    v5 = objc_alloc(MEMORY[0x1E696AD60]);
    v7 = objc_msgSend_initWithString_(v5, v6, &stru_1F09D3C40);
    stringToWriteToFile = v2->_stringToWriteToFile;
    v2->_stringToWriteToFile = v7;

    v9 = objc_alloc_init(IMPingStatistics);
    stats = v2->_stats;
    v2->_stats = v9;
  }

  return v2;
}

- (void)dealloc
{
  for (i = 8; i != 1288; i += 8)
  {
    v4 = *(&self->super.isa + i);
    *(&self->super.isa + i) = 0;
  }

  v5.receiver = self;
  v5.super_class = _IMPingStatisticsCollector;
  [(_IMPingStatisticsCollector *)&v5 dealloc];
}

- (timeval)timeSentForPacket:(int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = v4->_timestampArray[a3 % 160];
  if (objc_msgSend_sequenceNumber(v5, v6, v7) == a3)
  {
    v10 = objc_msgSend_timeSent(v5, v8, v9);
    v12 = v11;
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

  objc_sync_exit(v4);

  v13 = v10;
  v14 = v12;
  result.tv_usec = v14;
  result.tv_sec = v13;
  return result;
}

- (void)addEchoReplyPacket:(int)a3
{
  obj = self;
  objc_sync_enter(obj);
  timestampArray = obj->_timestampArray;
  v5 = a3 % 160;
  v8 = obj->_timestampArray[a3 % 160];
  if (obj->_roundTriptimes)
  {
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    roundTriptimes = obj->_roundTriptimes;
    obj->_roundTriptimes = v9;

    if (!v8)
    {
      goto LABEL_8;
    }
  }

  if (objc_msgSend_sequenceNumber(v8, v6, v7) == a3)
  {
    objc_msgSend__returnPacketArrived(v8, v11, v12);
    objc_msgSend_rtt(v8, v13, v14);
    v17 = v16;
    if (v16 < 20.0)
    {
      objc_msgSend_addObject_(obj->_roundTriptimes, v15, v8);
      v18 = timestampArray[v5];
      timestampArray[v5] = 0;

      objc_msgSend__addReceivedPacket_(obj->_stats, v19, v20, v17);
    }
  }

LABEL_8:

  objc_sync_exit(obj);
}

- (void)timeoutOldSequenceNumbers:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  for (i = 8; i != 1288; i += 8)
  {
    v5 = *(&obj->super.isa + i);
    if ((objc_msgSend_timedOut(v5, v6, v7) & 1) == 0)
    {
      objc_msgSend__markPacketAsTimedOut_(v5, v8, v9, a3);
    }
  }

  objc_sync_exit(obj);
}

- (BOOL)logStatsToFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v9 = objc_autoreleasePoolPush();
  if (v6)
  {
    stringToWriteToFile = v7->_stringToWriteToFile;
    v15 = 0;
    v11 = objc_msgSend_writeToFile_atomically_encoding_error_(stringToWriteToFile, v8, v6, 1, 4, &v15);
    v12 = v15;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  objc_autoreleasePoolPop(v9);
  objc_sync_exit(v7);

  if (a4 && v12)
  {
    v13 = v12;
    *a4 = v12;
  }

  return v11;
}

- (id)pingStats
{
  v2 = self;
  objc_sync_enter(v2);
  stats = v2->_stats;
  objc_msgSend__computeMedianTime_(v2, v4, v2->_roundTriptimes);
  objc_msgSend__setMedianRoundtripTime_(stats, v5, v6);
  v7 = v2->_stats;
  roundTriptimes = v2->_roundTriptimes;
  v11 = objc_msgSend_numPingsReceived(v7, v9, v10);
  objc_msgSend_averageRoundtripTime(v2->_stats, v12, v13);
  objc_msgSend__computeStandardDeviation_numPings_averageRTT_(v2, v14, roundTriptimes, v11);
  objc_msgSend__setStandardDeviationRoundtripTime_(v7, v15, v16);
  objc_sync_exit(v2);

  v19 = objc_msgSend_copy(v2->_stats, v17, v18);

  return v19;
}

- (id)pingStatsForLastNSeconds:(double)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v7 = objc_msgSend_initWithCapacity_(v5, v6, a3);
  v8 = objc_alloc_init(IMPingStatistics);
  v9 = self;
  objc_sync_enter(v9);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v10 = v9->_roundTriptimes;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v46, v50, 16);
  if (v14)
  {
    v15 = *v47;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v46 + 1) + 8 * i);
        v18 = objc_msgSend_timeSent(v17, v12, v13);
        objc_msgSend_rtt(v17, v19, v20, v18, v19, v46);
        if (v21 > 0.0 && sub_1959D0C70(&v45) < a3)
        {
          v22 = objc_msgSend_error(v17, v12, v13) == 0;
          objc_msgSend__addTransmittedPacket_(v8, v23, v22);
          objc_msgSend_rtt(v17, v24, v25);
          objc_msgSend__addReceivedPacket_(v8, v26, v27);
          v30 = objc_msgSend_copy(v17, v28, v29);
          objc_msgSend_addObject_(v7, v31, v30);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v46, v50, 16);
    }

    while (v14);
  }

  v34 = objc_msgSend_numPingsReceived(v8, v32, v33);
  objc_msgSend_averageRoundtripTime(v8, v35, v36);
  objc_msgSend__computeStandardDeviation_numPings_averageRTT_(v9, v37, v7, v34);
  objc_msgSend__setStandardDeviationRoundtripTime_(v8, v38, v39);
  objc_msgSend__computeMedianTime_(v9, v40, v7);
  objc_msgSend__setMedianRoundtripTime_(v8, v41, v42);
  objc_sync_exit(v9);

  v43 = *MEMORY[0x1E69E9840];

  return v8;
}

- (double)_computeMedianTime:(id)a3
{
  v3 = a3;
  if (objc_msgSend_count(v3, v4, v5))
  {
    objc_msgSend_sortUsingComparator_(v3, v6, &unk_1F09D3680);
    v9 = objc_msgSend_count(v3, v7, v8);
    v11 = objc_msgSend_objectAtIndex_(v3, v10, v9 >> 1);
    objc_msgSend_rtt(v11, v12, v13);
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  return v15;
}

- (double)_computeStandardDeviation:(id)a3 numPings:(int)a4 averageRTT:(double)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v22, v26, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v23;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if (!objc_msgSend_error(v16, v10, v11))
        {
          objc_msgSend_rtt(v16, v10, v11);
          v14 = v14 + (v17 - a5) * (v17 - a5);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v22, v26, 16);
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
  }

  if (objc_msgSend_numPingsReceived(self->_stats, v10, v11) >= 1)
  {
    v14 = sqrt(v14 / objc_msgSend_numPingsReceived(self->_stats, v18, v19));
  }

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

@end