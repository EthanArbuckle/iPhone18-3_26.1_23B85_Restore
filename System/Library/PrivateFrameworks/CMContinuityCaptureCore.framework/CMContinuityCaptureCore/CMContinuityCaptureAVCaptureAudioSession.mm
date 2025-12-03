@interface CMContinuityCaptureAVCaptureAudioSession
- (CMContinuityCaptureAVCaptureAudioSession)initWithQueue:(id)queue;
- (void)configureSessionWithInput:(id)input andOutput:(id)output;
- (void)start;
- (void)stop;
@end

@implementation CMContinuityCaptureAVCaptureAudioSession

- (void)configureSessionWithInput:(id)input andOutput:(id)output
{
  inputCopy = input;
  outputCopy = output;
  queue = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(queue);

  captureSession = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
  v10 = [captureSession canAddInput:inputCopy];

  if (v10)
  {
    captureSession2 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
    [captureSession2 addInput:inputCopy];
  }

  else
  {
    captureSession2 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(captureSession2, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureAVCaptureAudioSession configureSessionWithInput:? andOutput:?];
    }
  }

  captureSession3 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
  v13 = [captureSession3 canAddOutput:outputCopy];

  if (v13)
  {
    captureSession4 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
    [captureSession4 addOutput:outputCopy];
  }

  else
  {
    captureSession4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(captureSession4, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureAVCaptureAudioSession configureSessionWithInput:? andOutput:?];
    }
  }
}

- (void)start
{
  queue = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CMContinuityCaptureAVCaptureBaseSession *)self state])
  {
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      state = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
      v8 = 2080;
      v9 = "[CMContinuityCaptureAVCaptureAudioSession start]";
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "Invalid state %d for %s", buf, 0x12u);
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CMContinuityCaptureAVCaptureAudioSession;
    [(CMContinuityCaptureAVCaptureBaseSession *)&v5 start];
  }
}

- (void)stop
{
  queue = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CMContinuityCaptureAVCaptureBaseSession *)self state]== 2)
  {
    v5.receiver = self;
    v5.super_class = CMContinuityCaptureAVCaptureAudioSession;
    [(CMContinuityCaptureAVCaptureBaseSession *)&v5 stop];
  }

  else
  {
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      state = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
      v8 = 2080;
      v9 = "[CMContinuityCaptureAVCaptureAudioSession stop]";
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "Invalid state %d for %s", buf, 0x12u);
    }
  }
}

- (CMContinuityCaptureAVCaptureAudioSession)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_alloc_init(MEMORY[0x277CE5B38]);
  if (!v5)
  {
    goto LABEL_6;
  }

  v9.receiver = self;
  v9.super_class = CMContinuityCaptureAVCaptureAudioSession;
  v6 = [(CMContinuityCaptureAVCaptureBaseSession *)&v9 initWithCaptureSession:v5 queue:queueCopy];
  if (!v6)
  {
    self = 0;
LABEL_6:
    selfCopy = 0;
    goto LABEL_4;
  }

  self = v6;
  selfCopy = self;
LABEL_4:

  return selfCopy;
}

- (void)configureSessionWithInput:(void *)a1 andOutput:.cold.1(void *a1)
{
  v1 = [a1 captureSession];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_2_5(&dword_242545000, v2, v3, "%{public}@ Cannot add AVCaptureDeviceInput (%p) to AVCaptureSession (%p)", v4, v5, v6, v7, v8);
}

- (void)configureSessionWithInput:(void *)a1 andOutput:.cold.2(void *a1)
{
  v1 = [a1 captureSession];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_2_5(&dword_242545000, v2, v3, "%{public}@ Cannot add AVCaptureAudioDataOutput (%p) to AVCaptureSession (%p)", v4, v5, v6, v7, v8);
}

@end