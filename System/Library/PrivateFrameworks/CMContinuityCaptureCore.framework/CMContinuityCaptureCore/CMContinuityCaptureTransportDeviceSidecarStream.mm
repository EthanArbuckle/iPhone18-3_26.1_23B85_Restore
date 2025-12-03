@interface CMContinuityCaptureTransportDeviceSidecarStream
- (CMContinuityCaptureTransportDeviceSidecarStream)initWithSidecarStream:(id)stream entity:(int64_t)entity messageDelegate:(id)delegate;
- (NSString)description;
- (id)cipherKeyforSessionID:(id)d;
- (void)activate:(id)activate;
- (void)sendMessage:(id)message message:(id)a4 completion:(id)completion;
@end

@implementation CMContinuityCaptureTransportDeviceSidecarStream

- (id)cipherKeyforSessionID:(id)d
{
  stream = self->_stream;
  dCopy = d;
  rapportStream = [(SidecarStream *)stream rapportStream];
  streamKey = [rapportStream streamKey];
  v7 = CMContinuityCaptureCreateCipherKey(streamKey, dCopy);

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  streamIdentifier = [(CMContinuityCaptureTransportDeviceSidecarStream *)self streamIdentifier];
  v7 = [v3 stringWithFormat:@"%@: %@ entity:%u [%p]", v5, streamIdentifier, self->_entity, self];

  return v7;
}

- (void)activate:(id)activate
{
  activateCopy = activate;
  objc_initWeak(&location, self);
  streamIdentifier = [(CMContinuityCaptureTransportDeviceSidecarStream *)self streamIdentifier];
  if (self->_active == -1)
  {
    self->_active = 0;
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Activate", buf, 0xCu);
    }

    if (![(CMContinuityCaptureTransportDeviceSidecarStream *)self isMediaStream])
    {
      stream = self->_stream;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __60__CMContinuityCaptureTransportDeviceSidecarStream_activate___block_invoke;
      v13[3] = &unk_278D5D130;
      objc_copyWeak(&v15, &location);
      v14 = streamIdentifier;
      [(SidecarStream *)stream setHandler:v13];

      objc_destroyWeak(&v15);
    }

    v9 = self->_stream;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__CMContinuityCaptureTransportDeviceSidecarStream_activate___block_invoke_6;
    v10[3] = &unk_278D5C260;
    objc_copyWeak(&v12, &location);
    v11 = activateCopy;
    [(SidecarStream *)v9 activateWithCompletion:v10];

    objc_destroyWeak(&v12);
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-536870911 userInfo:0];
    (*(activateCopy + 2))(activateCopy, v6);
  }

  objc_destroyWeak(&location);
}

void __60__CMContinuityCaptureTransportDeviceSidecarStream_activate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v5 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_loadWeakRetained((a1 + 40));
        v8 = 138543618;
        v9 = v6;
        v10 = 2112;
        v11 = v3;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ got message %@", &v8, 0x16u);
      }

      v7 = objc_loadWeakRetained(WeakRetained + 4);
      [v7 enqueueResponse:v3 identifier:*(a1 + 32)];
    }
  }
}

void __60__CMContinuityCaptureTransportDeviceSidecarStream_activate___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [v3 code] == 0;
    }

    else
    {
      v5 = 1;
    }

    WeakRetained[10] = v5;
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Activation complete Error %{public}@", &v8, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)sendMessage:(id)message message:(id)a4 completion:(id)completion
{
  messageCopy = message;
  v9 = a4;
  completionCopy = completion;
  objc_initWeak(location, self);
  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v9];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:CMContinuityCaptureGetMessageGenerationID()];
  [v11 setObject:v12 forKeyedSubscript:@"ContinuityCaptureGID"];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__CMContinuityCaptureTransportDeviceSidecarStream_sendMessage_message_completion___block_invoke;
  block[3] = &unk_278D5C490;
  objc_copyWeak(&v35, location);
  v13 = messageCopy;
  v33 = v13;
  v14 = completionCopy;
  v34 = v14;
  v15 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __82__CMContinuityCaptureTransportDeviceSidecarStream_sendMessage_message_completion___block_invoke_11;
  v26 = &unk_278D5D158;
  objc_copyWeak(&v31, location);
  v16 = v15;
  v29 = v16;
  v17 = v11;
  v27 = v17;
  v18 = v13;
  v28 = v18;
  v19 = v14;
  v30 = v19;
  v20 = MEMORY[0x245D12020](&v23);
  [(SidecarStream *)self->_stream sendOPACK:v17 completion:v20, v23, v24, v25, v26];
  v21 = dispatch_time(0, 10000000000);
  v22 = dispatch_get_global_queue(2, 0);
  dispatch_after(v21, v22, v16);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v35);

  objc_destroyWeak(location);
}

void __82__CMContinuityCaptureTransportDeviceSidecarStream_sendMessage_message_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 48));
      v5 = *(a1 + 32);
      v8 = 138543618;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Message send timeout for %@", &v8, 0x16u);
    }

    v6 = *(a1 + 40);
    v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-536870186 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }
}

void __82__CMContinuityCaptureTransportDeviceSidecarStream_sendMessage_message_completion___block_invoke_11(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    dispatch_block_cancel(*(a1 + 48));
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) objectForKeyedSubscript:@"ContinuityCaptureGID"];
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) objectForKeyedSubscript:@"ContinuityCaptureSelector"];
      v9 = 138544386;
      v10 = WeakRetained;
      v11 = 2114;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 2112;
      v18 = a2;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Message GID %{public}@ identifier %{public}@ selector %{public}@ send error %@", &v9, 0x34u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (CMContinuityCaptureTransportDeviceSidecarStream)initWithSidecarStream:(id)stream entity:(int64_t)entity messageDelegate:(id)delegate
{
  streamCopy = stream;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = CMContinuityCaptureTransportDeviceSidecarStream;
  v11 = [(CMContinuityCaptureTransportDeviceSidecarStream *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_messageDelegate, delegateCopy);
    objc_storeStrong(&v12->_stream, stream);
    v12->_entity = entity;
    stream = v12->_stream;
    if (stream)
    {
      v14 = *MEMORY[0x277CBECE8];
      nwClientID = [(SidecarStream *)stream nwClientID];
      v17 = v16;
      *&v26.byte0 = nwClientID;
      *&v26.byte8 = v17;
      v18 = CFUUIDCreateFromUUIDBytes(v14, v26);
      v19 = CFUUIDCreateString(v14, v18);
      v20 = v19;
      if (v19)
      {
        v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v19];
      }

      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    streamUUID = v12->_streamUUID;
    v12->_streamUUID = v21;

    v12->_active = -1;
    v23 = v12;
  }

  return v12;
}

@end