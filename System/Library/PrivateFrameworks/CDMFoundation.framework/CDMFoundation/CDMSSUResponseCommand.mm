@interface CDMSSUResponseCommand
- (CDMSSUResponseCommand)initWithSSUResponse:(id)a3 cmdError:(id)a4;
@end

@implementation CDMSSUResponseCommand

- (CDMSSUResponseCommand)initWithSSUResponse:(id)a3 cmdError:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMSSUResponseCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ssuResponse, a3);
    [(CDMBaseCommand *)v10 setCmdError:v8];
  }

  return v10;
}

@end