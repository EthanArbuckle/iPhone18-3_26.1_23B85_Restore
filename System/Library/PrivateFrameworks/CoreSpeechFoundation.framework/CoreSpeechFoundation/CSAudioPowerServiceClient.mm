@interface CSAudioPowerServiceClient
+ (unint64_t)_getTimeIntervalFromFrequency:(int64_t)frequency;
- (CSAudioPowerServiceClient)initWithQueue:(id)queue frequency:(int64_t)frequency delegate:(id)delegate;
- (id)_connection;
- (id)_newConnection;
- (id)_service;
- (void)_beginUpdate;
- (void)_endUpdate;
- (void)_fetchPowerLevels;
- (void)_invalidate;
- (void)beginUpdate;
- (void)endUpdate;
- (void)invalidate;
@end

@implementation CSAudioPowerServiceClient

void __41__CSAudioPowerServiceClient__beginUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerFired];
}

- (void)beginUpdate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CSAudioPowerServiceClient_beginUpdate__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_beginUpdate
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    frequency = self->_frequency;
    *buf = 136315394;
    v15 = "[CSAudioPowerServiceClient _beginUpdate]";
    v16 = 2048;
    v17 = frequency;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Begin power update with frequency : %ld", buf, 0x16u);
  }

  v5 = [CSAudioPowerServiceClient _getTimeIntervalFromFrequency:self->_frequency];
  if (self->_timer)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    timer = self->_timer;
    self->_timer = v8;

    dispatch_source_set_timer(self->_timer, 0, v7, 0);
    objc_initWeak(buf, self);
    v10 = self->_timer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __41__CSAudioPowerServiceClient__beginUpdate__block_invoke;
    handler[3] = &unk_1E865CA40;
    objc_copyWeak(&v13, buf);
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(self->_timer);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __46__CSAudioPowerServiceClient__fetchPowerLevels__block_invoke(uint64_t a1, uint64_t a2, float a3, float a4)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained((*(a1 + 32) + 24));
    *&v9 = a3;
    *&v10 = a4;
    [v11 audioPowerDidUpdateWithType:a2 averagePower:v9 peakPower:v10];
  }
}

- (void)_fetchPowerLevels
{
  _service = [(CSAudioPowerServiceClient *)self _service];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CSAudioPowerServiceClient__fetchPowerLevels__block_invoke;
  v4[3] = &unk_1E865B448;
  v4[4] = self;
  [_service getAudioPowerUpdateWithCompletion:v4];
}

- (id)_service
{
  _connection = [(CSAudioPowerServiceClient *)self _connection];
  remoteObjectProxy = [_connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)_connection
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[CSAudioPowerServiceClient _connection]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Creating new xpc connection...", buf, 0xCu);
    }

    _newConnection = [(CSAudioPowerServiceClient *)self _newConnection];
    v6 = self->_xpcConnection;
    self->_xpcConnection = _newConnection;

    objc_initWeak(buf, self);
    v7 = self->_xpcConnection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __40__CSAudioPowerServiceClient__connection__block_invoke;
    v16[3] = &unk_1E865CA40;
    objc_copyWeak(&v17, buf);
    [(NSXPCConnection *)v7 setInterruptionHandler:v16];
    v8 = self->_xpcConnection;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __40__CSAudioPowerServiceClient__connection__block_invoke_3;
    v14 = &unk_1E865CA40;
    objc_copyWeak(&v15, buf);
    [(NSXPCConnection *)v8 setInvalidationHandler:&v11];
    [(NSXPCConnection *)self->_xpcConnection resume:v11];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
    xpcConnection = self->_xpcConnection;
  }

  v9 = *MEMORY[0x1E69E9840];

  return xpcConnection;
}

- (id)_newConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.siri.audiopowerupdate.xpc" options:0];
  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F593D4C8];
  [v3 setRemoteObjectInterface:v4];

  [v3 setExportedObject:self];
  [v3 _setQueue:self->_queue];
  return v3;
}

void __40__CSAudioPowerServiceClient__connection__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAudioPowerServiceClient _connection]_block_invoke";
    v9 = 2112;
    v10 = @"com.apple.siri.audiopowerupdate.xpc";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@ Interrupted", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 5) invalidate];
    v5 = v4[5];
    v4[5] = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __40__CSAudioPowerServiceClient__connection__block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAudioPowerServiceClient _connection]_block_invoke";
    v9 = 2112;
    v10 = @"com.apple.siri.audiopowerupdate.xpc";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@ Invalidated", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 5);
    *(WeakRetained + 5) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  [(CSAudioPowerServiceClient *)self _endUpdate];
  objc_storeWeak(&self->_delegate, 0);
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_xpcConnection invalidate];
    v4 = self->_xpcConnection;
    self->_xpcConnection = 0;

    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSAudioPowerServiceClient _invalidate]";
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s XPC connection invalidated", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_endUpdate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSAudioPowerServiceClient _endUpdate]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v5 = self->_timer;
    self->_timer = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CSAudioPowerServiceClient_invalidate__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)endUpdate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CSAudioPowerServiceClient_endUpdate__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSAudioPowerServiceClient)initWithQueue:(id)queue frequency:(int64_t)frequency delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = CSAudioPowerServiceClient;
  v11 = [(CSAudioPowerServiceClient *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, queue);
    v12->_frequency = frequency;
    objc_storeWeak(&v12->_delegate, delegateCopy);
  }

  return v12;
}

+ (unint64_t)_getTimeIntervalFromFrequency:(int64_t)frequency
{
  if ((frequency - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1DDB1FA50[frequency - 1];
  }
}

@end