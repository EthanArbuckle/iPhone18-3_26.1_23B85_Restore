@interface IDSDatagramChannel
- ($8401F4BB0FBBAD626D053E4AC6536F2D)_setWiFiAssist:(BOOL)a3;
- ($B9DA14AB56F58BCD48907D5C6DBDA49C)_makeDirectPacketBufferFromDatagram:(const void *)a3 datagramSize:(unsigned int)a4 currentDatagramCount:(unsigned __int8)a5 totalDatagramCount:(unsigned __int8)a6 datagramInfo:(id)a7 datagramOptions:(id *)a8 linkContext:(id)a9 supportsQPod:(BOOL)a10;
- (BOOL)processDatagram:(const char *)a3 datagramSize:(unint64_t)a4 readHandler:(id)a5 readHandlerWithOptions:(id)a6;
- (IDSDataChannelLinkContext)defaultLink;
- (IDSDatagramChannel)initWithDestination:(id)a3 options:(id)a4;
- (IDSDatagramChannel)initWithSocketDescriptor:(int)a3;
- (NSArray)connectedLinks;
- (id)_connectionInfoForDictionary:(id)a3;
- (id)_directConnectionsForLinkID:(char)a3;
- (id)_extractparticipantIDToHashedIDMappingFromData:(id)a3;
- (id)_linkContextsCopy;
- (id)_underlyingLinkContextForLinkID:(char)a3;
- (id)description;
- (id)getDispatchDataForPacketBuffer:(id *)a3;
- (id)getIDSDataChannelsQueue;
- (id)protocolStackDescriptionFor:(id)a3;
- (int)underlyingFileDescriptor;
- (void)_addConnections:(id)a3 toLinkContext:(id)a4;
- (void)_buildPacketBufferMetaData:(id *)a3;
- (void)_dumpLinkContextConnectionsInfo;
- (void)_logFinalStats;
- (void)_periodicTasks;
- (void)_periodicTasksTick;
- (void)_removeDirectConnection:(id)a3;
- (void)_reportDictionary:(id)a3 forKey:(unsigned __int8)a4;
- (void)_reportFirstIncomingPacketTimeForMKI:(id)a3 time:(id)a4 participantID:(id)a5;
- (void)_reportFirstOutgoingPacketTimeForMKI:(id)a3 time:(id)a4 participantID:(id)a5;
- (void)_schedulePeriodicTasks;
- (void)_sendDataChunkToDaemon:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5 withKey:(unsigned __int8)a6;
- (void)_sendSequenceNumberMetadataToDaemon:(unint64_t)a3;
- (void)_sendStatsRequestViaDaemon;
- (void)_setDirectConnections:(id)a3 forLinkID:(char)a4;
- (void)_startStatsTimer;
- (void)_stopStatsTimer;
- (void)_syncLinkQualityMeasurement;
- (void)_writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4 datagramInfo:(id)a5 options:(id *)a6 completionHandler:(id)a7;
- (void)_writeToNWConnectionArrayOfDatagrams:(const void *)a3 datagramSizes:(unsigned int *)a4 datagramInfo:(id *)a5 datagramOptions:(id *)a6 datagramCount:(int)a7 completionHandler:(id)a8;
- (void)_writeToSocket:(int)a3 datagrams:(const void *)a4 datagramSizes:(unsigned int *)a5 datagramInfo:(id *)a6 datagramOptions:(id *)a7 datagramCount:(int)a8 completionHandler:(id)a9;
- (void)addConnectionStateChangedHandlerForConnection:(id)a3 linkContext:(id)a4 linkID:(char)a5 connection:(id)a6 readyHandler:(id)a7;
- (void)addNewIDSDataChannelLinkWithAttributes:(char *)a3 linkAttributesLength:(unsigned __int16)a4;
- (void)close;
- (void)dealloc;
- (void)flushLinkProbingStatusWithOptions:(id)a3;
- (void)generateMetadataWithDatagramInfo:(id)a3 options:(id *)a4 currentDatagramCount:(unsigned __int8)a5 totalDatagramCount:(unsigned __int8)a6 byteBuffer:(id *)a7;
- (void)invalidate;
- (void)invalidateDirectConnections;
- (void)osChannelInfoLog;
- (void)processMetadataForDatagram:(const char *)a3 size:(unint64_t)a4 datagramInfo:(id *)a5 options:(id *)a6;
- (void)queryStatusWithOptions:(id)a3;
- (void)readDatagramWithCompletionHandler:(id)a3;
- (void)readDatagramsWithCompletionHandler:(id)a3;
- (void)readFromNWConnection:(id)a3 maximumDatagrams:(unsigned int)a4 readHandler:(id)a5 readHandlerWithOptions:(id)a6;
- (void)readFromOSChannel:(channel *)a3 ring:(channel_ring_desc *)a4 maximumDatagrams:(unsigned int)a5 readHandler:(id)a6 readHandlerWithOptions:(id)a7;
- (void)readFromSocketDescriptorWithReadHandler:(id)a3 readHandlerWithOptions:(id)a4;
- (void)readyToRead;
- (void)reportFirstIncomingPacketTimeForMKI:(id)a3 participantID:(id)a4;
- (void)reportFirstOutgoingPacketTimeForMKI:(id)a3 participantID:(id)a4;
- (void)reportMKIArrival:(id)a3 isLocallyGenerated:(BOOL)a4;
- (void)requestPMTUEvaluationForLinkID:(char)a3;
- (void)requestSessionInfoWithOptions:(id)a3;
- (void)requestStatsWithOptions:(id)a3;
- (void)scheduleRead;
- (void)selectDefaultLink:(char)a3;
- (void)sendEventConnectedWithDummyLinkInfo;
- (void)sendMetadata;
- (void)sendPacketLogData:(id)a3;
- (void)setChannelPreferences:(id)a3;
- (void)setEventHandler:(id)a3;
- (void)setLinkIDToParticipantMap:(id)a3;
- (void)setReadHandler:(id)a3;
- (void)setReadHandlerWithOptions:(id)a3;
- (void)setUPlusOneMode:(BOOL)a3 isInitiator:(BOOL)a4;
- (void)setWriteCompletionHandler:(id)a3;
- (void)start;
- (void)startActiveProbingWithOptions:(id)a3;
- (void)startInternal;
- (void)startMKMRecoveryForParticipantIDs:(id)a3;
- (void)stopActiveProbingWithOptions:(id)a3;
@end

@implementation IDSDatagramChannel

- (void)_startStatsTimer
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_statsTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_internal->_queue);
    statsTimer = self->_statsTimer;
    self->_statsTimer = v3;

    v5 = self->_statsTimer;
    v6 = dispatch_time(0, 4000000000);
    dispatch_source_set_timer(v5, v6, 0xEE6B2800uLL, 0x5F5E100uLL);
    objc_initWeak(&location, self);
    v7 = self->_statsTimer;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = sub_195AEB20C;
    v14 = &unk_1E743EE18;
    objc_copyWeak(&v15, &location);
    dispatch_source_set_event_handler(v7, &v11);
    dispatch_resume(self->_statsTimer);
    v8 = [IDSLogging IDSDataChannels:v11];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_statsTimer;
      *buf = 134217984;
      v18 = v9;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "start stats timer %p.", buf, 0xCu);
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_stopStatsTimer
{
  v10 = *MEMORY[0x1E69E9840];
  statsTimer = self->_statsTimer;
  if (statsTimer)
  {
    dispatch_source_cancel(statsTimer);
    v4 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_statsTimer;
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "stop stats timer %p.", &v8, 0xCu);
    }

    v6 = self->_statsTimer;
    self->_statsTimer = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)_directConnectionsForLinkID:(char)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_internal->_directConnectionsByLinkIDLock);
  v5 = self->_internal->_directConnectionsByLinkID[v3];
  if (!v5)
  {
    v5 = objc_alloc_init(IDSDataChannelsDirectConnections);
    objc_storeStrong(&self->_internal->_directConnectionsByLinkID[v3], v5);
    v6 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109378;
      v9[1] = v3;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "LinkID %d associated with direct connection %@", v9, 0x12u);
    }
  }

  os_unfair_lock_unlock(&self->_internal->_directConnectionsByLinkIDLock);
  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_setDirectConnections:(id)a3 forLinkID:(char)a4
{
  v4 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v4 < 0)
  {
    v8 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[IDSDatagramChannel(DirectConnections) _setDirectConnections:forLinkID:]";
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s: Invalid LinkID %d", &v10, 0x12u);
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_internal->_directConnectionsByLinkIDLock);
    objc_storeStrong(&self->_internal->_directConnectionsByLinkID[v4], a3);
    os_unfair_lock_unlock(&self->_internal->_directConnectionsByLinkIDLock);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_removeDirectConnection:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_internal->_directConnectionsByLinkIDLock);
    v5 = 0;
    *&v6 = 67109378;
    v15 = v6;
    while (1)
    {
      v7 = self->_internal->_directConnectionsByLinkID[v5];
      v8 = [(IDSDataChannelsDirectConnections *)v7 udpConnection];
      v9 = v8;
      if (v8 == v4)
      {
        break;
      }

      v10 = [(IDSDataChannelsDirectConnections *)v7 qpodConnection];

      if (v10 == v4)
      {
        goto LABEL_7;
      }

LABEL_10:

      if (++v5 == 256)
      {
        os_unfair_lock_unlock(&self->_internal->_directConnectionsByLinkIDLock);
        goto LABEL_12;
      }
    }

LABEL_7:
    v11 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v15;
      v17 = v5;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "LinkID %d unassociated with direct connection %@", buf, 0x12u);
    }

    directConnectionsByLinkID = self->_internal->_directConnectionsByLinkID;
    v13 = directConnectionsByLinkID[v5];
    directConnectionsByLinkID[v5] = 0;

    goto LABEL_10;
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_underlyingLinkContextForLinkID:(char)a3
{
  v4 = [(IDSDatagramChannel *)self _linkContextWithID:a3];
  if ([v4 isVirtualRelayLink])
  {
    v5 = -[IDSDatagramChannel _linkContextWithID:](self, "_linkContextWithID:", [v4 delegatedLinkID]);
    [v4 setDirectConnectionReady:{objc_msgSend(v5, "directConnectionReady")}];
  }

  return v4;
}

- (void)_dumpLinkContextConnectionsInfo
{
  v19 = *MEMORY[0x1E69E9840];
  ids_monotonic_time();
  if (v3 - *&qword_1EAEDC268 > 5.0)
  {
    qword_1EAEDC268 = *&v3;
    v4 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Dumping link contexts and direct connections", buf, 2u);
    }

    os_unfair_lock_lock(&self->_internal->_directConnectionsByLinkIDLock);
    v5 = 0;
    *&v6 = 134218498;
    v12 = v6;
    do
    {
      v7 = [(IDSDatagramChannel *)self _linkContextWithID:v5, v12];
      v8 = [v7 description];

      v9 = [(IDSDataChannelsDirectConnections *)self->_internal->_directConnectionsByLinkID[v5] description];
      if (v8 | v9)
      {
        v10 = +[IDSLogging IDSDataChannels];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v12;
          v14 = self;
          v15 = 2112;
          v16 = v9;
          v17 = 2112;
          v18 = v8;
          _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "<%p> -- connection %@ link context %@", buf, 0x20u);
        }
      }

      ++v5;
    }

    while (v5 != 256);
    os_unfair_lock_unlock(&self->_internal->_directConnectionsByLinkIDLock);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)invalidateDirectConnections
{
  v34 = *MEMORY[0x1E69E9840];
  [(IDSDatagramChannel *)self _stopStatsTimer];
  v3 = 0;
  *&v4 = 138412290;
  v28 = v4;
  do
  {
    v5 = [(IDSDatagramChannel *)self _linkContextWithID:v3, v28];
    v6 = v5;
    if (v5 && ([(IDSDataChannelsDirectConnections *)v5 isVirtualRelayLink]& 1) == 0)
    {
      os_unfair_lock_lock(&self->_internal->_directConnectionsByLinkIDLock);
      v7 = self->_internal->_directConnectionsByLinkID[v3];
      os_unfair_lock_unlock(&self->_internal->_directConnectionsByLinkIDLock);
      v8 = [(IDSDataChannelsDirectConnections *)v7 udpConnection];

      if (v8)
      {
        v9 = [(IDSDataChannelsDirectConnections *)v7 udpConnection];
        [(IDSDatagramChannel *)self _removeDirectConnection:v9];

        v10 = [(IDSDataChannelsDirectConnections *)v7 udpConnection];
        nw_connection_cancel(v10);
      }

      else
      {
        v10 = +[IDSLogging IDSDataChannels];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v28;
          v31 = v6;
          _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Found empty udp connection for link context %@", buf, 0xCu);
        }
      }

      v11 = [(IDSDataChannelsDirectConnections *)v7 qpodConnection];

      if (v11)
      {
        v12 = [(IDSDataChannelsDirectConnections *)v7 qpodConnection];
        [(IDSDatagramChannel *)self _removeDirectConnection:v12];

        v13 = [(IDSDataChannelsDirectConnections *)v7 qpodConnection];
        nw_connection_cancel(v13);
      }

      else
      {
        v13 = +[IDSLogging IDSDataChannels];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v28;
          v31 = v6;
          _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Found empty udp connection for link context %@", buf, 0xCu);
        }
      }
    }

    ++v3;
  }

  while (v3 != 256);
  v15 = 0;
  *&v14 = 138412546;
  v29 = v14;
  do
  {
    os_unfair_lock_lock(&self->_internal->_directConnectionsByLinkIDLock);
    internal = self->_internal;
    if (internal->_directConnectionsByLinkID[v15])
    {
      v17 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_internal->_directConnectionsByLinkID[v15];
        v19 = [(IDSDatagramChannel *)self _linkContextWithID:v15];
        *buf = v29;
        v31 = v18;
        v32 = 2112;
        v33 = v19;
        _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "Cleaning up left over connection %@ for link context %@", buf, 0x16u);
      }

      v20 = self->_internal->_directConnectionsByLinkID[v15];
      v21 = [(IDSDataChannelsDirectConnections *)v20 udpConnection];

      if (v21)
      {
        v22 = [(IDSDataChannelsDirectConnections *)v20 udpConnection];
        nw_connection_cancel(v22);
      }

      v23 = [(IDSDataChannelsDirectConnections *)v20 qpodConnection];

      if (v23)
      {
        v24 = [(IDSDataChannelsDirectConnections *)v20 qpodConnection];
        nw_connection_cancel(v24);
      }

      directConnectionsByLinkID = self->_internal->_directConnectionsByLinkID;
      v26 = directConnectionsByLinkID[v15];
      directConnectionsByLinkID[v15] = 0;

      internal = self->_internal;
    }

    os_unfair_lock_unlock(&internal->_directConnectionsByLinkIDLock);
    [(IDSDatagramChannel *)self _removeLinkContextWithID:v15++];
  }

  while (v15 != 256);
  v27 = *MEMORY[0x1E69E9840];
}

- (id)protocolStackDescriptionFor:(id)a3
{
  v3 = a3;
  v4 = nw_protocol_stack_copy_internet_protocol(v3);
  v5 = nw_protocol_stack_copy_transport_protocol(v3);
  v6 = MEMORY[0x1E696AEC0];
  v7 = sub_195AED510(v4);
  v8 = sub_195AED510(v5);
  v9 = [v6 stringWithFormat:@"%@.%@", v7, v8];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_195A007E4;
  v17 = sub_195A03D98;
  v18 = &stru_1F09E7B80;
  iterate_block[0] = MEMORY[0x1E69E9820];
  iterate_block[1] = 3221225472;
  iterate_block[2] = sub_195AED56C;
  iterate_block[3] = &unk_1E7442B30;
  iterate_block[4] = &v13;
  nw_protocol_stack_iterate_application_protocols(v3, iterate_block);
  v10 = [v9 stringByAppendingString:v14[5]];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (void)addConnectionStateChangedHandlerForConnection:(id)a3 linkContext:(id)a4 linkID:(char)a5 connection:(id)a6 readyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_195AEDCAC;
  v20[3] = &unk_1E7442B58;
  v21 = v12;
  v22 = v13;
  v26 = a5;
  v24 = v14;
  v25 = v15;
  v23 = self;
  v16 = v14;
  v17 = v15;
  v18 = v13;
  v19 = v12;
  nw_connection_set_state_changed_handler(v19, v20);
}

- ($B9DA14AB56F58BCD48907D5C6DBDA49C)_makeDirectPacketBufferFromDatagram:(const void *)a3 datagramSize:(unsigned int)a4 currentDatagramCount:(unsigned __int8)a5 totalDatagramCount:(unsigned __int8)a6 datagramInfo:(id)a7 datagramOptions:(id *)a8 linkContext:(id)a9 supportsQPod:(BOOL)a10
{
  v10 = *&a7.var0;
  v65 = *MEMORY[0x1E69E9840];
  v14 = a9;
  v15 = _IDSLinkPacketBufferCreate();
  v58 = v15;
  if ([v14 isPartialTLEUPlusOneEnabled])
  {
    if (a8->var11)
    {
      if (!a10)
      {
        goto LABEL_12;
      }

      var0 = a8->var0;
    }

    else
    {
      var0 = a8->var0;
      if ((a8->var0 & 0x400) == 0 || !a10)
      {
        goto LABEL_12;
      }
    }

    a8->var11 = 0;
    a8->var0 = var0 & 0xFFFFFBFF;
    v15->var39 = 1;
    internal = self->_internal;
    if (internal && internal->_verboseFunctionalLogging)
    {
      v18 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "_makeDirectPacketBufferFromDatagram: send useExplicitQPod packet.", buf, 2u);
      }
    }
  }

LABEL_12:
  if (v15->var1 < a4)
  {
    v19 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v60) = a4;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "_makeDirectPacketBufferFromDatagram: datagramSize is %u, and exceeds IDSLinkPacketBuffer limit", buf, 8u);
    }

    _IDSLinkPacketBufferRelease();
    goto LABEL_58;
  }

  v20 = v10;
  v21 = a4;
  if (!a4)
  {
    v22 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "_makeDirectPacketBufferFromDatagram: datagramSize has no data", buf, 2u);
    }
  }

  memcpy(v15->var0, a3, v21);
  v15->var2 = v21;
  if (v20 < 1)
  {
    v33 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v60) = v10;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "_makeDirectPacketBufferFromDatagram: wrong linkID %d.", buf, 8u);
    }

    goto LABEL_58;
  }

  v15->var25 = v10;
  if (WORD1(v10))
  {
    v15->var21 = WORD1(v10);
  }

  if (BYTE4(v10))
  {
    v15->var22 = BYTE4(v10);
  }

  if ([v14 connectionType] != 1)
  {
    if (!a8)
    {
LABEL_50:
      [v14 connectionType];
      [v14 channelNumber];
      v28 = StunUtilPrepareOutgoingChannelData();
      if (self->_internal->_verboseFunctionalLogging)
      {
        v29 = v28;
        v30 = +[IDSLogging IDSDataChannels];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          var2 = v58->var2;
          v32 = [v14 channelNumber];
          *buf = 134218496;
          v60 = var2;
          v61 = 1024;
          v62 = v29;
          v63 = 1024;
          v64 = v32;
          _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "QuickRelayHeaderDebug _makeDirectPacketBufferFromDatagram: packetBufferSize is %zd, result:%d, channel number:%d", buf, 0x18u);
        }
      }

      v15 = v58;
      goto LABEL_59;
    }

    v23 = a8->var0;
    if (a8->var0)
    {
      v15->var24[0].var20 |= 1u;
      if ([v14 isVirtualRelayLink])
      {
        v20 = [v14 delegatedLinkID];
      }

      v15->var24[0].var4 = [(IDSDatagramChannel *)self _translateParticipantID:a8->var1 forLinkID:v20];
      v23 = a8->var0;
    }

    if ((v23 & 2) != 0)
    {
      v15->var24[0].var20 |= 2u;
      var4 = a8->var4;
      v15->var24[0].var2 = var4;
      if (var4 >= 1)
      {
        var5 = a8->var5;
        var3 = v15->var24[0].var3;
        do
        {
          v27 = *var5++;
          *var3++ = v27;
          --var4;
        }

        while (var4);
      }
    }

    if ((v23 & 0x10) != 0)
    {
      v15->var24[0].var20 |= 0x10u;
      v15->var24[0].var6 = a8->var2;
      if ((v23 & 0x40) == 0)
      {
LABEL_37:
        if ((v23 & 8) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_62;
      }
    }

    else if ((v23 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    v15->var24[0].var20 |= 0x40u;
    v15->var24[0].var10 = a8->var7;
    if ((v23 & 8) == 0)
    {
LABEL_38:
      if ((v23 & 0x20) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_63;
    }

LABEL_62:
    v15->var24[0].var20 |= 8u;
    v15->var24[0].var5 = a8->var3;
    if ((v23 & 0x20) == 0)
    {
LABEL_39:
      if ((v23 & 4) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_64;
    }

LABEL_63:
    v15->var24[0].var20 |= 0x20u;
    v15->var24[0].var7 = a8->var6;
    if ((v23 & 4) == 0)
    {
LABEL_40:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_65;
    }

LABEL_64:
    v15->var24[0].var20 |= 4u;
    v15->var24[0].var8 = 1;
    if ((v23 & 0x400) == 0)
    {
LABEL_41:
      if ((v23 & 0x100) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_79;
    }

LABEL_65:
    v15->var24[0].var20 |= 0x400u;
    v15->var24[0].var13 = 1;
    v36 = v15->var0;
    v37 = v15->var2;
    v38 = [v14 hbhEncryptionkey];
    v39 = IDSHBHEncryptDataWithKey();

    if (v39)
    {
      var1 = v15->var1;
      if (var1 >= [v39 length])
      {
        v15->var2 = [v39 length];
        memcpy(v15->var0, [v39 bytes], v15->var2);
        v56 = self->_internal;
        if (v56 && v56->_verboseFunctionalLogging)
        {
          v57 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1959FF000, v57, OS_LOG_TYPE_DEFAULT, "_makeDirectPacketBufferFromDatagram: send legacy-HBH packet.", buf, 2u);
          }
        }

        v23 = a8->var0;
        if ((a8->var0 & 0x100) == 0)
        {
LABEL_42:
          if ((v23 & 0x80) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_80;
        }

LABEL_79:
        v15->var24[0].var20 |= 0x100u;
        v15->var24[0].var12 = 1;
        if ((v23 & 0x80) == 0)
        {
LABEL_43:
          if ((v23 & 0x10000) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_81;
        }

LABEL_80:
        v15->var24[0].var20 |= 0x80u;
        v15->var24[0].var9 = 1;
        if ((v23 & 0x10000) == 0)
        {
LABEL_44:
          if ((v23 & 0x20000) == 0)
          {
LABEL_46:
            if ([v14 isVirtualRelayLink])
            {
              v15->var24[0].var20 |= 0x800u;
              v15->var24[0].var14 = 1;
              v15->var24[0].var15[0] = [v14 remoteRelayLinkID];
            }

            if ((a8->var0 & 0x8000) != 0)
            {
              [(IDSDatagramChannel *)self _sendSequenceNumberMetadataToDaemon:a8->var12];
            }

            goto LABEL_50;
          }

LABEL_45:
          v15->var24[0].var20 |= 0x20000u;
          v15->var24[0].var18 = 1;
          goto LABEL_46;
        }

LABEL_81:
        v15->var24[0].var20 |= 0x10000u;
        v15->var24[0].var17 = 1;
        if ((v23 & 0x20000) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v41 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_195B3FC84(v41, v42, v43, v44, v45, v46, v47, v48);
      }
    }

    else
    {
      v41 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_195B3FCBC(v41, v49, v50, v51, v52, v53, v54, v55);
      }
    }

    _IDSLinkPacketBufferRelease();
LABEL_58:
    v15 = 0;
  }

LABEL_59:

  v34 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)_sendStatsRequestViaDaemon
{
  v18 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(&internal->_readLock);
  if (!self->_internal->_isInvalidated)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:Mutable];
    v6 = v5;
    if (v5)
    {
      if ([v5 length] <= 0x1000)
      {
        [v6 bytes];
        v8 = _IDSLinkPacketBufferCreate();
        v17 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v15 = v9;
        v16 = v9;
        v10 = *v8;
        v11 = v8[1];
        IDSByteBufferInitForWriteWithAllocatedSpace();
        [v6 length];
        IDSByteBufferWriteField();
        v8[2] = v16 - *v8;
        IDSByteBufferRelease();
        [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v8];
        os_unfair_lock_lock(&self->_internal->_writeLock);
        sendingMetadata = self->_internal->_sendingMetadata;
        v13 = [MEMORY[0x1E696B098] valueWithPointer:v8];
        [(NSMutableArray *)sendingMetadata addObject:v13];

        [(IDSDatagramChannel *)self sendMetadata];
        os_unfair_lock_unlock(&self->_internal->_writeLock);
        goto LABEL_11;
      }

      v7 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v15) = 134217984;
        *(&v15 + 4) = [v6 length];
        _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "_sendStatsRequestViaDaemon: serialized metadata size: %lu, greater than max allowed sent size, return", &v15, 0xCu);
      }
    }

    else
    {
      v7 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "_sendStatsRequestViaDaemon: invalid stats data, return", &v15, 2u);
      }
    }

LABEL_11:
  }

  os_unfair_lock_unlock(&internal->_readLock);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_sendSequenceNumberMetadataToDaemon:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _IDSLinkPacketBufferCreate();
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  v6 = *v4;
  v7 = v4[1];
  IDSByteBufferInitForWriteWithAllocatedSpace();
  IDSByteBufferWriteField();
  v4[2] = 0xAAAAAAAAAAAAAAAALL - *v4;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v4, v11];
  os_unfair_lock_assert_owner(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v9 = [MEMORY[0x1E696B098] valueWithPointer:v4];
  [(NSMutableArray *)sendingMetadata addObject:v9];

  [(IDSDatagramChannel *)self sendMetadata];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setLinkIDToParticipantMap:(id)a3
{
  v4 = [a3 mutableCopy];
  internal = self->_internal;
  linkIDToParticipantMap = internal->_linkIDToParticipantMap;
  internal->_linkIDToParticipantMap = v4;

  MEMORY[0x1EEE66BB8](v4, linkIDToParticipantMap);
}

- (id)getDispatchDataForPacketBuffer:(id *)a3
{
  v3 = sub_195A7FB04(a3, 0);

  return v3;
}

- (id)getIDSDataChannelsQueue
{
  if (qword_1EAEDBFA8 != -1)
  {
    sub_195B40774();
  }

  v1 = qword_1EAEDBFA0;

  return v1;
}

- (NSArray)connectedLinks
{
  os_unfair_lock_lock(&self->_internal->_linkContextsLock);
  v3 = [(NSMutableDictionary *)self->_internal->_linkContexts allValues];
  os_unfair_lock_unlock(&self->_internal->_linkContextsLock);

  return v3;
}

- (id)_linkContextsCopy
{
  os_unfair_lock_lock(&self->_internal->_linkContextsLock);
  v3 = [(NSMutableDictionary *)self->_internal->_linkContexts copy];
  os_unfair_lock_unlock(&self->_internal->_linkContextsLock);

  return v3;
}

- (IDSDataChannelLinkContext)defaultLink
{
  internal = self->_internal;
  os_unfair_lock_lock(&internal->_linkContextsLock);
  v4 = self->_internal;
  linkContexts = v4->_linkContexts;
  v6 = [MEMORY[0x1E696AD98] numberWithChar:v4->_defaultLinkID];
  v7 = [(NSMutableDictionary *)linkContexts objectForKey:v6];

  if (v7 || self->_internal->_socketDescriptor < 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = [[IDSDataChannelLinkContext alloc] initWithDummyInformation];
  }

  v9 = v8;

  os_unfair_lock_unlock(&internal->_linkContextsLock);

  return v9;
}

- (IDSDatagramChannel)initWithSocketDescriptor:(int)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = _IDSRunningInDaemon();
  v6 = +[IDSLogging IDSDataChannels];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E9C8();
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v31 = self;
    v32 = 1024;
    v33 = a3;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "<%p> Creating with socket %d", buf, 0x12u);
  }

  v29.receiver = self;
  v29.super_class = IDSDatagramChannel;
  self = [(IDSDatagramChannel *)&v29 init];
  if (!self)
  {
LABEL_13:
    self = self;
    v8 = self;
    goto LABEL_14;
  }

  v9 = objc_alloc_init(_IDSDatagramChannel);
  internal = self->_internal;
  self->_internal = v9;

  v11 = self->_internal;
  if (v11)
  {
    v11->_socketDescriptor = a3;
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = self->_internal;
    linkContexts = v13->_linkContexts;
    v13->_linkContexts = v12;

    self->_internal->_connected = 1;
    self->_internal->_operationMode = 0;
    v15 = IDSRealTimeContext();
    v16 = self->_internal;
    context = v16->_context;
    v16->_context = v15;

    v18 = [IDSDatagramChannel getIDSDataChannelsQueue]_0();
    v19 = self->_internal;
    queue = v19->_queue;
    v19->_queue = v18;

    if (self->_internal->_shouldCollectMetrics)
    {
      v21 = [objc_alloc(MEMORY[0x1E69A5300]) initWithTimeFn:&unk_1F09E7260];
      v22 = self->_internal;
      qualityMeasurer = v22->_qualityMeasurer;
      v22->_qualityMeasurer = v21;
    }

    v24 = [objc_alloc(MEMORY[0x1E69A5220]) initWithTimeFn:&unk_1F09E7280 enableQualityMetrics:self->_internal->_shouldCollectMetrics];
    v25 = self->_internal;
    linkEngine = v25->_linkEngine;
    v25->_linkEngine = v24;

    goto LABEL_13;
  }

LABEL_5:
  v8 = 0;
LABEL_14:

  v27 = *MEMORY[0x1E69E9840];
  return v8;
}

- (IDSDatagramChannel)initWithDestination:(id)a3 options:(id)a4
{
  v141 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _IDSRunningInDaemon();
  v9 = +[IDSLogging IDSDataChannels];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B4079C();
    }

    goto LABEL_85;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "<%p> Creating with destination %@", buf, 0x16u);
  }

  v130.receiver = self;
  v130.super_class = IDSDatagramChannel;
  self = [(IDSDatagramChannel *)&v130 init];
  if (self)
  {
    v11 = objc_alloc_init(_IDSDatagramChannel);
    internal = self->_internal;
    self->_internal = v11;

    if (!self->_internal)
    {
LABEL_85:
      v109 = 0;
      goto LABEL_86;
    }

    self->_internal->_osChannelFD = -1;
    p_internal = &self->_internal;
    self->_internal->_socketDescriptor = -1;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    linkContexts = self->_internal->_linkContexts;
    (*p_internal)->_linkContexts = v14;

    (*p_internal)->_linkContextsLock._os_unfair_lock_opaque = 0;
    (*p_internal)->_linkIDToParticipantMapLock._os_unfair_lock_opaque = 0;
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sendingMetadata = self->_internal->_sendingMetadata;
    (*p_internal)->_sendingMetadata = v16;

    (*p_internal)->_hasMetadata = 1;
    if (self->_internal->_shouldCollectMetrics)
    {
      v18 = [objc_alloc(MEMORY[0x1E69A5300]) initWithTimeFn:&unk_1F09E72A0];
      v19 = self->_internal;
      qualityMeasurer = v19->_qualityMeasurer;
      v19->_qualityMeasurer = v18;
    }

    if (_os_feature_enabled_impl())
    {
      v21 = [objc_alloc(MEMORY[0x1E69A5220]) initWithTimeFn:&unk_1F09E72C0 enableQualityMetrics:self->_internal->_shouldCollectMetrics];
      linkEngine = self->_internal->_linkEngine;
      self->_internal->_linkEngine = v21;
    }

    if (self->_internal->_shouldUsePacketLog)
    {
      v23 = objc_alloc(MEMORY[0x1E69A5348]);
      v128[0] = MEMORY[0x1E69E9820];
      v128[1] = 3221225472;
      v128[2] = sub_195AF681C;
      v128[3] = &unk_1E7442D80;
      v129 = self;
      v24 = [v23 initWithSessionID:v6 write:v128];
      v25 = self->_internal;
      packetLog = v25->_packetLog;
      v25->_packetLog = v24;
    }

    v125 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A4B40]];
    if (v125)
    {
      self->_internal->_operationMode = [v125 integerValue];
      if (self->_internal->_operationMode < 2uLL)
      {
        goto LABEL_21;
      }

      v27 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        operationMode = self->_internal->_operationMode;
        *buf = 134218240;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = operationMode;
        _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "<%p> Invalid operation mode value %ld - defaulting to IDSDatagramChannelOperationModeFileDescriptor", buf, 0x16u);
      }
    }

    self->_internal->_operationMode = 0;
LABEL_21:
    v29 = IDSRealTimeContext();
    v30 = self->_internal;
    context = v30->_context;
    v30->_context = v29;

    v32 = [IDSDatagramChannel getIDSDataChannelsQueue]_0();
    queue = self->_internal->_queue;
    self->_internal->_queue = v32;

    v34 = *MEMORY[0x1E69A4B38];
    v35 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A4B38]];

    if (v35)
    {
      v36 = [v7 objectForKeyedSubscript:v34];
      v37 = self->_internal;
      v38 = v37->_context;
      v37->_context = v36;

      v39 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = self->_internal->_context;
        *buf = 134218242;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v40;
        _os_log_impl(&dword_1959FF000, v39, OS_LOG_TYPE_DEFAULT, "<%p> Got IDSDatagramChannelNWContextKey %@ from client.", buf, 0x16u);
      }
    }

    v124 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A4B48]];
    if (v124)
    {
      self->_internal->_preferredDataPathType = [v124 integerValue];
      if (self->_internal->_preferredDataPathType < 2uLL)
      {
LABEL_31:
        v43 = self->_internal;
        if (!v43->_operationMode && v43->_preferredDataPathType == 1)
        {
          v44 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = self;
            _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "<%p> Shared direct data path not compatible with file descriptor mode - defaulting to IDSDatagramChannelDataPathThroughIDSDaemon", buf, 0xCu);
          }

          self->_internal->_preferredDataPathType = 0;
        }

        v45 = +[IDSLogging IDSDataChannels];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = self->_internal;
          v47 = @"Dispatch";
          v49 = v46->_operationMode;
          preferredDataPathType = v46->_preferredDataPathType;
          if (!v49)
          {
            v47 = @"FileDescriptor";
          }

          v50 = @"Direct";
          *buf = 134219010;
          *&buf[4] = self;
          if (!preferredDataPathType)
          {
            v50 = @"Daemon";
          }

          *&buf[12] = 2112;
          *&buf[14] = v47;
          *&buf[22] = 1024;
          *&buf[24] = v49;
          *&buf[28] = 2112;
          *&buf[30] = v50;
          *&buf[38] = 1024;
          *&buf[40] = preferredDataPathType;
          _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_DEFAULT, "<%p> Operation mode %@ (%d) preferred datapath %@ (%d)", buf, 0x2Cu);
        }

        v51 = MEMORY[0x19A8BB9F0]();
        nw_parameters_set_indefinite();
        xarray = xpc_array_create(0, 0);
        v126 = xpc_array_create(0, 0);
        v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", *MEMORY[0x1E69A4EC8], getuid()];
        v53 = v52;
        xpc_array_set_string(xarray, 0xFFFFFFFFFFFFFFFFLL, [v52 UTF8String]);

        xpc_array_set_string(v126, 0xFFFFFFFFFFFFFFFFLL, [*MEMORY[0x1E69A4EC0] UTF8String]);
        nw_parameters_set_data_mode();
        nw_parameters_set_required_netagent_classes();
        v54 = self->_internal->_context;
        nw_parameters_set_context();
        nw_parameters_set_companion_preference();
        if (self->_internal->_preferredDataPathType == 1)
        {
          v55 = getpid();
          memset(buf, 0, 56);
          if (!proc_pidinfo(v55, 17, 1uLL, buf, 56))
          {
            v112 = *__error();
            v113 = +[IDSLogging IDSDataChannels];
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
            {
              *v138 = 67109376;
              *&v138[4] = v55;
              LOWORD(v139) = 1024;
              *(&v139 + 2) = v112;
              _os_log_impl(&dword_1959FF000, v113, OS_LOG_TYPE_DEFAULT, "proc_pidinfo for pid %d failed (errno: %d)", v138, 0xEu);
            }

            goto LABEL_84;
          }

          v56 = *&buf[16];
          v57 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *v138 = 67109376;
            *&v138[4] = v55;
            LOWORD(v139) = 2048;
            *(&v139 + 2) = v56;
            _os_log_impl(&dword_1959FF000, v57, OS_LOG_TYPE_DEFAULT, "proc_pidinfo for pid %d returned client unique PID %llu", v138, 0x12u);
          }

          v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v56];
          v59 = v58;
          [v58 UTF8String];
          nw_parameters_set_account_id();
        }

        v60 = [MEMORY[0x1E695DF90] dictionary];
        v62 = &self->_internal;
        v61 = self->_internal;
        MKIArrivalTime = v61->_MKIArrivalTime;
        v61->_MKIArrivalTime = v60;

        v64 = [MEMORY[0x1E695DF90] dictionary];
        firstPacketArrivalTimeForMKI = self->_internal->_firstPacketArrivalTimeForMKI;
        (*v62)->_firstPacketArrivalTimeForMKI = v64;

        v66 = [MEMORY[0x1E695DF90] dictionary];
        probingDict = self->_internal->_probingDict;
        (*v62)->_probingDict = v66;

        (*v62)->_writeLock._os_unfair_lock_opaque = 0;
        (*v62)->_readLock._os_unfair_lock_opaque = 0;
        v68 = self->_internal->_operationMode;
        if (v68 == 1)
        {
          if (v35)
          {
            v99 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
            v100 = dispatch_queue_attr_make_initially_inactive(v99);
            v101 = dispatch_queue_create("IDSDataChannelsRealTimeQueue", v100);
            v102 = self->_internal;
            v103 = v102->_queue;
            v102->_queue = v101;

            v104 = self->_internal->_context;
            v105 = self->_internal->_queue;
            nw_queue_context_target_dispatch_queue();
            dispatch_activate(self->_internal->_queue);
          }

          v106 = v6;
          host = nw_endpoint_create_host([v6 UTF8String], "2");
          v107 = nw_connection_create(host, v51);
          v108 = self->_internal;
          connection = v108->_connection;
          v108->_connection = v107;
          goto LABEL_68;
        }

        if (v68)
        {
          v110 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
          {
            v111 = self->_internal->_operationMode;
            *buf = 67109120;
            *&buf[4] = v111;
            _os_log_impl(&dword_1959FF000, v110, OS_LOG_TYPE_DEFAULT, "invalid operation mode %d", buf, 8u);
          }

          [(IDSDatagramChannel *)self close];
          goto LABEL_84;
        }

        v69 = dispatch_semaphore_create(0);
        v70 = v6;
        host = nw_endpoint_create_host([v6 UTF8String], "3");
        *v138 = 0;
        *&v139 = v138;
        *(&v139 + 1) = 0x2020000000;
        v140 = 0;
        uuid_clear(self->_internal->_nexus_instance);
        evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
        v73 = self->_internal;
        pathEvaluator = v73->_pathEvaluator;
        v73->_pathEvaluator = evaluator_for_endpoint;

        v75 = self->_internal->_pathEvaluator;
        v76 = nw_path_evaluator_copy_path();
        v77 = +[IDSTransportLog IDSDataChannels];
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v76;
          _os_log_impl(&dword_1959FF000, v77, OS_LOG_TYPE_DEFAULT, "IDSDatagramChannel:initWithDestination:path: %@", buf, 0xCu);
        }

        v78 = self->_internal;
        v79 = v76;
        v80 = v78->_pathEvaluator;
        v81 = v78->_queue;
        v123 = self;
        connection = v69;
        v83 = v79;
        if (nw_path_evaluator_set_update_handler())
        {
          if (MEMORY[0x19A8BBB20](v79))
          {
            if (nw_path_request_nexus())
            {
              v84 = sub_195AF5858();
              v85 = dispatch_time(0, 12000000000);
              dispatch_semaphore_wait(connection, v85);
              v86 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
              {
                v121 = v86;
                v122 = host;
                v87 = *(v139 + 24);
                v88 = self->_internal;
                connected = v88->_connected;
                v91 = v88->_pathEvaluator;
                osChannel = v88->_osChannel;
                v92 = sub_195AF5858();
                *buf = 138414338;
                v93 = @"NO";
                v94 = self->_internal;
                if (connected)
                {
                  v95 = @"YES";
                }

                else
                {
                  v95 = @"NO";
                }

                if (v87)
                {
                  v93 = @"YES";
                }

                v96 = v94->_operationMode;
                v97 = v94->_preferredDataPathType;
                *&buf[4] = v93;
                *&buf[12] = 2112;
                *&buf[14] = v95;
                *&buf[22] = 2048;
                *&buf[24] = v91;
                *&buf[32] = 2112;
                v86 = v121;
                host = v122;
                *&buf[34] = v122;
                *&buf[42] = 2112;
                *&buf[44] = v51;
                *&buf[52] = 2048;
                *&buf[54] = osChannel;
                v132 = 2048;
                v133 = v92 - v84;
                v134 = 1024;
                v135 = v96;
                v136 = 1024;
                v137 = v97;
                _os_log_impl(&dword_1959FF000, v121, OS_LOG_TYPE_DEFAULT, "osChannel create success %@ (connected: %@) for pathEvaluator %p with endpoint %@ parameters %@ osChannel %p creationTime %0.6lf operationMode %d preferredDataPathType %d", buf, 0x54u);
                v83 = v79;
              }

              if (*(v139 + 24) == 1)
              {
                v98 = self->_internal;
                if (v98->_pathEvaluator)
                {
                  if (v98->_osChannel)
                  {

                    _Block_object_dispose(v138, 8);
LABEL_68:

                    goto LABEL_69;
                  }
                }
              }

              [(IDSDatagramChannel *)v123 close];
              goto LABEL_83;
            }

            v114 = +[IDSTransportLog IDSDataChannels];
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v83;
              v115 = "nw_path_request_nexus returned no, path: %@";
              v116 = v114;
              v117 = 12;
              goto LABEL_81;
            }

LABEL_82:

            v118 = self->_internal->_pathEvaluator;
            nw_path_evaluator_cancel();
LABEL_83:

            _Block_object_dispose(v138, 8);
LABEL_84:

            goto LABEL_85;
          }

          v114 = +[IDSTransportLog IDSDataChannels];
          if (!os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_82;
          }

          *buf = 0;
          v115 = "nw_path_uses_nexus returned no";
        }

        else
        {
          v114 = +[IDSTransportLog IDSDataChannels];
          if (!os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_82;
          }

          *buf = 0;
          v115 = "nw_path_evaluator_set_update_handler failed";
        }

        v116 = v114;
        v117 = 2;
LABEL_81:
        _os_log_impl(&dword_1959FF000, v116, OS_LOG_TYPE_DEFAULT, v115, buf, v117);
        goto LABEL_82;
      }

      v41 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = self->_internal->_operationMode;
        *buf = 134218240;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v42;
        _os_log_impl(&dword_1959FF000, v41, OS_LOG_TYPE_DEFAULT, "<%p> Invalid preferred data path value %ld - defaulting to IDSDatagramChannelDataPathThroughIDSDaemon", buf, 0x16u);
      }
    }

    self->_internal->_preferredDataPathType = 0;
    goto LABEL_31;
  }

LABEL_69:
  self = self;
  v109 = self;
LABEL_86:

  v119 = *MEMORY[0x1E69E9840];
  return v109;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "-dealloc called for %@", buf, 0xCu);
  }

  IDSLinkPacketBufferCleanup();
  [(IDSDatagramChannel *)self invalidate];
  v5.receiver = self;
  v5.super_class = IDSDatagramChannel;
  [(IDSDatagramChannel *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  internal = self->_internal;
  if (internal->_isInvalidated)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p> IDSDataChannels has been invalidated", self, v10, v11, v12, v13, v14, v15];
  }

  else
  {
    v3 = @"NO";
    if (internal->_connected)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    eventHandler = internal->_eventHandler;
    readHandler = internal->_readHandler;
    readHandlerWithOptions = internal->_readHandlerWithOptions;
    if (internal->_pathEvaluator)
    {
      if (internal->_startCalled)
      {
        v3 = @"YES";
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p> channelFD %d connected %@ eventHandler %p readHandler %p withOptions %p auto %@", self, internal->_osChannelFD, v4, eventHandler, readHandler, readHandlerWithOptions, v3];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p> socket %d connected %@ eventHandler %p readHandler %p withOptions %p", self, internal->_socketDescriptor, v4, eventHandler, readHandler, readHandlerWithOptions, v15];
    }
  }
  v8 = ;

  return v8;
}

- (void)_logFinalStats
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  v3 = *&qword_1EAEDBEF0 * mach_continuous_time();
  internal = self->_internal;
  v5 = v3 - internal->_lastPendingOutgoingStatReport;
  if (v5 > 0.0)
  {
    pendingOutgoingBytes = internal->_pendingOutgoingBytes;
    pendingOutgoingPackets = internal->_pendingOutgoingPackets;
    v8 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412802;
      v19 = self;
      v20 = 2048;
      v21 = pendingOutgoingBytes / v5;
      v22 = 2048;
      v23 = pendingOutgoingPackets / v5;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "<%@> pending outgoing [Final] %f bytes/s %f packets/s", &v18, 0x20u);
    }

    internal = self->_internal;
  }

  v9 = v3 - internal->_lastOutgoingStatReport;
  if (v9 > 0.0)
  {
    outgoingBytes = internal->_outgoingBytes;
    outgoingPackets = internal->_outgoingPackets;
    v12 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412802;
      v19 = self;
      v20 = 2048;
      v21 = outgoingBytes / v9;
      v22 = 2048;
      v23 = outgoingPackets / v9;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "<%@> TX [Final] %f bytes/s %f packets/s", &v18, 0x20u);
    }

    internal = self->_internal;
  }

  v13 = v3 - internal->_lastIncomingStatReport;
  if (v13 > 0.0)
  {
    incomingBytes = internal->_incomingBytes;
    incomingPackets = internal->_incomingPackets;
    v16 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412802;
      v19 = self;
      v20 = 2048;
      v21 = incomingBytes / v13;
      v22 = 2048;
      v23 = incomingPackets / v13;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "<%@> RX [Final] %f bytes/s %f packets/s", &v18, 0x20u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (int)underlyingFileDescriptor
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "-underlyingFileDescriptor called for %@", &v8, 0xCu);
  }

  internal = self->_internal;
  if (internal->_operationMode)
  {
    sub_195B40830();
  }

  v5 = 136;
  if (!internal->_pathEvaluator)
  {
    v5 = 16;
  }

  result = *(&internal->super.isa + v5);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)sendEventConnectedWithDummyLinkInfo
{
  v19 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (internal->_socketDescriptor < 1 || !internal->_connected)
  {
LABEL_14:
    v13 = *MEMORY[0x1E69E9840];
    return;
  }

  os_unfair_lock_lock(&internal->_writeLock);
  v4 = self->_internal;
  if (!v4->_sentFirstReadLinkInfo)
  {
    v6 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = self;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "<%@> first read, will send dummy link information", buf, 0xCu);
    }

    v7 = self->_internal;
    if (v7->_eventHandler)
    {
      v8 = [[IDSDataChannelLinkContext alloc] initWithDummyInformation];
      v9 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v8;
        _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "<%@> dummy link information", buf, 0xCu);
      }

      eventHandler = self->_internal->_eventHandler;
      v15[1] = @"connected-link";
      v16[0] = &unk_1F0A29A68;
      v14 = v8;
      v15[0] = @"event-type";
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      v16[1] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
      eventHandler[2](eventHandler, v12);

      self->_internal->_sentFirstReadLinkInfo = 1;
      v7 = self->_internal;
    }

    os_unfair_lock_unlock(&v7->_writeLock);
    goto LABEL_14;
  }

  v5 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(&v4->_writeLock);
}

- (void)addNewIDSDataChannelLinkWithAttributes:(char *)a3 linkAttributesLength:(unsigned __int16)a4
{
  v4 = a4;
  v200 = *MEMORY[0x1E69E9840];
  v199 = -1431655766;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v197 = v5;
  v198 = v5;
  v195 = v5;
  v196 = v5;
  v193 = v5;
  v194 = v5;
  v192 = v5;
  if (a4 <= 0x73u)
  {
    v6 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 67109120;
      DWORD1(buf[0]) = v4;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "invalid link attribute size (%u), too small.", buf, 8u);
    }

    goto LABEL_137;
  }

  v132 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v196 + 15];
  v9 = *(a3 + 5);
  v196 = *(a3 + 4);
  v197 = v9;
  v198 = *(a3 + 6);
  v199 = *(a3 + 28);
  v10 = *(a3 + 1);
  v192 = *a3;
  v193 = v10;
  v11 = *(a3 + 3);
  v12 = a3 + 116;
  v13 = v4 - 116;
  v194 = *(a3 + 2);
  v195 = v11;
  v137 = self;
  if ((v4 - 116) < 2)
  {
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v128 = 0;
    v130 = 0;
    v120 = 0;
    v121 = 0;
    v126 = 0;
    goto LABEL_49;
  }

  v14 = __rev16(*(a3 + 58));
  v15 = a3 + 118;
  v16 = v4 - 118;
  if (v14 && (v17 = v16 - v14, v16 >= v14))
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:a3 + 118 length:v14];
    v15 += v14;
    if (v18)
    {
      v130 = JWDecodeDictionary();
    }

    else
    {
      v130 = 0;
    }
  }

  else
  {
    v18 = 0;
    if (v14)
    {
      v130 = 0;
      goto LABEL_16;
    }

    v17 = v4 - 118;
    v130 = 0;
  }

  if (v17 < 2)
  {
    v122 = v18;
    v123 = 0;
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v128 = 0;
    v120 = 0;
    v121 = 0;
    v12 = v15;
LABEL_48:
    self = v137;
    goto LABEL_49;
  }

  v13 = v17;
  v12 = v15;
LABEL_16:
  v19 = __rev16(*v12);
  v20 = v13 - 2;
  if (v19 && (v21 = v20 - v19, v20 >= v19))
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 + 2 length:v19];
    v12 += v19 + 2;
    if (v22)
    {
      v121 = v22;
      v128 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v22 encoding:4];
    }

    else
    {
      v121 = 0;
      v128 = 0;
    }
  }

  else
  {
    v121 = 0;
    v128 = 0;
    if (v19)
    {
      v21 = v13;
    }

    else
    {
      v12 += 2;
      v21 = v13 - 2;
    }
  }

  v23 = v21 - 2;
  v122 = v18;
  if (v21 < 2)
  {
    v124 = 0;
    v125 = 0;
    v123 = 0;
    v120 = 0;
    v126 = 0;
    goto LABEL_48;
  }

  v24 = __rev16(*v12);
  if (v24 && (v25 = v23 - v24, v23 >= v24))
  {
    v26 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 + 2 length:v24];
    v12 += v24 + 2;
    if (v26)
    {
      v120 = v26;
      v126 = JWDecodeDictionary();
    }

    else
    {
      v120 = 0;
      v126 = 0;
    }
  }

  else
  {
    v120 = 0;
    v126 = 0;
    if (v24)
    {
      v25 = v21;
    }

    else
    {
      v12 += 2;
      v25 = v21 - 2;
    }
  }

  v27 = v25 - 2;
  if (v25 < 2)
  {
    v124 = 0;
    v125 = 0;
    v123 = 0;
    goto LABEL_48;
  }

  v28 = __rev16(*v12);
  if (v28)
  {
    v29 = v27 < v28;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v123 = 0;
    v124 = 0;
    v125 = 0;
    v30 = v28 == 0;
    if (v28)
    {
      v31 = v25;
    }

    else
    {
      v31 = v25 - 2;
    }

    if (v30)
    {
      v12 += 2;
    }

    goto LABEL_147;
  }

  v109 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 + 2 length:v28];
  v12 += v28 + 2;
  v31 = v27 - v28;
  v124 = v109;
  if (!v109)
  {
    v123 = 0;
    v124 = 0;
    v125 = 0;
LABEL_147:
    self = v137;
    goto LABEL_148;
  }

  v110 = +[IDSTransportLog IDSDataChannels];
  self = v137;
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = v124;
    _os_log_impl(&dword_1959FF000, v110, OS_LOG_TYPE_DEFAULT, "Got feature flags data: %@", buf, 0xCu);
  }

  v123 = JWDecodeDictionary();
  if (v123)
  {
    v111 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v123;
      _os_log_impl(&dword_1959FF000, v111, OS_LOG_TYPE_DEFAULT, "Got feature flags dict: %@", buf, 0xCu);
    }

    v125 = [v123 objectForKeyedSubscript:*MEMORY[0x1E69A4CC0]];
  }

  else
  {
    v123 = 0;
    v125 = 0;
  }

LABEL_148:
  v112 = v31 - 2;
  if (v31 >= 2)
  {
    v113 = __rev16(*v12);
    if (v113)
    {
      if (v112 >= v113)
      {
        v114 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 + 2 length:v113];
        v12 += v113 + 2;
        if (v114)
        {
          v33 = v114;
          v115 = +[IDSTransportLog IDSDataChannels];
          if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 138412290;
            *(buf + 4) = v33;
            _os_log_impl(&dword_1959FF000, v115, OS_LOG_TYPE_DEFAULT, "Got LinkEngine Unique ID: %@", buf, 0xCu);
          }

          v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v33 encoding:4];
          goto LABEL_52;
        }
      }
    }

    else
    {
      v12 += 2;
    }
  }

LABEL_49:
  v32 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1959FF000, v32, OS_LOG_TYPE_DEFAULT, "No LinkEngine Unique ID for link.", buf, 2u);
  }

  v33 = 0;
  v134 = 0;
LABEL_52:
  v119 = v33;
  if (BYTE2(v195) - 2 > 3)
  {
    v36 = 0;
    v118 = 0;
    v135 = 0;
    v136 = 0;
    v38 = 0;
    goto LABEL_109;
  }

  v34 = &a3[v4];
  if (v12 + 3 <= v34)
  {
    v39 = (v12 + 1);
    LODWORD(v38) = *v12;
    v40 = v34 - (v12 + 1);
    if ((v40 & 0xFFFFFFFE) != 0)
    {
      v41 = __rev16(*(v12 + 1));
      v42 = v40 - 2;
      if (v41 && (v43 = v42 - v41, v42 >= v41))
      {
        v136 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 + 3 length:v41];
        v39 = &v12[v41 + 3];
        v40 = v43;
      }

      else
      {
        v136 = 0;
        if (!v41)
        {
          v40 -= 2;
          v39 = (v12 + 3);
        }
      }
    }

    else
    {
      v136 = 0;
    }

    v44 = v40 - 2;
    if (v40 < 2)
    {
      v37 = 0;
      v135 = 0;
      goto LABEL_82;
    }

    v45 = v39 + 1;
    v46 = __rev16(*v39);
    if (v46 && (v47 = v44 - v46, v44 >= v46))
    {
      v135 = [MEMORY[0x1E695DEF0] dataWithBytes:v39 + 1 length:v46];
      v45 = (v45 + v46);
      v44 = v47;
    }

    else
    {
      v135 = 0;
      v48 = v40 - 2;
      if (v46)
      {
        goto LABEL_73;
      }
    }

    v48 = v44 - 2;
    if (v44 < 2)
    {
      v37 = 0;
      goto LABEL_82;
    }

    v39 = v45;
    v40 = v44;
LABEL_73:
    v49 = v39 + 1;
    v50 = __rev16(*v39);
    if (v50 && (v51 = v48 - v50, v48 >= v50))
    {
      v37 = [MEMORY[0x1E695DEF0] dataWithBytes:v39 + 1 length:v50];
      v49 = (v49 + v50);
      v48 = v51;
    }

    else
    {
      v37 = 0;
      if (v50)
      {
LABEL_80:
        v52 = *v39++;
        v53 = __rev16(v52);
        if (v53 && (v40 - 2) >= v53)
        {
          v36 = [MEMORY[0x1E695DEF0] dataWithBytes:v39 length:?];
          goto LABEL_83;
        }

LABEL_82:
        v36 = 0;
LABEL_83:
        v54 = +[IDSTransportLog IDSDataChannels];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [v136 length];
          v56 = [v135 length];
          LODWORD(buf[0]) = 67109632;
          DWORD1(buf[0]) = v38;
          WORD4(buf[0]) = 1024;
          *(buf + 10) = v55;
          HIWORD(buf[0]) = 1024;
          LODWORD(buf[1]) = v56;
          _os_log_impl(&dword_1959FF000, v54, OS_LOG_TYPE_DEFAULT, "Got relay server provider:%d, session token:%dB, session key:%dB", buf, 0x14u);
        }

        v35 = +[IDSTransportLog IDSDataChannels];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0]) = 138412546;
          *(buf + 4) = v37;
          WORD6(buf[0]) = 2112;
          *(buf + 14) = v36;
          _os_log_impl(&dword_1959FF000, v35, OS_LOG_TYPE_DEFAULT, "Got hbhEncryptionkey:%@ and hbhDecryptionkey:%@", buf, 0x16u);
        }

        goto LABEL_87;
      }
    }

    if (v48 < 2)
    {
      goto LABEL_82;
    }

    v39 = v49;
    v40 = v48;
    goto LABEL_80;
  }

  v35 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_195B4085C();
  }

  v36 = 0;
  v37 = 0;
  v135 = 0;
  v136 = 0;
  LODWORD(v38) = 0;
LABEL_87:
  v38 = v38;

  if (BYTE12(v196) == 1)
  {
    v57 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 67109376;
      DWORD1(buf[0]) = v195;
      WORD4(buf[0]) = 1024;
      *(buf + 10) = HIBYTE(v197);
      _os_log_impl(&dword_1959FF000, v57, OS_LOG_TYPE_DEFAULT, "This is a virtual relay link(%u). Copying over attributes from delegated link(%u)", buf, 0xEu);
    }

    v58 = [(IDSDatagramChannel *)self _linkContextWithID:HIBYTE(v197)];
    v59 = v58;
    if (v58)
    {
      v38 = [v58 relayServerProvider];
      v60 = [v59 relaySessionToken];
      v61 = [v60 copy];

      v62 = [v59 relaySessionKey];
      v63 = [v62 copy];

      v64 = [v59 hbhEncryptionkey];
      v65 = [v64 copy];

      v66 = [v59 hbhDecryptionkey];
      v67 = [v66 copy];

      v36 = v67;
      v37 = v65;
      v135 = v63;
      v136 = v61;
    }

    v68 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v69 = [v136 length];
      v70 = [v135 length];
      LODWORD(buf[0]) = 67109632;
      DWORD1(buf[0]) = v38;
      WORD4(buf[0]) = 1024;
      *(buf + 10) = v69;
      HIWORD(buf[0]) = 1024;
      LODWORD(buf[1]) = v70;
      _os_log_impl(&dword_1959FF000, v68, OS_LOG_TYPE_DEFAULT, "Copied relay server provider:%d, session token:%dB, session key:%dB", buf, 0x14u);
    }

    v71 = +[IDSTransportLog IDSDataChannels];
    self = v137;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412546;
      *(buf + 4) = v37;
      WORD6(buf[0]) = 2112;
      *(buf + 14) = v36;
      _os_log_impl(&dword_1959FF000, v71, OS_LOG_TYPE_DEFAULT, "Copied hbhEncryptionkey:%@ and hbhDecryptionkey:%@", buf, 0x16u);
    }
  }

  v118 = v37;
  if (IMGetDomainBoolForKey())
  {
    v72 = [MEMORY[0x1E696AD60] stringWithCapacity:{2 * objc_msgSend(v37, "length")}];
    v73 = [v37 bytes];
    if ([v37 length])
    {
      v74 = 0;
      do
      {
        [v72 appendFormat:@"%02x", *(v73 + v74++)];
      }

      while (v74 < [v37 length]);
    }

    v75 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v72;
      _os_log_impl(&dword_1959FF000, v75, OS_LOG_TYPE_DEFAULT, "Full hbhEncryptionkey: %@", buf, 0xCu);
    }

    v76 = [MEMORY[0x1E696AD60] stringWithCapacity:{2 * objc_msgSend(v36, "length")}];
    v77 = [v36 bytes];
    if ([v36 length])
    {
      v78 = 0;
      do
      {
        [v76 appendFormat:@"%02x", *(v77 + v78++)];
      }

      while (v78 < [v36 length]);
    }

    v79 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v76;
      _os_log_impl(&dword_1959FF000, v79, OS_LOG_TYPE_DEFAULT, "Full hbhDecryptionkey: %@", buf, 0xCu);
    }

    self = v137;
  }

LABEL_109:
  v80 = [(IDSDatagramChannel *)self _linkContextsCopy];
  v81 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v82 = @"NO";
    if (BYTE12(v196))
    {
      v82 = @"YES";
    }

    LODWORD(buf[0]) = 138417154;
    *(buf + 4) = self;
    WORD6(buf[0]) = 1024;
    *(buf + 14) = v195;
    WORD1(buf[1]) = 1024;
    DWORD1(buf[1]) = BYTE1(v195);
    WORD4(buf[1]) = 1024;
    *(&buf[1] + 10) = WORD3(v196);
    HIWORD(buf[1]) = 1024;
    *v163 = BYTE2(v195);
    *&v163[4] = 1024;
    *&v163[6] = BYTE3(v195);
    v164 = 1024;
    v165 = WORD4(v195);
    v166 = 1024;
    v167 = HIDWORD(v195);
    v168 = 1024;
    v169 = BYTE5(v195);
    v170 = 1024;
    v171 = BYTE6(v195);
    v172 = 1024;
    v173 = WORD5(v195);
    v174 = 1024;
    v175 = v196;
    v176 = 2112;
    v177 = v82;
    v178 = 2112;
    v179 = v132;
    v180 = 1024;
    v181 = WORD2(v196);
    v182 = 2112;
    v183 = v128;
    v184 = 2112;
    v185 = v130;
    v186 = 2112;
    v187 = v125;
    v188 = 2112;
    v189 = v126;
    v190 = 2112;
    v191 = v80;
    _os_log_impl(&dword_1959FF000, v81, OS_LOG_TYPE_DEFAULT, "<%@> got connectedLinkID %d (link family:%u) (mtu:%u) (l-conn:%u) (l-RAT:%u) (l-flags:0x%x) (l-dataSoMask: %u) (r-conn:%u) (r-RAT:%u) (r-flags:0x%x) (r-datasoMask:%u) isVirtualRelayLink: %@, childConnectionID: %@, channelNumber: %04X, relayProtocolStack: %@, connections: %@, feature flags: %@, qrExperiments: %@, (Current LinkContexts %@", buf, 0x9Au);
  }

  v143 = MEMORY[0x1E69E9820];
  v144 = 3221225472;
  v158 = v196;
  v159 = v197;
  v160 = v198;
  v154 = v192;
  v155 = v193;
  v156 = v194;
  v145 = sub_195AF915C;
  v146 = &unk_1E7442DF8;
  v147 = self;
  v161 = v199;
  v157 = v195;
  v117 = v132;
  v148 = v117;
  v149 = v128;
  v83 = v130;
  v150 = v83;
  v151 = v125;
  v152 = v126;
  v127 = v80;
  v153 = v127;
  cut_dispatch_log_queue();
  v84 = [IDSDataChannelLinkContext alloc];
  LOWORD(v116) = v199;
  v129 = v151;
  v131 = v152;
  v133 = v149;
  v85 = v36;
  v86 = [(IDSDataChannelLinkContext *)v84 initWithAttributes:&v192 maxBitrate:0xFFFFFFFFLL relayServerProvider:v38 relaySessionToken:v136 relaySessionKey:v135 hbhEncryptionkey:v118 hbhDecryptionkey:v36 relayProtocolStackDescription:v149 qrExperiments:v152 featureFlags:v151 linkEngineUniqueID:v134 estimatedPerPacketConstantOverhead:v116];
  if (v83)
  {
    [(IDSDatagramChannel *)self _addConnections:v83 toLinkContext:v86];
  }

  [(IDSDatagramChannel *)self _setLinkContext:v86 forLinkID:v195];
  if ([(IDSDataChannelLinkContext *)v86 RATType]&& [(IDSDataChannelLinkContext *)v86 RATType]!= 9)
  {
    objc_storeStrong(&v137->_internal->_cellularLink, v86);
  }

  v87 = BYTE2(v195) - 5;
  v88 = [(IDSDataChannelLinkContext *)v86 connections];
  v89 = [v88 udp];

  v90 = [(IDSDataChannelLinkContext *)v86 connections];
  v91 = [v90 qpod];

  if (v87 > 0xFFFFFFFD || v137->_internal->_preferredDataPathType != 1)
  {
    goto LABEL_131;
  }

  if (v91)
  {
    v92 = [v91 childConnectionID];
    *&buf[0] = 0xAAAAAAAAAAAAAAAALL;
    *(&buf[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
    [v92 getUUIDBytes:buf];
    v93 = uuid_is_null(buf) != 0;

    if (!v89)
    {
      goto LABEL_125;
    }
  }

  else
  {
    v93 = 0;
    if (!v89)
    {
LABEL_125:
      if ([(IDSDataChannelLinkContext *)v86 isVirtualRelayLink])
      {
        [(IDSDatagramChannel *)v137 reportEvent:*MEMORY[0x1E69A4CF0] forLinkID:[(IDSDataChannelLinkContext *)v86 linkID]];
        [(IDSDatagramChannel *)v137 addDirectConnectionForLinkID:[(IDSDataChannelLinkContext *)v86 linkID] linkContext:v86];
      }

      v96 = _IDSLinkPacketBufferCreate();
      *v163 = 0xAAAAAAAAAAAAAAAALL;
      *&v97 = 0xAAAAAAAAAAAAAAAALL;
      *(&v97 + 1) = 0xAAAAAAAAAAAAAAAALL;
      buf[0] = v97;
      buf[1] = v97;
      v98 = *v96;
      v99 = v96[1];
      IDSByteBufferInitForWriteWithAllocatedSpace();
      v138 = [(IDSDataChannelLinkContext *)v86 linkID];
      IDSByteBufferWriteField();
      v96[2] = *&buf[1] - *v96;
      IDSByteBufferRelease();
      v100 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        *v141 = 67109120;
        v142 = v138;
        _os_log_impl(&dword_1959FF000, v100, OS_LOG_TYPE_DEFAULT, "addDirectConnectionForLinkID: request child connectionID for linkID %d", v141, 8u);
      }

      [(IDSDatagramChannel *)v137 _buildPacketBufferMetaData:v96];
      os_unfair_lock_lock(&v137->_internal->_writeLock);
      sendingMetadata = v137->_internal->_sendingMetadata;
      v102 = [MEMORY[0x1E696B098] valueWithPointer:v96];
      [(NSMutableArray *)sendingMetadata addObject:v102];

      [(IDSDatagramChannel *)v137 sendMetadata];
      os_unfair_lock_unlock(&v137->_internal->_writeLock);
      goto LABEL_131;
    }
  }

  v94 = [v89 childConnectionID];
  memset(buf, 170, 16);
  [v94 getUUIDBytes:buf];
  v95 = uuid_is_null(buf) != 0 || v93;

  if (v95)
  {
    goto LABEL_125;
  }

  [(IDSDatagramChannel *)v137 reportEvent:*MEMORY[0x1E69A4CF0] forLinkID:[(IDSDataChannelLinkContext *)v86 linkID]];
  [(IDSDatagramChannel *)v137 addDirectConnectionForLinkID:[(IDSDataChannelLinkContext *)v86 linkID] linkContext:v86];
LABEL_131:
  if (!v137->_internal->_waitForPreConnectionDataForConnected)
  {
    v103 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v104 = [(IDSDatagramChannel *)v137 _linkContextsCopy];
      LODWORD(buf[0]) = 138412546;
      *(buf + 4) = v137;
      WORD6(buf[0]) = 2112;
      *(buf + 14) = v104;
      _os_log_impl(&dword_1959FF000, v103, OS_LOG_TYPE_DEFAULT, "<%@> sent IDSDataChannelEventConnected, current link contexts %@", buf, 0x16u);
    }

    eventHandler = v137->_internal->_eventHandler;
    if (eventHandler)
    {
      v139[0] = @"event-type";
      v139[1] = @"connected-link";
      v140[0] = &unk_1F0A29A68;
      v106 = [(IDSDatagramChannel *)v137 connectedLinks];
      v140[1] = v106;
      v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:v139 count:2];
      eventHandler[2](eventHandler, v107);
    }
  }

  v6 = v121;
LABEL_137:

  v108 = *MEMORY[0x1E69E9840];
}

- (void)selectDefaultLink:(char)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  self->_internal->_defaultLinkID = a3;
  v5 = [(IDSDatagramChannel *)self _linkContextWithID:a3];
  v6 = v5;
  if (!v5)
  {
    v8 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v3;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "can't find link %d for the default", buf, 8u);
    }

    goto LABEL_6;
  }

  eventHandler = self->_internal->_eventHandler;
  if (eventHandler)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithChar:{objc_msgSend(v5, "linkID", @"event-type", @"default-link", @"default-link-id", &unk_1F0A29A80, v5)}];
    v12[2] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:3];
    eventHandler[2](eventHandler, v9);

LABEL_6:
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)processMetadataForDatagram:(const char *)a3 size:(unint64_t)a4 datagramInfo:(id *)a5 options:(id *)a6
{
  v395[2] = *MEMORY[0x1E69E9840];
  v354 = -86;
  v353 = 0xAAAAAAAAAAAAAAAALL;
  v352 = -21846;
  v351 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v349 = v7;
  v350 = v7;
  if (a4 > 2)
  {
    v12 = __rev16(*a3);
    if (v12 + 2 <= a4)
    {
      *&a5->var4 = 0;
      *&a5->var0 = 0;
      *&a6->var14 = 0;
      *&a6->var11 = 0u;
      *a6->var13 = 0u;
      *&a6->var8.var0 = 0u;
      *&a6->var9 = 0u;
      *&a6->var2 = 0u;
      *&a6->var5[6] = 0u;
      *&a6->var0 = 0u;
      IDSByteBufferInitForRead();
      if (IDSByteBufferReadField())
      {
        v330 = 0;
        v331 = 0;
        v333 = 0;
        v334 = 0;
        v325 = 0;
        LOWORD(v326) = 0;
        v328 = 0;
        v329 = 0;
        v321 = 0;
        v322 = 0;
        v327 = 0;
        v338 = 0;
        v339 = 0;
        v336 = 0;
        v337 = 0;
        v324 = 0;
        v332 = 0;
        v335 = 0;
        v318 = *MEMORY[0x1E69A4A40];
        v320 = *MEMORY[0x1E696A588];
        v319 = *MEMORY[0x1E69A4A18];
        key = *MEMORY[0x1E69A4B30];
        v316 = *MEMORY[0x1E69A4A68];
        v315 = *MEMORY[0x1E69A4A70];
        v314 = *MEMORY[0x1E69A4A78];
        v313 = *MEMORY[0x1E69A4AC0];
        v323 = -1;
        while (1)
        {
          switch(v354)
          {
            case 1u:
              if (v352 != 1)
              {
                v18 = +[IDSLogging IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v385 = v352;
                  *&v385[4] = 1024;
                  *&v385[6] = v354;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PacketLinkID should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
                }

                goto LABEL_523;
              }

              v14 = *v353;
              LOBYTE(v333) = *v353;
              if (self->_internal->_verboseFunctionalLogging)
              {
                v15 = +[IDSLogging IDSDataChannels];
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v385 = v14;
                  _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "got PacketLinkID %d", buf, 8u);
                }
              }

              LOBYTE(v330) = 1;
              goto LABEL_585;
            case 2u:
              [(IDSDatagramChannel *)self addNewIDSDataChannelLinkWithAttributes:v353 linkAttributesLength:v352];
              goto LABEL_585;
            case 3u:
              if (v352 != 18)
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109632;
                  *v385 = 18;
                  *&v385[4] = 1024;
                  *&v385[6] = v352;
                  *&v385[10] = 1024;
                  *&v385[12] = v354;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkDisconnected should be %d byte, not %u bytes, field: %u", buf, 0x14u);
                }

                goto LABEL_523;
              }

              v140 = v353;
              v141 = *v353++;
              v142 = *v353;
              v353 = v140 + 2;
              v143 = objc_alloc(MEMORY[0x1E696AFB0]);
              v144 = [v143 initWithUUIDBytes:v353];
              v145 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
              {
                v146 = [v144 UUIDString];
                *buf = 67109634;
                *v385 = v141;
                *&v385[4] = 2112;
                *&v385[6] = v146;
                *&v385[14] = 1024;
                *&v385[16] = v142;
                _os_log_impl(&dword_1959FF000, v145, OS_LOG_TYPE_DEFAULT, "got disconnectedLinkID %d, linkUUID %@, reason: %d", buf, 0x18u);
              }

              [(IDSDatagramChannel *)self removeIDSDataChannelLinkContext:v141 linkUUID:v144 reason:v142];
              goto LABEL_585;
            case 4u:
              if (v352 != 1)
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v385 = v352;
                  *&v385[4] = 1024;
                  *&v385[6] = v354;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_DefaultLinkID should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
                }

                goto LABEL_523;
              }

              v155 = *v353;
              v156 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v385 = v155;
                _os_log_impl(&dword_1959FF000, v156, OS_LOG_TYPE_DEFAULT, "got defaultLinkID %d", buf, 8u);
              }

              [(IDSDatagramChannel *)self selectDefaultLink:v155];
              goto LABEL_585;
            case 5u:
              if (v352 != 1)
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v385 = v352;
                  *&v385[4] = 1024;
                  *&v385[6] = v354;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_RATChanged should be 1 bytes, not %u bytes, field: %u", buf, 0xEu);
                }

                goto LABEL_523;
              }

              v124 = *v353;
              v125 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v385 = v124;
                _os_log_impl(&dword_1959FF000, v125, OS_LOG_TYPE_DEFAULT, "got ratType %u", buf, 8u);
              }

              cellularLink = self->_internal->_cellularLink;
              if (cellularLink)
              {
                [(IDSDataChannelLinkContext *)cellularLink setRATType:v124];
              }

              else
              {
                v260 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v260, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_RATChanged requires the cellular link. something is wrong...", buf, 2u);
                }
              }

              eventHandler = self->_internal->_eventHandler;
              if (eventHandler)
              {
                v394[0] = @"event-type";
                v394[1] = @"rat-changed";
                v395[0] = &unk_1F0A29AC8;
                v262 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v124];
                v395[1] = v262;
                v263 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v395 forKeys:v394 count:2];
                eventHandler[2](eventHandler, v263);
              }

              goto LABEL_585;
            case 6u:
            case 7u:
            case 8u:
            case 9u:
            case 0xCu:
            case 0x12u:
            case 0x13u:
            case 0x15u:
            case 0x19u:
            case 0x1Au:
            case 0x1Bu:
            case 0x1Cu:
            case 0x1Du:
            case 0x29u:
            case 0x2Au:
            case 0x2Cu:
            case 0x35u:
            case 0x38u:
            case 0x39u:
            case 0x3Au:
            case 0x3Bu:
            case 0x40u:
            case 0x41u:
            case 0x42u:
            case 0x44u:
            case 0x4Du:
            case 0x4Eu:
            case 0x4Fu:
            case 0x50u:
            case 0x51u:
            case 0x53u:
            case 0x54u:
            case 0x56u:
            case 0x57u:
            case 0x58u:
            case 0x59u:
              goto LABEL_22;
            case 0xAu:
              if (v352 == 1)
              {
                v321 = *v353;
                v127 = +[IDSLogging IDSDataChannels];
                if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v385 = v321;
                  _os_log_impl(&dword_1959FF000, v127, OS_LOG_TYPE_DEFAULT, "got preConnectionDataSize %u", buf, 8u);
                }

                goto LABEL_195;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = v352;
                *&v385[4] = 1024;
                *&v385[6] = v354;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PreConnectionDataSizeKey should be 1 bytes, not %u bytes, field: %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0xBu:
              if (v322)
              {
                if (v352 >= v321)
                {
                  v234 = [MEMORY[0x1E695DEF0] dataWithBytes:v353 length:v321];

                  internal = self->_internal;
                  v236 = internal->_eventHandler;
                  if (v236)
                  {
                    v392[0] = @"event-type";
                    v392[1] = @"preconnection-data-key";
                    v393[0] = &unk_1F0A29AE0;
                    v393[1] = v234;
                    v237 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v393 forKeys:v392 count:2];
                    v236[2](v236, v237);

                    internal = self->_internal;
                  }

                  internal->_receivedPreConnectionData = 1;
                  self->_internal->_waitForPreConnectionDataForConnected = 0;
                  v238 = +[IDSLogging IDSDataChannels];
                  if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v238, OS_LOG_TYPE_DEFAULT, "got preConnectionData, called IDSDataChannelEventPreConnectionData event", buf, 2u);
                  }

                  v239 = [(IDSDatagramChannel *)self connectedLinks];
                  v240 = [v239 count] == 0;

                  if (!v240)
                  {
                    v241 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
                    {
                      v242 = [(IDSDatagramChannel *)self _linkContextsCopy];
                      *buf = 138412546;
                      *v385 = self;
                      *&v385[8] = 2112;
                      *&v385[10] = v242;
                      _os_log_impl(&dword_1959FF000, v241, OS_LOG_TYPE_DEFAULT, "<%@> sent IDSDataChannelEventConnected, current link contexts %@", buf, 0x16u);
                    }

                    v243 = self->_internal->_eventHandler;
                    if (v243)
                    {
                      v390[0] = @"event-type";
                      v390[1] = @"connected-link";
                      v391[0] = &unk_1F0A29A68;
                      v244 = [(IDSDatagramChannel *)self connectedLinks];
                      v391[1] = v244;
                      v245 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v391 forKeys:v390 count:2];
                      v243[2](v243, v245);
                    }
                  }

                  LOBYTE(v322) = 1;
                  v327 = v234;
                }

                else
                {
                  v127 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109376;
                    *v385 = v321;
                    *&v385[4] = 1024;
                    *&v385[6] = v352;
                    _os_log_impl(&dword_1959FF000, v127, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PreConnectionDataKey got wrong size (%u > %u)", buf, 0xEu);
                  }

LABEL_195:

                  LOBYTE(v322) = 1;
                }
              }

              else
              {
                v232 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v232, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PreConnectionDataKey should know its size", buf, 2u);
                }

                LOBYTE(v322) = 0;
              }

              goto LABEL_585;
            case 0xDu:
              if (v352 == 12)
              {
                v157 = v353;
                v158 = *v353;
                v353 += 4;
                v159 = *v353;
                v160 = *(v157 + 2);
                v353 = v157 + 12;
                v161 = [(IDSDatagramChannel *)self connectedLinks];
                v162 = [v161 count] == 0;

                if (!v162)
                {
                  v163 = +[IDSTransportLog IDSDataChannels];
                  v164 = bswap32(v158);
                  v165 = bswap32(v159);
                  v166 = bswap32(v160);
                  if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138413058;
                    *v385 = self;
                    *&v385[8] = 1024;
                    *&v385[10] = v164;
                    *&v385[14] = 1024;
                    *&v385[16] = v165;
                    *&v385[20] = 1024;
                    *&v385[22] = v166;
                    _os_log_impl(&dword_1959FF000, v163, OS_LOG_TYPE_DEFAULT, "<%@> sent IDSDataChannelEventRSSI (%u, %u, %u)", buf, 0x1Eu);
                  }

                  v167 = self->_internal->_eventHandler;
                  if (v167)
                  {
                    v388[0] = @"event-type";
                    v388[1] = @"rssi-key";
                    v389[0] = &unk_1F0A29AF8;
                    v168 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v164];
                    v387[0] = v168;
                    v169 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v165];
                    v387[1] = v169;
                    v170 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v166];
                    v387[2] = v170;
                    v171 = [MEMORY[0x1E695DEC8] arrayWithObjects:v387 count:3];
                    v389[1] = v171;
                    v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v389 forKeys:v388 count:2];
                    v167[2](v167, v172);
                  }
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v385 = 12;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                *&v385[10] = 1024;
                *&v385[12] = v354;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_QueryRSSI should be %u, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0xEu:
              if (v352 == 2)
              {
                LODWORD(v325) = __rev16(*v353);
                v353 += 2;
                if (self->_internal->_verboseFunctionalLogging)
                {
                  v147 = +[IDSLogging IDSDataChannels];
                  if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v385 = v325;
                    _os_log_impl(&dword_1959FF000, v147, OS_LOG_TYPE_DEFAULT, "got trafficClass %u", buf, 8u);
                  }
                }

                BYTE4(v330) = 1;
                goto LABEL_585;
              }

              v18 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v385 = 2;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                *&v385[10] = 1024;
                *&v385[12] = v354;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_TrafficClassKey should be %d bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0xFu:
              if (v352 == 4)
              {
                v128 = *v353;
                v129 = v353[1];
                v130 = v353[2];
                v131 = v353[3];
                v353 += 4;
                v132 = [(IDSDatagramChannel *)self _linkContextWithID:v333];
                v106 = v132;
                if (!v132)
                {
                  v138 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                  {
                    v259 = [(IDSDatagramChannel *)self _linkContextsCopy];
                    *buf = 138412802;
                    *v385 = self;
                    *&v385[8] = 1024;
                    *&v385[10] = v333;
                    *&v385[14] = 2112;
                    *&v385[16] = v259;
                    _os_log_impl(&dword_1959FF000, v138, OS_LOG_TYPE_DEFAULT, "<%@> Can't find the linkContext of linkID %u, linkContexts %@", buf, 0x1Cu);
                  }

                  goto LABEL_480;
                }

                [v132 setMaxBitrate:(v128 << 24) | (v129 << 16) | (v130 << 8) | v131];
                v133 = [(IDSDatagramChannel *)self connectedLinks];
                v134 = [v133 count] == 0;

                if (!v134)
                {
                  v135 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
                  {
                    v136 = [(IDSDatagramChannel *)self _linkContextsCopy];
                    *buf = 138412546;
                    *v385 = self;
                    *&v385[8] = 2112;
                    *&v385[10] = v136;
                    _os_log_impl(&dword_1959FF000, v135, OS_LOG_TYPE_DEFAULT, "<%@> sent IDSDataChannelEventConnected, current link contexts %@", buf, 0x16u);
                  }

                  v137 = self->_internal->_eventHandler;
                  if (v137)
                  {
                    v381[0] = &unk_1F0A29A68;
                    v380[0] = @"event-type";
                    v380[1] = @"connected-link";
                    v138 = [(IDSDatagramChannel *)self connectedLinks];
                    v381[1] = v138;
                    v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v381 forKeys:v380 count:2];
                    v137[2](v137, v139);

LABEL_480:
                  }
                }

LABEL_511:
              }

              else
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109632;
                  *v385 = 4;
                  *&v385[4] = 1024;
                  *&v385[6] = v352;
                  *&v385[10] = 1024;
                  *&v385[12] = v354;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_MaxBitrateKey should be %u, not %u bytes, field: %u", buf, 0x14u);
                }

LABEL_523:
              }

              goto LABEL_585;
            case 0x10u:
              if (v352 == 2)
              {
                v173 = *v353;
                v353 += 2;
                v174 = +[IDSLogging IDSDataChannels];
                v175 = __rev16(v173);
                if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v385 = v175;
                  _os_log_impl(&dword_1959FF000, v174, OS_LOG_TYPE_DEFAULT, "got MTU %u", buf, 8u);
                }

                v176 = self->_internal->_cellularLink;
                if (v176)
                {
                  [(IDSDataChannelLinkContext *)v176 setMTU:v175];
                }

                else
                {
                  v264 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v264, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_CellularMTUChanged requires the cellular link. something is wrong...", buf, 2u);
                  }
                }

                v265 = self->_internal->_eventHandler;
                if (v265)
                {
                  v379[0] = &unk_1F0A29B28;
                  v378[0] = @"event-type";
                  v378[1] = @"mtu-changed";
                  v266 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v175];
                  v379[1] = v266;
                  v267 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v379 forKeys:v378 count:2];
                  v265[2](v265, v267);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v385 = 2;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                *&v385[10] = 1024;
                *&v385[12] = v354;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_CellularMTUChanged should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0x11u:
              if (v352 >= 8u)
              {
                v111 = [MEMORY[0x1E695DF90] dictionary];
                if (v352 >= 8u)
                {
                  LOWORD(v112) = 0;
                  do
                  {
                    v113 = v353;
                    v114 = *v353;
                    v353 += 4;
                    v115 = bswap32(*v353);
                    v353 = v113 + 8;
                    v116 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v115, v305}];
                    v117 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(v114)];
                    [v111 setObject:v116 forKey:v117];

                    v112 = (v112 + 8);
                  }

                  while (v112 <= v352 - 8);
                }

                if (self->_internal->_eventHandler)
                {
                  v118 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v385 = v111;
                    _os_log_impl(&dword_1959FF000, v118, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_InfoReportKey report %@", buf, 0xCu);
                  }

                  v119 = self->_internal->_eventHandler;
                  v376[0] = @"event-type";
                  v376[1] = @"info-report-events-key";
                  v377[0] = &unk_1F0A29B40;
                  v377[1] = v111;
                  v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v377 forKeys:v376 count:2];
                  v119[2](v119, v120);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v385 = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_InfoReportKey should be bigger than %u bytes.", buf, 8u);
              }

              goto LABEL_523;
            case 0x14u:
              if (v352 == 1)
              {
                HIDWORD(v325) = *v353++;
                if (self->_internal->_verboseFunctionalLogging)
                {
                  v177 = +[IDSLogging IDSDataChannels];
                  if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v385 = HIDWORD(v325);
                    _os_log_impl(&dword_1959FF000, v177, OS_LOG_TYPE_DEFAULT, "got DSCP %u", buf, 8u);
                  }
                }

                LOBYTE(v331) = 1;
                goto LABEL_585;
              }

              v18 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v385 = 1;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                *&v385[10] = 1024;
                *&v385[12] = v354;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_DSCPKey should be %d bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0x16u:
              if (v352 == 8)
              {
                a6->var9 = *v353;
                if (!self->_internal->_verboseFunctionalLogging)
                {
                  goto LABEL_585;
                }

                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  var9 = a6->var9;
                  *buf = 134217984;
                  *v385 = var9;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "got arrivalTime %f", buf, 0xCu);
                }
              }

              else
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109632;
                  *v385 = 8;
                  *&v385[4] = 1024;
                  *&v385[6] = v352;
                  *&v385[10] = 1024;
                  *&v385[12] = v354;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PacketArrivalTime should be %d bytes, not %u bytes, field: %u", buf, 0x14u);
                }
              }

              goto LABEL_523;
            case 0x17u:
              if (v352 == 1)
              {
                HIDWORD(v333) = *v353;
                if (!self->_internal->_verboseFunctionalLogging)
                {
                  goto LABEL_585;
                }

                v18 = +[IDSLogging IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v385 = HIDWORD(v333);
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "got Channel Priority %u", buf, 8u);
                }
              }

              else
              {
                v18 = +[IDSLogging IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v385 = v352;
                  *&v385[4] = 1024;
                  *&v385[6] = v354;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PriorityKey should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
                }
              }

              goto LABEL_523;
            case 0x18u:
              if (v352 == 8)
              {
                v334 = bswap64(*v353);
                v353 += 8;
                if (self->_internal->_verboseFunctionalLogging)
                {
                  v122 = +[IDSLogging IDSDataChannels];
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    *v385 = v334;
                    _os_log_impl(&dword_1959FF000, v122, OS_LOG_TYPE_DEFAULT, "got Participant ID %llu", buf, 0xCu);
                  }
                }

                if (!v334)
                {
                  v123 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    *v385 = 0;
                    _os_log_impl(&dword_1959FF000, v123, OS_LOG_TYPE_DEFAULT, "error: we received Participant ID %llu", buf, 0xCu);
                  }

                  v334 = 0;
                }

                v328 = 1;
                goto LABEL_585;
              }

              v18 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = v352;
                *&v385[4] = 1024;
                *&v385[6] = v354;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ParticipantID should be 8 byte, not %u bytes, field: %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x1Eu:
              v88 = [MEMORY[0x1E695DEF0] dataWithBytes:v353 length:v352];

              v89 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v385 = v88;
                *&v385[8] = 1024;
                *&v385[10] = v352;
                _os_log_impl(&dword_1959FF000, v89, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionMKMKey got MKM %@ size %u", buf, 0x12u);
              }

              v339 = v88;
              goto LABEL_585;
            case 0x1Fu:
              v73 = [MEMORY[0x1E695DEF0] dataWithBytes:v353 length:v352];

              v74 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v385 = v73;
                *&v385[8] = 1024;
                *&v385[10] = v352;
                _os_log_impl(&dword_1959FF000, v74, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionMKSKey got MKS %@ size %u", buf, 0x12u);
              }

              v338 = v73;
              goto LABEL_585;
            case 0x20u:
              v82 = objc_alloc(MEMORY[0x1E696AFB0]);
              v83 = [v82 initWithUUIDBytes:v353];

              v84 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v385 = v83;
                *&v385[8] = 1024;
                *&v385[10] = v352;
                _os_log_impl(&dword_1959FF000, v84, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionMKIKey got MKI %@ size %u", buf, 0x12u);
              }

              v337 = v83;
              goto LABEL_585;
            case 0x21u:
              if (v352 == 1)
              {
                BYTE4(v324) = *v353;
                BYTE4(v332) = 1;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v385 = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionMembershipChangedKey should be 1 byte, not %u", buf, 8u);
              }

              goto LABEL_523;
            case 0x22u:
              if (v352 == 1)
              {
                if (self->_internal->_eventHandler)
                {
                  v85 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v85, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionReinitiated - IDSDSession is reinitiated", buf, 2u);
                  }

                  v86 = self->_internal->_eventHandler;
                  v374 = @"event-type";
                  v375 = &unk_1F0A29B58;
                  v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v375 forKeys:&v374 count:1];
                  v86[2](v86, v87);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v385 = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionReinitiated should be 1 byte, not %d", buf, 8u);
              }

              goto LABEL_523;
            case 0x23u:
              if (v352 != 1)
              {
                goto LABEL_585;
              }

              v90 = *v353;
              if (v90 >= 0xD)
              {
                v91 = +[IDSLogging IDSDataChannels];
                if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v385 = v90;
                  _os_log_impl(&dword_1959FF000, v91, OS_LOG_TYPE_DEFAULT, "got invalid streamIDCount %d", buf, 8u);
                }

                a6->var4 = 0;
                goto LABEL_585;
              }

              if (!*v353)
              {
                goto LABEL_585;
              }

              a6->var4 = v90;
              if (!self->_internal->_verboseFunctionalLogging)
              {
                goto LABEL_585;
              }

              v18 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v385 = v90;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "got streamIDCount %d", buf, 8u);
              }

              goto LABEL_523;
            case 0x24u:
              if (a6->var4 < 1)
              {
                goto LABEL_585;
              }

              v148 = 2 * a6->var4;
              if (v352 == (2 * a6->var4))
              {
                var4 = a6->var4;
                a6->var0 |= 2u;
                v150 = v353;
                var5 = a6->var5;
                do
                {
                  v152 = *v150;
                  v150 += 2;
                  *var5++ = bswap32(v152) >> 16;
                  v353 = v150;
                  --var4;
                }

                while (var4);
                if (self->_internal->_verboseFunctionalLogging)
                {
                  v153 = +[IDSLogging IDSDataChannels];
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                  {
                    v154 = [MEMORY[0x1E695DEF0] dataWithBytes:&v353[-v148] length:v148];
                    *buf = 138412290;
                    *v385 = v154;
                    _os_log_impl(&dword_1959FF000, v153, OS_LOG_TYPE_DEFAULT, "got streamID bytes:%@", buf, 0xCu);
                  }
                }

                goto LABEL_585;
              }

              v18 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = v148;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StreamIDsKey: size mismatch (%u != %u), ignore.", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x25u:
              if (v352 == 1)
              {
                if (self->_internal->_verboseFunctionalLogging)
                {
                  v49 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v49, OS_LOG_TYPE_DEFAULT, "got CT(packet counting) option", buf, 2u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    _IDSLogV();
                  }
                }

                BYTE4(v329) = 1;
                goto LABEL_585;
              }

              v230 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = v352;
                *&v385[4] = 1024;
                *&v385[6] = v354;
                _os_log_impl(&dword_1959FF000, v230, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_CountPacketKey  should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                goto LABEL_397;
              }

              goto LABEL_585;
            case 0x26u:
              if (v352 == 2)
              {
                v326 = __rev16(*v353);
                v353 += 2;
                if (self->_internal->_verboseFunctionalLogging)
                {
                  v195 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v385 = v326;
                    _os_log_impl(&dword_1959FF000, v195, OS_LOG_TYPE_DEFAULT, "got probeGroupID %u", buf, 8u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v305 = v326;
                    _IDSLogV();
                  }
                }

                LOBYTE(v329) = 1;
                goto LABEL_585;
              }

              v233 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = v352;
                *&v385[4] = 1024;
                *&v385[6] = v354;
                _os_log_impl(&dword_1959FF000, v233, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ProbeGroupIDKey should be 2 bytes, not %u bytes, field: %u", buf, 0xEu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                goto LABEL_397;
              }

              goto LABEL_585;
            case 0x27u:
              v21 = [MEMORY[0x1E695DEF0] dataWithBytes:v353 length:v352];
              if (v21)
              {
                v22 = MEMORY[0x1E696ACD0];
                v23 = MEMORY[0x1E695DFD8];
                v24 = objc_opt_class();
                v25 = objc_opt_class();
                v26 = objc_opt_class();
                v27 = objc_opt_class();
                v28 = objc_opt_class();
                v29 = [v23 setWithObjects:{v24, v25, v26, v27, v28, objc_opt_class(), 0}];
                v348 = 0;
                v30 = [v22 _strictlyUnarchivedObjectOfClasses:v29 fromData:v21 error:&v348];
                v31 = v348;

                if (v30)
                {
                  if (self->_internal->_eventHandler)
                  {
                    v32 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      *v385 = v30;
                      _os_log_impl(&dword_1959FF000, v32, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionInfoKey - %@", buf, 0xCu);
                    }

                    v33 = self->_internal->_eventHandler;
                    v372[0] = @"event-type";
                    v372[1] = @"session-info-response-key";
                    v373[0] = &unk_1F0A29B70;
                    v373[1] = v30;
                    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v373 forKeys:v372 count:2];
                    v33[2](v33, v34);
                    goto LABEL_582;
                  }
                }

                else
                {
                  v34 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *v385 = v21;
                    *&v385[8] = 2112;
                    *&v385[10] = v31;
                    _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionInfoKey - Couldn't decode NSData %@ (error: %@)", buf, 0x16u);
                  }

                  v30 = 0;
LABEL_582:
                }

                goto LABEL_584;
              }

              v31 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionInfoKey - Couldn't get NSData from fieldBytes", buf, 2u);
              }

LABEL_584:

LABEL_585:
              if ((IDSByteBufferReadField() & 1) == 0)
              {
                goto LABEL_588;
              }

              break;
            case 0x28u:
              v50 = [MEMORY[0x1E695DEF0] dataWithBytes:v353 length:v352];
              if (v50)
              {
                v51 = MEMORY[0x1E696ACD0];
                v52 = MEMORY[0x1E695DFD8];
                v53 = objc_opt_class();
                v54 = objc_opt_class();
                v55 = objc_opt_class();
                v56 = [v52 setWithObjects:{v53, v54, v55, objc_opt_class(), 0}];
                v57 = [v51 _strictlyUnarchivedObjectOfClasses:v56 fromData:v50 error:0];

                if (v57)
                {
                  if (!self->_internal->_eventHandler)
                  {
                    goto LABEL_567;
                  }

                  v58 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v385 = v57;
                    _os_log_impl(&dword_1959FF000, v58, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsKey - %@", buf, 0xCu);
                  }

                  v59 = self->_internal->_eventHandler;
                  v368[0] = @"event-type";
                  v368[1] = @"stat-response-key";
                  v369[0] = &unk_1F0A29B88;
                  v369[1] = v57;
                  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v369 forKeys:v368 count:2];
                  v59[2](v59, v60);
                }

                else
                {
                  v60 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v385 = v50;
                    _os_log_impl(&dword_1959FF000, v60, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsKey - Couldn't decode NSData %@", buf, 0xCu);
                  }

                  v57 = 0;
                }
              }

              else
              {
                v57 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v57, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsKey - Couldn't get NSData from fieldBytes", buf, 2u);
                }
              }

LABEL_567:

              goto LABEL_585;
            case 0x2Bu:
              if (v352 == 1)
              {
                v19 = a6;
                a6->var6 = *v353;
                v20 = a6->var0 | 0x20;
                goto LABEL_255;
              }

              v231 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = v352;
                *&v385[4] = 1024;
                *&v385[6] = v354;
                _os_log_impl(&dword_1959FF000, v231, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GenerationCounterLSBKey should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
LABEL_397:
                v305 = v352;
                v306 = v354;
                _IDSLogV();
              }

              goto LABEL_585;
            case 0x2Du:
              if (v352 == 2)
              {
                a6->var7 = bswap32(*v353) >> 16;
                BYTE4(v331) = 1;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = 2;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsID should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x2Eu:
              if (v352 == 2)
              {
                a6->var8.var0 = bswap32(*v353) >> 16;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = 2;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsServerTimeStamp should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x2Fu:
              if (v352 == 2)
              {
                a6->var8.var1 = bswap32(*v353) >> 16;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = 2;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsServerPacketInterval should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x30u:
              if (v352 == 2)
              {
                a6->var8.var2 = bswap32(*v353) >> 16;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = 2;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsTotalServerPacketReceived should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x31u:
              if (v352 == 2)
              {
                a6->var8.var3 = bswap32(*v353) >> 16;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = 2;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsTotalServerPacketSent should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x32u:
              if (v352 == 2)
              {
                a6->var8.var4 = bswap32(*v353) >> 16;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = 2;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsUplinkBandwidth should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x33u:
              if (v352 == 1)
              {
                v19 = a6;
                v20 = a6->var0 | 0x80;
                goto LABEL_255;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = v352;
                *&v385[4] = 1024;
                *&v385[6] = v354;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_OptOutPriorityFilter should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x34u:
              if (v352 == 1)
              {
                v19 = a6;
                v20 = a6->var0 | 0x100;
                goto LABEL_255;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = v352;
                *&v385[4] = 1024;
                *&v385[6] = v354;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_TransitionPacketFlag should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x36u:
              if (v352 == 4)
              {
                v196 = *v353;
                v197 = v353[1];
                v198 = v353[2];
                v199 = v353[3];
                v353 += 4;
                if (self->_internal->_eventHandler)
                {
                  v200 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"IDS couldn't receive the response for the session info request.", v320, 0}];
                  v201 = (v196 << 24) | (v197 << 16) | (v198 << 8) | v199;
                  v202 = v201 - 1;
                  v203 = v201 + 8;
                  if (v202 >= 5)
                  {
                    v204 = 14;
                  }

                  else
                  {
                    v204 = v203;
                  }

                  v205 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v385 = v204;
                    _os_log_impl(&dword_1959FF000, v205, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionInfoResponseErrorKey errorCode %u", buf, 8u);
                  }

                  v206 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v319 code:v204 userInfo:v200];
                  v207 = self->_internal->_eventHandler;
                  v370[0] = @"event-type";
                  v370[1] = @"error-key";
                  v371[0] = &unk_1F0A29B70;
                  v371[1] = v206;
                  v208 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v371 forKeys:v370 count:2];
                  v207[2](v207, v208);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = 4;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionInfoResponseErrorKey should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x37u:
              if (v352 == 1)
              {
                BYTE4(v322) = *v353 != 0;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v385 = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionLocallyGeneratedInfoKey should be 1 byte, not %u", buf, 8u);
              }

              goto LABEL_523;
            case 0x3Cu:
              v192 = v352;
              if (v352)
              {
                v193 = v353;
                v194 = *v353;
                if (*v353)
                {
                  if (v352 == 1)
                  {
                    v18 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey - no valid currentLinkIDCount", buf, 2u);
                    }

                    goto LABEL_523;
                  }

                  if (v352 > 2u)
                  {
                    v258 = v353[2];
                    if (v352 < 7u)
                    {
                      v18 = +[IDSTransportLog IDSDataChannels];
                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        *v385 = v258;
                        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid timestamp", buf, 8u);
                      }

                      goto LABEL_523;
                    }

                    if (v352 < 9u)
                    {
                      v18 = +[IDSTransportLog IDSDataChannels];
                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        *v385 = v258;
                        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid reorderedPackets", buf, 8u);
                      }

                      goto LABEL_523;
                    }

                    if (v352 < 0xBu)
                    {
                      v18 = +[IDSTransportLog IDSDataChannels];
                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        *v385 = v258;
                        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid probingRequests", buf, 8u);
                      }

                      goto LABEL_523;
                    }

                    if (v352 < 0xDu)
                    {
                      v18 = +[IDSTransportLog IDSDataChannels];
                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        *v385 = v258;
                        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid probingResponses", buf, 8u);
                      }

                      goto LABEL_523;
                    }

                    if (v352 < 0xFu)
                    {
                      v18 = +[IDSTransportLog IDSDataChannels];
                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        *v385 = v258;
                        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid offsetAndRTTCount", buf, 8u);
                      }

                      goto LABEL_523;
                    }

                    v310 = *(v353 + 7);
                    v311 = *(v353 + 3);
                    v309 = *(v353 + 9);
                    v307 = v353[1];
                    v308 = *(v353 + 11);
                    v274 = *(v353 + 13);
                    v312 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    if (v274)
                    {
                      v275 = 0;
                      v276 = &v193[v192];
                      v277 = __rev16(v274);
                      v278 = (v193 + 19);
                      while (v278 - 2 <= v276)
                      {
                        if (v278 > v276)
                        {
                          v283 = +[IDSTransportLog IDSDataChannels];
                          if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 67109376;
                            *v385 = v258;
                            *&v385[4] = 1024;
                            *&v385[6] = v275;
                            v284 = "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid rtt, i: %d";
LABEL_534:
                            _os_log_impl(&dword_1959FF000, v283, OS_LOG_TYPE_DEFAULT, v284, buf, 0xEu);
                          }

                          goto LABEL_535;
                        }

                        v279 = *(v278 - 2);
                        v280 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(*(v278 - 4)) >> 16];
                        v386[0] = v280;
                        v281 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(v279) >> 16];
                        v386[1] = v281;
                        v282 = [MEMORY[0x1E695DEC8] arrayWithObjects:v386 count:2];
                        [v312 addObject:v282];

                        ++v275;
                        v278 += 4;
                        if (v277 == v275)
                        {
                          goto LABEL_536;
                        }
                      }

                      v283 = +[IDSTransportLog IDSDataChannels];
                      if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109376;
                        *v385 = v258;
                        *&v385[4] = 1024;
                        *&v385[6] = v275;
                        v284 = "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid requestOffset, i: %d";
                        goto LABEL_534;
                      }

LABEL_535:
                    }

LABEL_536:
                    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    v286 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(v311)];
                    if (v286)
                    {
                      CFDictionarySetValue(Mutable, key, v286);
                    }

                    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      *v385 = key;
                      *&v385[8] = 2080;
                      *&v385[10] = "linkStatus";
                      _os_log_error_impl(&dword_1959FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
                    }

                    v287 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(v310) >> 16];
                    if (v287)
                    {
                      CFDictionarySetValue(Mutable, v316, v287);
                    }

                    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      *v385 = v316;
                      *&v385[8] = 2080;
                      *&v385[10] = "linkStatus";
                      _os_log_error_impl(&dword_1959FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
                    }

                    v288 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(v309) >> 16];
                    if (v288)
                    {
                      CFDictionarySetValue(Mutable, v315, v288);
                    }

                    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      *v385 = v315;
                      *&v385[8] = 2080;
                      *&v385[10] = "linkStatus";
                      _os_log_error_impl(&dword_1959FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
                    }

                    v289 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(v308) >> 16];
                    if (v289)
                    {
                      CFDictionarySetValue(Mutable, v314, v289);
                    }

                    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      *v385 = v314;
                      *&v385[8] = 2080;
                      *&v385[10] = "linkStatus";
                      _os_log_error_impl(&dword_1959FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
                    }

                    v290 = v312;
                    if (v290)
                    {
                      CFDictionarySetValue(Mutable, v313, v290);
                    }

                    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      *v385 = v313;
                      *&v385[8] = 2080;
                      *&v385[10] = "linkStatus";
                      _os_log_error_impl(&dword_1959FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
                    }

                    probingDict = self->_internal->_probingDict;
                    v292 = [MEMORY[0x1E696AD98] numberWithChar:v258];
                    [(NSMutableDictionary *)probingDict setObject:Mutable forKey:v292];

                    if (v307 == v194)
                    {
                      v293 = self->_internal;
                      if (v293->_eventHandler)
                      {
                        v294 = [(NSMutableDictionary *)v293->_probingDict copy];
                        v295 = +[IDSTransportLog IDSDataChannels];
                        if (os_log_type_enabled(v295, OS_LOG_TYPE_DEFAULT))
                        {
                          v296 = [v294 count];
                          v297 = [v294 allKeys];
                          *buf = 134218498;
                          *v385 = v296;
                          *&v385[8] = 2112;
                          *&v385[10] = v297;
                          *&v385[18] = 2112;
                          *&v385[20] = v294;
                          _os_log_impl(&dword_1959FF000, v295, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ProbingRequestOffsetKey - total size: %lu, all keys: %@, output: %@", buf, 0x20u);
                        }

                        v298 = self->_internal->_eventHandler;
                        v382[0] = @"event-type";
                        v382[1] = @"probing-response-key";
                        v383[0] = &unk_1F0A29B10;
                        v383[1] = v294;
                        v299 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v383 forKeys:v382 count:2];
                        v298[2](v298, v299);

                        v293 = self->_internal;
                      }

                      [(NSMutableDictionary *)v293->_probingDict removeAllObjects];
                    }

                    goto LABEL_585;
                  }

                  v18 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey - no valid linkID", buf, 2u);
                  }
                }

                else
                {
                  v18 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey - invalid totalLinkIDs: 0", buf, 2u);
                  }
                }
              }

              else
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey - invalid fieldBytesSize: 0", buf, 2u);
                }
              }

              goto LABEL_523;
            case 0x3Du:
              if (v352 == 4)
              {
                v42 = *v353;
                v353 += 4;
                v43 = +[IDSTransportLog IDSDataChannels];
                v44 = bswap32(v42);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v385 = v44;
                  _os_log_impl(&dword_1959FF000, v43, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SoMaskChanged got SoMask: %u", buf, 8u);
                }

                if (self->_internal->_eventHandler)
                {
                  v45 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v385 = v44;
                    _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_DEFAULT, "send event to client about kClientChannelMetadataType_SoMaskChanged, SoMask: %u", buf, 8u);
                  }

                  v46 = self->_internal->_eventHandler;
                  v363[0] = &unk_1F0A29BD0;
                  v362[0] = @"event-type";
                  v362[1] = @"somask-changed";
                  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v44];
                  v363[1] = v47;
                  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v363 forKeys:v362 count:2];
                  v46[2](v46, v48);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v385 = 4;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                *&v385[10] = 1024;
                *&v385[12] = v354;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SoMaskChanged should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0x3Eu:
              if (v352 == 2)
              {
                v35 = *v353;
                v353 += 2;
                v36 = +[IDSTransportLog IDSDataChannels];
                v37 = __rev16(v35);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v385 = v37;
                  _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_nwPathWiFiFlagsChanged got wifiLocalAttributes: %u", buf, 8u);
                }

                if (self->_internal->_eventHandler)
                {
                  v38 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v385 = v37;
                    _os_log_impl(&dword_1959FF000, v38, OS_LOG_TYPE_DEFAULT, "send event to client about kClientChannelMetadataType_nwPathWiFiFlagsChanged, wifiLocalAttributes: %u", buf, 8u);
                  }

                  v39 = self->_internal->_eventHandler;
                  v367[0] = &unk_1F0A29BA0;
                  v366[0] = @"event-type";
                  v366[1] = @"wifi-local-attributes-changed-key";
                  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v37];
                  v367[1] = v40;
                  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v367 forKeys:v366 count:2];
                  v39[2](v39, v41);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v385 = 2;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                *&v385[10] = 1024;
                *&v385[12] = v354;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_nwPathWiFiFlagsChanged should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0x3Fu:
              if (v352 == 2)
              {
                v75 = *v353;
                v353 += 2;
                v76 = +[IDSTransportLog IDSDataChannels];
                v77 = __rev16(v75);
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v385 = v77;
                  _os_log_impl(&dword_1959FF000, v76, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_nwPathCellularFlagsChanged got cellularLocalAttributes: %u", buf, 8u);
                }

                if (self->_internal->_eventHandler)
                {
                  v78 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v385 = v77;
                    _os_log_impl(&dword_1959FF000, v78, OS_LOG_TYPE_DEFAULT, "send event to client about kClientChannelMetadataType_nwPathCellularFlagsChanged, cellularLocalAttributes: %u", buf, 8u);
                  }

                  v79 = self->_internal->_eventHandler;
                  v365[0] = &unk_1F0A29BB8;
                  v364[0] = @"event-type";
                  v364[1] = @"cellular-local-attributes-changed-key";
                  v80 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v77];
                  v365[1] = v80;
                  v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v365 forKeys:v364 count:2];
                  v79[2](v79, v81);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v385 = 2;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                *&v385[10] = 1024;
                *&v385[12] = v354;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_nwPathCellularFlagsChanged should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0x43u:
              if (v352 == 1)
              {
                LOBYTE(v332) = *v353 != 0;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = 1;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_NeedsHBHEncryption should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x45u:
              if (v352 == 8)
              {
                v214 = *v353;
                v353 += 8;
                v18 = +[IDSTransportLog IDSDataChannels];
                v323 = bswap64(v214);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  *v385 = v323;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionSequenceNumber got %llu (*Client <- IDSD)", buf, 0xCu);
                }
              }

              else
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109632;
                  *v385 = 8;
                  *&v385[4] = 1024;
                  *&v385[6] = v352;
                  *&v385[10] = 1024;
                  *&v385[12] = v354;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionSequenceNumber should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
                }
              }

              goto LABEL_523;
            case 0x46u:
              v178 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v179 = [MEMORY[0x1E695DEF0] dataWithBytes:v353 length:v352];
              if (v179)
              {
                v180 = MEMORY[0x1E696ACD0];
                v181 = MEMORY[0x1E695DFD8];
                v182 = objc_opt_class();
                v183 = objc_opt_class();
                v184 = objc_opt_class();
                v185 = objc_opt_class();
                v186 = objc_opt_class();
                v187 = [v181 setWithObjects:{v182, v183, v184, v185, v186, objc_opt_class(), 0}];
                v347 = 0;
                v188 = [v180 _strictlyUnarchivedObjectOfClasses:v187 fromData:v179 error:&v347];
                v189 = v347;

                if (v188)
                {
                  v190 = [v188 mutableCopy];

                  CFDictionarySetValue(v190, @"event-type", &unk_1F0A29BE8);
                  if (self->_internal->_eventHandler)
                  {
                    v191 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      *v385 = v190;
                      _os_log_impl(&dword_1959FF000, v191, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkSuggestion - %@", buf, 0xCu);
                    }

                    (*(self->_internal->_eventHandler + 2))();
                  }

                  v178 = v190;
                }

                else
                {
                  v300 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v300, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *v385 = v179;
                    *&v385[8] = 2112;
                    *&v385[10] = v189;
                    _os_log_impl(&dword_1959FF000, v300, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkSuggestion - Couldn't decode NSData %@ (error: %@)", buf, 0x16u);
                  }

                  v188 = 0;
                }
              }

              else
              {
                v189 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v189, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkSuggestion - Couldn't get NSData from fieldBytes", buf, 2u);
                }
              }

              goto LABEL_585;
            case 0x47u:
              if (v352 == 1)
              {
                v19 = a6;
                a6->var14 = *v353 != 0;
                v20 = a6->var0 | 0x10000;
                goto LABEL_255;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v385 = 1;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_RetransmittedPacket should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x48u:
              if (v352 != 1)
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v385 = 1;
                  *&v385[4] = 1024;
                  *&v385[6] = v352;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_NonRetransmittablePacket should be %u byte, not %u", buf, 0xEu);
                }

                goto LABEL_523;
              }

              v19 = a6;
              a6->var15 = *v353 != 0;
              v20 = a6->var0 | 0x20000;
LABEL_255:
              v19->var0 = v20;
              goto LABEL_585;
            case 0x49u:
              v21 = [MEMORY[0x1E695DEF0] dataWithBytes:v353 length:v352];
              if (v21)
              {
                v61 = MEMORY[0x1E696ACD0];
                v62 = MEMORY[0x1E695DFD8];
                v63 = objc_opt_class();
                v64 = objc_opt_class();
                v65 = objc_opt_class();
                v66 = objc_opt_class();
                v67 = objc_opt_class();
                v68 = [v62 setWithObjects:{v63, v64, v65, v66, v67, objc_opt_class(), 0}];
                v346 = 0;
                v69 = [v61 _strictlyUnarchivedObjectOfClasses:v68 fromData:v21 error:&v346];
                v31 = v346;

                if (v69)
                {
                  if (self->_internal->_eventHandler)
                  {
                    v70 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      *v385 = v69;
                      _os_log_impl(&dword_1959FF000, v70, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EventReportingBlob - %@", buf, 0xCu);
                    }

                    v71 = self->_internal->_eventHandler;
                    v360[0] = @"event-type";
                    v360[1] = @"reporting-blob-key";
                    v361[0] = &unk_1F0A29C00;
                    v361[1] = v69;
                    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v361 forKeys:v360 count:2];
                    v71[2](v71, v72);
                    goto LABEL_576;
                  }
                }

                else
                {
                  v72 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *v385 = v21;
                    *&v385[8] = 2112;
                    *&v385[10] = v31;
                    _os_log_impl(&dword_1959FF000, v72, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EventReportingBlob - Couldn't decode NSData %@ (error: %@)", buf, 0x16u);
                  }

                  v69 = 0;
LABEL_576:
                }

                goto LABEL_584;
              }

              v31 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EventReportingBlob - Couldn't get NSData from fieldBytes", buf, 2u);
              }

              goto LABEL_584;
            case 0x4Au:
              v92 = [MEMORY[0x1E695DEF0] dataWithBytes:v353 length:v352];
              if (!v92)
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ParticipantMappingReplacment - Couldn't get NSData from fieldBytes", buf, 2u);
                }

                goto LABEL_523;
              }

              os_unfair_lock_lock(&self->_internal->_linkIDToParticipantMapLock);
              if (!self->_internal->_linkIDToParticipantMap)
              {
                v93 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v94 = self->_internal;
                linkIDToParticipantMap = v94->_linkIDToParticipantMap;
                v94->_linkIDToParticipantMap = v93;
              }

              v96 = [(IDSDatagramChannel *)self _extractparticipantIDToHashedIDMappingFromData:v92, v305];
              v97 = +[IDSTransportLog IDSDataChannels];
              v98 = os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT);
              if (v96)
              {
                if (v98)
                {
                  *buf = 67109378;
                  *v385 = v333;
                  *&v385[4] = 2112;
                  *&v385[6] = v96;
                  _os_log_impl(&dword_1959FF000, v97, OS_LOG_TYPE_DEFAULT, "linkID %d, got kClientChannelMetadataType_ParticipantMappingReplacment: %@", buf, 0x12u);
                }

                v99 = self->_internal->_linkIDToParticipantMap;
                v97 = [MEMORY[0x1E696AD98] numberWithChar:v333];
                [(NSMutableDictionary *)v99 setObject:v96 forKeyedSubscript:v97];
              }

              else if (v98)
              {
                *buf = 0;
                _os_log_impl(&dword_1959FF000, v97, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ParticipantMappingReplacment - Couldn't decode NSData.", buf, 2u);
              }

              os_unfair_lock_unlock(&self->_internal->_linkIDToParticipantMapLock);
LABEL_460:
              v217 = [MEMORY[0x1E695DEF0] dataWithBytes:v353 length:{v352, v305}];
              if (v217)
              {
                os_unfair_lock_lock(&self->_internal->_linkIDToParticipantMapLock);
                if (!self->_internal->_linkIDToParticipantMap)
                {
                  v246 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  v247 = self->_internal;
                  v248 = v247->_linkIDToParticipantMap;
                  v247->_linkIDToParticipantMap = v246;
                }

                v219 = [(IDSDatagramChannel *)self _extractparticipantIDToHashedIDMappingFromData:v217];
                v249 = +[IDSTransportLog IDSDataChannels];
                v250 = os_log_type_enabled(v249, OS_LOG_TYPE_DEFAULT);
                if (v219)
                {
                  v251 = v333;
                  if (v250)
                  {
                    *buf = 67109378;
                    *v385 = v333;
                    *&v385[4] = 2112;
                    *&v385[6] = v219;
                    _os_log_impl(&dword_1959FF000, v249, OS_LOG_TYPE_DEFAULT, "linkID %d, got kClientChannelMetadataType_ParticipantMappingUpdate: %@", buf, 0x12u);
                  }

                  v252 = self->_internal->_linkIDToParticipantMap;
                  v253 = [MEMORY[0x1E696AD98] numberWithChar:v251];
                  v254 = [(NSMutableDictionary *)v252 objectForKeyedSubscript:v253];
                  v249 = [v254 mutableCopy];

                  [v249 addEntriesFromDictionary:v219];
                  v255 = [v249 copy];
                  v256 = self->_internal->_linkIDToParticipantMap;
                  v257 = [MEMORY[0x1E696AD98] numberWithChar:v251];
                  [(NSMutableDictionary *)v256 setObject:v255 forKeyedSubscript:v257];
                }

                else if (v250)
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v249, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ParticipantMappingUpdate - Couldn't decode NSData.", buf, 2u);
                }

                os_unfair_lock_unlock(&self->_internal->_linkIDToParticipantMapLock);
              }

              else
              {
                v219 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v219, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ParticipantMappingUpdate - Couldn't get NSData from fieldBytes", buf, 2u);
                }
              }

              goto LABEL_287;
            case 0x4Bu:
              goto LABEL_460;
            case 0x4Cu:
              if (v352 < 2u)
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v385 = 18;
                  *&v385[4] = 1024;
                  *&v385[6] = v352;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ChildConnectionID should be %u bytes, not %u bytes", buf, 0xEu);
                }

                goto LABEL_523;
              }

              v215 = v353 + 1;
              v216 = *v353;
              v217 = [(IDSDatagramChannel *)self _linkContextWithID:*v353];
              v218 = [MEMORY[0x1E695DEF0] dataWithBytes:v215 length:v352 - 1];
              v219 = JWDecodeDictionary();

              [(IDSDatagramChannel *)self _addConnections:v219 toLinkContext:v217];
              if (v219)
              {
                v220 = +[IDSTransportLog IDSDataChannels];
                v221 = v216;
                if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
                {
                  v222 = [v217 isQUICPod];
                  v223 = @"NO";
                  *buf = 138412802;
                  *v385 = v219;
                  if (v222)
                  {
                    v223 = @"YES";
                  }

                  *&v385[8] = 1024;
                  *&v385[10] = v221;
                  *&v385[14] = 2112;
                  *&v385[16] = v223;
                  _os_log_impl(&dword_1959FF000, v220, OS_LOG_TYPE_DEFAULT, "addDirectConnectionForLinkID: received child connections %@ for linkID %d, isQUICPod %@", buf, 0x1Cu);
                }

                [(IDSDatagramChannel *)self addDirectConnectionForLinkID:v221 linkContext:v217];
                if (([v217 isVirtualRelayLink] & 1) == 0)
                {
                  v344 = 0u;
                  v345 = 0u;
                  v342 = 0u;
                  v343 = 0u;
                  v224 = [(IDSDatagramChannel *)self connectedLinks];
                  v225 = [v224 countByEnumeratingWithState:&v342 objects:v359 count:16];
                  if (v225)
                  {
                    v226 = *v343;
                    do
                    {
                      for (i = 0; i != v225; ++i)
                      {
                        if (*v343 != v226)
                        {
                          objc_enumerationMutation(v224);
                        }

                        v228 = *(*(&v342 + 1) + 8 * i);
                        v229 = [v228 delegatedLinkID];
                        if (v229 == [v217 linkID])
                        {
                          -[IDSDatagramChannel addDirectConnectionForLinkID:linkContext:](self, "addDirectConnectionForLinkID:linkContext:", [v228 linkID], v228);
                        }
                      }

                      v225 = [v224 countByEnumeratingWithState:&v342 objects:v359 count:16];
                    }

                    while (v225);
                  }
                }
              }

LABEL_287:

              goto LABEL_585;
            case 0x52u:
              if (v352 == 1)
              {
                LODWORD(v324) = *v353;
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v385 = v324;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionShortKILengthKey got shortKILength %u", buf, 8u);
                }
              }

              else
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v385 = v352;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionShortKILengthKey should be 1 byte, not %u", buf, 8u);
                }
              }

              goto LABEL_523;
            case 0x55u:
              if (v352 >= 2uLL)
              {
                v209 = [MEMORY[0x1E695DEF0] dataWithBytes:v353 length:?];
                v210 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
                {
                  v211 = [v209 length];
                  *buf = 67109120;
                  *v385 = v211;
                  _os_log_impl(&dword_1959FF000, v210, OS_LOG_TYPE_DEFAULT, "LinkQuality: importing link quality measurer delta bytes %d", buf, 8u);
                }

                v212 = [MEMORY[0x1E69A5308] createWithJSON:v209];
                if (v212)
                {
                  v213 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v213, OS_LOG_TYPE_DEFAULT, "LinkQuality: importing link quality measurer delta", buf, 2u);
                  }

                  [(IDSLinksQualityMeasurer *)self->_internal->_qualityMeasurer importDelta:v212 sourceName:@"IDS" completionHandler:&unk_1F09E72E0];
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "LinkQuality: kClientChannelMetadataType_LinkQualityData is too small", buf, 2u);
              }

              goto LABEL_523;
            case 0x5Au:
              if (v352 == 3)
              {
                v100 = v353;
                v101 = *v353++;
                v102 = *v353;
                v353 = v100 + 3;
                v103 = +[IDSTransportLog IDSDataChannels];
                v104 = __rev16(v102);
                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v385 = v101;
                  *&v385[4] = 1024;
                  *&v385[6] = v104;
                  _os_log_impl(&dword_1959FF000, v103, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PMTUUpdate: path mtu update on linkID: %d, mtu: %d", buf, 0xEu);
                }

                v105 = [(IDSDatagramChannel *)self _linkContextWithID:v101];
                v106 = v105;
                if (v105)
                {
                  if ([v105 pathMTU] == v104)
                  {
                    v107 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109376;
                      *v385 = v101;
                      *&v385[4] = 1024;
                      *&v385[6] = v104;
                      v108 = "kClientChannelMetadataType_PMTUUpdate: path mtu unchanged for linkID %d: %d";
                      goto LABEL_113;
                    }

                    goto LABEL_510;
                  }

                  [v106 setPathMTU:v104];
                  v268 = [v106 ipFamily];
                  v269 = self->_internal;
                  if (v268 == 6 || v269->_shouldReportPMTUChangesOnIPv4)
                  {
                    if (!v269->_eventHandler)
                    {
                      goto LABEL_511;
                    }

                    v270 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109376;
                      *v385 = v101;
                      *&v385[4] = 1024;
                      *&v385[6] = v104;
                      _os_log_impl(&dword_1959FF000, v270, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PMTUUpdate: calling pathMTU event handler for linkID %d, pmtu: %d", buf, 0xEu);
                    }

                    v271 = self->_internal->_eventHandler;
                    v358[0] = &unk_1F0A29C18;
                    v357[0] = @"event-type";
                    v357[1] = v318;
                    v107 = [MEMORY[0x1E696AD98] numberWithChar:v101];
                    v358[1] = v107;
                    v357[2] = @"path-mtu";
                    v272 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v104];
                    v358[2] = v272;
                    v273 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v358 forKeys:v357 count:3];
                    v271[2](v271, v273);

                    goto LABEL_510;
                  }

                  v107 = +[IDSTransportLog IDSDataChannels];
                  if (!os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_510:

                    goto LABEL_511;
                  }

                  *buf = 67109376;
                  *v385 = v101;
                  *&v385[4] = 1024;
                  *&v385[6] = v104;
                  v108 = "kClientChannelMetadataType_PMTUUpdate: not calling pathMTU event handler for linkID %d, pmtu: %d, because not IPv6";
LABEL_113:
                  v109 = v107;
                  v110 = 14;
                }

                else
                {
                  v107 = +[IDSTransportLog IDSDataChannels];
                  if (!os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_510;
                  }

                  *buf = 67109120;
                  *v385 = v101;
                  v108 = "kClientChannelMetadataType_PMTUUpdate: could not find LinkContext for linkID %d";
                  v109 = v107;
                  v110 = 8;
                }

                _os_log_impl(&dword_1959FF000, v109, OS_LOG_TYPE_DEFAULT, v108, buf, v110);
                goto LABEL_510;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v385 = 2;
                *&v385[4] = 1024;
                *&v385[6] = v352;
                *&v385[10] = 1024;
                *&v385[12] = v354;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PMTUUpdate should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            default:
              if (v354 == 253)
              {
                if (v352 == 1)
                {
                  v335 = *v353;
                  goto LABEL_585;
                }

                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v385 = v352;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_DebugDataTransferTypeKey should be 1 byte, not %u", buf, 8u);
                }

                goto LABEL_523;
              }

              if (v354 != 254)
              {
LABEL_22:
                v18 = [IDSTransportLog IDSDataChannels:v305];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v385 = v354;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "Unknown metadata type: %u", buf, 8u);
                }

                goto LABEL_523;
              }

              v16 = [MEMORY[0x1E695DEF0] dataWithBytes:v353 length:v352];

              v17 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v385 = v352;
                _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_DebugDataTransferKey got data size %u", buf, 8u);
              }

              v336 = v16;
              goto LABEL_585;
          }
        }
      }

      v331 = 0;
      v332 = 0;
      v336 = 0;
      v337 = 0;
      v335 = 0;
      v324 = 0;
      v325 = 0;
      v338 = 0;
      v339 = 0;
      BYTE4(v322) = 0;
      LOWORD(v326) = 0;
      v327 = 0;
      v329 = 0;
      v330 = 0;
      v333 = 0;
      v334 = 0;
      v328 = 0;
      v323 = -1;
LABEL_588:
      IDSByteBufferRelease();
      if (v339 && v338 && self->_internal->_eventHandler)
      {
        [(IDSDatagramChannel *)self sendMediaEncryptionInfoWithMKM:v339 MKS:v338 MKI:v337 participantID:v334 isLocallyGenerated:BYTE4(v322) & 1 shortKILength:v324 encryptionSequenceNumber:v323];
      }

      if ((v332 & 0x100000000) != 0)
      {
        [(IDSDatagramChannel *)self sendMediaMembershipChangedInfo:BYTE4(v324)];
      }

      v301 = v336;
      if (v330)
      {
        a5->var0 = v333;
      }

      if ((v330 & 0x100000000) != 0)
      {
        a5->var1 = v325;
      }

      if (v331)
      {
        a5->var2 = BYTE4(v325);
      }

      if (v328)
      {
        a6->var0 |= 1u;
        a6->var1 = v334;
      }

      if (v329)
      {
        a6->var0 |= 0x10u;
        a6->var2 = v326;
      }

      if ((v329 & 0x100000000) != 0)
      {
        a6->var0 |= 4u;
      }

      if (HIDWORD(v333))
      {
        a6->var0 |= 8u;
        a6->var3 = BYTE4(v333);
      }

      if ((v331 & 0x100000000) != 0)
      {
        a6->var0 |= 0x40u;
      }

      if (v332)
      {
        a6->var11 = 1;
        a6->var0 |= 0x400u;
      }

      if (v335)
      {
        if (v336)
        {
          v302 = self->_internal->_eventHandler;
          if (v302)
          {
            if (v335 == 2)
            {
              v355[0] = @"event-type";
              v355[1] = @"debug-data-type-key";
              v356[0] = &unk_1F0A29C30;
              v356[1] = &unk_1F0A29C48;
              v355[2] = @"debug-data-key";
              v356[2] = v336;
              v303 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v356 forKeys:v355 count:3];
              v302[2](v302, v303);

              v301 = v336;
            }
          }
        }
      }

      v8 = v327;
    }

    else
    {
      v8 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v385 = 2;
        *&v385[4] = 2048;
        *&v385[6] = v12;
        *&v385[14] = 2048;
        *&v385[16] = a4;
        v9 = "processMetadataForDatagram %d + metadataSize(%zd) > datagramSize(%zd) - returning";
        v10 = v8;
        v11 = 28;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v8 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v385 = a4;
      v9 = "processMetadataForDatagram datagramSize(%zd) <= kIDSClientChannelMetadataLengthSize - returning";
      v10 = v8;
      v11 = 12;
LABEL_7:
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  v304 = *MEMORY[0x1E69E9840];
}

- (void)_addConnections:(id)a3 toLinkContext:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = *MEMORY[0x1E69A4D20];
    v8 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69A4D20]];
    v9 = *MEMORY[0x1E69A4D28];
    v10 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69A4D28]];
    v11 = [(IDSDatagramChannel *)self _connectionInfoForDictionary:v10];
    v12 = [(IDSDatagramChannel *)self _connectionInfoForDictionary:v8];
    internal = self->_internal;
    os_unfair_lock_lock(&internal->_linkContextsLock);
    if (v12)
    {
      [v12 setIsQUICPod:1];
      [v12 setType:v7];
      v14 = [v6 connections];
      [v14 setQpod:v12];
    }

    if (v11)
    {
      [v11 setIsQUICPod:0];
      [v11 setType:v9];
      v15 = [v6 connections];
      [v15 setUdp:v11];
    }

    os_unfair_lock_unlock(&internal->_linkContextsLock);
  }
}

- (id)_connectionInfoForDictionary:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(_IDSDataChannelLinkConnection);
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69A4CD0]];
    v6 = v5;
    if (v5 && [v5 length] == 16)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v6, "bytes")}];
      [(_IDSDataChannelLinkConnection *)v4 setChildConnectionID:v7];
    }

    v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69A4CE0]];
    [(_IDSDataChannelLinkConnection *)v4 setProtocolStack:v8];
    v9 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69A4CD8]];
    [(_IDSDataChannelLinkConnection *)v4 setNwConnectionToken:v9];
    v10 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69A4CE8]];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E69A5340]) initWithDictionary:v10];
      [(_IDSDataChannelLinkConnection *)v4 setQpodParameters:v11];
    }

    v12 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69A4CC8]];
    -[_IDSDataChannelLinkConnection setAllowOutgoing:](v4, "setAllowOutgoing:", [v12 BOOLValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_extractparticipantIDToHashedIDMappingFromData:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v4 = MEMORY[0x1E696ACD0];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v19 = 0;
  v8 = [v4 _strictlyUnarchivedObjectOfClasses:v7 fromData:v3 error:&v19];
  v9 = v19;

  if (v9)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
LABEL_7:
    v12 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138412546;
      v21 = v9;
      v22 = 2112;
      v23 = v13;
      v14 = v13;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "_extractDictionaryFromData - Couldn't decode NSData, error:%@, extractedDataType:%@", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_10;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195AFF9CC;
  v17[3] = &unk_1E7442E20;
  v18 = v10;
  v9 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v17];
  v11 = [v9 copy];
  v12 = v18;
LABEL_10:

LABEL_11:
  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)processDatagram:(const char *)a3 datagramSize:(unint64_t)a4 readHandler:(id)a5 readHandlerWithOptions:(id)a6
{
  v76[15] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v45 = -21846;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  *&v76[8] = xmmword_195B54328;
  memset(&v76[10], 170, 40);
  memset(v76, 170, 64);
  if (a4 < 2)
  {
    LODWORD(v13) = 0;
    LODWORD(v12) = 0;
    goto LABEL_10;
  }

  v12 = __rev16(*a3);
  v13 = (v12 + 2);
  if (a4 < v13)
  {
LABEL_10:
    v17 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v18 = v12;
      v49 = self;
      v50 = 2048;
      v13 = v13;
      v51 = a4;
      v52 = 2048;
      v53 = v12;
      v54 = 2048;
      v55 = v13;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "<%@> read sanity check failed: datagramSize %ld metadataSize %ld dataOffset %ld", buf, 0x2Au);
    }

    else
    {
      v18 = v12;
      v13 = v13;
    }

    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"read sanity check failed: datagramSize %ld metadataSize %ld dataOffset %ld", a4, v18, v13];
    v20 = objc_alloc(MEMORY[0x1E695DF20]);
    v21 = [v20 initWithObjectsAndKeys:{v19, *MEMORY[0x1E696A578], 0}];
    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v23 = [v22 initWithDomain:*MEMORY[0x1E69A4A18] code:3 userInfo:v21];
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0, 0, 0, v23);
    }

    else
    {
      (*(v11 + 2))(v11, 0, 0, 0, 0, 0, v23);
    }

    eventHandler = self->_internal->_eventHandler;
    if (eventHandler)
    {
      v46[0] = @"event-type";
      v46[1] = @"connected-link";
      v47[0] = &unk_1F0A29A50;
      v25 = [(IDSDatagramChannel *)self connectedLinks];
      v47[1] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
      eventHandler[2](eventHandler, v26);
    }

    [(IDSDatagramChannel *)self close];

    v27 = 0;
    goto LABEL_19;
  }

  [(IDSDatagramChannel *)self processMetadataForDatagram:a3 size:a4 datagramInfo:&v44 options:v76];
  v14 = &a3[v13];
  v15 = a4 - v13;
  if (a4 == v13)
  {
    if ((v76[0] & 0x40) != 0)
    {
      v16 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v49) = HIWORD(v76[5]);
        _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "readFromNWConnection: _internal->_connection: Only has statsID: %x", buf, 8u);
      }

      if (v10)
      {
        (*(v10 + 2))(v10, v14, 0, v44, v45, 0);
      }

      else
      {
        (*(v11 + 2))(v11, v14, 0, v44, v45, v76, 0);
      }
    }
  }

  else
  {
    if (qword_1EAEDBEE8 != -1)
    {
      sub_195B4089C();
    }

    mach_continuous_time();
    sub_195B4061C(self);
    if (v10)
    {
      (*(v10 + 2))(v10, v14, a4 - v13, v44, v45, 0);
    }

    else
    {
      (*(v11 + 2))(v11, v14, a4 - v13, v44, v45, v76, 0);
    }
  }

  if (!self->_internal->_verboseFunctionalLogging)
  {
    v27 = 1;
    goto LABEL_20;
  }

  v19 = +[IDSLogging IDSDataChannels];
  v30 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v15 < 0xA)
  {
    if (v30)
    {
      *buf = 138413058;
      v49 = self;
      v50 = 2048;
      v51 = v15;
      v52 = 2048;
      v53 = v12;
      v54 = 2048;
      v55 = (v12 + 2);
      v41 = "<%@> read details: datagramSize %ld metadataSize %ld dataOffset %ld";
      v42 = v19;
      v43 = 42;
      goto LABEL_29;
    }
  }

  else if (v30)
  {
    v31 = *v14;
    v32 = v14[1];
    v33 = v14[2];
    v34 = v14[3];
    v35 = v14[4];
    v36 = v14[5];
    v37 = v14[6];
    v38 = v14[7];
    v39 = v14[8];
    v40 = v14[9];
    *buf = 138415618;
    v49 = self;
    v50 = 2048;
    v51 = v15;
    v52 = 2048;
    v53 = v12;
    v54 = 2048;
    v55 = (v12 + 2);
    v56 = 1024;
    v57 = v31;
    v58 = 1024;
    v59 = v32;
    v60 = 1024;
    v61 = v33;
    v62 = 1024;
    v63 = v34;
    v64 = 1024;
    v65 = v35;
    v66 = 1024;
    v67 = v36;
    v68 = 1024;
    v69 = v37;
    v70 = 1024;
    v71 = v38;
    v72 = 1024;
    v73 = v39;
    v74 = 1024;
    v75 = v40;
    v41 = "<%@> read details: datagramSize %ld metadataSize %ld dataOffset %ld [%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x ...]";
    v42 = v19;
    v43 = 102;
LABEL_29:
    _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
  }

  v27 = 1;
LABEL_19:

LABEL_20:
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)readFromNWConnection:(id)a3 maximumDatagrams:(unsigned int)a4 readHandler:(id)a5 readHandlerWithOptions:(id)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (v10 | v11)
  {
    v12 = [v10 copy];
    v13 = [v11 copy];
    connection = self->_internal->_connection;
    v22 = v12;
    v23 = v10;
    v24 = v11;
    v21 = v9;
    v15 = v13;
    v16 = v12;
    nw_connection_read_multiple();
  }

  else
  {
    os_unfair_lock_lock(&self->_internal->_readLock);
    internal = self->_internal;
    eventHandler = internal->_eventHandler;
    if (eventHandler)
    {
      v25 = @"event-type";
      v26[0] = &unk_1F0A29C60;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      eventHandler[2](eventHandler, v19);

      internal = self->_internal;
    }

    os_unfair_lock_unlock(&internal->_readLock);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)readFromOSChannel:(channel *)a3 ring:(channel_ring_desc *)a4 maximumDatagrams:(unsigned int)a5 readHandler:(id)a6 readHandlerWithOptions:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = a6;
  v28 = a7;
  internal = self->_internal;
  os_unfair_lock_lock(&internal->_readLock);
  if (self->_internal->_isInvalidated)
  {
    v13 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "invalidating - not reading more";
LABEL_25:
      v20 = v13;
      v21 = 2;
LABEL_26:
      _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, v14, buf, v21);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (!a4)
  {
    v13 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "os_channel not yet ready to read";
      goto LABEL_25;
    }

LABEL_27:

    goto LABEL_28;
  }

  v15 = os_channel_available_slot_count();
  if (!v15)
  {
    [(IDSDatagramChannel *)self osChannelInfoLog];
    v13 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "os_channel_available_slot_count gave no slots to read";
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (v15 >= a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = v15;
  }

  if (!a5)
  {
LABEL_31:
    v23 = os_channel_advance_slot();
    if (v23)
    {
      [(IDSDatagramChannel *)self osChannelInfoLog];
      v24 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v23;
        _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "os_channel_advance_slot failed for read %d", buf, 8u);
      }
    }

    v25 = os_channel_sync();
    if (!v25)
    {
      goto LABEL_28;
    }

    [(IDSDatagramChannel *)self osChannelInfoLog];
    v13 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v25;
      v14 = "os_channel_sync for RX failed %d";
      v20 = v13;
      v21 = 8;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v17 = 1;
  v27 = v16;
  v18 = 1;
  while (1)
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v32 = v19;
    v33 = v19;
    *buf = v19;
    v31 = v19;
    os_channel_get_next_slot();
    if (!self->_internal->_hasMetadata)
    {
      if (qword_1EAEDBEE8 != -1)
      {
        sub_195B4089C();
      }

      mach_continuous_time();
      sub_195B4061C(self);
      if (v29)
      {
        v8 &= 0xFFFFFFFFFFFF0000;
        v29[2]();
      }

      else
      {
        v7 &= 0xFFFFFFFFFFFF0000;
        (*(v28 + 2))(v28, v31, *&buf[2], 0, v7, 0, 0);
      }

      goto LABEL_19;
    }

    if (![(IDSDatagramChannel *)self processDatagram:v31 datagramSize:*&buf[2] readHandler:v29 readHandlerWithOptions:v28])
    {
      break;
    }

LABEL_19:
    v18 = v17++ < v27;
    if (!--v16)
    {
      goto LABEL_31;
    }
  }

  if (!v18)
  {
    goto LABEL_31;
  }

LABEL_28:
  os_unfair_lock_unlock(&internal->_readLock);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)readFromSocketDescriptorWithReadHandler:(id)a3 readHandlerWithOptions:(id)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  internal = self->_internal;
  os_unfair_lock_lock(&internal->_readLock);
  v9 = self->_internal;
  if (v9->_socketDescriptor == -1)
  {
    eventHandler = v9->_eventHandler;
    if (eventHandler)
    {
      v36 = @"event-type";
      v37[0] = &unk_1F0A29C60;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      eventHandler[2](eventHandler, v15);
    }
  }

  else
  {
    [(IDSDatagramChannel *)self sendEventConnectedWithDummyLinkInfo];
    memset(__b, 170, sizeof(__b));
    v10 = read(self->_internal->_socketDescriptor, __b, 0x7D0uLL);
    v11 = v10;
    if (v10)
    {
      if (v10 == -1)
      {
        v12 = *__error();
        if (v12 <= 0x24 && ((1 << v12) & 0x1800000010) != 0)
        {
          v13 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v32 = self;
            v33 = 1024;
            LODWORD(v34[0]) = v12;
            _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "<%@> read nonfatal failure errno %d", buf, 0x12u);
          }
        }

        else
        {
          v21 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = MEMORY[0x19A8BBEF0](self->_internal->_eventHandler);
            *buf = 138412802;
            v32 = self;
            v33 = 1024;
            LODWORD(v34[0]) = v12;
            WORD2(v34[0]) = 2048;
            *(v34 + 6) = v22;
            _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "<%@> read failed errno %d calling event handler %p", buf, 0x1Cu);
          }

          v23 = self->_internal->_eventHandler;
          if (v23)
          {
            v29[0] = @"event-type";
            v29[1] = @"connected-link";
            v30[0] = &unk_1F0A29A50;
            v24 = [(IDSDatagramChannel *)self connectedLinks];
            v30[1] = v24;
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
            v23[2](v23, v25);
          }

          [(IDSDatagramChannel *)self close];
        }
      }

      else
      {
        if (qword_1EAEDBEE8 != -1)
        {
          sub_195B4089C();
        }

        mach_continuous_time();
        sub_195B4061C(self);
        if (v6)
        {
          (*(v6 + 2))(v6, __b, v11, 0, 0, 0);
        }

        else
        {
          (*(v7 + 2))(v7, __b, v11, 0, 0, 0, 0);
        }
      }
    }

    else
    {
      v16 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = MEMORY[0x19A8BBEF0](self->_internal->_eventHandler);
        *buf = 138412546;
        v32 = self;
        v33 = 2048;
        v34[0] = v17;
        _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "<%@> read returned 0 bytes calling event handler %p", buf, 0x16u);
      }

      v18 = self->_internal->_eventHandler;
      if (v18)
      {
        v19 = [(IDSDatagramChannel *)self connectedLinks:@"event-type"];
        v28[1] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:2];
        v18[2](v18, v20);
      }

      [(IDSDatagramChannel *)self close];
    }
  }

  os_unfair_lock_unlock(&internal->_readLock);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)readDatagramWithCompletionHandler:(id)a3
{
  v4 = a3;
  internal = self->_internal;
  v7 = v4;
  if (internal->_pathEvaluator)
  {
    [(IDSDatagramChannel *)self readFromOSChannel:internal->_osChannel ring:internal->_osChannelRXRing maximumDatagrams:1 readHandler:v4 readHandlerWithOptions:0];
  }

  else
  {
    connection = internal->_connection;
    if (connection)
    {
      [(IDSDatagramChannel *)self readFromNWConnection:connection maximumDatagrams:1 readHandler:v4 readHandlerWithOptions:0];
    }

    else
    {
      [(IDSDatagramChannel *)self readFromSocketDescriptorWithReadHandler:v4 readHandlerWithOptions:0];
    }
  }
}

- (void)readDatagramsWithCompletionHandler:(id)a3
{
  v4 = a3;
  internal = self->_internal;
  v7 = v4;
  if (internal->_pathEvaluator)
  {
    [(IDSDatagramChannel *)self readFromOSChannel:internal->_osChannel ring:internal->_osChannelRXRing maximumDatagrams:256 readHandler:0 readHandlerWithOptions:v4];
  }

  else
  {
    connection = internal->_connection;
    if (connection)
    {
      [(IDSDatagramChannel *)self readFromNWConnection:connection maximumDatagrams:256 readHandler:0 readHandlerWithOptions:v4];
    }

    else
    {
      [(IDSDatagramChannel *)self readFromSocketDescriptorWithReadHandler:0 readHandlerWithOptions:v4];
    }
  }
}

- (void)close
{
  v38 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "-close called for %@", buf, 0xCu);
  }

  self->_internal->_connected = 0;
  internal = self->_internal;
  connection = internal->_connection;
  if (connection)
  {
    nw_connection_cancel(connection);
    v6 = self->_internal;
    v7 = v6->_connection;
    v6->_connection = 0;

    [(IDSDatagramChannel *)self invalidateDirectConnections];
    internal = self->_internal;
  }

  socketDescriptor = internal->_socketDescriptor;
  if (socketDescriptor != -1)
  {
    close(socketDescriptor);
    self->_internal->_socketDescriptor = -1;
  }

  [(IDSDatagramChannel *)self _logFinalStats];
  v9 = [(IDSDatagramChannel *)self qualityMeasurer];
  [v9 stopWithCompletionHandler:&unk_1F09E7300];

  [(IDSDataChannelLinkEngineHandle *)self->_internal->_linkEngine setAllowOngoingTasks:0];
  v10 = self->_internal;
  packetLog = v10->_packetLog;
  if (packetLog)
  {
    [(IDSObjCPacketLog *)packetLog finish];
    v12 = self->_internal;
    v13 = v12->_packetLog;
    v12->_packetLog = 0;

    v10 = self->_internal;
  }

  if (v10->_pathEvaluator)
  {
    nw_path_evaluator_cancel();
    v14 = self->_internal;
    osChannelFD = v14->_osChannelFD;
    osChannel = v14->_osChannel;
    v14->_osChannelFD = -1;
    self->_internal->_osChannel = 0;
    if (self->_internal->_startCalled)
    {
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = sub_195B0146C;
      v32 = &unk_1E7442E68;
      v34 = osChannelFD;
      v33 = osChannel;
      IDSTransportThreadAddBlock();
    }

    else if (osChannel)
    {
      os_channel_destroy();
    }

    v17 = self->_internal;
    pathEvaluator = v17->_pathEvaluator;
    v17->_pathEvaluator = 0;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = self->_internal->_sendingMetadata;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v26;
      do
      {
        v23 = 0;
        do
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v25 + 1) + 8 * v23) pointerValue];
          _IDSLinkPacketBufferRelease();
          ++v23;
        }

        while (v21 != v23);
        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v21);
    }

    [(NSMutableArray *)self->_internal->_sendingMetadata removeAllObjects];
    v10 = self->_internal;
  }

  os_unfair_lock_unlock(&v10->_writeLock);
  v24 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_internal->_readLock);
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "-invalidate called for %@", &v17, 0xCu);
  }

  [(IDSDatagramChannel *)self close];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  internal = self->_internal;
  preConnectionData = internal->_preConnectionData;
  if (preConnectionData)
  {
    internal->_preConnectionData = 0;

    internal = self->_internal;
  }

  eventHandler = internal->_eventHandler;
  if (eventHandler)
  {
    internal->_eventHandler = 0;

    internal = self->_internal;
  }

  readHandler = internal->_readHandler;
  if (readHandler)
  {
    internal->_readHandler = 0;

    internal = self->_internal;
  }

  readHandlerWithOptions = internal->_readHandlerWithOptions;
  if (readHandlerWithOptions)
  {
    internal->_readHandlerWithOptions = 0;

    internal = self->_internal;
  }

  writeHandler = internal->_writeHandler;
  if (writeHandler)
  {
    internal->_writeHandler = 0;

    internal = self->_internal;
  }

  os_unfair_lock_lock(&internal->_linkContextsLock);
  v10 = self->_internal;
  linkContexts = v10->_linkContexts;
  if (linkContexts)
  {
    v10->_linkContexts = 0;

    v10 = self->_internal;
  }

  os_unfair_lock_unlock(&v10->_linkContextsLock);
  IDSLinkPacketBufferCleanup();
  self->_internal->_isInvalidated = 1;
  v12 = self->_internal;
  linkEngine = v12->_linkEngine;
  v12->_linkEngine = 0;

  v14 = self->_internal;
  linkEngineQualityMeasurementSyncToken = v14->_linkEngineQualityMeasurementSyncToken;
  v14->_linkEngineQualityMeasurementSyncToken = 0;

  os_unfair_lock_unlock(&self->_internal->_writeLock);
  os_unfair_lock_unlock(&self->_internal->_readLock);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)startInternal
{
  v21 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (internal->_pathEvaluator)
  {
    queue = internal->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195B018A8;
    block[3] = &unk_1E743E878;
    block[4] = self;
    dispatch_async(queue, block);
LABEL_3:
    v5 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!internal->_connection)
  {
    if (internal->_socketDescriptor == -1)
    {
      v7 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = self;
        _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "<%@> cannot start datagram channel with no socket and no connection", buf, 0xCu);
      }
    }

    else
    {
      v7 = MEMORY[0x19A8BB9F0]();
      nw_parameters_set_data_mode();
      context = self->_internal->_context;
      nw_parameters_set_context();
      socketDescriptor = self->_internal->_socketDescriptor;
      v10 = nw_connection_create_with_connected_socket_and_parameters();
      v11 = self->_internal;
      connection = v11->_connection;
      v11->_connection = v10;

      v13 = self->_internal;
      if (v13->_connection)
      {
        v13->_operationMode = 1;

        goto LABEL_5;
      }

      v14 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_internal->_socketDescriptor;
        *buf = 138412546;
        v18 = self;
        v19 = 1024;
        v20 = v15;
        _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "<%@> nw_connection_create_with_connected_socket failed. socketDescriptor %d might be invalid.", buf, 0x12u);
      }
    }

    goto LABEL_3;
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];

  [(IDSDatagramChannel *)self start];
}

- (void)start
{
  v13 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (*&internal->_readHandler == 0)
  {
    sub_195B4091C();
  }

  if (!internal->_eventHandler)
  {
    sub_195B408F0();
  }

  v4 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = self;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "-start called for %@", buf, 0xCu);
  }

  self->_internal->_startCalled = 1;
  v5 = self->_internal;
  if (v5->_operationMode != 1)
  {
    sub_195B408C4();
  }

  nw_connection_set_queue(v5->_connection, v5->_queue);
  connection = self->_internal->_connection;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_195B01D84;
  handler[3] = &unk_1E7442E90;
  handler[4] = self;
  nw_connection_set_state_changed_handler(connection, handler);
  nw_connection_start(self->_internal->_connection);
  [(IDSDatagramChannel *)self _schedulePeriodicTasks];
  linkEngine = self->_internal->_linkEngine;
  if (linkEngine)
  {
    [(IDSDataChannelLinkEngineHandle *)linkEngine setAllowOngoingTasks:1];
  }

  v8 = [(IDSDatagramChannel *)self qualityMeasurer];
  [v8 startCapturingBasicStats:1 sendBursts:0 completionHandler:&unk_1F09E7320];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_writeToNWConnectionArrayOfDatagrams:(const void *)a3 datagramSizes:(unsigned int *)a4 datagramInfo:(id *)a5 datagramOptions:(id *)a6 datagramCount:(int)a7 completionHandler:(id)a8
{
  v44 = *MEMORY[0x1E69E9840];
  v14 = a8;
  internal = self->_internal;
  if (internal->_operationMode != 1)
  {
    sub_195B40974();
  }

  v16 = v14;
  v17 = (a7 - 1);
  if (a7 == 1)
  {
    v18 = [(IDSDatagramChannel *)self connectionForLinkID:a5->var0 datagramOptions:*a6];
    [(IDSDatagramChannel *)self _writeToNWConnection:v18 datagram:*a3 datagramSize:*a4 currentDatagramCount:0 totalDatagramCount:1 datagramInfo:*&a5->var0 datagramOptions:*&a5->var4 completionHandler:*a6, v16];
  }

  else if (a7 < 2)
  {
    v24 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = self;
      v42 = 1024;
      v43 = a7;
      _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "<%@> _writeToNWConnectionArrayOfDatagrams given %d datagrams, which is < 1", buf, 0x12u);
    }
  }

  else if (internal->_preferredDataPathType == 1)
  {
    v19 = a5 + 1;
    v20 = a7 - 1;
    while (1)
    {
      var0 = v19->var0;
      ++v19;
      if (var0 != a5->var0)
      {
        break;
      }

      if (!--v20)
      {
        goto LABEL_9;
      }
    }

    v25 = 0;
    v31 = a7;
    v26 = a3;
    v27 = a4;
    do
    {
      v28 = [(IDSDatagramChannel *)self connectionForLinkID:a5->var0 datagramOptions:a6[v25]];
      if (v17 == v25)
      {
        v29 = v16;
      }

      else
      {
        v29 = 0;
      }

      a4 = (a4 & 0xFFFFFFFFFFFF0000 | *&a5->var4);
      [(IDSDatagramChannel *)self _writeToNWConnection:v28 datagram:v26[v25] datagramSize:v27[v25] currentDatagramCount:v25 totalDatagramCount:v31 datagramInfo:*&a5->var0 datagramOptions:a4 completionHandler:a6[v25], v29];

      ++v25;
      ++a5;
    }

    while (v17 + 1 != v25);
  }

  else
  {
LABEL_9:
    v22 = [(IDSDatagramChannel *)self connectionForLinkID:a5->var0 datagramOptions:*a6];
    batch_block[0] = MEMORY[0x1E69E9820];
    batch_block[1] = 3221225472;
    batch_block[2] = sub_195B0333C;
    batch_block[3] = &unk_1E7442EE0;
    v39 = a7;
    batch_block[4] = self;
    v33 = v22;
    v35 = a3;
    v36 = a4;
    v37 = a5;
    v38 = a6;
    v34 = v16;
    v23 = v22;
    nw_connection_batch(v23, batch_block);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_writeToSocket:(int)a3 datagrams:(const void *)a4 datagramSizes:(unsigned int *)a5 datagramInfo:(id *)a6 datagramOptions:(id *)a7 datagramCount:(int)a8 completionHandler:(id)a9
{
  v46 = *MEMORY[0x1E69E9840];
  v37 = a9;
  v36 = [self->_internal->_writeHandler copy];
  if (a8 < 1)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_38;
  }

  v13 = 0;
  v14 = 0;
  v15 = *MEMORY[0x1E696A578];
  v38 = *MEMORY[0x1E696A578];
  v39 = *MEMORY[0x1E69A4A18];
  v16 = a8;
  while (1)
  {
    v18 = *a5++;
    v17 = v18;
    v19 = write(self->_internal->_socketDescriptor, *a4, v18);
    v14 += v19;
    if (v19 == v18)
    {
      if (qword_1EAEDBEE8 != -1)
      {
        sub_195B4089C();
      }

      mach_continuous_time();
      sub_195B404C4(self);
      goto LABEL_14;
    }

    v20 = v19;
    if (v19 >= 1)
    {
      break;
    }

    if (!v19)
    {
      v33 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = self;
        _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "<%@> write returned 0 - connection terminated", buf, 0xCu);
      }

      socketDescriptor = self->_internal->_socketDescriptor;
      if (socketDescriptor != -1)
      {
        close(socketDescriptor);
        self->_internal->_socketDescriptor = -1;
      }

      v31 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"Connection terminated", v38, 0}];
      v29 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v39 code:6 userInfo:v31];
      goto LABEL_36;
    }

    v21 = *__error();
    if (v21 > 0x37 || ((1 << v21) & 0x80000800000010) == 0)
    {
      v24 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v41 = self;
        v42 = 1024;
        v43 = v21;
        _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "<%@> write failed errno %d", buf, 0x12u);
      }

      v25 = v13;

      v26 = self->_internal->_socketDescriptor;
      if (v26 != -1)
      {
        close(v26);
        self->_internal->_socketDescriptor = -1;
      }

      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to send (errno %d)", v21];
      v28 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v27, v38, 0}];
      v29 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v39 code:6 userInfo:v28];

      if (v21 == 35)
      {
        v13 = v29;
      }

      else
      {
        v13 = v29;
        if (v21 != 55)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v23 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v41 = self;
        v42 = 1024;
        v43 = v21;
        _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "<%@> write nonfatal failure errno %d", buf, 0x12u);
      }

      if (v21 > 0x37 || ((1 << v21) & 0x80000800000010) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_14:
    ++a4;
    if (!--v16)
    {
      goto LABEL_38;
    }
  }

  v30 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = self;
    v42 = 1024;
    v43 = v20;
    v44 = 1024;
    v45 = v17;
    _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "<%@> write failed to send all bytes %d < %d", buf, 0x18u);
  }

  v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to send all bytes (%d < %d)", v20, v17];
  v32 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v31, v38, 0}];
  v29 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v39 code:6 userInfo:v32];

  v13 = v32;
LABEL_36:

LABEL_37:
  v13 = v29;
LABEL_38:
  sub_195A7FC78(v37, v36, v13, v14);

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4 datagramInfo:(id)a5 options:(id *)a6 completionHandler:(id)a7
{
  v10 = a5;
  v9 = a3;
  v8 = a4;
  v7 = a6;
  [(IDSDatagramChannel *)self writeArrayOfDatagrams:&v9 datagramSizes:&v8 datagramInfo:&v10 datagramOptions:&v7 datagramCount:1 completionHandler:a7];
}

- (void)setEventHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "-setEventHandler called for %@", &v10, 0xCu);
  }

  v6 = [v4 copy];
  internal = self->_internal;
  eventHandler = internal->_eventHandler;
  internal->_eventHandler = v6;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setReadHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "-setReadHandler called for %@", &v10, 0xCu);
  }

  v6 = [v4 copy];
  internal = self->_internal;
  readHandler = internal->_readHandler;
  internal->_readHandler = v6;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setReadHandlerWithOptions:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "-setReadHandlerWithOptions called for %@", &v10, 0xCu);
  }

  v6 = [v4 copy];
  internal = self->_internal;
  readHandlerWithOptions = internal->_readHandlerWithOptions;
  internal->_readHandlerWithOptions = v6;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setWriteCompletionHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "-setWriteCompletionHandler called for %@", &v10, 0xCu);
  }

  v6 = [v4 copy];
  internal = self->_internal;
  writeHandler = internal->_writeHandler;
  internal->_writeHandler = v6;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)readyToRead
{
  internal = self->_internal;
  if (internal->_operationMode)
  {
    sub_195B409A0();
  }

  readHandler = internal->_readHandler;
  if (!internal->_readHandlerWithOptions)
  {
    if (!readHandler)
    {
      sub_195B409F8();
    }

    if (internal->_eventHandler)
    {
      goto LABEL_10;
    }

LABEL_14:
    sub_195B409CC();
  }

  if (!internal->_eventHandler)
  {
    goto LABEL_14;
  }

  if (!readHandler)
  {

    MEMORY[0x1EEE66B58](self, sel_readDatagramsWithCompletionHandler_);
    return;
  }

LABEL_10:

  MEMORY[0x1EEE66B58](self, sel_readDatagramWithCompletionHandler_);
}

- (void)scheduleRead
{
  v10 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (internal->_readHandler)
  {
    v4 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](self, sel_readDatagramWithCompletionHandler_);
  }

  else if (internal->_readHandlerWithOptions)
  {
    v5 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](self, sel_readDatagramsWithCompletionHandler_);
  }

  else
  {
    v6 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "<%@> does not have readHandler!", &v8, 0xCu);
    }

    v7 = *MEMORY[0x1E69E9840];
  }
}

- (void)sendMetadata
{
  v48 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (internal->_hasMetadata)
  {
    v4 = [(NSMutableArray *)internal->_sendingMetadata count];
    if (v4)
    {
      v5 = v4;
      v6 = self->_internal;
      if (v6->_pathEvaluator)
      {
        osChannelTXRing = v6->_osChannelTXRing;
        v8 = os_channel_available_slot_count();
        if (v8)
        {
          if (v5 <= v8)
          {
            v10 = v5;
          }

          else
          {
            v10 = v8;
            v11 = +[IDSTransportLog IDSDataChannels];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218496;
              *&buf[4] = v5;
              *&buf[12] = 2048;
              *&buf[14] = v10;
              *&buf[22] = 2048;
              *&buf[24] = v10;
              _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "have metadata %lu to send to daemon but only %lu slots - sending just %lu", buf, 0x20u);
            }
          }

          v22 = 0;
          *&v9 = 138412546;
          v39 = v9;
          while (1)
          {
            v23 = [(NSMutableArray *)self->_internal->_sendingMetadata objectAtIndex:v22, v39];
            v24 = [v23 pointerValue];

            *&v25 = 0xAAAAAAAAAAAAAAAALL;
            *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v46 = v25;
            v47 = v25;
            *buf = v25;
            *&buf[16] = v25;
            os_channel_get_next_slot();
            v26 = *(v24 + 16);
            if (v26 <= *&buf[2])
            {
              *buf = 0;
              *&buf[2] = v26;
              memcpy(*&buf[16], *v24, v26);
              os_channel_set_slot_properties();
              v29 = os_channel_advance_slot();
              if (v29)
              {
                v30 = v29;
                [(IDSDatagramChannel *)self osChannelInfoLog];
                v31 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *v41 = 67109120;
                  LODWORD(v42) = v30;
                  _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "advance_slot failed for metadata write %d", v41, 8u);
                }
              }

              if (!self->_internal->_verboseFunctionalLogging)
              {
                goto LABEL_35;
              }

              v27 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v32 = *(v24 + 16);
                *v41 = v39;
                v42 = self;
                v43 = 2048;
                v44 = v32;
                _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "<%@> write details: metadataSize %ld", v41, 0x16u);
              }
            }

            else
            {
              v27 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = *(v24 + 16);
                *v41 = 134218240;
                v42 = v28;
                v43 = 2048;
                v44 = *&buf[2];
                _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "have metadata %lu to send to daemon but not enough bytes %lu in slot", v41, 0x16u);
              }
            }

LABEL_35:
            _IDSLinkPacketBufferRelease();
            if (v10 == ++v22)
            {
              osChannel = self->_internal->_osChannel;
              v34 = os_channel_sync();
              if (v34)
              {
                v35 = v34;
                [(IDSDatagramChannel *)self osChannelInfoLog];
                v36 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *&buf[4] = v35;
                  _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "os_channel_sync for TX failed %d", buf, 8u);
                }
              }

              goto LABEL_41;
            }
          }
        }

        [(IDSDatagramChannel *)self osChannelInfoLog];
        v21 = +[IDSTransportLog IDSDataChannels];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v5;
          _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "have metadata %lu to send to daemon but no slots", buf, 0xCu);
        }
      }

      else
      {
        if (!v6->_connection)
        {
          LODWORD(v10) = 0;
          goto LABEL_41;
        }

        if (v6->_connected)
        {
          v12 = 0;
          v13 = *MEMORY[0x1E6977E88];
          do
          {
            v14 = [(NSMutableArray *)self->_internal->_sendingMetadata objectAtIndex:v12];
            v15 = [v14 pointerValue];

            v16 = sub_195A7FB04(v15, 0);
            v17 = self->_internal;
            if (v17->_verboseFunctionalLogging)
            {
              v18 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = v15[2];
                *buf = 138412546;
                *&buf[4] = self;
                *&buf[12] = 2048;
                *&buf[14] = v19;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "<%@> write details: metadataSize %ld", buf, 0x16u);
              }

              v17 = self->_internal;
            }

            connection = v17->_connection;
            completion[0] = MEMORY[0x1E69E9820];
            completion[1] = 3221225472;
            completion[2] = sub_195B04A6C;
            completion[3] = &unk_1E7442F08;
            completion[4] = self;
            nw_connection_send(connection, v16, v13, 1, completion);

            ++v12;
          }

          while (v5 != v12);
          LODWORD(v10) = v5;
LABEL_41:
          [(NSMutableArray *)self->_internal->_sendingMetadata removeObjectsInRange:0, v10];
        }

        else
        {
          v38 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = self;
            _os_log_impl(&dword_1959FF000, v38, OS_LOG_TYPE_DEFAULT, "<%@> sendMetadata: not connected yet - tearing down or waiting for -start", buf, 0xCu);
          }
        }
      }
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_buildPacketBufferMetaData:(id *)a3
{
  var2 = a3->var2;
  IDSLinkPacketBufferAddBufferStart();
  *a3->var0 = BYTE1(var2);
  a3->var0[1] = var2;
}

- (void)setChannelPreferences:(id)a3
{
  v150 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v140 = 0;
  v139 = -1;
  v138 = 0;
  v5 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "<%@> setChannelPreferences dictionary: %@", buf, 0x16u);
  }

  v6 = [v4 objectForKey:@"preference-pre-connection-data"];

  if (v6)
  {
    internal = self->_internal;
    if (!internal->_receivedPreConnectionData)
    {
      internal->_waitForPreConnectionDataForConnected = 1;
    }

    v8 = [v4 objectForKey:@"preference-pre-connection-data"];
    v9 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_internal->_waitForPreConnectionDataForConnected)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      *&buf[24] = v10;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferencePreConnectionDataKey - %@, _waitForPreConnectionDataForConnected? %@", buf, 0x20u);
    }

    v11 = self->_internal;
    if (!v11->_connected)
    {
      preConnectionData = v11->_preConnectionData;
      if (preConnectionData)
      {
        v11->_preConnectionData = 0;
      }

      v13 = [v8 copy];
      v14 = self->_internal;
      v15 = v14->_preConnectionData;
      v14->_preConnectionData = v13;

      v16 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "<%@> client channel connection is not ready. Wait to send preConnectionData", buf, 0xCu);
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      goto LABEL_131;
    }
  }

  else
  {
    v8 = 0;
  }

  v20 = [v4 objectForKey:@"preference-needs-encryption-info"];
  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v22 = [v4 objectForKey:@"preference-needs-force-update-encryption-info"];
    v23 = v22 | v6;

    v21 = v23 != 0;
  }

  v24 = [v4 objectForKey:@"preference-default-link-selection"];

  if (v24)
  {
    v25 = [v4 objectForKey:@"preference-default-link-selection"];
    v140 = [v25 intValue];

    v26 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = v140;
      _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceDefaultLinkSelectionKey - linkID:%d", buf, 0x12u);
    }

    v21 = 1;
  }

  v27 = [v4 objectForKey:@"preference-baseband-registration"];

  v28 = MEMORY[0x1E69A4A40];
  if (v27)
  {
    v29 = [v4 objectForKey:@"preference-baseband-registration"];
    v30 = [v29 objectForKey:*v28];
    v31 = [v30 intValue];

    v32 = [v29 objectForKey:@"baseband-registration-key"];
    v33 = [v32 unsignedIntValue];

    v34 = [v29 objectForKey:@"baseband-notification-operation-key"];
    v35 = [v34 unsignedIntValue];

    v36 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = v31;
      *&buf[18] = 1024;
      *&buf[20] = v33;
      *&buf[24] = 1024;
      *&buf[26] = v35;
      _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceBasebandRegistrationKey - linkID:%d, reg_key:%u registerOperation:%u", buf, 0x1Eu);
    }

    LODWORD(v137) = v31;

    v21 = 1;
  }

  else
  {
    v33 = 0;
    LODWORD(v137) = 0;
    v35 = 0;
  }

  LODWORD(v136) = v35;
  v37 = [v4 objectForKey:@"preference-baseband-queue-flush"];

  if (v37)
  {
    v38 = [v4 objectForKey:@"preference-baseband-queue-flush"];
    v39 = [v38 objectForKey:*v28];
    LODWORD(v135) = [v39 intValue];

    v19 = [v38 objectForKey:@"preference-baseband-queue-flush-payload"];
    v40 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceBasebandQueueFlushKey - %@", buf, 0x16u);
    }

    v21 = 1;
  }

  else
  {
    v19 = 0;
    LODWORD(v135) = 0;
  }

  v41 = [v4 objectForKey:@"preference-discard-link-ids"];

  if (v41)
  {
    v131 = [v4 objectForKey:@"preference-discard-link-ids"];
    v42 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v131;
      _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceDiscardLinkIDsKey - %@", buf, 0x16u);
    }

    v21 = 1;
  }

  else
  {
    v131 = 0;
  }

  v43 = [v4 objectForKey:@"preference-update-qos"];

  if (v43)
  {
    v44 = [v4 objectForKey:@"preference-update-qos"];
    v45 = [v44 objectForKey:*v28];
    v130 = [v45 intValue];

    v46 = [v44 objectForKey:@"preference-update-qos-is-good"];
    v47 = [v46 unsignedIntValue];
    v132 = v47;

    v48 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = @"YES";
      *buf = 138412802;
      *&buf[4] = self;
      if (!v47)
      {
        v49 = @"NO";
      }

      *&buf[12] = 1024;
      *&buf[14] = v130;
      *&buf[18] = 2112;
      *&buf[20] = v49;
      _os_log_impl(&dword_1959FF000, v48, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceUpdateQualityOfServiceKey - LinkID: %d, %@", buf, 0x1Cu);
    }

    v21 = 1;
  }

  else
  {
    v132 = 0;
    v130 = 0;
  }

  v50 = [v4 objectForKey:@"preference-query-information"];

  if (v50)
  {
    v51 = [v4 objectForKey:@"preference-query-information"];
    v52 = [v51 unsignedIntValue];
    v139 = v52;

    v53 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = v52;
      _os_log_impl(&dword_1959FF000, v53, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceQueryInformationKey - queryType: %d", buf, 0x12u);
    }

    v126 = v52 == 0;
    v21 = 1;
  }

  else
  {
    v126 = 0;
  }

  v54 = [v4 objectForKey:@"preference-max-bitrate"];

  if (v54)
  {
    v55 = [v4 objectForKey:@"preference-max-bitrate"];
    v56 = [v55 objectForKey:*v28];
    v57 = [v56 intValue];

    v58 = [v55 objectForKey:@"max-bitrate-key"];
    v129 = [v58 unsignedIntValue];

    v59 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = v129;
      *&buf[18] = 1024;
      *&buf[20] = v57;
      _os_log_impl(&dword_1959FF000, v59, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceSetMaxBitrateKey - maxBitrate: %u for LinkID: %d", buf, 0x18u);
    }

    v21 = 1;
  }

  else
  {
    v57 = 0;
    v129 = 100000;
  }

  v127 = v57;
  v60 = [v4 objectForKey:@"debug-data-type-key"];

  v61 = v19;
  if (v60)
  {
    v62 = [v4 objectForKey:@"debug-data-type-key"];
    v138 = [v62 intValue];

    v128 = [v4 objectForKey:@"debug-data-key"];
    v21 = 1;
  }

  else
  {
    v128 = 0;
  }

  v63 = [v4 objectForKey:@"preference-remote-device-version-key"];

  if (v63)
  {
    v64 = [v4 objectForKey:@"preference-remote-device-version-key"];
    v65 = [v64 intValue];

    v66 = +[IDSTransportLog IDSDataChannels];
    v67 = 0x1E743D000;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = v65;
      _os_log_impl(&dword_1959FF000, v66, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceRemoteDeviceVersionKey - remoteDeviceVersion: %u", buf, 0x12u);
    }
  }

  else
  {
    if (!v21)
    {
      v18 = v131;
      v17 = v128;
      goto LABEL_131;
    }

    v65 = 0;
    v67 = 0x1E743D000uLL;
  }

  v68 = _IDSLinkPacketBufferCreate();
  v149 = 0xAAAAAAAAAAAAAAAALL;
  *&v69 = 0xAAAAAAAAAAAAAAAALL;
  *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v69;
  *&buf[16] = v69;
  v70 = *v68;
  v71 = v68[1];
  v125 = v68;
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v72 = [MEMORY[0x1E69A60F0] sharedInstance];
  v73 = [v72 isInternalInstall];

  if (v73 && (byte_1EAEDDA00 & 1) == 0)
  {
    byte_1EAEDDA00 = 1;
    v74 = getpid();
    LODWORD(v146) = bswap32(v74);
    v75 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *v141 = 138412546;
      v142 = self;
      v143 = 1024;
      *v144 = v74;
      _os_log_impl(&dword_1959FF000, v75, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_ProcessIDKey - %d", v141, 0x12u);
    }

    IDSByteBufferWriteField();
  }

  if (v140)
  {
    IDSByteBufferWriteField();
  }

  if (v65)
  {
    v76 = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *v141 = 138412546;
      v142 = self;
      v143 = 1024;
      *v144 = v65;
      _os_log_impl(&dword_1959FF000, v76, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_RemoteDeviceVersionKey remoteDeviceVersion: %u", v141, 0x12u);
    }

    *v141 = bswap32(v65);
    IDSByteBufferWriteField();
  }

  if (v33)
  {
    v141[0] = v137;
    v141[1] = v136;
    v141[2] = HIBYTE(v33);
    v141[3] = BYTE2(v33);
    LOBYTE(v142) = BYTE1(v33);
    BYTE1(v142) = v33;
    IDSByteBufferWriteField();
  }

  v19 = v61;
  v18 = v131;
  v77 = v132;
  if (v61)
  {
    LOBYTE(v146) = 0;
    v78 = [v61 count];
    v79 = -1;
    if (v78 < 0xFF)
    {
      v79 = v78;
    }

    LOBYTE(v146) = v79;
    v80 = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *v141 = 138412546;
      v142 = self;
      v143 = 1024;
      *v144 = v146;
      _os_log_impl(&dword_1959FF000, v80, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_BasebandQueueFlushPayloadSizeKey %u", v141, 0x12u);
    }

    v81 = IDSByteBufferWriteField();
    MEMORY[0x1EEE9AC00](v81);
    v83 = v121 - v82;
    memset(v121 - v82, 170, v84);
    *v83 = v135;
    if (v146)
    {
      v121[2] = v121;
      v122 = v8;
      v123 = self;
      v124 = v4;
      v85 = 0;
      v121[1] = v83;
      v86 = v83 + 1;
      v137 = *MEMORY[0x1E69A4AE8];
      v136 = *MEMORY[0x1E69A4AF0];
      v135 = *MEMORY[0x1E69A4AE0];
      v134 = *MEMORY[0x1E69A4AF8];
      v133 = *MEMORY[0x1E69A4AD8];
      do
      {
        v87 = [v19 objectAtIndexedSubscript:v85];
        v88 = [v87 objectForKey:v137];
        v89 = [v88 intValue];

        v90 = [v87 objectForKey:v136];
        v91 = v19;
        v92 = [v90 intValue];

        v93 = [v87 objectForKey:v135];
        v94 = [v93 intValue];

        v95 = [v87 objectForKey:v134];
        v96 = [v95 intValue];

        v97 = [v87 objectForKey:v133];
        v98 = [v97 intValue];

        *v86 = v89;
        v86[1] = HIBYTE(v92);
        v86[2] = BYTE2(v92);
        v86[3] = BYTE1(v92);
        v86[4] = v92;
        v19 = v91;
        v86[5] = v94;
        v86[6] = HIBYTE(v96);
        v86[7] = v96;
        v86[8] = HIBYTE(v98);
        v86[9] = v98;
        v86 += 10;

        ++v85;
      }

      while (v85 < v146);
      v4 = v124;
      self = v123;
      v8 = v122;
      v67 = 0x1E743D000uLL;
      v18 = v131;
    }

    IDSByteBufferWriteField();
    v77 = v132;
  }

  if (v18)
  {
    v147 = 0;
    v146 = 0;
    if ([v18 count])
    {
      v99 = 0;
      while (v99 != 10)
      {
        v100 = [v18 objectAtIndex:v99];
        *(&v146 + v99) = [v100 intValue];

        if ([v18 count] <= ++v99)
        {
          goto LABEL_99;
        }
      }

      v101 = [*(v67 + 1160) IDSDataChannels];
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *v141 = 138412546;
        v142 = self;
        v143 = 1024;
        *v144 = 10;
        _os_log_impl(&dword_1959FF000, v101, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_DiscardLinkIDsKey the maximum of links is %d", v141, 0x12u);
      }
    }

LABEL_99:
    IDSByteBufferWriteField();
    v77 = v132;
  }

  if (v8)
  {
    v102 = [v8 length];
    LOBYTE(v146) = v102;
    v103 = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      *v141 = 138412546;
      v142 = self;
      v143 = 1024;
      *v144 = v102;
      _os_log_impl(&dword_1959FF000, v103, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_PreConnectionDataSizeKey %u", v141, 0x12u);
    }

    IDSByteBufferWriteField();
    v104 = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      *v141 = 138412546;
      v142 = self;
      v143 = 2112;
      *v144 = v8;
      _os_log_impl(&dword_1959FF000, v104, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_PreConnectionDataKey %@", v141, 0x16u);
    }

    [v8 bytes];
    IDSByteBufferWriteField();
    v77 = v132;
  }

  v105 = v130;
  if (v130)
  {
    LOBYTE(v146) = v130;
    BYTE1(v146) = v77;
    v106 = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v107 = @"YES";
      *v141 = 138412802;
      v142 = self;
      if (!v77)
      {
        v107 = @"NO";
      }

      v143 = 2112;
      *v144 = v107;
      *&v144[8] = 1024;
      v145 = v105;
      _os_log_impl(&dword_1959FF000, v106, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_UpdateQoSIsGoodKey IsGood:%@ LinkID:%d", v141, 0x1Cu);
    }

    IDSByteBufferWriteField();
  }

  v108 = v127;
  if (v126)
  {
    v109 = self->_internal;
    IDSByteBufferWriteField();
    v110 = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      *v141 = 138412290;
      v142 = self;
      _os_log_impl(&dword_1959FF000, v110, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_QueryRSSI", v141, 0xCu);
    }

    IDSByteBufferWriteField();
  }

  v111 = v129;
  if (v129 != 100000)
  {
    LOBYTE(v146) = v108;
    BYTE1(v146) = HIBYTE(v129);
    BYTE2(v146) = BYTE2(v129);
    BYTE3(v146) = BYTE1(v129);
    BYTE4(v146) = v129;
    v112 = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      *v141 = 138412802;
      v142 = self;
      v143 = 1024;
      *v144 = v111;
      *&v144[4] = 1024;
      *&v144[6] = v108;
      _os_log_impl(&dword_1959FF000, v112, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_MaxBitrateKey maxBitrate:%u LinkID:%d", v141, 0x18u);
    }

    IDSByteBufferWriteField();
  }

  v113 = [v4 objectForKey:@"preference-needs-encryption-info"];

  v17 = v128;
  if (v113)
  {
    LOBYTE(v146) = 1;
    v114 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      *v141 = 138412290;
      v142 = self;
      _os_log_impl(&dword_1959FF000, v114, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceNeedsEncryptionInfoKey - we'll request the encryption info", v141, 0xCu);
    }

    IDSByteBufferWriteField();
  }

  v115 = [v4 objectForKey:@"preference-needs-force-update-encryption-info"];

  if (v115)
  {
    v116 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      *v141 = 138412290;
      v142 = self;
      _os_log_impl(&dword_1959FF000, v116, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_ForceUpdateEncryptionInfoKey - we'll update the encryption info.", v141, 0xCu);
    }

    v141[0] = 1;
    IDSByteBufferWriteField();
  }

  if (v17)
  {
    IDSByteBufferWriteField();
    [v17 bytes];
    [v17 length];
    IDSByteBufferWriteField();
  }

  v117 = v125;
  v125[2] = *&buf[16] - *v125;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v117];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v119 = [MEMORY[0x1E696B098] valueWithPointer:v117];
  [(NSMutableArray *)sendingMetadata addObject:v119];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
LABEL_131:

  v120 = *MEMORY[0x1E69E9840];
}

- ($8401F4BB0FBBAD626D053E4AC6536F2D)_setWiFiAssist:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "<%@>: setWiFiAssist: %@", buf, 0x16u);
  }

  v7 = _IDSLinkPacketBufferCreate();
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v8;
  *&buf[16] = v8;
  var0 = v7->var0;
  var1 = v7->var1;
  IDSByteBufferInitForWriteWithAllocatedSpace();
  IDSByteBufferWriteField();
  if (*&buf[16] > v7->var0)
  {
    v7->var2 = *&buf[16] - v7->var0;
  }

  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v7];
  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)startActiveProbingWithOptions:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:v4];
  v6 = v5;
  if (!v5)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      v8 = "<%@>: startActiveProbingWithOptions: invalid probing Data, return";
      v9 = v7;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if ([v5 length] > 0x1000)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [v6 length];
      v8 = "<%@>: startActiveProbingWithOptions: serialized metadata size: %lu, greater than max allowed sent size, return";
      v9 = v7;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v6 bytes];
  v11 = _IDSLinkPacketBufferCreate();
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v12;
  *&buf[16] = v12;
  v13 = *v11;
  v14 = v11[1];
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v15 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = self;
    v21 = 2112;
    v22 = v4;
    v23 = 2048;
    v24 = [v6 length];
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "<%@>: startActiveProbingWithOptions: %@ size: %lu", &v19, 0x20u);
  }

  [v6 length];
  IDSByteBufferWriteField();
  v11[2] = *&buf[16] - *v11;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v11];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v17 = [MEMORY[0x1E696B098] valueWithPointer:v11];
  [(NSMutableArray *)sendingMetadata addObject:v17];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)stopActiveProbingWithOptions:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:v4];
  v6 = v5;
  if (!v5)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      v8 = "<%@>: stopActiveProbingWithOptions: invalid probing Data, return";
      v9 = v7;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if ([v5 length] > 0x1000)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [v6 length];
      v8 = "<%@>: stopActiveProbingWithOptions: serialized metadata size: %lu, greater than max allowed sent size, return";
      v9 = v7;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v6 bytes];
  v11 = _IDSLinkPacketBufferCreate();
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v12;
  *&buf[16] = v12;
  v13 = *v11;
  v14 = v11[1];
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v15 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = self;
    v21 = 2112;
    v22 = v4;
    v23 = 2048;
    v24 = [v6 length];
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "<%@>: stopActiveProbingWithOptions: %@ size: %lu", &v19, 0x20u);
  }

  [v6 length];
  IDSByteBufferWriteField();
  v11[2] = *&buf[16] - *v11;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v11];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v17 = [MEMORY[0x1E696B098] valueWithPointer:v11];
  [(NSMutableArray *)sendingMetadata addObject:v17];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)flushLinkProbingStatusWithOptions:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:v4];
  v6 = v5;
  if (!v5)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      v8 = "<%@>: flushLinkProbingStatusWithOptions: invalid probing options, return";
      v9 = v7;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if ([v5 length] > 0x1000)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [v6 length];
      v8 = "<%@>: flushLinkProbingStatusWithOptions: serialized metadata size: %lu, greater than max allowed sent size, return";
      v9 = v7;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v6 bytes];
  v11 = _IDSLinkPacketBufferCreate();
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v12;
  *&buf[16] = v12;
  v13 = *v11;
  v14 = v11[1];
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v15 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = self;
    v21 = 2112;
    v22 = v4;
    v23 = 2048;
    v24 = [v6 length];
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "<%@>: flushLinkProbingStatusWithOptions: %@ size: %lu", &v19, 0x20u);
  }

  [v6 length];
  IDSByteBufferWriteField();
  v11[2] = *&buf[16] - *v11;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v11];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v17 = [MEMORY[0x1E696B098] valueWithPointer:v11];
  [(NSMutableArray *)sendingMetadata addObject:v17];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)queryStatusWithOptions:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:v4];
  v6 = v5;
  if (!v5)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      v8 = "<%@>: queryStatusWithOptions: invalid query options, return";
      v9 = v7;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if ([v5 length] > 0x1000)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [v6 length];
      v8 = "<%@>: queryStatusWithOptions: serialized metadata size: %lu, greater than max allowed sent size, return";
      v9 = v7;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v6 bytes];
  v11 = _IDSLinkPacketBufferCreate();
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v12;
  *&buf[16] = v12;
  v13 = *v11;
  v14 = v11[1];
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v15 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = self;
    v21 = 2112;
    v22 = v4;
    v23 = 2048;
    v24 = [v6 length];
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "<%@>: queryStatusWithOptions: %@ size: %lu", &v19, 0x20u);
  }

  [v6 length];
  IDSByteBufferWriteField();
  v11[2] = *&buf[16] - *v11;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v11];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v17 = [MEMORY[0x1E696B098] valueWithPointer:v11];
  [(NSMutableArray *)sendingMetadata addObject:v17];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setUPlusOneMode:(BOOL)a3 isInitiator:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v7 = _IDSLinkPacketBufferCreate();
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17 = v8;
  v9 = *v7;
  v10 = v7[1];
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v11 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (v5)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    *buf = 138412802;
    v19 = self;
    v21 = v13;
    v20 = 2112;
    if (v4)
    {
      v12 = @"YES";
    }

    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "<%@>: setUPlusOneMode: %@ isInitiator: %@", buf, 0x20u);
  }

  buf[0] = v5;
  buf[1] = v4;
  IDSByteBufferWriteField();
  if (*v7 < 0xAAAAAAAAAAAAAAAALL)
  {
    v7[2] = 0xAAAAAAAAAAAAAAAALL - *v7;
  }

  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v7];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v15 = [MEMORY[0x1E696B098] valueWithPointer:v7];
  [(NSMutableArray *)sendingMetadata addObject:v15];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)requestPMTUEvaluationForLinkID:(char)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v5 = _IDSLinkPacketBufferCreate();
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v6;
  v7 = *v5;
  v8 = v5[1];
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v9 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = self;
    v16 = 1024;
    v17 = v3;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "<%@>: requestPMTUEvaluationForLinkID: %d", buf, 0x12u);
  }

  IDSByteBufferWriteField();
  if (*v5 < 0xAAAAAAAAAAAAAAAALL)
  {
    v5[2] = 0xAAAAAAAAAAAAAAAALL - *v5;
  }

  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v5];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v11 = [MEMORY[0x1E696B098] valueWithPointer:v5];
  [(NSMutableArray *)sendingMetadata addObject:v11];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)startMKMRecoveryForParticipantIDs:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "<%@>: startMKMRecoveryForParticipantIDs: %@", buf, 0x16u);
  }

  if ([v4 count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          *buf = [*(*(&v24 + 1) + 8 * i) unsignedLongLongValue];
          [v6 appendBytes:buf length:8];
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v35 count:16];
      }

      while (v9);
    }

    if ([v6 length]<= 0x1000)
    {
      [v6 bytes];
      v14 = _IDSLinkPacketBufferCreate();
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v23 = v15;
      v16 = *v14;
      v17 = v14[1];
      IDSByteBufferInitForWriteWithAllocatedSpace();
      v18 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v6 length];
        *buf = 138413058;
        *&buf[4] = self;
        v29 = 2112;
        v30 = v7;
        v31 = 2112;
        v32 = v6;
        v33 = 2048;
        v34 = v19;
        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "<%@>: startMKMRecoveryForParticipantIDs: %@, %@ size: %lu", buf, 0x2Au);
      }

      [v6 length];
      IDSByteBufferWriteField();
      v14[2] = 0xAAAAAAAAAAAAAAAALL - *v14;
      IDSByteBufferRelease();
      [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v14];
      os_unfair_lock_lock(&self->_internal->_writeLock);
      sendingMetadata = self->_internal->_sendingMetadata;
      v21 = [MEMORY[0x1E696B098] valueWithPointer:v14];
      [(NSMutableArray *)sendingMetadata addObject:v21];

      [(IDSDatagramChannel *)self sendMetadata];
      os_unfair_lock_unlock(&self->_internal->_writeLock);
    }

    else
    {
      v12 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v6 length];
        *buf = 138412546;
        *&buf[4] = self;
        v29 = 2048;
        v30 = v13;
        _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "<%@>: startMKMRecoveryForParticipantIDs: metadata size: %lu, greater than max allowed sent size, return", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "<%@>: startMKMRecoveryForParticipantIDs: invalid participantIDs size", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)requestSessionInfoWithOptions:(id)a3
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:v4];
  v6 = v5;
  if (v5)
  {
    if ([v5 length] <= 0x1000)
    {
      [v6 bytes];
      v18 = _IDSLinkPacketBufferCreate();
      v19 = *v18;
      v20 = v18[1];
      IDSByteBufferInitForWriteWithAllocatedSpace();
      v21 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412803;
        v26 = self;
        v27 = 2113;
        v28 = v4;
        v29 = 2048;
        v30 = [v6 length];
        _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "%@: requestSessionInfoWithOptions: %{private}@ size: %lu", buf, 0x20u);
      }

      [v6 length];
      IDSByteBufferWriteField();
      v18[2] = 0xAAAAAAAAAAAAAAAALL - *v18;
      IDSByteBufferRelease();
      [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v18];
      os_unfair_lock_lock(&self->_internal->_writeLock);
      sendingMetadata = self->_internal->_sendingMetadata;
      v23 = [MEMORY[0x1E696B098] valueWithPointer:v18];
      [(NSMutableArray *)sendingMetadata addObject:v23];

      [(IDSDatagramChannel *)self sendMetadata];
      os_unfair_lock_unlock(&self->_internal->_writeLock);
    }

    else if (self->_internal->_eventHandler)
    {
      v7 = objc_alloc(MEMORY[0x1E695DF20]);
      v8 = [v7 initWithObjectsAndKeys:{@"The serialized metadata was greater than the max slot size allowed to send over the channel", *MEMORY[0x1E696A588], 0}];
      v9 = objc_alloc(MEMORY[0x1E696ABC0]);
      v10 = [v9 initWithDomain:*MEMORY[0x1E69A4A18] code:8 userInfo:v8];
      eventHandler = self->_internal->_eventHandler;
      v31[0] = @"event-type";
      v31[1] = @"error-key";
      v32[0] = &unk_1F0A29B70;
      v32[1] = v10;
      v12 = MEMORY[0x1E695DF20];
      v13 = v32;
      v14 = v31;
LABEL_7:
      v17 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:2];
      eventHandler[2](eventHandler, v17);
    }
  }

  else if (self->_internal->_eventHandler)
  {
    v15 = objc_alloc(MEMORY[0x1E695DF20]);
    v8 = [v15 initWithObjectsAndKeys:{@"Could not serialize provided metadata.", *MEMORY[0x1E696A588], 0}];
    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v10 = [v16 initWithDomain:*MEMORY[0x1E69A4A18] code:8 userInfo:v8];
    eventHandler = self->_internal->_eventHandler;
    v33[0] = @"event-type";
    v33[1] = @"error-key";
    v34[0] = &unk_1F0A29B70;
    v34[1] = v10;
    v12 = MEMORY[0x1E695DF20];
    v13 = v34;
    v14 = v33;
    goto LABEL_7;
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)requestStatsWithOptions:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:v4];
  v6 = v5;
  if (!v5)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      v8 = "<%@>: requestStatsWithOptions: invalid stats data, return";
      v9 = v7;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if ([v5 length] > 0x1000)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [v6 length];
      v8 = "<%@>: requestStatsWithOptions: serialized metadata size: %lu, greater than max allowed sent size, return";
      v9 = v7;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v6 bytes];
  v11 = _IDSLinkPacketBufferCreate();
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v12;
  *&buf[16] = v12;
  v13 = *v11;
  v14 = v11[1];
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v15 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = self;
    v21 = 2112;
    v22 = v4;
    v23 = 2048;
    v24 = [v6 length];
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "<%@>: requestStatsWithOptions: %@ size: %lu", &v19, 0x20u);
  }

  [v6 length];
  IDSByteBufferWriteField();
  v11[2] = *&buf[16] - *v11;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v11];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v17 = [MEMORY[0x1E696B098] valueWithPointer:v11];
  [(NSMutableArray *)sendingMetadata addObject:v17];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_reportDictionary:(id)a3 forKey:(unsigned __int8)a4
{
  v5 = a3;
  v6 = _IDSLinkPacketBufferCreate();
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v7;
  v8 = *v6;
  v9 = v6[1];
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v10 = JWEncodeDictionary();

  if ([v10 length] <= (v6[1] - 3))
  {
    [v10 bytes];
    [v10 length];
    IDSByteBufferWriteField();
    v6[2] = 0xAAAAAAAAAAAAAAAALL - *v6;
    IDSByteBufferRelease();
    [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v6];
    os_unfair_lock_lock(&self->_internal->_writeLock);
    sendingMetadata = self->_internal->_sendingMetadata;
    v13 = [MEMORY[0x1E696B098] valueWithPointer:v6];
    [(NSMutableArray *)sendingMetadata addObject:v13];

    [(IDSDatagramChannel *)self sendMetadata];
    os_unfair_lock_unlock(&self->_internal->_writeLock);
  }

  else
  {
    v11 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B40A24();
    }
  }
}

- (void)reportMKIArrival:(id)a3 isLocallyGenerated:(BOOL)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E696AD98];
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  v8 = [v7 numberWithDouble:*&qword_1EAEDBEF0 * mach_continuous_time()];
  v9 = dispatch_get_global_queue(-32768, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195B07E9C;
  v12[3] = &unk_1E743EFD8;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  v11 = v6;
  dispatch_async(v9, v12);
}

- (void)reportFirstIncomingPacketTimeForMKI:(id)a3 participantID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E696AD98];
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  v9 = [v8 numberWithDouble:*&qword_1EAEDBEF0 * mach_continuous_time()];
  v10 = dispatch_get_global_queue(-32768, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195B08168;
  v14[3] = &unk_1E743EEE8;
  v14[4] = self;
  v15 = v6;
  v16 = v9;
  v17 = v7;
  v11 = v7;
  v12 = v9;
  v13 = v6;
  dispatch_async(v10, v14);
}

- (void)_reportFirstIncomingPacketTimeForMKI:(id)a3 time:(id)a4 participantID:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [a3 UUIDString];
  v11 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v18 = self;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v8;
    v23 = 2048;
    v24 = [v9 unsignedLongLongValue];
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@: reportFirstIncomingPacketTimeForMKI: first incoming packet for mki %@ at %@ for participantID: %llu", buf, 0x2Au);
  }

  v12 = *MEMORY[0x1E69A4A58];
  v15[0] = *MEMORY[0x1E69A4A80];
  v15[1] = v12;
  v16[0] = v8;
  v16[1] = v10;
  v15[2] = *MEMORY[0x1E69A4A90];
  v16[2] = v9;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  [(IDSDatagramChannel *)self _reportDictionary:v13 forKey:78];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)reportFirstOutgoingPacketTimeForMKI:(id)a3 participantID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E696AD98];
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  v9 = [v8 numberWithDouble:*&qword_1EAEDBEF0 * mach_continuous_time()];
  v10 = dispatch_get_global_queue(-32768, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195B08434;
  v14[3] = &unk_1E743EEE8;
  v14[4] = self;
  v15 = v6;
  v16 = v9;
  v17 = v7;
  v11 = v7;
  v12 = v9;
  v13 = v6;
  dispatch_async(v10, v14);
}

- (void)_reportFirstOutgoingPacketTimeForMKI:(id)a3 time:(id)a4 participantID:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [a3 UUIDString];
  v11 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v18 = self;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v8;
    v23 = 2048;
    v24 = [v9 unsignedLongLongValue];
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@: reportFirstOutgoingPacketTimeForMKI: first outgoing packet for mki %@ at %@ for participantID: %llu", buf, 0x2Au);
  }

  v12 = *MEMORY[0x1E69A4A58];
  v15[0] = *MEMORY[0x1E69A4A80];
  v15[1] = v12;
  v16[0] = v8;
  v16[1] = v10;
  v15[2] = *MEMORY[0x1E69A4A90];
  v16[2] = v9;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  [(IDSDatagramChannel *)self _reportDictionary:v13 forKey:79];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)generateMetadataWithDatagramInfo:(id)a3 options:(id *)a4 currentDatagramCount:(unsigned __int8)a5 totalDatagramCount:(unsigned __int8)a6 byteBuffer:(id *)a7
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a4 && !a3.var0)
  {
    goto LABEL_30;
  }

  IDSByteBufferWriteField();
  IDSByteBufferWriteField();
  IDSByteBufferWriteField();
  IDSByteBufferWriteField();
  IDSByteBufferWriteField();
  if (!a4)
  {
    goto LABEL_30;
  }

  var0 = a4->var0;
  if ((a4->var0 & 8) != 0)
  {
    IDSByteBufferWriteField();
    var0 = a4->var0;
    if ((a4->var0 & 1) == 0)
    {
LABEL_6:
      if ((var0 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else if ((var0 & 1) == 0)
  {
    goto LABEL_6;
  }

  *buf = bswap64(a4->var1);
  IDSByteBufferWriteField();
  var0 = a4->var0;
  if ((a4->var0 & 0x10) == 0)
  {
LABEL_7:
    if ((var0 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

LABEL_11:
  *buf = bswap32(a4->var2) >> 16;
  IDSByteBufferWriteField();
  var0 = a4->var0;
  if ((a4->var0 & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  p_var4 = &a4->var4;
  if (a4->var4 >= 1)
  {
    if (a4->var4 >= 0xDu)
    {
      *p_var4 = 12;
    }

    IDSByteBufferWriteField();
    memset(buf, 170, sizeof(buf));
    v10 = *p_var4;
    if (v10 >= 1)
    {
      var5 = a4->var5;
      v12 = buf;
      do
      {
        v13 = *var5++;
        *v12 = bswap32(v13) >> 16;
        v12 += 2;
        --v10;
      }

      while (v10);
    }

    IDSByteBufferWriteField();
    var0 = a4->var0;
  }

LABEL_19:
  if ((var0 & 4) != 0)
  {
    buf[0] = 1;
    IDSByteBufferWriteField();
    var0 = a4->var0;
    if ((a4->var0 & 0x40) == 0)
    {
LABEL_21:
      if ((var0 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((var0 & 0x40) == 0)
  {
    goto LABEL_21;
  }

  *buf = bswap32(a4->var7) >> 16;
  IDSByteBufferWriteField();
  var0 = a4->var0;
  if ((a4->var0 & 0x80) == 0)
  {
LABEL_22:
    if ((var0 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

LABEL_33:
  buf[0] = 1;
  IDSByteBufferWriteField();
  var0 = a4->var0;
  if ((a4->var0 & 0x100) == 0)
  {
LABEL_23:
    if ((var0 & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

LABEL_34:
  buf[0] = 1;
  IDSByteBufferWriteField();
  var0 = a4->var0;
  if ((a4->var0 & 0x40000) == 0)
  {
LABEL_24:
    if ((var0 & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_35:
  *buf = *a4->var13;
  IDSByteBufferWriteField();
  var0 = a4->var0;
  if ((a4->var0 & 0x200) == 0)
  {
LABEL_25:
    if ((var0 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_37;
  }

LABEL_36:
  *buf = bswap64(a4->var10);
  IDSByteBufferWriteField();
  var0 = a4->var0;
  if ((a4->var0 & 0x400) == 0)
  {
LABEL_26:
    if ((var0 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

LABEL_37:
  buf[0] = 1;
  IDSByteBufferWriteField();
  var0 = a4->var0;
  if ((a4->var0 & 0x8000) == 0)
  {
LABEL_27:
    if ((var0 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

LABEL_41:
    buf[0] = 1;
    IDSByteBufferWriteField();
    if ((a4->var0 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_38:
  v15 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    var12 = a4->var12;
    *buf = 134217984;
    *&buf[4] = var12;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "storing encryption sequence number: %llu (*Client -> IDSD)", buf, 0xCu);
  }

  *buf = bswap64(a4->var12);
  IDSByteBufferWriteField();
  var0 = a4->var0;
  if ((a4->var0 & 0x10000) != 0)
  {
    goto LABEL_41;
  }

LABEL_28:
  if ((var0 & 0x20000) != 0)
  {
LABEL_29:
    buf[0] = 1;
    IDSByteBufferWriteField();
  }

LABEL_30:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)osChannelInfoLog
{
  v17 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (internal)
  {
    if (internal->_osChannelRXRing && internal->_osChannelTXRing)
    {
      v4 = os_channel_available_slot_count();
      osChannelTXRing = self->_internal->_osChannelTXRing;
      v6 = os_channel_available_slot_count();
      v7 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 67109376;
        *v15 = v4;
        *&v15[4] = 1024;
        *&v15[6] = v6;
        v8 = "osChannelInfoLog: os_channel rx slot count %u tx slot count %u";
        v9 = v7;
        v10 = 14;
LABEL_10:
        _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
      }
    }

    else
    {
      v7 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_internal->_osChannelTXRing;
        osChannelRXRing = self->_internal->_osChannelRXRing;
        v14 = 134218240;
        *v15 = osChannelRXRing;
        *&v15[8] = 2048;
        v16 = v11;
        v8 = "osChannelInfoLog: os_channel ring is NULL (_osChannelRXRing %p, _osChannelTXRing %p)";
        v9 = v7;
        v10 = 22;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v8 = "osChannelInfoLog: _internal is NULL.";
      v9 = v7;
      v10 = 2;
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_schedulePeriodicTasks
{
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "LinkQuality: scheduling sync...", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = dispatch_time(0, 3000000000);
  v5 = [IDSDatagramChannel getIDSDataChannelsQueue]_0();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195B08EB4;
  block[3] = &unk_1E743EE18;
  objc_copyWeak(&v7, buf);
  dispatch_after(v4, v5, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_periodicTasksTick
{
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "LinkQuality: sync tick...", v4, 2u);
  }

  if (!self->_internal->_isInvalidated)
  {
    [(IDSDatagramChannel *)self _periodicTasks];
    [(IDSDatagramChannel *)self _schedulePeriodicTasks];
  }
}

- (void)_periodicTasks
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Performing periodic tasks...", buf, 2u);
  }

  v4 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Flushing packet log...", buf, 2u);
  }

  internal = self->_internal;
  packetLog = internal->_packetLog;
  if (packetLog)
  {
    [(IDSObjCPacketLog *)packetLog flush];
    internal = self->_internal;
  }

  if (internal->_shouldCollectMetrics)
  {
    [(IDSDatagramChannel *)self _syncLinkQualityMeasurement];
    internal = self->_internal;
  }

  if (internal->_shouldForcePathMTUEvaluationPeriodically)
  {
    v7 = [(IDSDatagramChannel *)self connectedLinks];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          -[IDSDatagramChannel requestPMTUEvaluationForLinkID:](self, "requestPMTUEvaluationForLinkID:", [*(*(&v13 + 1) + 8 * v11++) linkID]);
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_sendDataChunkToDaemon:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5 withKey:(unsigned __int8)a6
{
  v8 = a3;
  if (a5 < 0x401)
  {
    v10 = _IDSLinkPacketBufferCreateWithSize();
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v11;
    v12 = *v10;
    v13 = v10[1];
    IDSByteBufferInitForWriteWithAllocatedSpace();
    [v8 bytes];
    IDSByteBufferWriteField();
    v10[2] = 0xAAAAAAAAAAAAAAAALL - *v10;
    IDSByteBufferRelease();
    [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v10];
    os_unfair_lock_lock(&self->_internal->_writeLock);
    sendingMetadata = self->_internal->_sendingMetadata;
    v15 = [MEMORY[0x1E696B098] valueWithPointer:v10];
    [(NSMutableArray *)sendingMetadata addObject:v15];

    [(IDSDatagramChannel *)self sendMetadata];
    os_unfair_lock_unlock(&self->_internal->_writeLock);
  }

  else
  {
    v9 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B40A9C(v8);
    }
  }
}

- (void)_syncLinkQualityMeasurement
{
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "LinkQuality: generating delta...", buf, 2u);
  }

  objc_initWeak(buf, self);
  internal = self->_internal;
  qualityMeasurer = internal->_qualityMeasurer;
  qualityMeasurementSyncToken = internal->_qualityMeasurementSyncToken;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195B09594;
  v12[3] = &unk_1E7442F30;
  objc_copyWeak(&v13, buf);
  v12[4] = self;
  [(IDSLinksQualityMeasurer *)qualityMeasurer deltaSince:qualityMeasurementSyncToken completionHandler:v12];
  v7 = self->_internal;
  linkEngine = v7->_linkEngine;
  linkEngineQualityMeasurementSyncToken = v7->_linkEngineQualityMeasurementSyncToken;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195B096C8;
  v10[3] = &unk_1E7442F58;
  objc_copyWeak(&v11, buf);
  v10[4] = self;
  [(IDSDataChannelLinkEngineHandle *)linkEngine qualityDeltaSince:linkEngineQualityMeasurementSyncToken completionHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)sendPacketLogData:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [v4 length];
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "sendPacketLogData: packet log payload size: %d", v7, 8u);
  }

  [(IDSDatagramChannel *)self _sendChunkedDataToDaemon:v4 withKey:86 shouldTerminateWithEmptyData:0];
  v6 = *MEMORY[0x1E69E9840];
}

@end