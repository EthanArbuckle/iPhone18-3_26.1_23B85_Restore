@interface CDMSpanMatcherResponseCommand
- (CDMSpanMatcherResponseCommand)initWithResponse:(id)response;
- (id)description;
@end

@implementation CDMSpanMatcherResponseCommand

- (id)description
{
  if (self->_spanMatchResponse)
  {
    v3 = [MEMORY[0x1E69D1438] printableSpanMatchResponse:?];
  }

  else
  {
    v3 = @"nil";
  }

  return v3;
}

- (CDMSpanMatcherResponseCommand)initWithResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = CDMSpanMatcherResponseCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spanMatchResponse, response);
  }

  return v7;
}

@end