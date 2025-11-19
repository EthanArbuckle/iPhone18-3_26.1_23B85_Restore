@interface DTGPUCounterProfile_GPUStats
+ (id)create:(id)a3;
- (BOOL)start:(unint64_t)a3;
- (DTGPUCounterProfile_GPUStats)initWithProfile:(unint64_t)a3 device:(id)a4;
- (void)sampleCounters:(unint64_t)a3 callback:(id)a4;
@end

@implementation DTGPUCounterProfile_GPUStats

+ (id)create:(id)a3
{
  v3 = a3;
  v4 = [[DTGPUCounterProfile_GPUStats alloc] initWithProfile:0 device:v3];

  return v4;
}

- (DTGPUCounterProfile_GPUStats)initWithProfile:(unint64_t)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = DTGPUCounterProfile_GPUStats;
  v4 = [(DTGPUCounterProfile *)&v7 initWithProfile:0 device:a4];
  if (v4)
  {
    v5 = [[DTGPUCounter alloc] initWithName:@"Utilization %" maxValue:100];
    [(DTGPUCounter *)v5 setCounterDescription:@"Device Utilization %"];
    [(DTGPUCounterProfile *)v4 addCounter:v5];
    [(DTGPUCounterProfile *)v4 setDefaultSampleInterval:1000000];
  }

  return v4;
}

- (BOOL)start:(unint64_t)a3
{
  self->_currentIORegSamplingInterval = 0;
  self->_deviceUtilization.coefficient = 0.095162582;
  return 1;
}

- (void)sampleCounters:(unint64_t)a3 callback:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = self->_currentIORegSamplingInterval + a3;
  self->_currentIORegSamplingInterval = v7;
  if (v7 > 0x98967F)
  {
    v8 = [(DTGPUCounterProfile *)self device];
    v9 = [v8 acceleratorPort];
    CFProperty = IORegistryEntryCreateCFProperty(v9, @"PerformanceStatistics", *MEMORY[0x277CBECE8], 0);

    v11 = [CFProperty objectForKeyedSubscript:@"Device Utilization %"];
    self->_deviceUtilization.currentValue = (self->_deviceUtilization.coefficient * self->_deviceUtilization.currentValue + (1.0 - self->_deviceUtilization.coefficient) * [v11 unsignedLongValue]);
    self->_currentIORegSamplingInterval = 0;
  }

  currentValue = self->_deviceUtilization.currentValue;
  v18 = 0;
  v19 = currentValue;
  __p = 0;
  v17 = 0;
  sub_247FF83DC(&__p, &v19, &v20, 1uLL);
  v13 = __p;
  v14 = mach_absolute_time();
  (*(v6 + 2))(v6, v13, 1, v14, 0, 0, 0);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end