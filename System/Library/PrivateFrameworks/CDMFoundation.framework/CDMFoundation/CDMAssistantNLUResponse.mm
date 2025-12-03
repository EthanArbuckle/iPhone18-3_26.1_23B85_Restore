@interface CDMAssistantNLUResponse
- (CDMAssistantNLUResponse)initWithCoder:(id)coder;
- (CDMAssistantNLUResponse)initWithNLUResponse:(id)response preprocessingWrapper:(id)wrapper requestId:(id)id;
@end

@implementation CDMAssistantNLUResponse

- (CDMAssistantNLUResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CDMAssistantNLUResponse;
  return [(CDMBaseCommand *)&v4 init];
}

- (CDMAssistantNLUResponse)initWithNLUResponse:(id)response preprocessingWrapper:(id)wrapper requestId:(id)id
{
  responseCopy = response;
  wrapperCopy = wrapper;
  idCopy = id;
  v15.receiver = self;
  v15.super_class = CDMAssistantNLUResponse;
  v12 = [(CDMBaseCommand *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestId, id);
    objc_storeStrong(&v13->_siriNLUTypeObj, response);
    objc_storeStrong(&v13->_preprocessingWrapper, wrapper);
  }

  return v13;
}

@end