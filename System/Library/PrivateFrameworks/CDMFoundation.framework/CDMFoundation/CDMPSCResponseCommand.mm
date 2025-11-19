@interface CDMPSCResponseCommand
- (CDMPSCResponseCommand)initWithPscParses:(id)a3 pscResponse:(id)a4;
@end

@implementation CDMPSCResponseCommand

- (CDMPSCResponseCommand)initWithPscParses:(id)a3 pscResponse:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMPSCResponseCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pscParses, a3);
    objc_storeStrong(&v10->_pscResponse, a4);
  }

  return v10;
}

@end