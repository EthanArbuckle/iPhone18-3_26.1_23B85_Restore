@interface ULHomeSlamStopDetection
- (BOOL)_shouldExitStaticState:(const void *)a3;
- (ULHomeSlamStopDetection)initWithDbStore:(ULDatabaseStoreInterface *)a3;
- (id)_getStopMotionTriggersFromOdometryEntries:()vector<ULOdometryDO;
- (id)_shouldExitMotionState:(const void *)a3;
- (id)runStopDetectionAnalysisFromTime:(double)a3 toTime:;
- (void)_enterMotionStateAtTime:(void *)a1;
- (void)_enterStaticState;
- (void)_runMotionStateLogicWithEntry:(const void *)a3 andTriggers:(id)a4;
- (void)_runStaticStateLogicWithEntry:(const void *)a3 andTriggers:(id)a4;
- (void)_setLargeMotionFence;
- (void)_setLongMotionTimerStartingDate:(id)a3;
- (void)_setShortMotionTimerStartingDate:(id)a3;
- (void)_setSmallMotionFence;
- (void)_setStaticFence;
- (void)_updateFencesAndTimersInMotionStateWithEntry:(const void *)a3;
@end

@implementation ULHomeSlamStopDetection

- (ULHomeSlamStopDetection)initWithDbStore:(ULDatabaseStoreInterface *)a3
{
  v7.receiver = self;
  v7.super_class = ULHomeSlamStopDetection;
  v4 = [(ULHomeSlamStopDetection *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ULHomeSlamStopDetection *)v4 setDbStore:a3];
  }

  return v5;
}

- (id)runStopDetectionAnalysisFromTime:(double)a3 toTime:
{
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a3];
  v7 = +[ULDefaultsSingleton shared];
  v8 = [v7 defaultsDictionary];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometrySource"];
  v10 = [v8 objectForKey:v9];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 unsignedIntValue];
  }

  else
  {
    v11 = [&unk_286A71370 unsignedIntValue];
  }

  v12 = v11;

  v13 = [a1 dbStore];
  v14 = (*(*v13 + 128))(v13);
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
  v16 = [a1 _getStopMotionTriggersFromOdometryEntries:v19];
  v26 = v19;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&v26);
  v26 = &v23;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&v26);

  return v16;
}

- (id)_getStopMotionTriggersFromOdometryEntries:()vector<ULOdometryDO
{
  v5 = [MEMORY[0x277CBEB18] array];
  [(ULHomeSlamStopDetection *)self _enterStaticState];
  begin = a3->__begin_;
  end = a3->__end_;
  while (begin != end)
  {
    v8 = [(ULHomeSlamStopDetection *)self state];
    if (v8)
    {
      if (v8 == 1)
      {
        [(ULHomeSlamStopDetection *)self _runStaticStateLogicWithEntry:begin andTriggers:v5];
      }
    }

    else
    {
      [(ULHomeSlamStopDetection *)self _runMotionStateLogicWithEntry:begin andTriggers:v5];
    }

    begin = (begin + 64);
  }

  return v5;
}

- (void)_runStaticStateLogicWithEntry:(const void *)a3 andTriggers:(id)a4
{
  v9 = a4;
  if ([(ULHomeSlamStopDetection *)self _shouldExitStaticState:a3])
  {
    [(ULHomeSlamStopDetection *)self _enterMotionStateAtTime:*(a3 + 5)];
    v6 = [ULHomeSlamMotionChangeTrigger alloc];
    v7 = [(ULHomeSlamStopDetection *)self _timepointToDate:*(a3 + 5)];
    v8 = [(ULHomeSlamMotionChangeTrigger *)v6 initWithdate:v7 andTrigger:0];
    [v9 addObject:v8];
  }
}

- (void)_runMotionStateLogicWithEntry:(const void *)a3 andTriggers:(id)a4
{
  v8 = a4;
  v6 = [(ULHomeSlamStopDetection *)self _shouldExitMotionState:a3];
  if (v6)
  {
    v7 = [[ULHomeSlamMotionChangeTrigger alloc] initWithdate:v6 andTrigger:1];
    [v8 addObject:v7];

    [(ULHomeSlamStopDetection *)self _enterStaticState];
    [(ULHomeSlamStopDetection *)self _runStaticStateLogicWithEntry:a3 andTriggers:v8];
  }

  else
  {
    [(ULHomeSlamStopDetection *)self _updateFencesAndTimersInMotionStateWithEntry:a3];
  }
}

- (BOOL)_shouldExitStaticState:(const void *)a3
{
  v4 = [(ULHomeSlamStopDetection *)self staticFence];
  LOBYTE(a3) = [v4 didFenceCrossWithOdometryEntry:a3];

  return a3;
}

- (id)_shouldExitMotionState:(const void *)a3
{
  v4 = [(ULHomeSlamStopDetection *)self _timepointToDate:*(a3 + 5)];
  v5 = [(ULHomeSlamStopDetection *)self shortTimer];
  v6 = [v5 checkTimeoutAtDate:v4];

  if (!v6)
  {
    v7 = [(ULHomeSlamStopDetection *)self longTimer];
    v6 = [v7 checkTimeoutAtDate:v4];
  }

  return v6;
}

- (void)_updateFencesAndTimersInMotionStateWithEntry:(const void *)a3
{
  v9 = [(ULHomeSlamStopDetection *)self _timepointToDate:*(a3 + 5)];
  v5 = [(ULHomeSlamStopDetection *)self largeFence];
  v6 = [v5 didFenceCrossWithOdometryEntry:a3];

  if (v6)
  {
    [(ULHomeSlamStopDetection *)self _setLongMotionTimerStartingDate:v9];
  }

  v7 = [(ULHomeSlamStopDetection *)self smallFence];
  v8 = [v7 didFenceCrossWithOdometryEntry:a3];

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

- (void)_enterMotionStateAtTime:(void *)a1
{
  [a1 setState:0];
  [a1 _setLargeMotionFence];
  [a1 _setSmallMotionFence];
  v4 = [a1 _timepointToDate:a2];
  [a1 _setLongMotionTimerStartingDate:?];
  [a1 _setShortMotionTimerStartingDate:v4];
}

- (void)_setStaticFence
{
  v3 = [ULHomeSlamFence alloc];
  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamStaticFenceSize"];
  v7 = [v5 objectForKey:v6];
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
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMotionLargeFenceSize"];
  v7 = [v5 objectForKey:v6];
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
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMotionSmallFenceSize"];
  v7 = [v5 objectForKey:v6];
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

- (void)_setLongMotionTimerStartingDate:(id)a3
{
  v11 = a3;
  v4 = [ULHomeSlamTimer alloc];
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMotionLongTimerLength"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
  }

  else
  {
    v9 = &unk_286A71358;
  }

  [v9 doubleValue];
  v10 = [(ULHomeSlamTimer *)v4 initWithTimeout:v11 andStartTime:?];
  [(ULHomeSlamStopDetection *)self setLongTimer:v10];
}

- (void)_setShortMotionTimerStartingDate:(id)a3
{
  v11 = a3;
  v4 = [ULHomeSlamTimer alloc];
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMotionShortTimerLength"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
  }

  else
  {
    v9 = &unk_286A71328;
  }

  [v9 doubleValue];
  v10 = [(ULHomeSlamTimer *)v4 initWithTimeout:v11 andStartTime:?];
  [(ULHomeSlamStopDetection *)self setShortTimer:v10];
}

@end