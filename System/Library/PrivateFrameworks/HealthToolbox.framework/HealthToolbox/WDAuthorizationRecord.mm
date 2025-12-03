@interface WDAuthorizationRecord
- (WDAuthorizationRecord)init;
- (WDAuthorizationRecord)initWithInternalAuthorizationRecord:(id)record;
@end

@implementation WDAuthorizationRecord

- (WDAuthorizationRecord)initWithInternalAuthorizationRecord:(id)record
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = WDAuthorizationRecord;
  v6 = [(WDAuthorizationRecord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalAuthorizationRecord, record);
    v7->_status = [recordCopy status];
  }

  return v7;
}

- (WDAuthorizationRecord)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

@end