@interface _HDQueryDatabaseAccessBlock
- (id)description;
@end

@implementation _HDQueryDatabaseAccessBlock

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  WeakRetained = objc_loadWeakRetained(&self->_queryServer);
  v7 = [WeakRetained queryUUID];
  qualityOfService = self->_qualityOfService;
  v9 = HKStringFromQoS();
  processBundleIdentifier = self->_processBundleIdentifier;
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_creationTime];
  v12 = HKDiagnosticStringFromDate();
  v13 = [v3 stringWithFormat:@"<%@ query:%@ QoS:%@ process:%@ timestamp:%@>", v5, v7, v9, processBundleIdentifier, v12, 0];

  return v13;
}

@end