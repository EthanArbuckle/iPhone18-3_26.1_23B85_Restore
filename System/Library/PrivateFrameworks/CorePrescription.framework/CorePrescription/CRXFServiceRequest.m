@interface CRXFServiceRequest
- (CRXFServiceRequest)initWithTimeout:(double)a3 completionQueue:(id)a4 completion:(id)a5;
- (id)createProxyOnConnection:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation CRXFServiceRequest

- (CRXFServiceRequest)initWithTimeout:(double)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v22.receiver = self;
  v22.super_class = CRXFServiceRequest;
  v10 = [(CRXFServiceRequest *)&v22 init];
  if (v10)
  {
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = +[CRXUDispatchQueue main];
    }

    completionQueue = v10->_completionQueue;
    v10->_completionQueue = v11;

    v13 = MEMORY[0x24C1A0F30](v9);
    completion = v10->_completion;
    v10->_completion = v13;

    v15 = [CRXUTimer scheduledTimerWithTimeInterval:v10 weakTarget:sel_timerDidFire_ selector:0 repeats:v10->_completionQueue queue:a3];
    timer = v10->_timer;
    v10->_timer = v15;

    v17 = [MEMORY[0x277CBEAA8] date];
    [v17 timeIntervalSinceReferenceDate];
    v10->_startTime = v18;

    v10->_roundTripTime = 0.0;
    v10->_finished = 0;
    v19 = os_log_create(CRXFLoggingSubsystem, CRXFLoggingCategory[0]);
    log = v10->_log;
    v10->_log = v19;
  }

  return v10;
}

- (void)timerDidFire:(id)a3
{
  v4 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:7 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ServiceClient/CRXFServiceRequest.m" line:62 userInfo:MEMORY[0x277CBEC10]];
  [(CRXFServiceRequest *)self finishWithResult:0 error:v4];
}

- (id)createProxyOnConnection:(id)a3
{
  objc_storeStrong(&self->_connection, a3);
  v5 = a3;
  v6 = [(CRXFServiceConnection *)self->_connection activate];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__CRXFServiceRequest_createProxyOnConnection___block_invoke;
  v9[3] = &unk_278E9FE20;
  v9[4] = self;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];

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

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  [(CRXUTimer *)v8->_timer invalidate];
  timer = v8->_timer;
  v8->_timer = 0;

  if (!v8->_finished)
  {
    v8->_finished = 1;
    [(CRXFServiceConnection *)v8->_connection invalidate];
    v10 = [MEMORY[0x277CBEAA8] date];
    [v10 timeIntervalSinceReferenceDate];
    v12 = v11;

    v13 = v12 - v8->_startTime;
    v8->_roundTripTime = v13;
    completionQueue = v8->_completionQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__CRXFServiceRequest_finishWithResult_error___block_invoke;
    v15[3] = &unk_278EA07C0;
    v15[4] = v8;
    v16 = v6;
    v18 = v13;
    v17 = v7;
    [(CRXUDispatchQueue *)completionQueue dispatchAsync:v15];
  }

  objc_sync_exit(v8);
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