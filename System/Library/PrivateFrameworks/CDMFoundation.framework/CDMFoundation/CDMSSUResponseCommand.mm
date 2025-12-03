@interface CDMSSUResponseCommand
- (CDMSSUResponseCommand)initWithSSUResponse:(id)response cmdError:(id)error;
@end

@implementation CDMSSUResponseCommand

- (CDMSSUResponseCommand)initWithSSUResponse:(id)response cmdError:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = CDMSSUResponseCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ssuResponse, response);
    [(CDMBaseCommand *)v10 setCmdError:errorCopy];
  }

  return v10;
}

@end