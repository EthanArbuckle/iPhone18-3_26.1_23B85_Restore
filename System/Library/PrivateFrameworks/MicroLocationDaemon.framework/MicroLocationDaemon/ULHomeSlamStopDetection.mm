@interface ULHomeSlamStopDetection
- (BOOL)_shouldExitStaticState:(const void *)state;
- (ULHomeSlamStopDetection)initWithDbStore:(ULDatabaseStoreInterface *)store;
- (id)_getStopMotionTriggersFromOdometryEntries:()vector<ULOdometryDO;
- (id)_shouldExitMotionState:(const void *)state;
- (id)runStopDetectionAnalysisFromTime:(double)time toTime:;
- (void)_enterMotionStateAtTime:(void *)time;
- (void)_enterStaticState;
- (void)_runMotionStateLogicWithEntry:(const void *)entry andTriggers:(id)triggers;
- (void)_runStaticStateLogicWithEntry:(const void *)entry andTriggers:(id)triggers;
- (void)_setLargeMotionFence;
- (void)_setLongMotionTimerStartingDate:(id)date;
- (void)_setShortMotionTimerStartingDate:(id)date;
- (void)_setSmallMotionFence;
- (void)_setStaticFence;
- (void)_updateFencesAndTimersInMotionStateWithEntry:(const void *)entry;
@end

@implementation ULHomeSlamStopDetection

- (ULHomeSlamStopDetection)initWithDbStore:(ULDatabaseStoreInterface *)store
{
  v7.receiver = self;
  v7.super_class = ULHomeSlamStopDetection;
  v4 = [(ULHomeSlamStopDetection *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ULHomeSlamStopDetection *)v4 setDbStore:store];
  }

  return v5;
}

- (id)runStopDetectionAnalysisFromTime:(double)time toTime:
{
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:time];
  v7 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v7 defaultsDictionary];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometrySource"];
  v10 = [defaultsDictionary objectForKey:v9];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v10 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71370 unsignedIntValue];
  }

  v12 = unsignedIntValue;

  dbStore = [self dbStore];
  v14 = (*(*dbStore + 128))(dbStore);
  v15 = v14;
  __p = 0;
  v21 = 0;
  v22 = 0;
  if (v14)
  {
    LOBYTE(v18) = 1;
    [v14 efficientlyFetchOdometryEntriesWithLOIGroupUUIDs:&__p odometrySource:v12 startDate:v5 endDate:v6 fetchLimit:0 newest:1 ascending:v18];
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  memset(v19, 0, sizeof(v19));
  std::vector<ULOdometryDO>::__init_with_size[abi:ne200100]<ULOdometryDO*,ULOdometryDO*>(v19, v23, v24, (v24 - v23) >> 6);
  v16 = [self _getStopMotionTriggersFromOdometryEntries:v19];
  v26 = v19;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&v26);
  v26 = &v23;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&v26);

  return v16;
}

- (id)_getStopMotionTriggersFromOdometryEntries:()vector<ULOdometryDO
{
  array = [MEMORY[0x277CBEB18] array];
  [(ULHomeSlamStopDetection *)self _enterStaticState];
  begin = a3->__begin_;
  end = a3->__end_;
  while (begin != end)
  {
    state = [(ULHomeSlamStopDetection *)self state];
    if (state)
    {
      if (state == 1)
      {
        [(ULHomeSlamStopDetection *)self _runStaticStateLogicWithEntry:begin andTriggers:array];
      }
    }

    else
    {
      [(ULHomeSlamStopDetection *)self _runMotionStateLogicWithEntry:begin andTriggers:array];
    }

    begin = (begin + 64);
  }

  return array;
}

- (void)_runStaticStateLogicWithEntry:(const void *)entry andTriggers:(id)triggers
{
  triggersCopy = triggers;
  if ([(ULHomeSlamStopDetection *)self _shouldExitStaticState:entry])
  {
    [(ULHomeSlamStopDetection *)self _enterMotionStateAtTime:*(entry + 5)];
    v6 = [ULHomeSlamMotionChangeTrigger alloc];
    v7 = [(ULHomeSlamStopDetection *)self _timepointToDate:*(entry + 5)];
    v8 = [(ULHomeSlamMotionChangeTrigger *)v6 initWithdate:v7 andTrigger:0];
    [triggersCopy addObject:v8];
  }
}

- (void)_runMotionStateLogicWithEntry:(const void *)entry andTriggers:(id)triggers
{
  triggersCopy = triggers;
  v6 = [(ULHomeSlamStopDetection *)self _shouldExitMotionState:entry];
  if (v6)
  {
    v7 = [[ULHomeSlamMotionChangeTrigger alloc] initWithdate:v6 andTrigger:1];
    [triggersCopy addObject:v7];

    [(ULHomeSlamStopDetection *)self _enterStaticState];
    [(ULHomeSlamStopDetection *)self _runStaticStateLogicWithEntry:entry andTriggers:triggersCopy];
  }

  else
  {
    [(ULHomeSlamStopDetection *)self _updateFencesAndTimersInMotionStateWithEntry:entry];
  }
}

- (BOOL)_shouldExitStaticState:(const void *)state
{
  staticFence = [(ULHomeSlamStopDetection *)self staticFence];
  LOBYTE(state) = [staticFence didFenceCrossWithOdometryEntry:state];

  return state;
}

- (id)_shouldExitMotionState:(const void *)state
{
  v4 = [(ULHomeSlamStopDetection *)self _timepointToDate:*(state + 5)];
  shortTimer = [(ULHomeSlamStopDetection *)self shortTimer];
  v6 = [shortTimer checkTimeoutAtDate:v4];

  if (!v6)
  {
    longTimer = [(ULHomeSlamStopDetection *)self longTimer];
    v6 = [longTimer checkTimeoutAtDate:v4];
  }

  return v6;
}

- (void)_updateFencesAndTimersInMotionStateWithEntry:(const void *)entry
{
  v9 = [(ULHomeSlamStopDetection *)self _timepointToDate:*(entry + 5)];
  largeFence = [(ULHomeSlamStopDetection *)self largeFence];
  v6 = [largeFence didFenceCrossWithOdometryEntry:entry];

  if (v6)
  {
    [(ULHomeSlamStopDetection *)self _setLongMotionTimerStartingDate:v9];
  }

  smallFence = [(ULHomeSlamStopDetection *)self smallFence];
  v8 = [smallFence didFenceCrossWithOdometryEntry:entry];

  if (v8)
  {
    [(ULHomeSlamStopDetection *)self _setShortMotionTimerStartingDate:v9];
  }
}

- (void)_enterStaticState
{
  [(ULHomeSlamStopDetection *)self setState:1];

  [(ULHomeSlamStopDetection *)self _setStaticFence];
}

- (void)_enterMotionStateAtTime:(void *)time
{
  [time setState:0];
  [time _setLargeMotionFence];
  [time _setSmallMotionFence];
  v4 = [time _timepointToDate:a2];
  [time _setLongMotionTimerStartingDate:?];
  [time _setShortMotionTimerStartingDate:v4];
}

- (void)_setStaticFence
{
  v3 = [ULHomeSlamFence alloc];
  v4 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamStaticFenceSize"];
  v7 = [defaultsDictionary objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_286A72AE0;
  }

  v10 = v8;

  [v10 floatValue];
  v9 = [(ULHomeSlamFence *)v3 initWithFenceRadius:?];
  [(ULHomeSlamStopDetection *)self setStaticFence:v9];
}

- (void)_setLargeMotionFence
{
  v3 = [ULHomeSlamFence alloc];
  v4 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMotionLargeFenceSize"];
  v7 = [defaultsDictionary objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_286A71340;
  }

  v10 = v8;

  [v10 floatValue];
  v9 = [(ULHomeSlamFence *)v3 initWithFenceRadius:?];
  [(ULHomeSlamStopDetection *)self setLargeFence:v9];
}

- (void)_setSmallMotionFence
{
  v3 = [ULHomeSlamFence alloc];
  v4 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMotionSmallFenceSize"];
  v7 = [defaultsDictionary objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_286A72AF0;
  }

  v10 = v8;

  [v10 floatValue];
  v9 = [(ULHomeSlamFence *)v3 initWithFenceRadius:?];
  [(ULHomeSlamStopDetection *)self setSmallFence:v9];
}

- (void)_setLongMotionTimerStartingDate:(id)date
{
  dateCopy = date;
  v4 = [ULHomeSlamTimer alloc];
  v5 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMotionLongTimerLength"];
  v8 = [defaultsDictionary objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
  }

  else
  {
    v9 = &unk_286A71358;
  }

  [v9 doubleValue];
  v10 = [(ULHomeSlamTimer *)v4 initWithTimeout:dateCopy andStartTime:?];
  [(ULHomeSlamStopDetection *)self setLongTimer:v10];
}

- (void)_setShortMotionTimerStartingDate:(id)date
{
  dateCopy = date;
  v4 = [ULHomeSlamTimer alloc];
  v5 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMotionShortTimerLength"];
  v8 = [defaultsDictionary objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
  }

  else
  {
    v9 = &unk_286A71328;
  }

  [v9 doubleValue];
  v10 = [(ULHomeSlamTimer *)v4 initWithTimeout:dateCopy andStartTime:?];
  [(ULHomeSlamStopDetection *)self setShortTimer:v10];
}

@end