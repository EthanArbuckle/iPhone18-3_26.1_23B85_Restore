@interface MXMOSSignpostMetric
- (BOOL)_shouldConstructProbe;
- (MXMOSSignpostMetric)initWithCoder:(id)a3;
- (MXMOSSignpostMetric)initWithSubsystem:(id)a3 category:(id)a4 name:(id)a5 processName:(id)a6;
- (NSString)category;
- (NSString)name;
- (NSString)subsystem;
- (id)_constructProbe;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_constructProbe;
- (void)didStartAtContinuousTime:(unint64_t)a3 absoluteTime:(unint64_t)a4 startDate:(id)a5;
- (void)didStartAtTime:(unint64_t)a3 startDate:(id)a4;
- (void)didStopAtContinuousTime:(unint64_t)a3 absoluteTime:(unint64_t)a4 stopDate:(id)a5;
- (void)didStopAtTime:(unint64_t)a3 stopDate:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXMOSSignpostMetric

- (NSString)subsystem
{
  v2 = [(MXMMetric *)self filter];
  v3 = [v2 attributeFilterWithName:@"os_signpost subsystem"];
  v4 = [v3 stringValue];

  return v4;
}

- (NSString)category
{
  v2 = [(MXMMetric *)self filter];
  v3 = [v2 attributeFilterWithName:@"os_signpost category"];
  v4 = [v3 stringValue];

  return v4;
}

- (NSString)name
{
  v2 = [(MXMMetric *)self filter];
  v3 = [v2 attributeFilterWithName:@"os_signpost name"];
  v4 = [v3 stringValue];

  return v4;
}

- (BOOL)_shouldConstructProbe
{
  if (!self->_startDate_semaphore)
  {
    v3 = dispatch_semaphore_create(0);
    startDate_semaphore = self->_startDate_semaphore;
    self->_startDate_semaphore = v3;
  }

  if (!self->_stopDate_semaphore)
  {
    v5 = dispatch_semaphore_create(0);
    stopDate_semaphore = self->_stopDate_semaphore;
    self->_stopDate_semaphore = v5;
  }

  return 1;
}

- (id)_constructProbe
{
  v19 = *MEMORY[0x277D85DE8];
  startDate_semaphore = self->_startDate_semaphore;
  if (startDate_semaphore)
  {
    v5 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(startDate_semaphore, v5);
  }

  stopDate_semaphore = self->_stopDate_semaphore;
  if (stopDate_semaphore)
  {
    v7 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(stopDate_semaphore, v7);
  }

  if (!self->_startDate || !self->_stopDate)
  {
    v8 = _MXMGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      startDate = self->_startDate;
      stopDate = self->_stopDate;
      *v16 = 138412546;
      *&v16[4] = startDate;
      v17 = 2112;
      v18 = stopDate;
      _os_log_impl(&dword_258DAA000, v8, OS_LOG_TYPE_ERROR, "Bad date range to search archive. Start date is %@. Stop date is %@.", v16, 0x16u);
    }

    if (!self->_startDate)
    {
      [(MXMOSSignpostMetric *)a2 _constructProbe];
    }

    if (!self->_stopDate)
    {
      [(MXMOSSignpostMetric *)a2 _constructProbe:&self->_stopDate];
    }
  }

  startMachContTime = self->_startMachContTime;
  stopMachContTime = self->_stopMachContTime;
  v13 = [MXMOSSignpostProbe probeHostSystemLogArchiveWithStartDate:"probeHostSystemLogArchiveWithStartDate:endDate:startMachTime:stopMachTime:" endDate:self->_startDate startMachTime:? stopMachTime:?];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (MXMOSSignpostMetric)initWithSubsystem:(id)a3 category:(id)a4 name:(id)a5 processName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CBEB58] set];
  if (v10)
  {
    v15 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"os_signpost subsystem" stringValue:v10];
    [v14 addObject:v15];
  }

  if (v11)
  {
    v16 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"os_signpost category" stringValue:v11];
    [v14 addObject:v16];
  }

  if (v12)
  {
    v17 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"os_signpost name" stringValue:v12];
    [v14 addObject:v17];
  }

  if (v13)
  {
    v18 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"os_signpost animation contributing process name" stringValue:v13];
    [v14 addObject:v18];
  }

  v19 = [[MXMSampleFilter alloc] initWithAttributeFilters:v14];
  v20 = [(MXMMetric *)self initWithIdentifier:@"com.apple.metricmeasurement.metric.os_signpost" filter:v19];

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = MXMOSSignpostMetric;
  v5 = [(MXMMetric *)&v11 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSDate *)self->_startDate copyWithZone:a3];
    v7 = v5[8];
    v5[8] = v6;

    v8 = [(NSDate *)self->_stopDate copyWithZone:a3];
    v9 = v5[9];
    v5[9] = v8;

    v5[10] = self->_startMachContTime;
    v5[11] = self->_stopMachContTime;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MXMOSSignpostMetric;
  v4 = a3;
  [(MXMMetric *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_startDate forKey:{@"_startDate", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_stopDate forKey:@"_stopDate"];
  [v4 encodeInt64:self->_startMachContTime forKey:@"_startMachContTime"];
  [v4 encodeInt64:self->_stopMachContTime forKey:@"_stopMachContTime"];
}

- (MXMOSSignpostMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MXMOSSignpostMetric;
  v5 = [(MXMMetric *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_stopDate"];
    stopDate = v5->_stopDate;
    v5->_stopDate = v8;

    v5->_startMachContTime = [v4 decodeInt64ForKey:@"_startMachContTime"];
    v5->_stopMachContTime = [v4 decodeInt64ForKey:@"_stopMachContTime"];
  }

  return v5;
}

- (void)didStartAtTime:(unint64_t)a3 startDate:(id)a4
{
  v9.receiver = self;
  v9.super_class = MXMOSSignpostMetric;
  v6 = a4;
  [(MXMMetric *)&v9 didStartAtTime:a3 startDate:v6];
  v7 = [v6 dateByAddingTimeInterval:{-1.0, v9.receiver, v9.super_class}];

  startDate = self->_startDate;
  self->_startDate = v7;

  self->_startMachContTime = 0;
}

- (void)didStartAtContinuousTime:(unint64_t)a3 absoluteTime:(unint64_t)a4 startDate:(id)a5
{
  v12.receiver = self;
  v12.super_class = MXMOSSignpostMetric;
  v8 = a5;
  [(MXMMetric *)&v12 didStartAtContinuousTime:a3 absoluteTime:a4 startDate:v8];
  v9 = [v8 dateByAddingTimeInterval:{-1.0, v12.receiver, v12.super_class}];

  startDate = self->_startDate;
  self->_startDate = v9;

  self->_startMachContTime = a3;
  startDate_semaphore = self->_startDate_semaphore;
  if (startDate_semaphore)
  {
    dispatch_semaphore_signal(startDate_semaphore);
  }
}

- (void)didStopAtTime:(unint64_t)a3 stopDate:(id)a4
{
  self->_stopMachContTime = 0;
  v6 = a4;
  v7 = [v6 dateByAddingTimeInterval:1.0];
  stopDate = self->_stopDate;
  self->_stopDate = v7;

  v9.receiver = self;
  v9.super_class = MXMOSSignpostMetric;
  [(MXMMetric *)&v9 didStopAtTime:a3 stopDate:v6];
}

- (void)didStopAtContinuousTime:(unint64_t)a3 absoluteTime:(unint64_t)a4 stopDate:(id)a5
{
  v8 = a5;
  self->_stopMachContTime = a3;
  v9 = [v8 dateByAddingTimeInterval:1.0];
  stopDate = self->_stopDate;
  self->_stopDate = v9;

  stopDate_semaphore = self->_stopDate_semaphore;
  if (stopDate_semaphore)
  {
    dispatch_semaphore_signal(stopDate_semaphore);
  }

  v12.receiver = self;
  v12.super_class = MXMOSSignpostMetric;
  [(MXMMetric *)&v12 didStopAtContinuousTime:a3 absoluteTime:a4 stopDate:v8];
}

- (void)_constructProbe
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"MXMOSSignpostMetric.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"_stopDate"}];

  *a4 = *a3;
}

@end