@interface DTObjectAllocService
+ (void)registerCapabilities:(id)capabilities;
- (DTObjectAllocService)initWithChannel:(id)channel;
- (id)attachToPid:(id)pid eventsMask:(id)mask;
- (id)preparedEnvironmentForLaunch:(id)launch eventsMask:(id)mask;
- (void)messageReceived:(id)received;
- (void)stopCollection;
@end

@implementation DTObjectAllocService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v4 = +[DTAllocationsRecorder serviceIdentifier];
  [capabilitiesCopy publishCapability:v4 withVersion:+[DTAllocationsRecorder currentVersion](DTAllocationsRecorder forClass:{"currentVersion"), self}];

  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.objectalloc.immediate" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.objectalloc.deferred" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.objectalloc.zombies" withVersion:1 forClass:self];
}

- (DTObjectAllocService)initWithChannel:(id)channel
{
  channelCopy = channel;
  v11.receiver = self;
  v11.super_class = DTObjectAllocService;
  v5 = [(DTXService *)&v11 initWithChannel:channelCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    recorder = v5->_recorder;
    v5->_recorder = v6;

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_247FD62F4;
    v9[3] = &unk_278EF3740;
    v10 = channelCopy;
    [(DTAllocationsRecorder *)v5->_recorder setBufferHandler:v9];
  }

  return v5;
}

- (void)messageReceived:(id)received
{
  if ([received errorStatus] == 2)
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

- (id)preparedEnvironmentForLaunch:(id)launch eventsMask:(id)mask
{
  maskCopy = mask;
  v6 = [launch mutableCopy];
  intValue = [maskCopy intValue];

  if ([DTAllocationsRecorder configureLocalLaunchEnvironment:v6 recordedEventsMask:intValue])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)attachToPid:(id)pid eventsMask:(id)mask
{
  maskCopy = mask;
  self->_task = +[DTInstrumentServer taskForPid:](DTInstrumentServer, "taskForPid:", [pid intValue]);
  v7 = objc_opt_new();
  recorder = self->_recorder;
  task = self->_task;
  intValue = [maskCopy intValue];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247FD65A4;
  v13[3] = &unk_278EF1948;
  v11 = v7;
  v14 = v11;
  [(DTAllocationsRecorder *)recorder startAttachingToTask:task recordedEventsMask:intValue errorHandler:v13];

  return v11;
}

- (void)stopCollection
{
  [(DTAllocationsRecorder *)self->_recorder stop];
  channel = [(DTXService *)self channel];
  [channel cancel];
}

@end