@interface DTSysmonCPUUsageEntry
- (DTSysmonCPUUsageEntry)initWithTotal:(double)a3 user:(double)a4 system:(double)a5 nice:(double)a6;
@end

@implementation DTSysmonCPUUsageEntry

- (DTSysmonCPUUsageEntry)initWithTotal:(double)a3 user:(double)a4 system:(double)a5 nice:(double)a6
{
  v11.receiver = self;
  v11.super_class = DTSysmonCPUUsageEntry;
  result = [(DTSysmonCPUUsageEntry *)&v11 init];
  if (result)
  {
    result->_totalLoad = a3;
    result->_userLoad = a4;
    result->_systemLoad = a5;
    result->_niceLoad = a6;
  }

  return result;
}

@end