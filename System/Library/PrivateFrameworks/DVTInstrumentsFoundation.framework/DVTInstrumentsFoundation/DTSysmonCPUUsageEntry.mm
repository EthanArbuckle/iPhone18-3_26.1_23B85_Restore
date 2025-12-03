@interface DTSysmonCPUUsageEntry
- (DTSysmonCPUUsageEntry)initWithTotal:(double)total user:(double)user system:(double)system nice:(double)nice;
@end

@implementation DTSysmonCPUUsageEntry

- (DTSysmonCPUUsageEntry)initWithTotal:(double)total user:(double)user system:(double)system nice:(double)nice
{
  v11.receiver = self;
  v11.super_class = DTSysmonCPUUsageEntry;
  result = [(DTSysmonCPUUsageEntry *)&v11 init];
  if (result)
  {
    result->_totalLoad = total;
    result->_userLoad = user;
    result->_systemLoad = system;
    result->_niceLoad = nice;
  }

  return result;
}

@end