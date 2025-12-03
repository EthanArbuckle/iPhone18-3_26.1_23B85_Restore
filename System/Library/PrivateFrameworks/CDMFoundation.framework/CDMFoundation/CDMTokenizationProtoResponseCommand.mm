@interface CDMTokenizationProtoResponseCommand
- (CDMTokenizationProtoResponseCommand)initWithPreviousResponses:(id)responses withPreviousSiriResponse:(id)response;
- (CDMTokenizationProtoResponseCommand)initWithResponse:(id)response;
- (CDMTokenizationProtoResponseCommand)initWithResponses:(id)responses;
- (id)description;
@end

@implementation CDMTokenizationProtoResponseCommand

- (id)description
{
  dictionaryRepresentation = [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)self->_response dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (CDMTokenizationProtoResponseCommand)initWithPreviousResponses:(id)responses withPreviousSiriResponse:(id)response
{
  responsesCopy = responses;
  responseCopy = response;
  v13.receiver = self;
  v13.super_class = CDMTokenizationProtoResponseCommand;
  v9 = [(CDMBaseCommand *)&v13 init];
  if (v9)
  {
    firstObject = [responsesCopy firstObject];
    response = v9->_response;
    v9->_response = firstObject;

    objc_storeStrong(&v9->_responses, responses);
    objc_storeStrong(&v9->_previousSiriResponseTokenResponses, response);
  }

  return v9;
}

- (CDMTokenizationProtoResponseCommand)initWithResponses:(id)responses
{
  responsesCopy = responses;
  v10.receiver = self;
  v10.super_class = CDMTokenizationProtoResponseCommand;
  v6 = [(CDMBaseCommand *)&v10 init];
  if (v6)
  {
    firstObject = [responsesCopy firstObject];
    response = v6->_response;
    v6->_response = firstObject;

    objc_storeStrong(&v6->_responses, responses);
  }

  return v6;
}

- (CDMTokenizationProtoResponseCommand)initWithResponse:(id)response
{
  responseCopy = response;
  v11.receiver = self;
  v11.super_class = CDMTokenizationProtoResponseCommand;
  v6 = [(CDMBaseCommand *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, response);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObject:responseCopy];
    responses = v7->_responses;
    v7->_responses = v8;
  }

  return v7;
}

@end