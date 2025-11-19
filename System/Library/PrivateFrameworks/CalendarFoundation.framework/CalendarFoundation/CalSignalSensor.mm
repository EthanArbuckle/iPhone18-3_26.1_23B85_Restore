@interface CalSignalSensor
- (CalSignalSensor)initWithSignal:(int)a3;
- (id)description;
- (void)_shutDownSource;
- (void)dealloc;
- (void)startSensor;
- (void)stopSensor;
@end

@implementation CalSignalSensor

- (CalSignalSensor)initWithSignal:(int)a3
{
  v5.receiver = self;
  v5.super_class = CalSignalSensor;
  result = [(CalSignalSensor *)&v5 init];
  if (result)
  {
    result->_signal = a3;
  }

  return result;
}

- (void)dealloc
{
  [(CalSignalSensor *)self _shutDownSource];
  v3.receiver = self;
  v3.super_class = CalSignalSensor;
  [(CalSignalSensor *)&v3 dealloc];
}

- (id)description
{
  v3 = [CalDescriptionBuilder alloc];
  v9.receiver = self;
  v9.super_class = CalSignalSensor;
  v4 = [(CalSignalSensor *)&v9 description];
  v5 = [(CalDescriptionBuilder *)v3 initWithSuperclassDescription:v4];

  v6 = self;
  objc_sync_enter(v6);
  [(CalDescriptionBuilder *)v5 setKey:@"signal" withInt:[(CalSignalSensor *)v6 signal]];
  [(CalDescriptionBuilder *)v5 setKey:@"source" withPointerAddress:v6->_signalSource];
  objc_sync_exit(v6);

  v7 = [(CalDescriptionBuilder *)v5 build];

  return v7;
}

- (void)startSensor
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, v0, v1, "Starting signal sensor: [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __30__CalSignalSensor_startSensor__block_invoke(uint64_t a1)
{
  v2 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __30__CalSignalSensor_startSensor__block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = [*(a1 + 32) fireBlock];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 32));
  }
}

- (void)stopSensor
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, v0, v1, "Signal sensor not started.  Will not stop.  Sensor: [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_shutDownSource
{
  signalSource = self->_signalSource;
  if (signalSource)
  {
    dispatch_source_cancel(signalSource);
    v4 = self->_signalSource;
    self->_signalSource = 0;
  }
}

void __30__CalSignalSensor_startSensor__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, a2, a3, "Received signal: [%lu]", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

@end