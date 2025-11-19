@interface CDMAssistantNLUResponse
- (CDMAssistantNLUResponse)initWithCoder:(id)a3;
- (CDMAssistantNLUResponse)initWithNLUResponse:(id)a3 preprocessingWrapper:(id)a4 requestId:(id)a5;
@end

@implementation CDMAssistantNLUResponse

- (CDMAssistantNLUResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CDMAssistantNLUResponse;
  return [(CDMBaseCommand *)&v4 init];
}

- (CDMAssistantNLUResponse)initWithNLUResponse:(id)a3 preprocessingWrapper:(id)a4 requestId:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CDMAssistantNLUResponse;
  v12 = [(CDMBaseCommand *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestId, a5);
    objc_storeStrong(&v13->_siriNLUTypeObj, a3);
    objc_storeStrong(&v13->_preprocessingWrapper, a4);
  }

  return v13;
}

@end