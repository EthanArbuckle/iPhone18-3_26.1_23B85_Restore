@interface _OSICLPCInterface
+ (BOOL)hasPerformanceControlService;
+ (id)sharedInstance;
- (_OSICLPCInterface)init;
- (unint64_t)optionFromValue:(int64_t)a3;
- (void)start;
- (void)stop;
- (void)updatePerformanceControlWithMitigation:(id)a3;
@end

@implementation _OSICLPCInterface

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[_OSICLPCInterface sharedInstance];
  }

  v3 = sharedInstance_instance_2;

  return v3;
}

- (_OSICLPCInterface)init
{
  v9.receiver = self;
  v9.super_class = _OSICLPCInterface;
  v2 = [(_OSICLPCInterface *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.osintelligence.clpcinterface", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = os_log_create("com.apple.osintelligence", "CLPCInterface");
    log = v2->_log;
    v2->_log = v6;
  }

  return v2;
}

- (void)start
{
  v7 = 0;
  v3 = [MEMORY[0x277D3A130] createClient:&v7];
  v4 = v7;
  clpcClient = self->_clpcClient;
  self->_clpcClient = v3;

  if (v4)
  {
    v6 = [(_OSICLPCInterface *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_OSICLPCInterface start];
    }
  }
}

- (void)stop
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (unint64_t)optionFromValue:(int64_t)a3
{
  if ((a3 - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (void)updatePerformanceControlWithMitigation:(id)a3
{
  v4 = a3;
  v5 = [(_OSICLPCInterface *)self optionFromValue:self->_mitigationOption];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60___OSICLPCInterface_updatePerformanceControlWithMitigation___block_invoke;
  block[3] = &unk_2799C19E0;
  block[4] = self;
  v9 = v4;
  v10 = v5;
  v7 = v4;
  dispatch_sync(queue, block);
}

+ (BOOL)hasPerformanceControlService
{
  v2 = IOServiceMatching("AppleCLPC");
  if (v2)
  {
    LODWORD(v2) = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v2);
    if (v2)
    {
      IOObjectRelease(v2);
      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

@end