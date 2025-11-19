@interface DTObjectAllocService
+ (void)registerCapabilities:(id)a3;
- (DTObjectAllocService)initWithChannel:(id)a3;
- (id)attachToPid:(id)a3 eventsMask:(id)a4;
- (id)preparedEnvironmentForLaunch:(id)a3 eventsMask:(id)a4;
- (void)messageReceived:(id)a3;
- (void)stopCollection;
@end

@implementation DTObjectAllocService

+ (void)registerCapabilities:(id)a3
{
  v5 = a3;
  v4 = +[DTAllocationsRecorder serviceIdentifier];
  [v5 publishCapability:v4 withVersion:+[DTAllocationsRecorder currentVersion](DTAllocationsRecorder forClass:{"currentVersion"), a1}];

  [v5 publishCapability:@"com.apple.instruments.server.services.objectalloc.immediate" withVersion:1 forClass:a1];
  [v5 publishCapability:@"com.apple.instruments.server.services.objectalloc.deferred" withVersion:1 forClass:a1];
  [v5 publishCapability:@"com.apple.instruments.server.services.objectalloc.zombies" withVersion:1 forClass:a1];
}

- (DTObjectAllocService)initWithChannel:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DTObjectAllocService;
  v5 = [(DTXService *)&v11 initWithChannel:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    recorder = v5->_recorder;
    v5->_recorder = v6;

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_247FD62F4;
    v9[3] = &unk_278EF3740;
    v10 = v4;
    [(DTAllocationsRecorder *)v5->_recorder setBufferHandler:v9];
  }

  return v5;
}

- (void)messageReceived:(id)a3
{
  if ([a3 errorStatus] == 2)
  {
    task = self->_task;
    if (task + 1 >= 2)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], task);
      self->_task = 0;
    }

    recorder = self->_recorder;

    [(DTAllocationsRecorder *)recorder cancel];
  }
}

- (id)preparedEnvironmentForLaunch:(id)a3 eventsMask:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  v7 = [v5 intValue];

  if ([DTAllocationsRecorder configureLocalLaunchEnvironment:v6 recordedEventsMask:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)attachToPid:(id)a3 eventsMask:(id)a4
{
  v6 = a4;
  self->_task = +[DTInstrumentServer taskForPid:](DTInstrumentServer, "taskForPid:", [a3 intValue]);
  v7 = objc_opt_new();
  recorder = self->_recorder;
  task = self->_task;
  v10 = [v6 intValue];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247FD65A4;
  v13[3] = &unk_278EF1948;
  v11 = v7;
  v14 = v11;
  [(DTAllocationsRecorder *)recorder startAttachingToTask:task recordedEventsMask:v10 errorHandler:v13];

  return v11;
}

- (void)stopCollection
{
  [(DTAllocationsRecorder *)self->_recorder stop];
  v3 = [(DTXService *)self channel];
  [v3 cancel];
}

@end