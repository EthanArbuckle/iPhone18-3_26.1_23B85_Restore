@interface MXMCPUMetric
+ (MXMCPUMetric)currentProcess;
+ (MXMCPUMetric)instrumentThread;
- (BOOL)_shouldConstructProbe;
- (BOOL)harvestData:(id *)a3 error:(id *)a4;
- (MXMCPUMetric)initWithBundleIdentifier:(id)a3;
- (MXMCPUMetric)initWithIdentifier:(id)a3 filter:(id)a4;
- (MXMCPUMetric)initWithProcessName:(id)a3;
- (NSNumber)processIdentifier;
- (NSString)processName;
- (id)_constructProbe;
@end

@implementation MXMCPUMetric

+ (MXMCPUMetric)currentProcess
{
  v2 = [[MXMCPUMetric alloc] initWithProcessIdentifier:getpid()];

  return v2;
}

+ (MXMCPUMetric)instrumentThread
{
  v2 = [[MXMCPUMetric alloc] initWithIdentifier:@"com.apple.metricmeasurement.metrics.cpu" filter:0];

  return v2;
}

- (MXMCPUMetric)initWithProcessName:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [MXMSampleTagFilter alloc];
    v6 = +[MXMUtilizationSampleTag CPU];
    v7 = [(MXMSampleTagFilter *)v5 initWithTag:v6 allowDescendents:1];

    v8 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"Process Name" stringValue:v4];
    v9 = [MXMSampleFilter alloc];
    v10 = [MEMORY[0x277CBEB98] setWithObject:v8];
    v11 = [MEMORY[0x277CBEB98] setWithObject:v7];
    v12 = [(MXMSampleFilter *)v9 initWithAttributeFilters:v10 tagFilters:v11];

    self = [(MXMCPUMetric *)self initWithIdentifier:@"com.apple.metricmeasurement.metrics.cpu" filter:v12];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (MXMCPUMetric)initWithBundleIdentifier:(id)a3
{
  v4 = [MXMMachUtils _processNameWithBundleIdentifier:a3];
  v5 = [(MXMCPUMetric *)self initWithProcessName:v4];

  return v5;
}

- (MXMCPUMetric)initWithIdentifier:(id)a3 filter:(id)a4
{
  v7.receiver = self;
  v7.super_class = MXMCPUMetric;
  v4 = [(MXMMetric *)&v7 initWithIdentifier:a3 filter:a4];
  v5 = v4;
  if (v4)
  {
    [(MXMMetric *)v4 setPreferredSampleMode:3];
  }

  return v5;
}

- (NSString)processName
{
  v2 = [(MXMMetric *)self filter];
  v3 = [v2 attributeFilterWithName:@"Process Name"];
  v4 = [v3 stringValue];

  return v4;
}

- (NSNumber)processIdentifier
{
  v2 = [(MXMMetric *)self filter];
  v3 = [v2 attributeFilterWithName:@"Process Identifier"];
  v4 = [v3 numericValue];

  return v4;
}

- (BOOL)_shouldConstructProbe
{
  v2 = [(MXMMetric *)self filter];
  v3 = v2 != 0;

  return v3;
}

- (id)_constructProbe
{
  v2 = objc_alloc_init(MXMResourceProbe);

  return v2;
}

- (BOOL)harvestData:(id *)a3 error:(id *)a4
{
  v28[2] = *MEMORY[0x277D85DE8];
  v7 = [(MXMMetric *)self filter];

  if (v7)
  {
    v26.receiver = self;
    v26.super_class = MXMCPUMetric;
    result = [(MXMMetric *)&v26 harvestData:a3 error:a4];
  }

  else
  {
    v9 = +[MXMInstrument activeInstrument];
    v10 = [v9 currentIteration];

    if (v10)
    {
      v11 = MEMORY[0x277CBEB98];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v10 + 16)];
      v13 = [MXMSampleAttribute attributeWithName:@"Thread Identifier" numericValue:v12];
      v14 = [v11 setWithObject:v13];

      if (!*(v10 + 40))
      {
        [MXMCPUMetric harvestData:error:];
      }

      if (!*(v10 + 48))
      {
        [MXMCPUMetric harvestData:error:];
      }

      if (!*(v10 + 88))
      {
        [MXMCPUMetric harvestData:error:];
      }

      if (!*(v10 + 104))
      {
        [MXMCPUMetric harvestData:error:];
      }

      v15 = objc_alloc_init(MXMMutableSampleData);
      [MXMMachUtils _nanosecondsWithAbsoluteTime:*(v10 + 40)];
      v28[0] = v16;
      [MXMMachUtils _nanosecondsWithAbsoluteTime:*(v10 + 48)];
      v28[1] = v17;
      v18 = *(v10 + 104);
      v27[0] = *(v10 + 88);
      v27[1] = v18;
      v19 = [[MXMSampleTimeSeries alloc] initWithAbsoluteTimeSeries:v28 length:2];
      v20 = [MXMSampleSet alloc];
      v21 = +[MXMUtilizationSampleTag CPUInstructions];
      v22 = +[MXMUnitInstruction baseUnit];
      v23 = [(MXMSampleSet *)v20 initWithTime:v19 tag:v21 unit:v22 attributes:v14 doubleValues:v27 length:2];

      [(MXMMutableSampleData *)v15 appendSet:v23];
      v24 = v15;
      *a3 = v15;

      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)harvestData:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"iteration->startTime > 0" object:? file:? lineNumber:? description:?];
}

- (void)harvestData:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"iteration->stopTime > 0" object:? file:? lineNumber:? description:?];
}

- (void)harvestData:error:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"iteration->startThreadCounts.instructions > 0" object:? file:? lineNumber:? description:?];
}

- (void)harvestData:error:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"iteration->stopThreadCounts.instructions > 0" object:? file:? lineNumber:? description:?];
}

@end