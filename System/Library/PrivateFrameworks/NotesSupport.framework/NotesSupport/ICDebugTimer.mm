@interface ICDebugTimer
+ (id)debugTimerForClass:(Class)class;
+ (void)enableTimersForClass:(Class)class;
- (void)pause;
- (void)resume;
- (void)start;
- (void)stop;
@end

@implementation ICDebugTimer

+ (id)debugTimerForClass:(Class)class
{
  if ([enabledTimers containsObject:class])
  {
    v3 = objc_alloc_init(ICDebugTimer);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)enableTimersForClass:(Class)class
{
  if (enableTimersForClass__onceToken != -1)
  {
    +[ICDebugTimer enableTimersForClass:];
  }

  v4 = enabledTimers;

  [v4 addObject:class];
}

uint64_t __37__ICDebugTimer_enableTimersForClass___block_invoke()
{
  enabledTimers = [MEMORY[0x1E695DFA8] set];

  return MEMORY[0x1EEE66BB8]();
}

- (void)start
{
  [(ICDebugTimer *)self setElapsedTime:0.0];
  date = [MEMORY[0x1E695DF00] date];
  [(ICDebugTimer *)self setStartingDate:date];
}

- (void)pause
{
  startingDate = [(ICDebugTimer *)self startingDate];
  [startingDate timeIntervalSinceNow];
  v5 = v4;
  [(ICDebugTimer *)self elapsedTime];
  [(ICDebugTimer *)self setElapsedTime:v6 - v5];

  [(ICDebugTimer *)self setStartingDate:0];
}

- (void)resume
{
  date = [MEMORY[0x1E695DF00] date];
  [(ICDebugTimer *)self setStartingDate:date];
}

- (void)stop
{
  startingDate = [(ICDebugTimer *)self startingDate];
  [startingDate timeIntervalSinceNow];
  v5 = v4;
  [(ICDebugTimer *)self elapsedTime];
  [(ICDebugTimer *)self setElapsedTime:v6 - v5];

  [(ICDebugTimer *)self setStartingDate:0];
}

@end