@interface CDMRepetitionDetectionResponseCommand
- (CDMRepetitionDetectionResponseCommand)initWithResponse:(id)response;
@end

@implementation CDMRepetitionDetectionResponseCommand

- (CDMRepetitionDetectionResponseCommand)initWithResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = CDMRepetitionDetectionResponseCommand;
  v5 = [(CDMBaseCommand *)&v9 init];
  if (v5)
  {
    v6 = [responseCopy copy];
    response = v5->_response;
    v5->_response = v6;
  }

  return v5;
}

@end