@interface ICDebugTimer
+ (id)debugTimerForClass:(Class)a3;
+ (void)enableTimersForClass:(Class)a3;
- (void)pause;
- (void)resume;
- (void)start;
- (void)stop;
@end

@implementation ICDebugTimer

+ (id)debugTimerForClass:(Class)a3
{
  if ([enabledTimers containsObject:a3])
  {
    v3 = objc_alloc_init(ICDebugTimer);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)enableTimersForClass:(Class)a3
{
  if (enableTimersForClass__onceToken != -1)
  {
    +[ICDebugTimer enableTimersForClass:];
  }

  v4 = enabledTimers;

  [v4 addObject:a3];
}

uint64_t __37__ICDebugTimer_enableTimersForClass___block_invoke()
{
  enabledTimers = [MEMORY[0x1E695DFA8] set];

  return MEMORY[0x1EEE66BB8]();
}

- (void)start
{
  [(ICDebugTimer *)self setElapsedTime:0.0];
  v3 = [MEMORY[0x1E695DF00] date];
  [(ICDebugTimer *)self setStartingDate:v3];
}

- (void)pause
{
  v3 = [(ICDebugTimer *)self startingDate];
  [v3 timeIntervalSinceNow];
  v5 = v4;
  [(ICDebugTimer *)self elapsedTime];
  [(ICDebugTimer *)self setElapsedTime:v6 - v5];

  [(ICDebugTimer *)self setStartingDate:0];
}

- (void)resume
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(ICDebugTimer *)self setStartingDate:v3];
}

- (void)stop
{
  v3 = [(ICDebugTimer *)self startingDate];
  [v3 timeIntervalSinceNow];
  v5 = v4;
  [(ICDebugTimer *)self elapsedTime];
  [(ICDebugTimer *)self setElapsedTime:v6 - v5];

  [(ICDebugTimer *)self setStartingDate:0];
}

@end