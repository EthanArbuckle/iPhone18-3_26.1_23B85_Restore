@interface DNDSLifetimeMonitorResult
- (DNDSLifetimeMonitorResult)initWithActiveUUIDs:(id)ds expiredUUIDs:(id)iDs;
@end

@implementation DNDSLifetimeMonitorResult

- (DNDSLifetimeMonitorResult)initWithActiveUUIDs:(id)ds expiredUUIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v14.receiver = self;
  v14.super_class = DNDSLifetimeMonitorResult;
  v8 = [(DNDSLifetimeMonitorResult *)&v14 init];
  if (v8)
  {
    v9 = [dsCopy copy];
    activeUUIDs = v8->_activeUUIDs;
    v8->_activeUUIDs = v9;

    v11 = [iDsCopy copy];
    expiredUUIDs = v8->_expiredUUIDs;
    v8->_expiredUUIDs = v11;
  }

  return v8;
}

@end