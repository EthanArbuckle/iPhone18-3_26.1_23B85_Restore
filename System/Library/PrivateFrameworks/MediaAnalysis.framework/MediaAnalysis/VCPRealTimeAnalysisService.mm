@interface VCPRealTimeAnalysisService
+ (id)analysisService;
+ (id)errorWithStatus:(int)a3 andDescription:(id)a4;
- (VCPRealTimeAnalysisService)init;
- (id)connection;
- (void)dealloc;
- (void)requestAnalysis:(unint64_t)a3 ofPixelBuffer:(__CVBuffer *)a4 withProperties:(id)a5 withCompletionHandler:(id)a6;
@end

@implementation VCPRealTimeAnalysisService

- (VCPRealTimeAnalysisService)init
{
  v7.receiver = self;
  v7.super_class = VCPRealTimeAnalysisService;
  v2 = [(VCPRealTimeAnalysisService *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    connectionLock = v2->_connectionLock;
    v2->_connectionLock = v3;

    connection = v2->_connection;
    v2->_connection = 0;
  }

  return v2;
}

+ (id)analysisService
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)dealloc
{
  [(VCPRealTimeAnalysisService *)self invalidate];
  v3.receiver = self;
  v3.super_class = VCPRealTimeAnalysisService;
  [(VCPRealTimeAnalysisService *)&v3 dealloc];
}

+ (id)errorWithStatus:(int)a3 andDescription:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v6 errorWithDomain:*MEMORY[0x1E696A768] code:a3 userInfo:v7];

  return v8;
}

- (id)connection
{
  [(NSLock *)self->_connectionLock lock];
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mediaanalysisd.realtime" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v6 = self->_connection;
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4A19DF0];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    v8 = self->_connection;
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F49D2F98];
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_33];
    objc_initWeak(&location, self);
    v10 = self->_connection;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __40__VCPRealTimeAnalysisService_connection__block_invoke_10;
    v16 = &unk_1E834D098;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:&v13];
    [(NSXPCConnection *)self->_connection resume:v13];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  v11 = connection;
  [(NSLock *)self->_connectionLock unlock];

  return v11;
}

void __40__VCPRealTimeAnalysisService_connection__block_invoke()
{
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v0 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Real-time analysis client XPC connection interrupted", v0, 2u);
  }
}

void __40__VCPRealTimeAnalysisService_connection__block_invoke_10(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Real-time analysis client XPC connection invalidated", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] lock];
    v4 = v3[2];
    v3[2] = 0;

    [v3[1] unlock];
  }
}

- (void)requestAnalysis:(unint64_t)a3 ofPixelBuffer:(__CVBuffer *)a4 withProperties:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = CVPixelBufferGetIOSurface(a4);
  if (v12)
  {
    v13 = [(VCPRealTimeAnalysisService *)self connection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __97__VCPRealTimeAnalysisService_requestAnalysis_ofPixelBuffer_withProperties_withCompletionHandler___block_invoke;
    v19[3] = &unk_1E834C9C8;
    v14 = v11;
    v20 = v14;
    v15 = [v13 remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __97__VCPRealTimeAnalysisService_requestAnalysis_ofPixelBuffer_withProperties_withCompletionHandler___block_invoke_13;
    v17[3] = &unk_1E834C7A0;
    v18 = v14;
    [v15 requestAnalysis:a3 ofIOSurface:v12 withProperties:v10 withReply:v17];

    v16 = v20;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Pixel buffer not IOSurface-backed; dropping analysis request", buf, 2u);
    }

    v16 = [objc_opt_class() errorWithStatus:4294967246 andDescription:@"CVPixelbuffer not IOSurface backed"];
    (*(v11 + 2))(v11, 0, v16);
  }
}

void __97__VCPRealTimeAnalysisService_requestAnalysis_ofPixelBuffer_withProperties_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Real-time analysis client XPC connection error", v4, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

@end