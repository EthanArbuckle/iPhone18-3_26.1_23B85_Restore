@interface DNDSLifetimeMonitorResult
- (DNDSLifetimeMonitorResult)initWithActiveUUIDs:(id)a3 expiredUUIDs:(id)a4;
@end

@implementation DNDSLifetimeMonitorResult

- (DNDSLifetimeMonitorResult)initWithActiveUUIDs:(id)a3 expiredUUIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DNDSLifetimeMonitorResult;
  v8 = [(DNDSLifetimeMonitorResult *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    activeUUIDs = v8->_activeUUIDs;
    v8->_activeUUIDs = v9;

    v11 = [v7 copy];
    expiredUUIDs = v8->_expiredUUIDs;
    v8->_expiredUUIDs = v11;
  }

  return v8;
}

@end