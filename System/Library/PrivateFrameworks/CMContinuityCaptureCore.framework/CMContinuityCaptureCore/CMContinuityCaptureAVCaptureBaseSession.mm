@interface CMContinuityCaptureAVCaptureBaseSession
- (CMContinuityCaptureAVCaptureBaseSession)initWithCaptureSession:(id)session queue:(id)queue;
- (void)dealloc;
- (void)didConfigure;
- (void)handleCaptureSessionNotification:(id)notification;
- (void)setClientDeviceModel:(int64_t)model;
- (void)setTransport:(int64_t)transport;
- (void)start;
- (void)stop;
- (void)willConfigure;
@end

@implementation CMContinuityCaptureAVCaptureBaseSession

- (void)dealloc
{
  v3 = *a2;
  v4 = 138412546;
  selfCopy = self;
  v6 = 1024;
  v7 = v3;
  _os_log_error_impl(&dword_242545000, log, OS_LOG_TYPE_ERROR, "%@ ContinuityCapture error : invalid avcapture session state %d", &v4, 0x12u);
}

- (void)handleCaptureSessionNotification:(id)notification
{
  notificationCopy = notification;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    captureSession = self->_captureSession;
    *buf = 138412802;
    selfCopy = self;
    v14 = 2112;
    v15 = captureSession;
    v16 = 2112;
    v17 = notificationCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ avcapture session %@ notification %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  name = [notificationCopy name];
  v8 = [name isEqualToString:*MEMORY[0x277CE59C0]];

  if (v8)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__CMContinuityCaptureAVCaptureBaseSession_handleCaptureSessionNotification___block_invoke;
    block[3] = &unk_278D5C080;
    objc_copyWeak(&v11, buf);
    dispatch_async(queue, block);
    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(buf);
}

void __76__CMContinuityCaptureAVCaptureBaseSession_handleCaptureSessionNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained willChangeValueForKey:@"state"];
    v2[3] = 3;
    [v2 didChangeValueForKey:@"state"];
    WeakRetained = v2;
  }
}

- (void)setTransport:(int64_t)transport
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CMContinuityCaptureAVCaptureBaseSession_setTransport___block_invoke;
  block[3] = &unk_278D5D2A0;
  objc_copyWeak(v7, &location);
  v7[1] = transport;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __56__CMContinuityCaptureAVCaptureBaseSession_setTransport___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    *(WeakRetained + 4) = v3;
    v4 = WeakRetained;
    [*(WeakRetained + 1) setContinuityCameraIsWired:v3 == 2];
    WeakRetained = v4;
  }
}

- (void)setClientDeviceModel:(int64_t)model
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CMContinuityCaptureAVCaptureBaseSession_setClientDeviceModel___block_invoke;
  block[3] = &unk_278D5D2A0;
  objc_copyWeak(v7, &location);
  v7[1] = model;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

uint64_t __64__CMContinuityCaptureAVCaptureBaseSession_setClientDeviceModel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    *(WeakRetained + 5) = v3;
    [*(WeakRetained + 1) setContinuityCameraClientDeviceClass:CMContinuityCaptureDeviceClassFromDeviceModel(v3)];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)willConfigure
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state == 1)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      state = self->_state;
      v7 = 138412546;
      selfCopy2 = self;
      v9 = 1024;
      v10 = state;
      v5 = "%@ skip will configure, state %d";
LABEL_6:
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, v5, &v7, 0x12u);
    }
  }

  else
  {
    [(AVCaptureSession *)self->_captureSession beginConfiguration];
    [(CMContinuityCaptureAVCaptureBaseSession *)self willChangeValueForKey:@"state"];
    self->_state = 1;
    [(CMContinuityCaptureAVCaptureBaseSession *)self didChangeValueForKey:@"state"];
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_state;
      v7 = 138412546;
      selfCopy2 = self;
      v9 = 1024;
      v10 = v6;
      v5 = "%@ done will configure, state %d";
      goto LABEL_6;
    }
  }
}

- (void)didConfigure
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state == 1)
  {
    [(AVCaptureSession *)self->_captureSession commitConfiguration];
    [(CMContinuityCaptureAVCaptureBaseSession *)self willChangeValueForKey:@"state"];
    if ([(AVCaptureSession *)self->_captureSession isRunning])
    {
      v3 = 2;
    }

    else
    {
      isInterrupted = [(AVCaptureSession *)self->_captureSession isInterrupted];
      v3 = 2;
      if (!isInterrupted)
      {
        v3 = 0;
      }
    }

    self->_state = v3;
    [(CMContinuityCaptureAVCaptureBaseSession *)self didChangeValueForKey:@"state"];
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      state = self->_state;
      v9 = 138412546;
      selfCopy2 = self;
      v11 = 1024;
      v12 = state;
      v6 = "%@ done did configure, state %d";
      goto LABEL_10;
    }
  }

  else
  {
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_state;
      v9 = 138412546;
      selfCopy2 = self;
      v11 = 1024;
      v12 = v5;
      v6 = "%@ skip did configure, state %d";
LABEL_10:
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, v6, &v9, 0x12u);
    }
  }
}

- (void)start
{
  [CMContinuityCaptureRemoteCompositeDevice setWombatMode:1];
  dispatch_assert_queue_V2(self->_queue);
  [(AVCaptureSession *)self->_captureSession startRunning];
  [(CMContinuityCaptureAVCaptureBaseSession *)self willChangeValueForKey:@"state"];
  if ([(AVCaptureSession *)self->_captureSession isRunning]|| [(AVCaptureSession *)self->_captureSession isInterrupted])
  {
    self->_state = 2;
  }

  [(CMContinuityCaptureAVCaptureBaseSession *)self didChangeValueForKey:@"state"];
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    v5 = 138412802;
    selfCopy = self;
    v7 = 2080;
    v8 = "[CMContinuityCaptureAVCaptureBaseSession start]";
    v9 = 1024;
    v10 = state;
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s RunningState %d", &v5, 0x1Cu);
  }
}

- (void)stop
{
  dispatch_assert_queue_V2(self->_queue);
  [(AVCaptureSession *)self->_captureSession stopRunning];
  if (![(AVCaptureSession *)self->_captureSession isRunning])
  {
    [(CMContinuityCaptureAVCaptureBaseSession *)self willChangeValueForKey:@"state"];
    self->_state = 0;
    [(CMContinuityCaptureAVCaptureBaseSession *)self didChangeValueForKey:@"state"];
  }

  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    v5 = 138412802;
    selfCopy = self;
    v7 = 2080;
    v8 = "[CMContinuityCaptureAVCaptureBaseSession stop]";
    v9 = 1024;
    v10 = state;
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s RunningState %d", &v5, 0x1Cu);
  }
}

- (CMContinuityCaptureAVCaptureBaseSession)initWithCaptureSession:(id)session queue:(id)queue
{
  sessionCopy = session;
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = CMContinuityCaptureAVCaptureBaseSession;
  v9 = [(CMContinuityCaptureAVCaptureBaseSession *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_captureSession, session);
    objc_storeStrong(&v10->_queue, queue);
    v10->_state = 0;
    v10->_transport = 0;
    v10->_clientDeviceModel = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    OUTLINED_FUNCTION_1_6(defaultCenter, v12, v13, v14, *MEMORY[0x277CE59C0]);

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    OUTLINED_FUNCTION_1_6(defaultCenter2, v16, v17, v18, *MEMORY[0x277CE5930]);

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    OUTLINED_FUNCTION_1_6(defaultCenter3, v20, v21, v22, *MEMORY[0x277CE5938]);

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    OUTLINED_FUNCTION_1_6(defaultCenter4, v24, v25, v26, *MEMORY[0x277CE59C8]);

    v27 = v10;
  }

  return v10;
}

@end