@interface IDSBTLink
- (IDSBTLink)initWithPipe:(id)a3 useSkywalkChannel:(BOOL)a4 withDeviceUniqueID:(id)a5 cbuuid:(id)a6;
- (IDSLinkDelegate)alternateDelegate;
- (IDSLinkDelegate)delegate;
- (id)copyLinkStatsDict;
- (id)generateLinkReport:(double)a3 isCurrentLink:(BOOL)a4;
- (unint64_t)sendPacketBuffer:(id *)a3 toDeviceUniqueID:(id)a4 cbuuid:(id)a5;
- (void)_dumpLogs:(double)a3 isDownstream:(BOOL)a4;
- (void)_localDetectedCorruption;
- (void)_processIncomingPacket;
- (void)_processOutgoingPacket;
- (void)_resetMagnetCorruptionMetrics;
- (void)_submitMagnetCorruptionMetricsToAWD;
- (void)dealloc;
- (void)flushBuffer:(unint64_t)a3;
- (void)injectFakePacket:(id *)a3;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)remoteDetectedCorruption;
- (void)start;
- (void)suspendLink:(BOOL)a3;
@end

@implementation IDSBTLink

- (id)copyLinkStatsDict
{
  v3 = [NSDictionary alloc];
  v4 = [NSNumber numberWithUnsignedLongLong:self->_totalBytesReceived];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_totalBytesSent];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_totalPacketsReceived];
  v7 = [NSNumber numberWithUnsignedLongLong:self->_totalPacketsSent];
  v8 = [v3 initWithObjectsAndKeys:{v4, @"bytesReceived", v5, @"bytesSent", v6, @"packetsReceived", v7, @"packetsSent", 0}];

  return v8;
}

- (IDSBTLink)initWithPipe:(id)a3 useSkywalkChannel:(BOOL)a4 withDeviceUniqueID:(id)a5 cbuuid:(id)a6
{
  v8 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v34.receiver = self;
  v34.super_class = IDSBTLink;
  v14 = [(IDSBTLink *)&v34 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pipe, a3);
    *buffer = -1;
    if (v8)
    {
      v16 = [v11 channel];
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        pipe = v15->_pipe;
        *buf = 134218242;
        *v36 = v16;
        *&v36[8] = 2112;
        *&v36[10] = pipe;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "retrieved os channel %p from pipe %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v30 = v16;
          v31 = v15->_pipe;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v30 = v16;
            v31 = v15->_pipe;
            _IDSLogV();
          }
        }
      }

      if (v16)
      {
        goto LABEL_19;
      }
    }

    v19 = [(CBScalablePipe *)v15->_pipe output:v30];
    v20 = CFWriteStreamCopyProperty(v19, kCFStreamPropertySocketNativeHandle);

    if (v20)
    {
      v37.location = 0;
      v37.length = 4;
      CFDataGetBytes(v20, v37, buffer);
      CFRelease(v20);
      v21 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v15->_pipe;
        *buf = 67109378;
        *v36 = *buffer;
        *&v36[4] = 2112;
        *&v36[6] = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "retrieved native socket %d from pipe %@", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v32 = v15->_pipe;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v32 = v15->_pipe;
            _IDSLogV();
          }
        }
      }

      v23 = fcntl(*buffer, 3, 0, v32);
      if (v23 != -1 && fcntl(*buffer, 4, v23 | 4u) != -1)
      {
LABEL_19:
        v15->_dataChannel = IDSOSDataChannelCreate();
        v15->_dataChannelPendingTx = 0;
        objc_storeStrong(&v15->_cbuuid, kIDSDefaultPairedDeviceID);
        objc_storeStrong(&v15->_deviceUniqueID, a5);
        v15->_state = 2;
        if (qword_100CBF5D0 != -1)
        {
          sub_10093355C();
        }

        v15->_previousReportTime = *&qword_100CBF5D8 * mach_continuous_time();
        *&v15->_remoteHostAwake = 1;
        v24 = [v11 peer];
        [v24 addObserver:v15 forKeyPath:@"hostState" options:0 context:0];

        goto LABEL_22;
      }

      v26 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v36 = *buffer;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "fcntl failed with socket %d", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

    else
    {
      v27 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v15->_pipe;
        *buf = 138412290;
        *v36 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "CFWriteStreamCopyProperty(kCFStreamPropertySocketNativeHandle) failed with pipe %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

    v25 = 0;
    goto LABEL_36;
  }

LABEL_22:
  v25 = v15;
LABEL_36:

  return v25;
}

- (void)dealloc
{
  [(IDSBTLink *)self invalidate];
  if (self->_currentIncomingPacket)
  {
    _IDSLinkPacketBufferRelease();
    self->_currentIncomingPacket = 0;
  }

  if (self->_currentOutgoingPacket)
  {
    _IDSLinkPacketBufferRelease();
    self->_currentOutgoingPacket = 0;
  }

  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pipe = self->_pipe;
    *buf = 138412290;
    v10 = pipe;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "releasing pipe %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v7 = self->_pipe;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v7 = self->_pipe;
        _IDSLogV();
      }
    }
  }

  v5 = [(CBScalablePipe *)self->_pipe peer];
  [v5 removeObserver:self forKeyPath:@"hostState" context:0];

  v6 = self->_pipe;
  self->_pipe = 0;

  v8.receiver = self;
  v8.super_class = IDSBTLink;
  [(IDSBTLink *)&v8 dealloc];
}

- (void)_localDetectedCorruption
{
  if (qword_100CBF5D0 != -1)
  {
    sub_100933584();
  }

  v3 = *&qword_100CBF5D8 * mach_continuous_time();
  v4 = _IDSLinkPacketBufferCreate();
  **v4 = 1;
  *(*v4 + 1) = 68;
  v5 = v4[1] - 1;
  ++*v4;
  v4[1] = v5;
  v4[2] = 1;
  v6 = [(IDSBTLink *)self sendPacketBuffer:v4 toDeviceUniqueID:self->_deviceUniqueID cbuuid:self->_cbuuid];
  if (v6 == 13 || v6 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained link:self hasSpaceAvailable:0 deviceUniqueID:self->_deviceUniqueID cbuuid:self->_cbuuid];
  }

  self->_resyncing = 1;
  self->_lastResyncTime = v3;
  if (!self->_magnetCorruptionRecoveryMode)
  {
    self->_lastNewMagnetCorruptionTime = v3;
    self->_magnetCorruptionRecoveryMode = 1;
  }

  [(IDSBTLink *)self _dumpLogs:1 isDownstream:v3];
}

- (void)_dumpLogs:(double)a3 isDownstream:(BOOL)a4
{
  if (a4)
  {
    v5 = 200;
  }

  else
  {
    v5 = 208;
  }

  if (a3 - *(&self->super.isa + v5) > 60.0)
  {
    if (IMGetDomainBoolForKey())
    {
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v13[3] = v8;
      v13[4] = v8;
      v13[1] = v8;
      v13[2] = v8;
      v13[0] = v8;
      snprintf(v13, 0x50uLL, "/bin/cp /dev/uart.log /tmp/uart-%.06f.log", a3);
      IMPerformSystem();
      v9 = dispatch_time(0, 5000000000);
      v10 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1006DD79C;
      block[3] = &unk_100BDFD48;
      v16 = a4;
      dispatch_after(v9, v10, block);
    }

    if (IMGetDomainBoolForKey())
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DontSubmitDataCorruptionToAggd is set. Not submitting to aggd", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    else
    {
      v12 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "submitting aggd metric - MagnetDataCorruption", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      IMSubmitSimpleAggegateMetric();
      IMSubmitSimpleCoreAnalyticsMetric();
    }

    IMSubmitSimpleAWDMetric();
    *(&self->super.isa + v5) = a3;
  }
}

- (void)_resetMagnetCorruptionMetrics
{
  self->_discardedRawBytes = 0;
  self->_correctRawBytesSinceLastCorruption = 0;
  self->_correctFramesSinceLastCorruption = 0;
}

- (void)_submitMagnetCorruptionMetricsToAWD
{
  if (self->_previousCorruptionsDetected)
  {
    v3 = ((self->_lastResyncTime - self->_lastNewMagnetCorruptionTime) * 1000.0);
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      correctRawBytesSinceLastCorruption = self->_correctRawBytesSinceLastCorruption;
      correctFramesSinceLastCorruption = self->_correctFramesSinceLastCorruption;
      discardedRawBytes = self->_discardedRawBytes;
      *buf = 134218752;
      v15 = correctFramesSinceLastCorruption;
      v16 = 2048;
      v17 = correctRawBytesSinceLastCorruption;
      v18 = 2048;
      v19 = discardedRawBytes;
      v20 = 2048;
      v21 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "submitting IDSMagnetCorruptionDetailedEvent: correctFramesSinceLastCorruption = %lld, correctRawBytesSinceLastCorruption = %lld, discardedRawBytes = %lld, magnetDataCorruptionRecoveryTimeInMs = %lld ms", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    v8 = [IDSMagnetCorruptionMetric alloc];
    v10 = self->_correctFramesSinceLastCorruption;
    p_correctFramesSinceLastCorruption = &self->_correctFramesSinceLastCorruption;
    v11 = [v8 initWithCorrectFramesSinceLastCorruption:v10 correctRawBytesSinceLastCorruption:*(p_correctFramesSinceLastCorruption - 1) discardedRawBytes:*(p_correctFramesSinceLastCorruption - 2) recoveryTimeInMs:v3 linkType:1];
    v12 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v12 logMetric:v11];

    v13 = +[IDSAWDLogging sharedInstance];
    [v13 IDSMagnetCorruptionDetailedEvent:*p_correctFramesSinceLastCorruption correctRawBytesSinceLastCorruption:*(p_correctFramesSinceLastCorruption - 1) discardedRawBytes:*(p_correctFramesSinceLastCorruption - 2) recoveryTimeInMs:v3 linkType:1];
  }

  else
  {
    self->_previousCorruptionsDetected = 1;
  }
}

- (void)start
{
  IDSOSDataChannelFd();
  IDSTransportThreadAddSocket();
  self->_writeSuspended = 0;
}

- (void)remoteDetectedCorruption
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remote device detected data corruption", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  if (qword_100CBF5D0 != -1)
  {
    sub_10093355C();
  }

  [(IDSBTLink *)self _dumpLogs:0 isDownstream:*&qword_100CBF5D8 * mach_continuous_time()];
}

- (void)invalidate
{
  if (self->_dataChannel)
  {
    IDSOSDataChannelFd();
    IDSTransportThreadRemoveSocket();
    IDSOSDataChannelDestroy();
    self->_dataChannel = 0;
    self->_dataChannelPendingTx = 0;
  }
}

- (unint64_t)sendPacketBuffer:(id *)a3 toDeviceUniqueID:(id)a4 cbuuid:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9 && ([v9 isEqualToString:self->_cbuuid] & 1) == 0)
  {
    _IDSLinkPacketBufferRelease();
    v12 = 10;
    goto LABEL_10;
  }

  var0 = a3->var0;
  if (!a3->var0)
  {
    _IDSLinkPacketBufferRelease();
    v12 = 9;
    goto LABEL_10;
  }

  if (self->_state != 4)
  {
    _IDSLinkPacketBufferRelease();
    v12 = 6;
    goto LABEL_10;
  }

  if (self->_currentOutgoingPacket)
  {
    goto LABEL_6;
  }

  v14 = *var0;
  if (*var0 < 0)
  {
    v15 = bufferChecksum();
    IDSLinkPacketBufferAddBufferStart();
    *a3->var0 = v14;
    a3->var0[1] = HIBYTE(v15);
    a3->var0[2] = v15;
  }

  var2 = a3->var2;
  if (var2 > 127)
  {
    v18 = (var2 >> 8) | 0xFFFFFF80;
    if (var2 + 2 <= a3->var1)
    {
      IDSLinkPacketBufferAddBufferStart();
      *a3->var0 = v18;
      a3->var0[1] = var2;
    }

    else
    {
      v19 = _IDSLinkPacketBufferCreate();
      *v19->var0 = v18;
      v19->var0[1] = var2;
      memcpy(v19->var0 + 2, a3->var0, var2);
      v19->var2 = var2 + 2;
      _IDSLinkPacketBufferRelease();
      a3 = v19;
    }
  }

  else
  {
    v17 = a3->var0--;
    a3->var2 = var2 + 1;
    *(v17 - 1) = var2;
  }

  a3->var3 = a3->var2;
  a3->var9 = 1;
  v20 = IDSOSDataChannelWrite();
  v21 = *__error();
  v22 = +[IDSFoundationLog BTLink];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = a3->var2;
    var26 = a3->var26;
    if (!var26)
    {
      var26 = 42;
    }

    var27 = a3->var27;
    *buf = 67110144;
    v31 = v20;
    v32 = 1024;
    v33 = v23;
    v34 = 1024;
    v35 = 45;
    v36 = 1024;
    v37 = var26;
    v38 = 1024;
    v39 = var27;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "LMW %d/%d %c =%c (s:%d)", buf, 0x20u);
  }

  if (!v20)
  {
LABEL_6:
    _IDSLinkPacketBufferRelease();
    v12 = 1;
    goto LABEL_10;
  }

  if (v20 < 1)
  {
    v27 = +[IDSFoundationLog BTLink];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = a3->var26;
      if (!v28)
      {
        v28 = 42;
      }

      v29 = a3->var27;
      *buf = 67109632;
      v31 = v21;
      v32 = 1024;
      v33 = v28;
      v34 = 1024;
      v35 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "LMW errno %d =%c (s:%d)", buf, 0x14u);
    }

    if (v21 != 35 && v21 != 55)
    {
      [(IDSBTLink *)self invalidate];
      _IDSLinkPacketBufferRelease();
      v12 = 11;
      goto LABEL_10;
    }
  }

  else
  {
    IDSLinkPacketBufferAddBufferStart();
    if (!a3->var2)
    {
      v26 = vdupq_n_s64(1uLL);
      v26.i64[0] = a3->var3;
      *&self->_totalBytesSent = vaddq_s64(*&self->_totalBytesSent, v26);
      _IDSLinkPacketBufferRelease();
      if ((v14 & 0x20) != 0)
      {
        kdebug_trace();
      }

      v12 = 0;
      goto LABEL_10;
    }
  }

  self->_currentOutgoingPacket = a3;
  if (self->_writeSuspended)
  {
    IDSOSDataChannelFd();
    IDSTransportThreadResumeSocket();
    self->_writeSuspended = 0;
  }

  v12 = 13;
LABEL_10:

  return v12;
}

- (void)flushBuffer:(unint64_t)a3
{
  if (a3 >= 2)
  {
    sub_1009335C0();
  }

  v4 = a3 == 0;
  p_dataChannelPendingTx = &self->_dataChannelPendingTx;
  dataChannel = self->_dataChannel;

  _IDSOSDataChannelSync(dataChannel, v4, p_dataChannelPendingTx);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(CBScalablePipe *)self->_pipe peer];
  v13 = v12;
  if (v12)
  {
    if ([v12 hostState])
    {
      v14 = [v13 hostState];
      v15 = v14 != 1;
      if (v14 == 1)
      {
        v16 = @"asleep";
      }

      else
      {
        v16 = @"awake";
      }
    }

    else
    {
      v15 = 1;
      v16 = @"unknown";
    }
  }

  else
  {
    v15 = 1;
    v16 = @"nil peer";
  }

  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    cbuuid = self->_cbuuid;
    v19 = @"NO";
    *buf = 138412802;
    if (v15)
    {
      v19 = @"YES";
    }

    v24 = cbuuid;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BT reports %@ as (%@) interpreting as awake? %@.", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  if (self->_remoteHostAwake != v15 || !self->_postedFirstHostStateChange)
  {
    self->_remoteHostAwake = v15;
    self->_postedFirstHostStateChange = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 link:self hostAwakeDidChange:self->_remoteHostAwake deviceUniqueID:self->_deviceUniqueID cbuuid:self->_cbuuid];
    }
  }
}

- (void)_processIncomingPacket
{
  currentIncomingPacket = self->_currentIncomingPacket;
  if (!currentIncomingPacket)
  {
    currentIncomingPacket = _IDSLinkPacketBufferCreate();
  }

  if (!self->_resyncing)
  {
    __dst = &currentIncomingPacket->var42[15];
    v90 = vdupq_n_s64(1uLL).i64[1];
    while (1)
    {
      var2 = currentIncomingPacket->var2;
      v89 = currentIncomingPacket->var1 - var2;
      v92 = [(IDSBTLink *)self _readFromDataChannel:&currentIncomingPacket->var0[var2] size:v81 withFlags:v82 isSynced:v83, v84, v85, v86, v87];
      v17 = __error();
      if (v92 <= 0)
      {
        v79 = *v17;
        if (v92 && v79 == 35)
        {
          self->_currentIncomingPacket = currentIncomingPacket;
          return;
        }

        v80 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *v95 = v92;
          *&v95[8] = 1024;
          *v96 = v79;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Link manager recv %zd errno %d - closing connection", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        goto LABEL_155;
      }

      self->_totalReceivedRawBytes += v92;
      v18 = currentIncomingPacket->var2 + v92;
      currentIncomingPacket->var2 = v18;
      if (!v18)
      {
        goto LABEL_121;
      }

      v19 = *currentIncomingPacket->var0;
      if (*currentIncomingPacket->var0 < 0)
      {
        if (v18 == 1)
        {
LABEL_121:
          v28 = 2;
LABEL_122:
          self->_currentIncomingPacket = currentIncomingPacket;
          v70 = +[IDSFoundationLog BTLink];
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            totalReceivedRawBytes = self->_totalReceivedRawBytes;
            *buf = 67109888;
            *v95 = v28;
            *&v95[4] = 1024;
            *&v95[6] = v92;
            *v96 = 1024;
            *&v96[2] = totalReceivedRawBytes;
            *&v96[6] = 1024;
            *&v96[8] = 115;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "LMR2 0/%d/%d/%u %c", buf, 0x1Au);
          }

          return;
        }

        v22 = *(currentIncomingPacket->var0 + 1) | ((v19 & 0x7F) << 8);
        v20 = v22 + 2;
        v21 = 2;
      }

      else
      {
        v20 = v19 + 1;
        v21 = 1;
        v22 = *currentIncomingPacket->var0;
      }

      if (currentIncomingPacket->var1 < v20)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = [NSData dataWithBytesNoCopy:currentIncomingPacket->var0 length:currentIncomingPacket->var2 freeWhenDone:0];
        v25 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = self->_totalReceivedRawBytes;
          v27 = currentIncomingPacket->var2;
          *buf = 67109890;
          *v95 = v92;
          *&v95[4] = 1024;
          *&v95[6] = v26;
          *v96 = 1024;
          *&v96[2] = v27;
          *&v96[6] = 2114;
          *&v96[8] = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Magnet corruption! Bad packet length found. Initiate resync incoming stream! (last recv %d/%u) data(%d) = %{public}@", buf, 0x1Eu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v83 = currentIncomingPacket->var2;
            v84 = v24;
            v81 = v92;
            v82 = self->_totalReceivedRawBytes;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v83 = currentIncomingPacket->var2;
              v84 = v24;
              v81 = v92;
              v82 = self->_totalReceivedRawBytes;
              _IDSLogV();
            }
          }
        }

        objc_autoreleasePoolPop(v23);
        IDSLinkPacketBufferResetBufferStart();
        self->_currentIncomingPacket = currentIncomingPacket;
        self->_discardedRawBytes += v92;
        [(IDSBTLink *)self _localDetectedCorruption];
        if (v92 == v89)
        {
          goto LABEL_110;
        }

        return;
      }

      v28 = v20 - v18;
      if (v20 > v18)
      {
        goto LABEL_122;
      }

      v91 = 0;
      do
      {
        var0 = currentIncomingPacket->var0;
        v30 = currentIncomingPacket->var2;
        IDSLinkPacketBufferAddBufferStart();
        if (v22 < 1)
        {
          v44 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v95 = v92;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Link manager received zero byte packet (total recv:%d)", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v81 = v92;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v81 = v92;
                _IDSLogV();
              }
            }
          }

          goto LABEL_72;
        }

        v31 = *currentIncomingPacket->var0;
        if (v22 >= 3 && *currentIncomingPacket->var0 < 0)
        {
          v32 = *(currentIncomingPacket->var0 + 1);
          v33 = bufferChecksum();
          v34 = __rev16(v32);
          if (v34 != v33)
          {
            v60 = objc_autoreleasePoolPush();
            v61 = [NSData dataWithBytesNoCopy:var0 length:v30 freeWhenDone:0];
            v62 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              v63 = self->_totalReceivedRawBytes;
              v64 = [v61 length];
              *buf = 67110658;
              *v95 = v22 + v21;
              *&v95[4] = 1024;
              *&v95[6] = v92;
              *v96 = 1024;
              *&v96[2] = v63;
              *&v96[6] = 1024;
              *&v96[8] = v34;
              *&v96[12] = 1024;
              *&v96[14] = v33;
              *&v96[18] = 1024;
              *&v96[20] = v64;
              v97 = 2112;
              v98 = v61;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Magnet corruption! Link manager received %d byte packet (last recv %d/%u) with bad checksum (old:%04x new %04x). Initiate resync incoming stream! data(%d) %@", buf, 0x30u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v65 = self->_totalReceivedRawBytes;
                v66 = (v22 + v21);
                v86 = [v61 length];
                v87 = v61;
                v84 = v34;
                v85 = v33;
                v83 = v65;
                v81 = v66;
                v82 = v92;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v67 = self->_totalReceivedRawBytes;
                  v86 = [v61 length];
                  v87 = v61;
                  v85 = v33;
                  v83 = v67;
                  v84 = v34;
                  v81 = v66;
                  v82 = v92;
                  _IDSLogV();
                }
              }
            }

            v54 = v92 == v89;

            objc_autoreleasePoolPop(v60);
            IDSLinkPacketBufferResetBufferStart();
            self->_currentIncomingPacket = currentIncomingPacket;
            self->_discardedRawBytes += v92;
            [(IDSBTLink *)self _localDetectedCorruption];
LABEL_106:
            if (v54)
            {
              goto LABEL_110;
            }

            return;
          }

          IDSLinkPacketBufferAddBufferStart();
          v22 = (v22 - 2);
          *currentIncomingPacket->var0 = v31;
        }

        if ((v31 & 0x20) != 0)
        {
          kdebug_trace();
        }

        v35 = +[IDSFoundationLog BTLink];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = self->_totalReceivedRawBytes;
          *buf = 67109888;
          *v95 = v22;
          *&v95[4] = 1024;
          *&v95[6] = v92;
          *v96 = 1024;
          *&v96[2] = v36;
          *&v96[6] = 1024;
          *&v96[8] = 115;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "LMR %d/%d/%u %c", buf, 0x1Au);
        }

        v37 = currentIncomingPacket->var2;
        currentIncomingPacket->var2 = v22;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v39 = [WeakRetained link:self didReceivePacket:currentIncomingPacket fromDeviceUniqueID:self->_deviceUniqueID cbuuid:self->_cbuuid];

        if ((v39 & 1) == 0)
        {
          v50 = objc_autoreleasePoolPush();
          v51 = [NSData dataWithBytesNoCopy:var0 length:v30 freeWhenDone:0];
          v52 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = self->_totalReceivedRawBytes;
            *buf = 67110146;
            *v95 = v22;
            *&v95[4] = 1024;
            *&v95[6] = v92;
            *v96 = 1024;
            *&v96[2] = v53;
            *&v96[6] = 1024;
            *&v96[8] = v30;
            *&v96[12] = 2112;
            *&v96[14] = v51;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Magnet corruption! This packet(%dB) (last recv %d/%u) did not decode! data(%d) %@", buf, 0x24u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v84 = v30;
              v85 = v51;
              v83 = self->_totalReceivedRawBytes;
              v81 = v22;
              v82 = v92;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v84 = v30;
                v85 = v51;
                v83 = self->_totalReceivedRawBytes;
                v81 = v22;
                v82 = v92;
                _IDSLogV();
              }
            }
          }

          v54 = v92 == v89;

          objc_autoreleasePoolPop(v50);
          IDSLinkPacketBufferResetBufferStart();
          self->_currentIncomingPacket = currentIncomingPacket;
          self->_discardedRawBytes += v92;
          [(IDSBTLink *)self _localDetectedCorruption];
          goto LABEL_106;
        }

        if (self->_magnetCorruptionRecoveryMode)
        {
          [(IDSBTLink *)self _submitMagnetCorruptionMetricsToAWD];
          [(IDSBTLink *)self _resetMagnetCorruptionMetrics];
          self->_magnetCorruptionRecoveryMode = 0;
        }

        v40.i64[1] = v90;
        v40.i64[0] = v22 + LODWORD(currentIncomingPacket->var0) - var0;
        *&self->_totalBytesReceived = vaddq_s64(*&self->_totalBytesReceived, v40);
        *&self->_correctRawBytesSinceLastCorruption = vaddq_s64(*&self->_correctRawBytesSinceLastCorruption, v40);
        v41 = v37 == v22;
        v42 = v37 <= v22;
        v43 = v37 - v22;
        if (!v42)
        {
          IDSLinkPacketBufferAddBufferStart();
          currentIncomingPacket->var2 = v43;
LABEL_72:
          v91 = 1;
          v45 = v92;
          goto LABEL_74;
        }

        v45 = v92;
        if (v41)
        {
          IDSLinkPacketBufferResetBufferStart();
          v45 = v92;
          goto LABEL_109;
        }

LABEL_74:
        v46 = currentIncomingPacket->var2;
        if (!v46)
        {
          goto LABEL_78;
        }

        v47 = *currentIncomingPacket->var0;
        if (*currentIncomingPacket->var0 < 0)
        {
          if (v46 == 1)
          {
LABEL_78:
            v49 = 2;
            continue;
          }

          v22 = *(currentIncomingPacket->var0 + 1) | ((v47 & 0x7F) << 8);
          v48 = v22 + 2;
          v21 = 2;
        }

        else
        {
          v48 = v47 + 1;
          v21 = 1;
          v22 = *currentIncomingPacket->var0;
        }

        if (currentIncomingPacket->var1 < v48)
        {
          v55 = objc_autoreleasePoolPush();
          v56 = [NSData dataWithBytesNoCopy:currentIncomingPacket->var0 length:currentIncomingPacket->var2 freeWhenDone:0];
          v57 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = self->_totalReceivedRawBytes;
            v59 = currentIncomingPacket->var2;
            *buf = 67109890;
            *v95 = v92;
            *&v95[4] = 1024;
            *&v95[6] = v58;
            *v96 = 1024;
            *&v96[2] = v59;
            *&v96[6] = 2114;
            *&v96[8] = v56;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Magnet corruption! Bad packet length found. Initiate resync incoming stream! (last recv %d/%u) data(%d) = %{public}@", buf, 0x1Eu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v83 = currentIncomingPacket->var2;
              v84 = v56;
              v81 = v92;
              v82 = self->_totalReceivedRawBytes;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v83 = currentIncomingPacket->var2;
                v84 = v56;
                v81 = v92;
                v82 = self->_totalReceivedRawBytes;
                _IDSLogV();
              }
            }
          }

          v54 = v92 == v89;

          objc_autoreleasePoolPop(v55);
          IDSLinkPacketBufferResetBufferStart();
          self->_currentIncomingPacket = currentIncomingPacket;
          self->_discardedRawBytes += v92;
          [(IDSBTLink *)self _localDetectedCorruption];
          goto LABEL_106;
        }

        v49 = v48 - v46;
      }

      while (v49 < 1);
      if (v91)
      {
        memmove(__dst, currentIncomingPacket->var0, currentIncomingPacket->var2);
        currentIncomingPacket->var0 = __dst;
        currentIncomingPacket->var1 = 2000;
      }

LABEL_109:
      self->_currentIncomingPacket = currentIncomingPacket;
      if (v45 != v89)
      {
        return;
      }

LABEL_110:
      if (self->_resyncing)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v93 = -86;
    var1 = currentIncomingPacket->var1;
    v5 = [(IDSBTLink *)self _readFromDataChannel:currentIncomingPacket->var0 size:var1 withFlags:0 isSynced:&v93, v81, v82, v83, v84, v85, v86, v87];
    v6 = *__error();
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v93)
      {
        v8 = 115;
      }

      else
      {
        v8 = 45;
      }

      *buf = 67109632;
      *v95 = v5;
      *&v95[4] = 1024;
      *&v95[6] = var1;
      *v96 = 1024;
      *&v96[2] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Link manager read %d/%d bytes during resync %c", buf, 0x14u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v9 = 45;
      if (v93)
      {
        v9 = 115;
      }

      v82 = var1;
      v83 = v9;
      v81 = v5;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        if (v93)
        {
          v10 = 115;
        }

        else
        {
          v10 = 45;
        }

        v82 = var1;
        v83 = v10;
        v81 = v5;
        _IDSLogV();
      }
    }

    self->_discardedRawBytes += v5;
    if (v5 < 0 && v6 != 35)
    {
      break;
    }

    v12 = v5 < 0 || v5 < var1;
    v13 = objc_autoreleasePoolPush();
    if (v12)
    {
      if (v5 < 1)
      {
        v69 = 0;
      }

      else
      {
        v69 = [NSData dataWithBytesNoCopy:currentIncomingPacket->var0 length:v5 freeWhenDone:0];
      }

      v72 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *v95 = v5;
        *&v95[4] = 1024;
        *&v95[6] = var1;
        *v96 = 2112;
        *&v96[2] = v69;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Magnet corruption! received %dB with %dB buffer. Resync incoming stream done! content = %@", buf, 0x18u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      objc_autoreleasePoolPop(v13);
      self->_resyncing = 0;
      IDSLinkPacketBufferResetBufferStart();
      self->_currentIncomingPacket = currentIncomingPacket;
      if (qword_100CBF5D0 != -1)
      {
        sub_10093355C();
      }

      v73 = *&qword_100CBF5D8 * mach_continuous_time();
      lastResyncTime = self->_lastResyncTime;
      self->_lastResyncTime = v73;
      if (IMGetDomainBoolForKey())
      {
        v75 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v95 = ((v73 - lastResyncTime) * 1000.0);
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "DontSubmitDataCorruptionToAggd is set. Not submitting MagnetDataCorruptionRecoveryTimeInMs = %lld ms to aggd", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }

      else
      {
        v76 = [[IDSMagnetDataCorruptionRecoveryTimeInMsMetric alloc] initWithRecoveryTime:((v73 - lastResyncTime) * 1000.0)];
        v77 = +[IDSCoreAnalyticsLogger defaultLogger];
        [v77 logMetric:v76];

        v78 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v95 = ((v73 - lastResyncTime) * 1000.0);
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "submitting aggd metric - MagnetDataCorruptionRecoveryTimeInMs = %lld ms", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        IMSubmitSimpleAggegateMetric();
        IMSubmitSimpleAWDMetric();
        IMSubmitSimpleCoreAnalyticsMetric();
      }

      return;
    }

    v14 = [NSData dataWithBytesNoCopy:currentIncomingPacket->var0 length:v5 freeWhenDone:0];
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v95 = v5;
      *&v95[4] = 1024;
      *&v95[6] = var1;
      *v96 = 2112;
      *&v96[2] = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "received %dB with %dB buffer. Continue resyncing incoming stream. content = %@", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v82 = var1;
      v83 = v14;
      v81 = v5;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v82 = var1;
        v83 = v14;
        v81 = v5;
        _IDSLogV();
      }
    }

    objc_autoreleasePoolPop(v13);
  }

  v68 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *v95 = v5;
    *&v95[8] = 1024;
    *v96 = v6;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Link manager recv(resync) %zd errno %d - closing connection", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

LABEL_155:
  _IDSLinkPacketBufferRelease();
  self->_currentIncomingPacket = 0;
  [(IDSBTLink *)self invalidate];
}

- (void)_processOutgoingPacket
{
  if (self->_state > 3)
  {
    goto LABEL_18;
  }

  if (!self->_linkSuspended)
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      pipe = self->_pipe;
      *buf = 138412290;
      *v19 = pipe;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ready to write into pipe %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    self->_state = 4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained link:self didConnectForDeviceUniqueID:self->_deviceUniqueID cbuuid:self->_cbuuid];

LABEL_18:
    currentOutgoingPacket = self->_currentOutgoingPacket;
    if (currentOutgoingPacket)
    {
      v8 = IDSOSDataChannelWrite();
      v9 = *__error();
      v10 = +[IDSFoundationLog BTLink];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        var2 = currentOutgoingPacket->var2;
        var26 = currentOutgoingPacket->var26;
        if (!var26)
        {
          var26 = 42;
        }

        var27 = currentOutgoingPacket->var27;
        *buf = 67110144;
        *v19 = v8;
        *&v19[4] = 1024;
        *&v19[6] = var2;
        v20 = 1024;
        v21 = 45;
        v22 = 1024;
        v23 = var26;
        v24 = 1024;
        v25 = var27;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LMW2 %d/%d %c =%c (s:%d)", buf, 0x20u);
      }

      if (v8 < 1)
      {
        if (v8 < 0)
        {
          v17 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v19 = v9;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Link manager send2 errno %d", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            _IDSLogTransport();
          }

          if (v9 != 35 && v9 != 55)
          {
            [(IDSBTLink *)self invalidate];
          }
        }

        return;
      }

      IDSLinkPacketBufferAddBufferStart();
      if (currentOutgoingPacket->var2)
      {
        return;
      }

      v14 = vdupq_n_s64(1uLL);
      v14.i64[0] = currentOutgoingPacket->var3;
      *&self->_totalBytesSent = vaddq_s64(*&self->_totalBytesSent, v14);
      _IDSLinkPacketBufferRelease();
      self->_currentOutgoingPacket = 0;
      kdebug_trace();
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 link:self hasSpaceAvailable:1 deviceUniqueID:self->_deviceUniqueID cbuuid:self->_cbuuid];

      if (self->_writeSuspended)
      {
        return;
      }
    }

    else
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 link:self hasSpaceAvailable:1 deviceUniqueID:self->_deviceUniqueID cbuuid:self->_cbuuid];

      if (self->_writeSuspended)
      {
        return;
      }
    }

LABEL_28:
    IDSOSDataChannelFd();
    IDSTransportThreadSuspendSocket();
    self->_writeSuspended = 1;
    return;
  }

  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ready but already suspended", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  self->_state = 3;
  if (!self->_writeSuspended)
  {
    goto LABEL_28;
  }
}

- (id)generateLinkReport:(double)a3 isCurrentLink:(BOOL)a4
{
  if (self->_previousReportTime == 0.0)
  {
    v9 = 0;
  }

  else
  {
    state = self->_state;
    if (a4)
    {
      v7 = 42;
    }

    else
    {
      v7 = 32;
    }

    v23 = v7;
    if (state > 6)
    {
      v8 = "UnexpectedState";
    }

    else
    {
      v8 = _IDSLinkStateStrings[state];
    }

    v22 = v8;
    v21 = self->_totalPacketsSent - self->_previousPacketsSent;
    v10 = formattedBytes();
    v11 = formattedSpeed();
    totalPacketsSent = self->_totalPacketsSent;
    v13 = formattedBytes();
    v14 = self->_totalPacketsReceived - self->_previousPacketsReceived;
    v15 = formattedBytes();
    v16 = formattedSpeed();
    totalPacketsReceived = self->_totalPacketsReceived;
    v18 = formattedBytes();
    v9 = [NSString stringWithFormat:@"%c Magnet    (%s) Tx %6llu pkts %@B %@bps     %6llu pkts %@B\n                        Rx %6llu pkts %@B %@bps     %6llu pkts %@B\n", v23, v22, v21, v10, v11, totalPacketsSent, v13, v14, v15, v16, totalPacketsReceived, v18];
  }

  self->_previousReportTime = a3;
  v19 = *&self->_totalBytesReceived;
  *&self->_previousBytesSent = *&self->_totalBytesSent;
  *&self->_previousBytesReceived = v19;

  return v9;
}

- (void)suspendLink:(BOOL)a3
{
  if (a3)
  {
    if (!self->_linkSuspended)
    {
      v4 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BTLink is now suspended", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      self->_linkSuspended = 1;
      if (self->_state == 4)
      {
        self->_state = 3;
      }
    }
  }

  else if (self->_linkSuspended)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BTLink is now resumed", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    self->_linkSuspended = 0;
    if (self->_state == 3)
    {
      self->_state = 4;
    }

    if (self->_writeSuspended)
    {
      IDSOSDataChannelFd();
      IDSTransportThreadResumeSocket();
      self->_writeSuspended = 0;
    }
  }
}

- (void)injectFakePacket:(id *)a3
{
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Custom Test 9 - Packet injected into the BT Layer.", v6, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  self->_currentIncomingPacket = a3;
  [(IDSBTLink *)self _processIncomingPacket];
}

- (IDSLinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IDSLinkDelegate)alternateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alternateDelegate);

  return WeakRetained;
}

@end