@interface DYExperimentResultsGenerator
- (BOOL)shouldTerminateExperiment;
- (DYExperimentResultsGenerator)initWithExperiment:(id)experiment;
- (uint64_t)endIteration;
- (void)beginIteration:(unsigned int)iteration;
- (void)dealloc;
- (void)endIteration;
- (void)onFrameEnd;
- (void)onFrameStart;
- (void)onGraphicsFunctionEnd;
- (void)onPlatformFunctionEnd;
- (void)startTiming;
- (void)stopTiming;
- (void)terminateExperiment;
@end

@implementation DYExperimentResultsGenerator

- (DYExperimentResultsGenerator)initWithExperiment:(id)experiment
{
  v6.receiver = self;
  v6.super_class = DYExperimentResultsGenerator;
  v4 = [(DYExperimentResultsGenerator *)&v6 init];
  result = 0;
  if (experiment)
  {
    if (v4)
    {
      v4->_experiment = experiment;
      v4->_prevFileFunctionIndex = -1;
      return v4;
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYExperimentResultsGenerator;
  [(DYExperimentResultsGenerator *)&v3 dealloc];
}

- (void)startTiming
{
  iteration = self->_iteration;
  if (iteration == [(DYExperiment *)self->_experiment warmupCount])
  {
    self->_startGlobalTime = self->_frameTimeStart;
  }
}

- (void)stopTiming
{
  if ([(DYExperiment *)self->_experiment enablePerFrameTiming])
  {
    if (*MEMORY[0x277D0B018] != *(MEMORY[0x277D0B018] + 4))
    {
      v5 = ((self->_frameTimeEnd - self->_frameTimeStart) * *MEMORY[0x277D0B018]) >> 64;
      v6 = *(MEMORY[0x277D0B018] + 4);
      __udivti3();
    }

    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    v4 = [(NSMutableDictionary *)[(DYExperiment *)self->_experiment results] objectForKey:@"DurationArray"];
    if (!v4)
    {
      v7 = objc_opt_new();
      [(NSMutableDictionary *)[(DYExperiment *)self->_experiment results] setObject:v7 forKey:@"DurationArray"];
      v4 = v7;
    }

    v8 = v4;
    [v4 addObject:v3];
  }
}

- (void)beginIteration:(unsigned int)iteration
{
  self->_iteration = iteration;
  if (!iteration)
  {
    -[NSMutableDictionary setObject:forKey:](-[DYExperiment results](self->_experiment, "results"), "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:DYTimingBenchmark()], @"TimingCost");
  }

  self->_frameTimeStart = mach_absolute_time();
  if ([(DYExperiment *)self->_experiment enablePerFrameTiming]&& (iteration = self->_iteration, iteration >= [(DYExperiment *)self->_experiment warmupCount]) || (startTiming = [(DYExperiment *)self->_experiment enablePerFrameTiming], (startTiming & 1) == 0) && (v6 = self->_iteration, startTiming = [(DYExperiment *)self->_experiment warmupCount], v6 == startTiming))
  {
    startTiming = [(DYExperimentResultsGenerator *)self startTiming];
  }

  MEMORY[0x282162458](startTiming);
}

- (void)endIteration
{
  v3 = mach_absolute_time();
  self->_frameTimeEnd = v3;
  v4 = v3 - self->_frameTimeStart;
  if (*MEMORY[0x277D0B018] != *(MEMORY[0x277D0B018] + 4))
  {
    v15 = (v4 * *MEMORY[0x277D0B018]) >> 64;
    v4 = __udivti3();
  }

  p_experiment = &self->_experiment;
  experiment = self->_experiment;
  self->_frameTime = v4;
  if ([(DYExperiment *)experiment enablePerFrameTiming]&& (iteration = self->_iteration, iteration >= [(DYExperiment *)self->_experiment warmupCount]) || ![(DYExperiment *)*p_experiment enablePerFrameTiming]&& (v8 = self->_iteration, v9 = [(DYExperiment *)self->_experiment warmupCount], v8 == v9 + [(DYExperiment *)self->_experiment repeatCount]- 1))
  {
    [(DYExperimentResultsGenerator *)self stopTiming];
  }

  if (([(DYExperiment *)*p_experiment profilingFlags]& 2) != 0)
  {
    v10 = self->_iteration;
    if (v10 >= [(DYExperiment *)self->_experiment warmupCount])
    {
      v11 = DYGetProfilingData();
      if (v11)
      {
        v12 = v11;
        v13 = [(NSMutableDictionary *)[(DYExperiment *)*p_experiment results] objectForKey:@"GLProfilingDataArray"];
        if (!v13)
        {
          [(DYExperimentResultsGenerator *)&self->_experiment endIteration];
          v13 = v16;
        }

        v14 = [v12 copy];
        [v13 addObject:v14];
      }
    }
  }

  if ([(DYExperimentResultsGenerator *)self shouldTerminateExperiment])
  {

    [(DYExperimentResultsGenerator *)self terminateExperiment];
  }
}

- (void)onFrameStart
{
  iteration = self->_iteration;
  if (iteration >= [(DYExperiment *)self->_experiment warmupCount]&& ([(DYExperiment *)self->_experiment profilingFlags]& 0x40) != 0)
  {
    DYGetAllPerFunctionProfilingData();
    self->_prevFileFunctionIndex = -1;
  }
}

- (void)onFrameEnd
{
  iteration = self->_iteration;
  if (iteration >= [(DYExperiment *)self->_experiment warmupCount]&& ([(DYExperiment *)self->_experiment profilingFlags]& 0x40) != 0)
  {
    v4 = DYGetAllPerFunctionProfilingData();
    if (v4)
    {
      v5 = v4;
      results = [(DYExperiment *)self->_experiment results];

      [(NSMutableDictionary *)results setObject:v5 forKey:@"PerFunctionProfilingData"];
    }
  }
}

- (void)onGraphicsFunctionEnd
{
  if (([(DYExperiment *)self->_experiment profilingFlags]& 0x40) != 0)
  {
    self->_prevFileFunctionIndex = [(DYFunctionPlayer *)self->_functionPlayer currentFileFunctionIndex];
  }
}

- (void)onPlatformFunctionEnd
{
  if (([(DYExperiment *)self->_experiment profilingFlags]& 0x40) != 0)
  {
    self->_prevFileFunctionIndex = [(DYFunctionPlayer *)self->_functionPlayer currentFileFunctionIndex];
  }
}

- (BOOL)shouldTerminateExperiment
{
  iteration = self->_iteration;
  if (iteration < [(DYExperiment *)self->_experiment warmupCount])
  {
    goto LABEL_2;
  }

  p_frameTimeStatistics = &self->_frameTimeStatistics;
  ptr = self->_frameTimeStatistics.__ptr_;
  if (!ptr)
  {
    operator new();
  }

  GPUTools::RunningStatistics<unsigned long long>::AddElement(ptr, &self->_frameTime);
  v7 = self->_iteration;
  warmupCount = [(DYExperiment *)self->_experiment warmupCount];
  if (v7 == warmupCount + [(DYExperiment *)self->_experiment repeatCount]- 1)
  {
    goto LABEL_6;
  }

  allowEarlyTermination = [(DYExperiment *)self->_experiment allowEarlyTermination];
  if (!allowEarlyTermination)
  {
    return allowEarlyTermination;
  }

  v10 = *(p_frameTimeStatistics->__ptr_ + 6);
  if (*(p_frameTimeStatistics->__ptr_ + 56) < v10)
  {
    goto LABEL_2;
  }

  v9 = p_frameTimeStatistics->__ptr_;
  v11 = (*(v9[19] + 8 * ((*(v9 + 57) + v10) % v10)) - *(v9[13] + 8 * ((*(v9 + 57) + v10) % v10))) / *(v9[7] + 8 * ((*(v9 + 57) + v10) % v10));
  [(DYExperiment *)self->_experiment frameTimeVariationLimit1];
  if (v11 < v12 || (v13 = *(self->_frameTimeStatistics.__ptr_ + 56), v13 >= [(DYExperiment *)self->_experiment frameTimeVariationArraySize]) && (v19 = 0.0, v20 = 0.0, GPUTools::RunningStatistics<unsigned long long>::IQRtoIQMRatioMinMax(self->_frameTimeStatistics.__ptr_, [(DYExperiment *)self->_experiment frameTimeVariationArraySize], &v20, &v19)) && (v14 = v19, [(DYExperiment *)self->_experiment frameTimeVariationLimit2], v14 < v15) && (v16 = v19 - v20, [(DYExperiment *)self->_experiment frameTimeVariationRangeMax], v16 < v17))
  {
LABEL_6:
    LOBYTE(allowEarlyTermination) = 1;
  }

  else
  {
LABEL_2:
    LOBYTE(allowEarlyTermination) = 0;
  }

  return allowEarlyTermination;
}

- (void)terminateExperiment
{
  if (self->_frameTimeStatistics.__ptr_)
  {
    v3 = objc_opt_new();
    ptr = self->_frameTimeStatistics.__ptr_;
    v5 = ptr[56];
    if (v5)
    {
      v6 = 0;
      v7 = -1;
      do
      {
        if (v5 >= v5 + v7)
        {
          v5 += v7;
        }

        [v3 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLongLong:", *(*ptr + 8 * ((ptr[57] - v5 + ptr[6]) % ptr[6])))}];
        ++v6;
        ptr = self->_frameTimeStatistics.__ptr_;
        v5 = ptr[56];
        --v7;
      }

      while (v6 < v5);
    }

    [(NSMutableDictionary *)[(DYExperiment *)self->_experiment results] setObject:v3 forKey:@"FrameTime"];
  }

  -[NSMutableDictionary setObject:forKey:](-[DYExperiment results](self->_experiment, "results"), "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_iteration + 1], @"IterationDone");
  v8 = [-[NSMutableDictionary objectForKey:](-[DYExperiment results](self->_experiment "results")];
  v9 = DYTimingBenchmark();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  -[NSMutableDictionary setObject:forKey:](-[DYExperiment results](self->_experiment, "results"), "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11], @"TimingCost");
  v12 = MEMORY[0x277CCABB0];
  if (*MEMORY[0x277D0B018] != *(MEMORY[0x277D0B018] + 4))
  {
    v13 = ((self->_frameTimeEnd - self->_startGlobalTime) * *MEMORY[0x277D0B018]) >> 64;
    v14 = *(MEMORY[0x277D0B018] + 4);
    __udivti3();
  }

  -[NSMutableDictionary setObject:forKey:](-[DYExperiment results](self->_experiment, "results"), "setObject:forKey:", [v12 numberWithUnsignedLongLong:?], @"Duration");
  self->_isDone = 1;
}

- (uint64_t)endIteration
{
  v6 = objc_opt_new();
  *a3 = v6;
  results = [*self results];

  return [results setObject:v6 forKey:a2];
}

@end