@interface SGMIStagedLogRecord
- (SGMIStagedLogRecord)initWithLog:(id)a3 isLogged:(BOOL)a4;
@end

@implementation SGMIStagedLogRecord

- (SGMIStagedLogRecord)initWithLog:(id)a3 isLogged:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SGMIStagedLogRecord;
  v8 = [(SGMIStagedLogRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_log, a3);
    v9->_isLogged = a4;
  }

  return v9;
}

@end