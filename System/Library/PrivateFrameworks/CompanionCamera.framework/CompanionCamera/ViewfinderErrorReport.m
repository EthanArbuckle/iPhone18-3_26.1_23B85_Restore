@interface ViewfinderErrorReport
- (ViewfinderErrorReport)initWithCode:(int64_t)a3 status:(int)a4 date:(id)a5;
- (id)_codeDescription;
- (id)loggingDescription;
- (id)ttrDescriptionWithDateFormatter:(id)a3;
@end

@implementation ViewfinderErrorReport

- (ViewfinderErrorReport)initWithCode:(int64_t)a3 status:(int)a4 date:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ViewfinderErrorReport;
  v10 = [(ViewfinderErrorReport *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_code = a3;
    v10->_status = a4;
    objc_storeStrong(&v10->_date, a5);
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
  v4 = [(ViewfinderErrorReport *)self _codeDescription];
  v5 = [v3 stringWithFormat:@"code=%@ status=%d", v4, self->_status];

  return v5;
}

- (id)ttrDescriptionWithDateFormatter:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(ViewfinderErrorReport *)self loggingDescription];
  v7 = [v5 stringFromDate:self->_date];

  v8 = [v4 stringWithFormat:@"%@, date: %@", v6, v7];

  return v8;
}

@end