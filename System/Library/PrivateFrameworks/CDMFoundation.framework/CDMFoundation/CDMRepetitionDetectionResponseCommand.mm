@interface CDMRepetitionDetectionResponseCommand
- (CDMRepetitionDetectionResponseCommand)initWithResponse:(id)a3;
@end

@implementation CDMRepetitionDetectionResponseCommand

- (CDMRepetitionDetectionResponseCommand)initWithResponse:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CDMRepetitionDetectionResponseCommand;
  v5 = [(CDMBaseCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    response = v5->_response;
    v5->_response = v6;
  }

  return v5;
}

@end