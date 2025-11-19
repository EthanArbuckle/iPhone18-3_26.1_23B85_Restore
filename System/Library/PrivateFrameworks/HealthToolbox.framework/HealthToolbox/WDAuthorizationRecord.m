@interface WDAuthorizationRecord
- (WDAuthorizationRecord)init;
- (WDAuthorizationRecord)initWithInternalAuthorizationRecord:(id)a3;
@end

@implementation WDAuthorizationRecord

- (WDAuthorizationRecord)initWithInternalAuthorizationRecord:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WDAuthorizationRecord;
  v6 = [(WDAuthorizationRecord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalAuthorizationRecord, a3);
    v7->_status = [v5 status];
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