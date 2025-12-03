@interface CDMPSCResponseCommand
- (CDMPSCResponseCommand)initWithPscParses:(id)parses pscResponse:(id)response;
@end

@implementation CDMPSCResponseCommand

- (CDMPSCResponseCommand)initWithPscParses:(id)parses pscResponse:(id)response
{
  parsesCopy = parses;
  responseCopy = response;
  v12.receiver = self;
  v12.super_class = CDMPSCResponseCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pscParses, parses);
    objc_storeStrong(&v10->_pscResponse, response);
  }

  return v10;
}

@end