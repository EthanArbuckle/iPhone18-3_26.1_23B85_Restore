@interface CDMRepetitionDetectionRequestCommand
- (CDMRepetitionDetectionRequestCommand)initWithQRRequest:(id)a3;
@end

@implementation CDMRepetitionDetectionRequestCommand

- (CDMRepetitionDetectionRequestCommand)initWithQRRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMRepetitionDetectionRequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_qrRequest, a3);
  }

  return v7;
}

@end