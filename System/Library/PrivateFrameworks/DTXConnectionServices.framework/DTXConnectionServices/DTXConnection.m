@interface DTXConnection
+ (id)connectionToAddress:(id)a3;
+ (void)initialize;
+ (void)observeDecompressionExceptionLogging:(id)a3;
+ (void)registerTransport:(Class)a3 forScheme:(id)a4;
- (BOOL)_addHandler:(id)a3 forMessage:(unsigned int)a4 channel:(id)a5;
- (BOOL)publishCapability:(id)a3 withVersion:(int)a4 forClass:(Class)a5 error:(id *)a6;
- (BOOL)sendMessage:(id)a3 fromChannel:(id)a4 sendMode:(int)a5 syncWithReply:(BOOL)a6 replyHandler:(id)a7;
- (DTXConnection)initWithTransport:(id)a3;
- (NSString)description;
- (double)preflightSynchronouslyWithTimeout:(double)a3;
- (id)_makeProxyChannelWithRemoteInterface:(id)a3 remoteInterfaceName:(id)a4 exportedInterface:(id)a5 exportedInterfaceName:(id)a6;
- (id)_sendHeartbeatAsyncWithTimeout:(double)a3;
- (id)localCapabilities;
- (id)makeChannelWithIdentifier:(id)a3;
- (id)makeProxyChannelWithRemoteInterface:(id)a3 exportedInterface:(id)a4;
- (id)remoteCapabilityVersions;
- (int)remoteCapabilityVersion:(id)a3;
- (void)_cancelInternal:(id)a3;
- (void)_channelCanceled:(unsigned int)a3;
- (void)_handleMissingRemoteCapabilities;
- (void)_handleProxyRequestForInterface:(id)a3 interfaceName:(id)a4 peerInterface:(id)a5 peerInterfaceName:(id)a6 handler:(id)a7;
- (void)_notifyOfPublishedCapabilities:(id)a3;
- (void)_requestChannelWithCode:(unsigned int)a3 identifier:(id)a4;
- (void)_routeMessage:(id)a3;
- (void)_scheduleMessage:(id)a3 toChannel:(id)a4;
- (void)_setupWireProtocols;
- (void)_unregisterChannel:(id)a3;
- (void)cancelWithSerializedTransport:(id)a3;
- (void)dealloc;
- (void)handleProxyRequestForInterface:(id)a3 peerInterface:(id)a4 handler:(id)a5;
- (void)publishServicesInImagePath:(id)a3;
- (void)registerCapabilityOverrideBlock:(id)a3;
- (void)replaceCompressorForDecompression:(id)a3;
- (void)resume;
- (void)setChannelHandler:(id)a3;
- (void)setMaximumEnqueueSize:(unint64_t)a3;
- (void)setRemoteTracer:(BOOL)a3;
- (void)suspend;
@end

@implementation DTXConnection

+ (void)initialize
{
  v45 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    objc_opt_class();
    v2 = dispatch_queue_create("connection transport registry guard", 0);
    v3 = qword_2814DB5C8;
    qword_2814DB5C8 = v2;

    v4 = objc_opt_new();
    v5 = qword_2814DB5B0;
    qword_2814DB5B0 = v4;

    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v6, v7);
    qword_2814DB5F0 = v8;
    v9 = os_log_create("com.apple.dt.DTXConnectionServices", "DTXConnection");
    v10 = qword_2814DB5B8;
    qword_2814DB5B8 = v9;

    v11 = os_log_create("com.apple.dt.DTXConnectionServices", "Capabilities");
    v12 = qword_2814DB5E8;
    qword_2814DB5E8 = v11;

    v13 = objc_opt_new();
    v14 = qword_2814DB5F8;
    qword_2814DB5F8 = v13;

    objc_msgSend_setErrorStatus_(qword_2814DB5F8, v15, 2);
    objc_msgSend__makeImmutable(qword_2814DB5F8, v16, v17);
    pthread_key_create(&qword_2814DB5E0, 0);
    v20 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v18, v19);
    byte_2814DB618 = objc_msgSend_BOOLForKey_(v20, v21, @"DTXConnectionTracer");

    if (byte_2814DB618 == 1)
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = getprogname();
      v24 = getpid();
      v26 = objc_msgSend_stringWithFormat_(v22, v25, @"%s[%d].DTXConnection.XXXXXX.log", v23, v24);
      v27 = NSTemporaryDirectory();
      v29 = objc_msgSend_stringByAppendingPathComponent_(v27, v28, v26);
      v30 = v29;
      v33 = objc_msgSend_fileSystemRepresentation(v30, v31, v32);

      v34 = strdup(v33);
      v35 = mkstemps(v34, 4);
      qword_27EE80D30 = fdopen(v35, "we");
      setlinebuf(qword_27EE80D30);
      v36 = qword_2814DB5B8;
      if (os_log_type_enabled(qword_2814DB5B8, OS_LOG_TYPE_ERROR))
      {
        v37 = v36;
        *buf = 136315650;
        v40 = getprogname();
        v41 = 1024;
        v42 = getpid();
        v43 = 2080;
        v44 = v34;
        _os_log_impl(&dword_247F3D000, v37, OS_LOG_TYPE_ERROR, "%s[%d]: Global DTXConnection log enabled - also written to '%s'", buf, 0x1Cu);
      }

      free(v34);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

+ (void)registerTransport:(Class)a3 forScheme:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 && v5)
  {
    v7 = qword_2814DB5C8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_247F45514;
    v8[3] = &unk_278EEE9D0;
    v10 = a3;
    v9 = v5;
    dispatch_sync(v7, v8);
  }
}

- (void)publishServicesInImagePath:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = v4;
  if (v4 && objc_msgSend_length(v4, v5, v6))
  {
    v8 = qword_2814DB5E8;
    if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v38 = v7;
      _os_log_impl(&dword_247F3D000, v8, OS_LOG_TYPE_INFO, "registering capabilities in image: %{public}@", buf, 0xCu);
    }

    v9 = v7;
    v12 = objc_msgSend_UTF8String(v9, v10, v11);
    v13 = objc_opt_class();
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_247F45BD8;
    v35[3] = &unk_278EEE9F8;
    v35[4] = self;
    sub_247F45920(v12, sel_registerCapabilities_, v13, v35);
    v14 = v7;
    v17 = objc_msgSend_UTF8String(v14, v15, v16);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v32 = sub_247F45CC4;
    v33 = &unk_278EEE9F8;
    v34 = self;
    v30 = v31;
    v18 = objc_getProtocol("DTTapServiceDelegate");
    if (!v18)
    {
      goto LABEL_25;
    }

    v19 = sub_247F4D208(v17);
    outCount = 0;
    v20 = objc_copyClassNamesForImage(v19, &outCount);
    v21 = qword_2814DB5E8;
    if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_DEBUG))
    {
      v22 = "<nil image?>";
      if (v17)
      {
        v22 = v17;
      }

      *buf = 136315394;
      v38 = v22;
      v39 = 1024;
      v40 = outCount;
      _os_log_impl(&dword_247F3D000, v21, OS_LOG_TYPE_DEBUG, "scanning image %s (%u classes)", buf, 0x12u);
    }

    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v24 = qword_2814DB5E8;
        if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_DEBUG))
        {
          v25 = v20[i];
          if (!v25)
          {
            v25 = "<nil className>";
          }

          *buf = 136315138;
          v38 = v25;
          _os_log_impl(&dword_247F3D000, v24, OS_LOG_TYPE_DEBUG, "checking class %s", buf, 0xCu);
        }

        v26 = v20[i];
        if (v26)
        {
          Class = objc_getClass(v26);
          if (class_conformsToProtocol(Class, v18))
          {
            v28 = qword_2814DB5E8;
            if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_247F3D000, v28, OS_LOG_TYPE_DEBUG, "protocol matched for class, calling block", buf, 2u);
            }

            v32(v30, Class);
          }
        }
      }
    }

    else if (!v20)
    {
LABEL_25:

      goto LABEL_26;
    }

    free(v20);
    goto LABEL_25;
  }

LABEL_26:

  v29 = *MEMORY[0x277D85DE8];
}

+ (id)connectionToAddress:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = v4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v27 = 0;
  v9 = objc_msgSend_scheme(v6, v7, v8);
  v10 = qword_2814DB5C8;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = sub_247F4D31C;
  v21 = &unk_278EEE8B8;
  v23 = &v24;
  v11 = v9;
  v22 = v11;
  dispatch_sync(v10, &v18);
  v12 = objc_alloc(v25[3]);
  v14 = objc_msgSend_initWithRemoteAddress_(v12, v13, v6, v18, v19, v20, v21);

  _Block_object_dispose(&v24, 8);
  v16 = objc_msgSend_initWithTransport_(v5, v15, v14);

  return v16;
}

- (void)_setupWireProtocols
{
  p_incomingParser = &self->_incomingParser;
  v5 = objc_msgSend_parsingComplete(self->_incomingParser, a2, v2);
  v6 = *p_incomingParser;
  *p_incomingParser = 0;

  outgoingTransmitter = self->_outgoingTransmitter;
  self->_outgoingTransmitter = 0;

  v10 = objc_msgSend_resourceTracker(self->_controlTransport, v8, v9);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_247F468E0;
  v28 = sub_247F468F0;
  v29 = 0;
  v11 = [DTXMessageParser alloc];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_247F468F8;
  v20[3] = &unk_278EEEA70;
  v12 = v10;
  v21 = v12;
  v22 = self;
  v23 = &v24;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_247F46A3C;
  v19[3] = &unk_278EEEA98;
  v19[4] = self;
  v14 = objc_msgSend_initWithMessageHandler_andParseExceptionHandler_(v11, v13, v20, v19);
  v15 = v25[5];
  v25[5] = v14;

  objc_storeStrong(p_incomingParser, v25[5]);
  v16 = objc_opt_new();
  v17 = self->_outgoingTransmitter;
  self->_outgoingTransmitter = v16;

  objc_msgSend_setSuggestedFragmentSize_(self->_outgoingTransmitter, v18, 0x10000);
  _Block_object_dispose(&v24, 8);
}

- (DTXConnection)initWithTransport:(id)a3
{
  v5 = a3;
  v67.receiver = self;
  v67.super_class = DTXConnection;
  v6 = [(DTXConnection *)&v67 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_controlTransport, a3);
      v10 = objc_msgSend_permittedBlockCompressionTypes(v5, v8, v9);
      v11 = *(v7 + 40);
      *(v7 + 40) = v10;

      v14 = objc_msgSend_resourceTracker(*(v7 + 32), v12, v13);
      v15 = *(v7 + 144);
      *(v7 + 144) = v14;

      v16 = objc_opt_new();
      v17 = *(v7 + 88);
      *(v7 + 88) = v16;

      v18 = objc_opt_new();
      v19 = *(v7 + 96);
      *(v7 + 96) = v18;

      v20 = objc_opt_new();
      v21 = *(v7 + 72);
      *(v7 + 72) = v20;

      v22 = objc_opt_new();
      v23 = *(v7 + 80);
      *(v7 + 80) = v22;

      v24 = objc_opt_new();
      v25 = *(v7 + 136);
      *(v7 + 136) = v24;

      v26 = dispatch_queue_create("connection control queue", 0);
      v27 = *(v7 + 24);
      *(v7 + 24) = v26;

      v28 = dispatch_queue_create_with_target_V2("connection data queue", 0, *(v7 + 24));
      v29 = *(v7 + 16);
      *(v7 + 16) = v28;

      v30 = dispatch_queue_create("connection handler queue", 0);
      v31 = *(v7 + 56);
      *(v7 + 56) = v30;

      v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v33 = dispatch_queue_create_with_target_V2("connection receive queue", v32, *(v7 + 56));
      v34 = *(v7 + 48);
      *(v7 + 48) = v33;

      v35 = dispatch_semaphore_create(0);
      v36 = *(v7 + 152);
      *(v7 + 152) = v35;

      v37 = objc_opt_new();
      v38 = *(v7 + 104);
      *(v7 + 104) = v37;

      v39 = objc_opt_new();
      v40 = *(v7 + 112);
      *(v7 + 112) = v39;

      *(v7 + 188) = atomic_fetch_add(dword_2814DB5D8, 1u) + 1;
      objc_msgSend_suspend(v7, v41, v42);
      v45 = byte_2814DB618;
      *(v7 + 184) = byte_2814DB618;
      if (v45 == 1)
      {
        *(v7 + 200) = 0x80000;
      }

      v46 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v43, v44);
      v48 = objc_msgSend_integerForKey_(v46, v47, @"DefaultBlockCompressionType");
      if (v48)
      {
        v50 = v48;
      }

      else
      {
        v50 = 3;
      }

      *(v7 + 216) = v50;
      v51 = objc_msgSend_integerForKey_(v46, v49, @"CompressionMinSizeThreshold");
      v52 = 0x4000;
      if (v51)
      {
        v52 = v51;
      }

      *(v7 + 224) = v52;
      *(v7 + 212) = 1;
      *(v7 + 64) = 1;
      v53 = [DTXChannel alloc];
      v55 = objc_msgSend_initWithConnection_channelIdentifier_label_(v53, v54, v7, 0, 0);
      v56 = *(v7 + 176);
      *(v7 + 176) = v55;

      objc_msgSend_setObject_forKeyedSubscript_(*(v7 + 72), v57, *(v7 + 176), &unk_285A15D70);
      BlockCompressor = objc_msgSend_createBlockCompressor(DTXBlockCompressorFactory, v58, v59);
      v61 = *(v7 + 232);
      *(v7 + 232) = BlockCompressor;

      if (objc_msgSend_supportedDirections(v5, v62, v63) == 2)
      {
        *(v7 + 208) = 2;
      }

      objc_msgSend__setupWireProtocols(v7, v64, v65);
    }

    else
    {
      v46 = v6;
      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  firstMessageSem = self->_firstMessageSem;
  if (firstMessageSem && self->_remoteCapabilityVersions)
  {
    dispatch_semaphore_wait(firstMessageSem, 0xFFFFFFFFFFFFFFFFLL);
  }

  v4.receiver = self;
  v4.super_class = DTXConnection;
  [(DTXConnection *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%s %p : x%d>", Name, self, self->_connectionIndex);
}

- (void)setMaximumEnqueueSize:(unint64_t)a3
{
  if (*MEMORY[0x277D85FA0] <= a3)
  {
    v4 = a3;
    objc_msgSend_setTotalSize_(self->_resourceTracker, a2, a3);
  }

  else
  {
    v4 = *MEMORY[0x277D85FA0];
    objc_msgSend_setTotalSize_(self->_resourceTracker, a2, *MEMORY[0x277D85FA0]);
  }

  objc_msgSend_setMaxChunkSize_(self->_resourceTracker, v5, v4 >> 3);
  v9 = objc_msgSend_resourceTracker(self->_controlTransport, v6, v7);
  objc_msgSend_setTotalSize_(v9, v8, v4);
}

- (BOOL)publishCapability:(id)a3 withVersion:(int)a4 forClass:(Class)a5 error:(id *)a6
{
  v37[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_247F468E0;
  v34 = sub_247F468F0;
  v35 = 0;
  handler_queue = self->_handler_queue;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_247F47170;
  v24 = &unk_278EEEAC0;
  v25 = self;
  v27 = &v30;
  v29 = a4;
  v12 = v10;
  v26 = v12;
  v28 = a5;
  dispatch_sync(handler_queue, &v21);
  v14 = v31[5];
  if (a6 && v14)
  {
    v15 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v37[0] = v14;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v37, &v36, 1, v21, v22, v23, v24, v25);
    *a6 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"DTXConnection", 2, v16);

    v14 = v31[5];
  }

  v18 = v14 == 0;

  _Block_object_dispose(&v30, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)localCapabilities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_247F468E0;
  v10 = sub_247F468F0;
  v11 = 0;
  handler_queue = self->_handler_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F47574;
  v5[3] = &unk_278EEE8B8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(handler_queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_sendHeartbeatAsyncWithTimeout:(double)a3
{
  v5 = objc_opt_new();
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v6 = kDTXHeartbeatMessage;
  defaultChannel = self->_defaultChannel;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247F476F4;
  v13[3] = &unk_278EEEAE8;
  v16 = a3;
  v15 = v17;
  v13[4] = self;
  v8 = v5;
  v14 = v8;
  objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v9, v6, defaultChannel, 2, 0, v13);
  v10 = v14;
  v11 = v8;

  _Block_object_dispose(v17, 8);

  return v11;
}

- (double)preflightSynchronouslyWithTimeout:(double)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  v8 = objc_msgSend__sendHeartbeatAsyncWithTimeout_(self, v6, v7, a3);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247F479D4;
  v13[3] = &unk_278EEEB10;
  v15 = &v16;
  v9 = v5;
  v14 = v9;
  objc_msgSend_handleCompletion_(v8, v10, v13);
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v11;
}

- (void)_handleMissingRemoteCapabilities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  receive_queue = self->_receive_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F47B1C;
  v5[3] = &unk_278EEE668;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(receive_queue, v5);
  if (*(v7 + 24) == 1)
  {
    objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v4, kDTXAckBarrierMessage, self->_defaultChannel, 2, 0, 0);
    dispatch_semaphore_wait(self->_firstMessageSem, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(self->_firstMessageSem);
  }

  _Block_object_dispose(&v6, 8);
}

- (int)remoteCapabilityVersion:(id)a3
{
  v6 = a3;
  remoteCapabilityVersions = self->_remoteCapabilityVersions;
  if (!remoteCapabilityVersions)
  {
    objc_msgSend__handleMissingRemoteCapabilities(self, v4, v5);
    remoteCapabilityVersions = self->_remoteCapabilityVersions;
  }

  v8 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5);

  if (remoteCapabilityVersions == v8 || (objc_msgSend_objectForKey_(self->_remoteCapabilityVersions, v9, v6), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = 0x80000000;
  }

  else
  {
    v13 = v10;
    v14 = objc_msgSend_intValue(v10, v11, v12);
  }

  return v14;
}

- (void)registerCapabilityOverrideBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    handler_queue = self->_handler_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_247F47CDC;
    v7[3] = &unk_278EEE5F0;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(handler_queue, v7);
  }
}

- (id)remoteCapabilityVersions
{
  if (!self->_remoteCapabilityVersions)
  {
    objc_msgSend__handleMissingRemoteCapabilities(self, a2, v2);
  }

  v4 = objc_opt_new();
  remoteCapabilityVersions = self->_remoteCapabilityVersions;
  v8 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);

  if (remoteCapabilityVersions != v8)
  {
    objc_msgSend_addEntriesFromDictionary_(v4, v9, self->_remoteCapabilityVersions);
  }

  v10 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_247F47EAC;
  v15[3] = &unk_278EEEB38;
  v16 = v10;
  v11 = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v12, v15);
  objc_msgSend_removeObjectsForKeys_(v4, v13, v11);

  return v4;
}

- (void)suspend
{
  dispatch_suspend(self->_outgoing_control_queue);
  receive_queue = self->_receive_queue;

  dispatch_suspend(receive_queue);
}

- (void)resume
{
  handler_queue = self->_handler_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F47FC4;
  block[3] = &unk_278EEE708;
  block[4] = self;
  dispatch_sync(handler_queue, block);
}

- (void)setChannelHandler:(id)a3
{
  v4 = a3;
  handler_queue = self->_handler_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247F48464;
  v7[3] = &unk_278EEE5F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(handler_queue, v7);
}

- (void)cancelWithSerializedTransport:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (v5)
  {
    objc_msgSend__cancelInternal_(self, v4, v5);
  }

  else
  {
    sub_247F59D54();
    objc_msgSend__cancelInternal_(self, v6, 0);
  }
}

- (void)_cancelInternal:(id)a3
{
  v4 = a3;
  receive_queue = self->_receive_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247F485BC;
  v7[3] = &unk_278EEE5F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(receive_queue, v7);
}

- (BOOL)sendMessage:(id)a3 fromChannel:(id)a4 sendMode:(int)a5 syncWithReply:(BOOL)a6 replyHandler:(id)a7
{
  v8 = a6;
  v98 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v16 = a7;
  v17 = 0;
  if (v12 && kDTXInterruptionMessage != v12)
  {
    v83 = v8;
    v18 = objc_msgSend_serializedLength(v12, v14, v15);
    v21 = v18;
    logMessageCallstackSizeThreshold = self->_logMessageCallstackSizeThreshold;
    if (logMessageCallstackSizeThreshold && v18 > logMessageCallstackSizeThreshold && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v23 = objc_msgSend_callStackSymbols(MEMORY[0x277CCACC8], v19, v20);
      v25 = objc_msgSend_componentsJoinedByString_(v23, v24, @"\n");
      v26 = v25;
      *buf = 134218242;
      v95 = vcvtd_n_f64_u64(v21, 0x14uLL);
      v96 = 2080;
      v97 = objc_msgSend_UTF8String(v26, v27, v28);
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "large message (%.2lf MB) from:\n%s", buf, 0x16u);
    }

    if (v21 >= self->_compressionMinSizeThreshold && self->_remoteCompressionCapabilityVersion >= 1)
    {
      compressionTypeForUnspecified = objc_msgSend_compressionTypeHint(v13, v19, v20);
      if (compressionTypeForUnspecified <= 1)
      {
        compressionTypeForUnspecified = self->_compressionTypeForUnspecified;
      }

      if (compressionTypeForUnspecified != 2)
      {
        permittedBlockCompressors = self->_permittedBlockCompressors;
        if (permittedBlockCompressors)
        {
          v31 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, compressionTypeForUnspecified);
          v33 = objc_msgSend_containsObject_(permittedBlockCompressors, v32, v31);

          if (v33)
          {
            remoteCompressionCapabilityVersion = self->_remoteCompressionCapabilityVersion;
            if (remoteCompressionCapabilityVersion >= 2)
            {
              remoteCompressionCapabilityVersion = 2;
            }

            objc_msgSend_compressWithCompressor_usingType_forCompatibilityWithVersion_(v12, v19, self->_compressor, compressionTypeForUnspecified, remoteCompressionCapabilityVersion);
          }
        }
      }
    }

    if (kDTXAckBarrierMessage == v12)
    {
      v35 = objc_msgSend_message(DTXMessage, v19, v20);

      objc_msgSend__makeBarrier(v35, v36, v37);
      v12 = v35;
    }

    objc_msgSend__makeImmutable(v12, v19, v20);
    v40 = objc_msgSend_serializedLength(v12, v38, v39);
    v42 = v40;
    if (v12 == kDTXBarrierMessage)
    {
      v43 = 0;
    }

    else
    {
      v43 = v40;
    }

    if (a5)
    {
      v44 = 0;
      v45 = objc_msgSend_acquireSize_(self->_resourceTracker, v41, 0);
    }

    else
    {
      v44 = v43;
      v45 = objc_msgSend_acquireSize_(self->_resourceTracker, v41, v43);
    }

    if (v45)
    {
      v48 = v45;
      v82 = v13;
      if (objc_msgSend_conversationIndex(v12, v46, v47))
      {
        if (objc_msgSend_deserialized(v12, v49, v50))
        {
          v53 = 0;
          v54 = objc_msgSend_channelCode(v82, v51, v52);
        }

        else
        {
          v48 = objc_msgSend_identifier(v12, v51, v52);
          v53 = objc_msgSend_conversationIndex(v12, v58, v59) << 32;
          v54 = objc_msgSend_channelCode(v12, v60, v61);
        }
      }

      else
      {
        v57 = v13;
        v53 = 0;
        v54 = objc_msgSend_channelCode(v57, v49, v50);
      }

      v62 = v54;
      v63 = 0x100000000;
      v81 = v16;
      if (!v16 && (objc_msgSend_isDispatch(v12, v55, v56) & v83) == 0)
      {
        v63 = 0;
      }

      v64 = v63 | v62;
      if (a5 == 1)
      {
        v65 = dispatch_semaphore_create(0);
      }

      else
      {
        v65 = 0;
      }

      v67 = v12 == kDTXBarrierMessage || v12 == kDTXHeartbeatMessage;
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = sub_247F49054;
      v84[3] = &unk_278EEEC78;
      v84[4] = self;
      v88 = v42;
      v92 = a5 == 2;
      v93 = v67;
      v12 = v12;
      v68 = v53 | v48;
      v85 = v12;
      v90 = v68;
      v91 = v64;
      v13 = v82;
      v69 = v82;
      v86 = v69;
      v89 = v44;
      v70 = v65;
      v87 = v70;
      v72 = MEMORY[0x24C1C0D80](v84);
      if (self->_tracer)
      {
        v73 = objc_msgSend_descriptionWithRoutingInformation_(v12, v71, v68, v64);
        sub_247F48190("  sent  ", self, v69, v73);
      }

      if (v83 && v63)
      {
        v76 = pthread_getspecific(qword_2814DB5E0);
        v16 = v81;
        if (v76 == v69 && v12 != kDTXBarrierMessage)
        {
          objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v74, @"DTXConnectionException", @"API misuse: client attempted to synchronously send a message and wait for response while already executing in channel's asynchronous handler context.");
        }

        if (v76)
        {
          objc_msgSend_suspendLimits(self->_incomingResourceTracker, v74, v75);
          sub_247F495A4(v81, v72);
          objc_msgSend_resumeLimits(self->_incomingResourceTracker, v77, v78);
        }

        else
        {
          sub_247F495A4(v81, v72);
        }

        if (!v70)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v16 = v81;
        (v72)[2](v72, v81);
        if (!v70)
        {
LABEL_55:

          v17 = 0;
          goto LABEL_56;
        }
      }

      dispatch_semaphore_wait(v70, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_55;
    }

    v17 = 1;
  }

LABEL_56:

  v79 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_addHandler:(id)a3 forMessage:(unsigned int)a4 channel:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12 = v9;
  if (v8)
  {
    if (!v9)
    {
      v12 = self->_defaultChannel;
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 1;
    v13 = objc_msgSend_channelCode(v12, v10, v11);
    v15 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v14, a4 | (v13 << 32));
    handler_queue = self->_handler_queue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_247F498A4;
    v20[3] = &unk_278EEECA0;
    v20[4] = self;
    v24 = &v27;
    v25 = v13;
    v12 = v12;
    v21 = v12;
    v22 = v15;
    v23 = v8;
    v26 = a4;
    v17 = v15;
    dispatch_sync(handler_queue, v20);
    v18 = *(v28 + 24);

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v18 = 1;
  }

  return v18 & 1;
}

- (void)_routeMessage:(id)a3
{
  v4 = a3;
  v26 = v4;
  if (kDTXInterruptionMessage == v4)
  {
    objc_msgSend_cancel(self, v5, v6);
  }

  else
  {
    v7 = objc_msgSend_conversationIndex(v4, v5, v6);
    v10 = objc_msgSend_channelCode(v26, v8, v9);
    if (v7)
    {
      LODWORD(v12) = v10;
      objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v11, v10);
    }

    else
    {
      v12 = -v10;
      objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v11, v12);
    }
    v14 = ;
    if (v12)
    {
      v15 = objc_msgSend_objectForKey_(self->_channelsByCode, v13, v14);
    }

    else
    {
      v15 = self->_defaultChannel;
    }

    v17 = v15;
    if (!v15)
    {
      v18 = objc_msgSend_objectForKey_(self->_unconfiguredChannelsByCode, v16, v14);
      v17 = v18;
      if (v18)
      {
        objc_msgSend_resume(v18, v16, v19);
        objc_msgSend_removeObjectForKey_(self->_unconfiguredChannelsByCode, v20, v14);
        objc_msgSend_setObject_forKey_(self->_channelsByCode, v21, v17, v14);
      }
    }

    objc_msgSend__scheduleMessage_toChannel_(self, v16, v26, v17);
    if (!self->_remoteCapabilityVersions)
    {
      v24 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v22, v23);
      objc_msgSend__notifyOfPublishedCapabilities_(self, v25, v24);
    }
  }
}

- (void)_scheduleMessage:(id)a3 toChannel:(id)a4
{
  v98[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = a4;
  if (self->_tracer)
  {
    v10 = objc_msgSend_description(v6, v7, v8);
    sub_247F48190("received", self, v9, v10);
  }

  if (v9)
  {
    if (objc_msgSend_isBarrier(v6, v7, v8))
    {
      incomingResourceTracker = self->_incomingResourceTracker;
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = sub_247F4A0F0;
      v93[3] = &unk_278EEE6E0;
      v93[4] = self;
      v94 = v9;
      objc_msgSend__scheduleMessage_tracker_withHandler_(v94, v14, v6, incomingResourceTracker, v93);
    }

    else if (objc_msgSend_isDispatch(v6, v11, v12))
    {
      v35 = objc_autoreleasePoolPush();
      if (self->_defaultChannel == v9 && objc_msgSend_shouldInvokeWithTarget_(v6, v34, self))
      {
        v36 = pthread_getspecific(qword_2814DB5E0);
        pthread_setspecific(qword_2814DB5E0, self->_defaultChannel);
        objc_msgSend_invokeWithTarget_replyChannel_validator_(v6, v37, self, v9, 0);
        pthread_setspecific(qword_2814DB5E0, v36);
        v38 = self->_incomingResourceTracker;
        v41 = objc_msgSend_cost(v6, v39, v40);
        objc_msgSend_releaseSize_(v38, v42, v41);
      }

      else
      {
        objc_msgSend__scheduleMessage_tracker_withHandler_(v9, v34, v6, self->_incomingResourceTracker, 0);
      }

      objc_autoreleasePoolPop(v35);
    }

    else if (objc_msgSend_conversationIndex(v6, v32, v33))
    {
      v45 = objc_msgSend_conversationIndex(v6, v43, v44);
      v48 = objc_msgSend_channelCode(v6, v46, v47);
      if (v45)
      {
        v51 = v48;
      }

      else
      {
        v51 = -v48;
      }

      v52 = MEMORY[0x277CCABB0];
      v53 = objc_msgSend_identifier(v6, v49, v50);
      v55 = objc_msgSend_numberWithUnsignedLongLong_(v52, v54, v53 | (v51 << 32));
      v59 = objc_msgSend_objectForKey_(self->_handlersByIdentifier, v56, v55);
      if (v59)
      {
        objc_msgSend__scheduleMessage_tracker_withHandler_(v9, v57, v6, self->_incomingResourceTracker, v59);
        objc_msgSend_removeObjectForKey_(self->_handlersByIdentifier, v60, v55);
      }

      else
      {
        if (objc_msgSend_expectsReply(v6, v57, v58))
        {
          v69 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v67, @"DTXMissingReplyBlockException", @"Peer was not expecting a reply for the provided message and dropped it", 0);
          v70 = MEMORY[0x277CCA9B8];
          v95 = *MEMORY[0x277CCA450];
          v73 = objc_msgSend_description(v69, v71, v72);
          v96 = v73;
          v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v74, &v96, &v95, 1);
          v77 = objc_msgSend_errorWithDomain_code_userInfo_(v70, v76, @"DTXConnection", 1, v75);
          v79 = objc_msgSend_newReplyWithError_(v6, v78, v77);

          objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v80, v79, v9, 2, 0, 0);
        }

        v81 = self->_incomingResourceTracker;
        v82 = objc_msgSend_cost(v6, v67, v68);
        objc_msgSend_releaseSize_(v81, v83, v82);
      }
    }

    else
    {
      if (!v6)
      {
        v61 = objc_msgSend_mutableCopy(self->_handlersByIdentifier, v43, v44);
        handlersByIdentifier = self->_handlersByIdentifier;
        v85 = MEMORY[0x277D85DD0];
        v86 = 3221225472;
        v87 = sub_247F4A150;
        v88 = &unk_278EEECC8;
        v89 = v9;
        v63 = v61;
        v90 = v63;
        v91 = self;
        v92 = 0;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(handlersByIdentifier, v64, &v85);
        v65 = self->_handlersByIdentifier;
        self->_handlersByIdentifier = v63;
        v66 = v63;
      }

      objc_msgSend__scheduleMessage_tracker_withHandler_(v9, v43, v6, self->_incomingResourceTracker, 0, v85, v86, v87, v88);
    }
  }

  else
  {
    if (objc_msgSend_expectsReply(v6, v7, v8))
    {
      v17 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v15, @"DTXMissingChannelException", @"Unable to invoke message sent to invalid channel", 0);
      v18 = MEMORY[0x277CCA9B8];
      v97 = *MEMORY[0x277CCA450];
      v21 = objc_msgSend_description(v17, v19, v20);
      v98[0] = v21;
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v98, &v97, 1);
      v25 = objc_msgSend_errorWithDomain_code_userInfo_(v18, v24, @"DTXConnection", 1, v23);
      v27 = objc_msgSend_newReplyWithError_(v6, v26, v25);

      objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v28, v27, 0, 2, 0, 0);
    }

    v29 = self->_incomingResourceTracker;
    v30 = objc_msgSend_cost(v6, v15, v16);
    objc_msgSend_releaseSize_(v29, v31, v30);
  }

  v84 = *MEMORY[0x277D85DE8];
}

- (id)makeChannelWithIdentifier:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_247F468E0;
  v31 = sub_247F468F0;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  handler_queue = self->_handler_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F4A48C;
  block[3] = &unk_278EEECF0;
  v21 = &v23;
  v22 = &v27;
  block[4] = self;
  v6 = v4;
  v20 = v6;
  dispatch_sync(handler_queue, block);
  v8 = objc_msgSend_messageWithSelector_typesAndArguments_(DTXMessage, v7, sel__requestChannelWithCode_identifier_, 3, *(v24 + 6), 11, v6, 0);
  v9 = v28[5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_247F4A554;
  v16[3] = &unk_278EEE6E0;
  v10 = v6;
  v17 = v10;
  v11 = v9;
  v18 = v11;
  objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v12, v8, 0, 2, 0, v16);
  objc_msgSend_setCompressionTypeHint_(v28[5], v13, self->_newChannelCompressionHint);
  v14 = v28[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

- (void)setRemoteTracer:(BOOL)a3
{
  self->_remoteTracer = a3;
  v5 = objc_msgSend_messageWithSelector_typesAndArguments_(DTXMessage, a2, sel__setTracerState_, 3, a3, 0);
  objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v4, v5, 0, 2, 0, 0);
}

- (void)_unregisterChannel:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_channelCode(v4, v5, v6);
    v10 = objc_msgSend_messageWithSelector_typesAndArguments_(DTXMessage, v9, sel__channelCanceled_, 3, v8, 0);
    objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v11, v10, 0, 2, 0, 0);
    objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v12, kDTXBarrierMessage, 0, 2, 0, 0);
    receive_queue = self->_receive_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F4A7C8;
    block[3] = &unk_278EEED18;
    v15 = v7;
    v16 = self;
    dispatch_async(receive_queue, block);
  }
}

- (void)_requestChannelWithCode:(unsigned int)a3 identifier:(id)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = -a3;
  v9 = [DTXChannel alloc];
  v11 = objc_msgSend_initWithConnection_channelIdentifier_label_(v9, v10, self, v8, v6);
  objc_msgSend_suspend(v11, v12, v13);
  objc_msgSend_setCompressionTypeHint_(v11, v14, self->_newChannelCompressionHint);
  v16 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, v8);
  objc_msgSend_setObject_forKey_(self->_unconfiguredChannelsByCode, v17, v11, v16);
  v55 = MEMORY[0x24C1C0D80](self->_channelHandler);
  v19 = objc_msgSend_componentsSeparatedByString_(v6, v18, @":");
  if (objc_msgSend_count(v19, v20, v21) == 3 && (objc_msgSend_objectAtIndex_(v19, v22, 0), v23 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v23, v24, @"dtxproxy"), v23, isEqualToString))
  {
    v27 = objc_msgSend_objectAtIndex_(v19, v26, 1);
    v28 = sub_247F4D400(v27);
    v29 = v28;

    v31 = objc_msgSend_objectAtIndex_(v19, v30, 2);
    v32 = sub_247F4D400(v31);
    v33 = v32;

    v34 = 1;
  }

  else
  {
    v28 = 0;
    v32 = 0;
    v34 = 0;
  }

  v35 = v28;
  v36 = v32;
  if (v34)
  {
    v54 = v16;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v72 = 0x3032000000;
    v73 = sub_247F468E0;
    v74 = sub_247F468F0;
    v75 = 0;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v37 = self->_protocolHandlers;
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v64, v70, 16);
    if (v40)
    {
      v41 = *v65;
      while (2)
      {
        v42 = v7;
        for (i = 0; i != v40; ++i)
        {
          if (*v65 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v44 = *(*(&v64 + 1) + 8 * i);
          if (objc_msgSend_matchesPublishedProtocolName_peerProtocolName_(v44, v39, v36, v35, v54))
          {
            objc_storeStrong((*(&buf + 1) + 40), v44);
            v7 = v42;
            goto LABEL_18;
          }
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v64, v70, 16);
        v7 = v42;
        if (v40)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v16 = v54;
    if (*(*(&buf + 1) + 40))
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = sub_247F4AD5C;
      v61[3] = &unk_278EEE668;
      v62 = v11;
      p_buf = &buf;
      objc_msgSend__scheduleBlock_(v62, v46, v61);
    }

    else
    {
      v50 = qword_2814DB5B8;
      if (os_log_type_enabled(qword_2814DB5B8, OS_LOG_TYPE_ERROR))
      {
        *v68 = 138543362;
        v69 = v6;
        _os_log_impl(&dword_247F3D000, v50, OS_LOG_TYPE_ERROR, "Protocol handler unavailable for specified channel: %{public}@", v68, 0xCu);
      }

      objc_msgSend_cancel(v11, v51, v52, v54);
    }

    _Block_object_dispose(&buf, 8);
  }

  else if (v55)
  {
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_247F4AE34;
    v56[3] = &unk_278EEED40;
    v60 = v55;
    v57 = v11;
    v58 = v6;
    v59 = self;
    objc_msgSend__scheduleBlock_(v57, v45, v56);
  }

  else
  {
    v47 = qword_2814DB5B8;
    if (os_log_type_enabled(qword_2814DB5B8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_247F3D000, v47, OS_LOG_TYPE_ERROR, "No channel handler specified; channel canceled. %{public}@", &buf, 0xCu);
    }

    objc_msgSend_cancel(v11, v48, v49);
  }

  objc_autoreleasePoolPop(v7);
  v53 = *MEMORY[0x277D85DE8];
}

- (void)_notifyOfPublishedCapabilities:(id)a3
{
  p_remoteCapabilityVersions = &self->_remoteCapabilityVersions;
  remoteCapabilityVersions = self->_remoteCapabilityVersions;
  v6 = objc_msgSend_mutableCopy(a3, a2, a3);
  v7 = v6;
  v8 = p_remoteCapabilityVersions[1];
  if (v8)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_247F4AFA4;
    v17[3] = &unk_278EEED68;
    v18 = v6;
    objc_msgSend_enumerateObjectsUsingBlock_(v8, v9, v17);
    capabilityOverrideBlocks = self->_capabilityOverrideBlocks;
    self->_capabilityOverrideBlocks = 0;
  }

  objc_storeStrong(p_remoteCapabilityVersions, v7);
  v12 = objc_msgSend_objectForKeyedSubscript_(*p_remoteCapabilityVersions, v11, @"com.apple.private.DTXBlockCompression");
  v15 = v12;
  if (v12)
  {
    v16 = objc_msgSend_intValue(v12, v13, v14);
  }

  else
  {
    v16 = 0x80000000;
  }

  self->_remoteCompressionCapabilityVersion = v16;
  if (!remoteCapabilityVersions)
  {
    dispatch_semaphore_signal(self->_firstMessageSem);
  }
}

- (void)_channelCanceled:(unsigned int)a3
{
  objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, -a3);
  v14 = p_channelsByCode = &self->_channelsByCode;
  v6 = objc_msgSend_objectForKey_(self->_channelsByCode, v5, v14);
  if (v6)
  {
    v8 = v6;
    objc_msgSend__scheduleMessage_toChannel_(self, v7, 0, v6);
  }

  else
  {
    p_channelsByCode = &self->_unconfiguredChannelsByCode;
    v10 = objc_msgSend_objectForKey_(self->_unconfiguredChannelsByCode, v7, v14);
    if (!v10)
    {
      goto LABEL_6;
    }

    v8 = v10;
    objc_msgSend_resume(v10, v11, v12);
    objc_msgSend__scheduleMessage_toChannel_(self, v13, 0, v8);
  }

  objc_msgSend_removeObjectForKey_(*p_channelsByCode, v9, v14);

LABEL_6:
}

- (void)handleProxyRequestForInterface:(id)a3 peerInterface:(id)a4 handler:(id)a5
{
  proto = a3;
  v8 = a4;
  v9 = a5;
  v11 = NSStringFromProtocol(proto);
  if (v8)
  {
    v12 = NSStringFromProtocol(v8);
    objc_msgSend__handleProxyRequestForInterface_interfaceName_peerInterface_peerInterfaceName_handler_(self, v13, proto, v11, v8, v12, v9);
  }

  else
  {
    objc_msgSend__handleProxyRequestForInterface_interfaceName_peerInterface_peerInterfaceName_handler_(self, v10, proto, v11, 0, 0, v9);
  }
}

- (void)_handleProxyRequestForInterface:(id)a3 interfaceName:(id)a4 peerInterface:(id)a5 peerInterfaceName:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_247F59E4C();
    if (v13)
    {
      goto LABEL_3;
    }
  }

  sub_247F59EC0();
LABEL_3:
  if ((v14 == 0) != (v15 == 0))
  {
    sub_247F59F34();
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_247F59FA8();
    goto LABEL_5;
  }

  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_5:
  handler_queue = self->_handler_queue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_247F4B774;
  v23[3] = &unk_278EEED90;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = self;
  v29 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_sync(handler_queue, v23);
}

- (id)makeProxyChannelWithRemoteInterface:(id)a3 exportedInterface:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = NSStringFromProtocol(v6);
  if (v7)
  {
    v10 = NSStringFromProtocol(v7);
    v12 = objc_msgSend__makeProxyChannelWithRemoteInterface_remoteInterfaceName_exportedInterface_exportedInterfaceName_(self, v11, v6, v9, v7, v10);
  }

  else
  {
    v12 = objc_msgSend__makeProxyChannelWithRemoteInterface_remoteInterfaceName_exportedInterface_exportedInterfaceName_(self, v8, v6, v9, 0, 0);
  }

  return v12;
}

- (id)_makeProxyChannelWithRemoteInterface:(id)a3 remoteInterfaceName:(id)a4 exportedInterface:(id)a5 exportedInterfaceName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14 = a6;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_247F5A01C();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  sub_247F5A090();
LABEL_3:
  if ((v12 == 0) != (v14 == 0))
  {
    sub_247F5A104();
  }

  v15 = @"*";
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"*";
  }

  if (v11)
  {
    v15 = v11;
  }

  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%@:%@:%@", @"dtxproxy", v16, v15);
  v19 = objc_msgSend_makeChannelWithIdentifier_(self, v18, v17);
  v20 = [DTXProxyChannel alloc];
  v22 = objc_msgSend_initWithChannel_remoteProtocol_localProtocol_(v20, v21, v19, v10, v12);

  return v22;
}

+ (void)observeDecompressionExceptionLogging:(id)a3
{
  v3 = MEMORY[0x24C1C0D80](a3, a2);
  v4 = qword_27EE80D38;
  qword_27EE80D38 = v3;
}

- (void)replaceCompressorForDecompression:(id)a3
{
  incomingParser = self->_incomingParser;
  if (incomingParser)
  {
    MEMORY[0x2821F9670](incomingParser, sel_replaceCompressor_, a3);
  }
}

@end