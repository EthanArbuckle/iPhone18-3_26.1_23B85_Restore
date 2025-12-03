@interface SGMIStagedLogRecord
- (SGMIStagedLogRecord)initWithLog:(id)log isLogged:(BOOL)logged;
@end

@implementation SGMIStagedLogRecord

- (SGMIStagedLogRecord)initWithLog:(id)log isLogged:(BOOL)logged
{
  logCopy = log;
  v11.receiver = self;
  v11.super_class = SGMIStagedLogRecord;
  v8 = [(SGMIStagedLogRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_log, log);
    v9->_isLogged = logged;
  }

  return v9;
}

@end