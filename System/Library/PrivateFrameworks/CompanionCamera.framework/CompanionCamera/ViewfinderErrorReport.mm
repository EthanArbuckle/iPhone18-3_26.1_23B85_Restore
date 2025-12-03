@interface ViewfinderErrorReport
- (ViewfinderErrorReport)initWithCode:(int64_t)code status:(int)status date:(id)date;
- (id)_codeDescription;
- (id)loggingDescription;
- (id)ttrDescriptionWithDateFormatter:(id)formatter;
@end

@implementation ViewfinderErrorReport

- (ViewfinderErrorReport)initWithCode:(int64_t)code status:(int)status date:(id)date
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = ViewfinderErrorReport;
  v10 = [(ViewfinderErrorReport *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_code = code;
    v10->_status = status;
    objc_storeStrong(&v10->_date, date);
  }

  return v11;
}

- (id)_codeDescription
{
  v2 = @"NC_FigNeroDisconnectionRetryAttempt";
  v3 = @"CC_RapidDisconnection";
  v4 = @"CC_UnpexpectedInstanceCount";
  code = self->_code;
  v6 = @"CC_Leaked";
  if (code != 103)
  {
    v6 = @"NC_FigNeroDisconnectionRetryAttempt";
  }

  if (code != 102)
  {
    v4 = v6;
  }

  if (code != 101)
  {
    v3 = v4;
  }

  if (code == 100)
  {
    v2 = @"CC_SessionPreviewStreamDidClose";
  }

  if (code == 2)
  {
    v2 = @"NC_FigNeroStopErr";
  }

  if (code == 1)
  {
    v2 = @"NC_FigNeroStartErr";
  }

  if (code <= 100)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

- (id)loggingDescription
{
  v3 = MEMORY[0x277CCACA8];
  _codeDescription = [(ViewfinderErrorReport *)self _codeDescription];
  v5 = [v3 stringWithFormat:@"code=%@ status=%d", _codeDescription, self->_status];

  return v5;
}

- (id)ttrDescriptionWithDateFormatter:(id)formatter
{
  v4 = MEMORY[0x277CCACA8];
  formatterCopy = formatter;
  loggingDescription = [(ViewfinderErrorReport *)self loggingDescription];
  v7 = [formatterCopy stringFromDate:self->_date];

  v8 = [v4 stringWithFormat:@"%@, date: %@", loggingDescription, v7];

  return v8;
}

@end