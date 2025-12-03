@interface CRXFServiceRequest
- (CRXFServiceRequest)initWithTimeout:(double)timeout completionQueue:(id)queue completion:(id)completion;
- (id)createProxyOnConnection:(id)connection;
- (void)finishWithResult:(id)result error:(id)error;
- (void)timerDidFire:(id)fire;
@end

@implementation CRXFServiceRequest

- (CRXFServiceRequest)initWithTimeout:(double)timeout completionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v22.receiver = self;
  v22.super_class = CRXFServiceRequest;
  v10 = [(CRXFServiceRequest *)&v22 init];
  if (v10)
  {
    if (queueCopy)
    {
      v11 = queueCopy;
    }

    else
    {
      v11 = +[CRXUDispatchQueue main];
    }

    completionQueue = v10->_completionQueue;
    v10->_completionQueue = v11;

    v13 = MEMORY[0x24C1A0F30](completionCopy);
    completion = v10->_completion;
    v10->_completion = v13;

    v15 = [CRXUTimer scheduledTimerWithTimeInterval:v10 weakTarget:sel_timerDidFire_ selector:0 repeats:v10->_completionQueue queue:timeout];
    timer = v10->_timer;
    v10->_timer = v15;

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v10->_startTime = v18;

    v10->_roundTripTime = 0.0;
    v10->_finished = 0;
    v19 = os_log_create(CRXFLoggingSubsystem, CRXFLoggingCategory[0]);
    log = v10->_log;
    v10->_log = v19;
  }

  return v10;
}

- (void)timerDidFire:(id)fire
{
  v4 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:7 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ServiceClient/CRXFServiceRequest.m" line:62 userInfo:MEMORY[0x277CBEC10]];
  [(CRXFServiceRequest *)self finishWithResult:0 error:v4];
}

- (id)createProxyOnConnection:(id)connection
{
  objc_storeStrong(&self->_connection, connection);
  connectionCopy = connection;
  activate = [(CRXFServiceConnection *)self->_connection activate];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__CRXFServiceRequest_createProxyOnConnection___block_invoke;
  v9[3] = &unk_278E9FE20;
  v9[4] = self;
  v7 = [activate remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __46__CRXFServiceRequest_createProxyOnConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 64);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__CRXFServiceRequest_createProxyOnConnection___block_invoke_cold_1(v3, v4);
  }

  [*(*(a1 + 32) + 24) invalidate];
  [*(a1 + 32) finishWithResult:0 error:v3];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CRXUTimer *)selfCopy->_timer invalidate];
  timer = selfCopy->_timer;
  selfCopy->_timer = 0;

  if (!selfCopy->_finished)
  {
    selfCopy->_finished = 1;
    [(CRXFServiceConnection *)selfCopy->_connection invalidate];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v12 = v11;

    v13 = v12 - selfCopy->_startTime;
    selfCopy->_roundTripTime = v13;
    completionQueue = selfCopy->_completionQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__CRXFServiceRequest_finishWithResult_error___block_invoke;
    v15[3] = &unk_278EA07C0;
    v15[4] = selfCopy;
    v16 = resultCopy;
    v18 = v13;
    v17 = errorCopy;
    [(CRXUDispatchQueue *)completionQueue dispatchAsync:v15];
  }

  objc_sync_exit(selfCopy);
}

void __46__CRXFServiceRequest_createProxyOnConnection___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[CRXFServiceRequest createProxyOnConnection:]_block_invoke";
  v5 = 1024;
  v6 = 72;
  v7 = 2114;
  v8 = a1;
  _os_log_error_impl(&dword_24732C000, a2, OS_LOG_TYPE_ERROR, "%s @%d: remote proxy error: %{public}@", &v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

@end