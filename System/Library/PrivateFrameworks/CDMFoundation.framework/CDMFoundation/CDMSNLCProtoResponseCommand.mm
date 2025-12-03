@interface CDMSNLCProtoResponseCommand
- (CDMSNLCProtoResponseCommand)initWithClassLabel:(int)label snlcParses:(id)parses snlcResponse:(id)response;
@end

@implementation CDMSNLCProtoResponseCommand

- (CDMSNLCProtoResponseCommand)initWithClassLabel:(int)label snlcParses:(id)parses snlcResponse:(id)response
{
  parsesCopy = parses;
  responseCopy = response;
  v14.receiver = self;
  v14.super_class = CDMSNLCProtoResponseCommand;
  v11 = [(CDMBaseCommand *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_snlcParses, parses);
    v12->_classLabel = label;
    objc_storeStrong(&v12->_snlcResponse, response);
  }

  return v12;
}

@end