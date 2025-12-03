@interface MRPowerLogger
+ (MRPowerLogger)sharedLogger;
- (MRPowerLogger)initWithQueue:(id)queue;
- (void)logEvent:(id)event withInfo:(id)info;
@end

@implementation MRPowerLogger

- (MRPowerLogger)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = MRPowerLogger;
  v6 = [(MRPowerLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

+ (MRPowerLogger)sharedLogger
{
  if (sharedLogger_onceToken != -1)
  {
    +[MRPowerLogger sharedLogger];
  }

  v3 = sharedLogger___logger;

  return v3;
}

void __29__MRPowerLogger_sharedLogger__block_invoke()
{
  v0 = [MRPowerLogger alloc];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.amp.MediaRemote.MRPowerLogger.shared", v4);
  v2 = [(MRPowerLogger *)v0 initWithQueue:v1];
  v3 = sharedLogger___logger;
  sharedLogger___logger = v2;
}

- (void)logEvent:(id)event withInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  queue = [(MRPowerLogger *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__MRPowerLogger_logEvent_withInfo___block_invoke;
  v11[3] = &unk_1E769A4A0;
  v12 = eventCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = eventCopy;
  dispatch_async(queue, v11);
}

uint64_t __35__MRPowerLogger_logEvent_withInfo___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEBUG, "[MRPowerLogger] logging event %@", &buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v6 = getPLLogRegisteredEventSymbolLoc_ptr;
  v12 = getPLLogRegisteredEventSymbolLoc_ptr;
  if (!getPLLogRegisteredEventSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v14 = __getPLLogRegisteredEventSymbolLoc_block_invoke;
    v15 = &unk_1E769ADA8;
    v16 = &v9;
    __getPLLogRegisteredEventSymbolLoc_block_invoke(&buf);
    v6 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v6)
  {
    __35__MRPowerLogger_logEvent_withInfo___block_invoke_cold_1();
  }

  result = v6(118, v4, v5, 0);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __35__MRPowerLogger_logEvent_withInfo___block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void soft_PLLogRegisteredEvent(PLClientID, CFStringRef, CFDictionaryRef, CFArrayRef)"}];
  [v0 handleFailureInFunction:v1 file:@"MRPowerLogger.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

@end