@interface CDMSNLCProtoResponseCommand
- (CDMSNLCProtoResponseCommand)initWithClassLabel:(int)a3 snlcParses:(id)a4 snlcResponse:(id)a5;
@end

@implementation CDMSNLCProtoResponseCommand

- (CDMSNLCProtoResponseCommand)initWithClassLabel:(int)a3 snlcParses:(id)a4 snlcResponse:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CDMSNLCProtoResponseCommand;
  v11 = [(CDMBaseCommand *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_snlcParses, a4);
    v12->_classLabel = a3;
    objc_storeStrong(&v12->_snlcResponse, a5);
  }

  return v12;
}

@end