@interface CDMTokenizationProtoResponseCommand
- (CDMTokenizationProtoResponseCommand)initWithPreviousResponses:(id)a3 withPreviousSiriResponse:(id)a4;
- (CDMTokenizationProtoResponseCommand)initWithResponse:(id)a3;
- (CDMTokenizationProtoResponseCommand)initWithResponses:(id)a3;
- (id)description;
@end

@implementation CDMTokenizationProtoResponseCommand

- (id)description
{
  v2 = [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)self->_response dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

- (CDMTokenizationProtoResponseCommand)initWithPreviousResponses:(id)a3 withPreviousSiriResponse:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CDMTokenizationProtoResponseCommand;
  v9 = [(CDMBaseCommand *)&v13 init];
  if (v9)
  {
    v10 = [v7 firstObject];
    response = v9->_response;
    v9->_response = v10;

    objc_storeStrong(&v9->_responses, a3);
    objc_storeStrong(&v9->_previousSiriResponseTokenResponses, a4);
  }

  return v9;
}

- (CDMTokenizationProtoResponseCommand)initWithResponses:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CDMTokenizationProtoResponseCommand;
  v6 = [(CDMBaseCommand *)&v10 init];
  if (v6)
  {
    v7 = [v5 firstObject];
    response = v6->_response;
    v6->_response = v7;

    objc_storeStrong(&v6->_responses, a3);
  }

  return v6;
}

- (CDMTokenizationProtoResponseCommand)initWithResponse:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CDMTokenizationProtoResponseCommand;
  v6 = [(CDMBaseCommand *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, a3);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v5];
    responses = v7->_responses;
    v7->_responses = v8;
  }

  return v7;
}

@end