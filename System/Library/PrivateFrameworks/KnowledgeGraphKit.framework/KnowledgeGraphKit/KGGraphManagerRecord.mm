@interface KGGraphManagerRecord
- (BOOL)decrementUseCount;
- (KGGraphManagerRecord)initWithGraphManager:(id)manager;
@end

@implementation KGGraphManagerRecord

- (BOOL)decrementUseCount
{
  v2 = self->_useCount - 1;
  self->_useCount = v2;
  return v2 == 0;
}

- (KGGraphManagerRecord)initWithGraphManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = KGGraphManagerRecord;
  v6 = [(KGGraphManagerRecord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphManager, manager);
    v7->_useCount = 1;
  }

  return v7;
}

@end