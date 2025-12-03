@interface MXMOSSignpostMetric
- (BOOL)_shouldConstructProbe;
- (MXMOSSignpostMetric)initWithCoder:(id)coder;
- (MXMOSSignpostMetric)initWithSubsystem:(id)subsystem category:(id)category name:(id)name processName:(id)processName;
- (NSString)category;
- (NSString)name;
- (NSString)subsystem;
- (id)_constructProbe;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_constructProbe;
- (void)didStartAtContinuousTime:(unint64_t)time absoluteTime:(unint64_t)absoluteTime startDate:(id)date;
- (void)didStartAtTime:(unint64_t)time startDate:(id)date;
- (void)didStopAtContinuousTime:(unint64_t)time absoluteTime:(unint64_t)absoluteTime stopDate:(id)date;
- (void)didStopAtTime:(unint64_t)time stopDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXMOSSignpostMetric

- (NSString)subsystem
{
  filter = [(MXMMetric *)self filter];
  v3 = [filter attributeFilterWithName:@"os_signpost subsystem"];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (NSString)category
{
  filter = [(MXMMetric *)self filter];
  v3 = [filter attributeFilterWithName:@"os_signpost category"];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (NSString)name
{
  filter = [(MXMMetric *)self filter];
  v3 = [filter attributeFilterWithName:@"os_signpost name"];
  stringValue = [v3 stringValue];

  return stringValue;
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

- (MXMOSSignpostMetric)initWithSubsystem:(id)subsystem category:(id)category name:(id)name processName:(id)processName
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  nameCopy = name;
  processNameCopy = processName;
  v14 = [MEMORY[0x277CBEB58] set];
  if (subsystemCopy)
  {
    v15 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"os_signpost subsystem" stringValue:subsystemCopy];
    [v14 addObject:v15];
  }

  if (categoryCopy)
  {
    v16 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"os_signpost category" stringValue:categoryCopy];
    [v14 addObject:v16];
  }

  if (nameCopy)
  {
    v17 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"os_signpost name" stringValue:nameCopy];
    [v14 addObject:v17];
  }

  if (processNameCopy)
  {
    v18 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"os_signpost animation contributing process name" stringValue:processNameCopy];
    [v14 addObject:v18];
  }

  v19 = [[MXMSampleFilter alloc] initWithAttributeFilters:v14];
  v20 = [(MXMMetric *)self initWithIdentifier:@"com.apple.metricmeasurement.metric.os_signpost" filter:v19];

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = MXMOSSignpostMetric;
  v5 = [(MXMMetric *)&v11 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSDate *)self->_startDate copyWithZone:zone];
    v7 = v5[8];
    v5[8] = v6;

    v8 = [(NSDate *)self->_stopDate copyWithZone:zone];
    v9 = v5[9];
    v5[9] = v8;

    v5[10] = self->_startMachContTime;
    v5[11] = self->_stopMachContTime;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MXMOSSignpostMetric;
  coderCopy = coder;
  [(MXMMetric *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_startDate forKey:{@"_startDate", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_stopDate forKey:@"_stopDate"];
  [coderCopy encodeInt64:self->_startMachContTime forKey:@"_startMachContTime"];
  [coderCopy encodeInt64:self->_stopMachContTime forKey:@"_stopMachContTime"];
}

- (MXMOSSignpostMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MXMOSSignpostMetric;
  v5 = [(MXMMetric *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_stopDate"];
    stopDate = v5->_stopDate;
    v5->_stopDate = v8;

    v5->_startMachContTime = [coderCopy decodeInt64ForKey:@"_startMachContTime"];
    v5->_stopMachContTime = [coderCopy decodeInt64ForKey:@"_stopMachContTime"];
  }

  return v5;
}

- (void)didStartAtTime:(unint64_t)time startDate:(id)date
{
  v9.receiver = self;
  v9.super_class = MXMOSSignpostMetric;
  dateCopy = date;
  [(MXMMetric *)&v9 didStartAtTime:time startDate:dateCopy];
  v7 = [dateCopy dateByAddingTimeInterval:{-1.0, v9.receiver, v9.super_class}];

  startDate = self->_startDate;
  self->_startDate = v7;

  self->_startMachContTime = 0;
}

- (void)didStartAtContinuousTime:(unint64_t)time absoluteTime:(unint64_t)absoluteTime startDate:(id)date
{
  v12.receiver = self;
  v12.super_class = MXMOSSignpostMetric;
  dateCopy = date;
  [(MXMMetric *)&v12 didStartAtContinuousTime:time absoluteTime:absoluteTime startDate:dateCopy];
  v9 = [dateCopy dateByAddingTimeInterval:{-1.0, v12.receiver, v12.super_class}];

  startDate = self->_startDate;
  self->_startDate = v9;

  self->_startMachContTime = time;
  startDate_semaphore = self->_startDate_semaphore;
  if (startDate_semaphore)
  {
    dispatch_semaphore_signal(startDate_semaphore);
  }
}

- (void)didStopAtTime:(unint64_t)time stopDate:(id)date
{
  self->_stopMachContTime = 0;
  dateCopy = date;
  v7 = [dateCopy dateByAddingTimeInterval:1.0];
  stopDate = self->_stopDate;
  self->_stopDate = v7;

  v9.receiver = self;
  v9.super_class = MXMOSSignpostMetric;
  [(MXMMetric *)&v9 didStopAtTime:time stopDate:dateCopy];
}

- (void)didStopAtContinuousTime:(unint64_t)time absoluteTime:(unint64_t)absoluteTime stopDate:(id)date
{
  dateCopy = date;
  self->_stopMachContTime = time;
  v9 = [dateCopy dateByAddingTimeInterval:1.0];
  stopDate = self->_stopDate;
  self->_stopDate = v9;

  stopDate_semaphore = self->_stopDate_semaphore;
  if (stopDate_semaphore)
  {
    dispatch_semaphore_signal(stopDate_semaphore);
  }

  v12.receiver = self;
  v12.super_class = MXMOSSignpostMetric;
  [(MXMMetric *)&v12 didStopAtContinuousTime:time absoluteTime:absoluteTime stopDate:dateCopy];
}

- (void)_constructProbe
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"MXMOSSignpostMetric.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"_stopDate"}];

  *a4 = *a3;
}

@end