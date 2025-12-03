@interface CDMGenericSendCommand
- (CDMGenericSendCommand)initWithCDMNluResponse:(id)response clientId:(id)id;
- (CDMGenericSendCommand)initWithCoder:(id)coder;
- (CDMGenericSendCommand)initWithEmbeddingGraphResponse:(id)response;
- (CDMGenericSendCommand)initWithError:(id)error clientId:(id)id;
- (CDMGenericSendCommand)initWithPlannerGraphResponse:(id)response;
- (CDMGenericSendCommand)initWithPreprocessingWrapper:(id)wrapper clientId:(id)id;
- (CDMGenericSendCommand)initWithSsuInferenceGraphResponse:(id)response;
- (CDMGenericSendCommand)initWithSubwordEmbeddingResponse:(id)response clientId:(id)id;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDMGenericSendCommand

- (void)encodeWithCoder:(id)coder
{
  clientId = self->_clientId;
  coderCopy = coder;
  [coderCopy encodeObject:clientId forKey:@"clientId"];
  [coderCopy encodeObject:self->_nluResponse forKey:@"nluResponse"];
  [coderCopy encodeObject:self->_cdmNluResponse forKey:@"cdmNluResponse"];
  [coderCopy encodeObject:self->_preprocessingWrapper forKey:@"preprocessingWrapper"];
  [coderCopy encodeObject:self->_embeddingResponse forKey:@"embeddingResponse"];
  [coderCopy encodeObject:self->_subwordEmbeddingResponse forKey:@"subwordEmbeddingResponse"];
  [coderCopy encodeObject:self->_ssuInferenceResponse forKey:@"ssuInferenceResponse"];
  [coderCopy encodeObject:self->_plannerResponse forKey:@"plannerResponse"];
}

- (CDMGenericSendCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CDMGenericSendCommand;
  v5 = [(CDMBaseCommand *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientId"];
    clientId = v5->_clientId;
    v5->_clientId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nluResponse"];
    nluResponse = v5->_nluResponse;
    v5->_nluResponse = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cdmNluResponse"];
    cdmNluResponse = v5->_cdmNluResponse;
    v5->_cdmNluResponse = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preprocessingWrapper"];
    preprocessingWrapper = v5->_preprocessingWrapper;
    v5->_preprocessingWrapper = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"embeddingResponse"];
    embeddingResponse = v5->_embeddingResponse;
    v5->_embeddingResponse = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subwordEmbeddingResponse"];
    subwordEmbeddingResponse = v5->_subwordEmbeddingResponse;
    v5->_subwordEmbeddingResponse = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ssuInferenceResponse"];
    ssuInferenceResponse = v5->_ssuInferenceResponse;
    v5->_ssuInferenceResponse = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"plannerResponse"];
    plannerResponse = v5->_plannerResponse;
    v5->_plannerResponse = v20;
  }

  return v5;
}

- (CDMGenericSendCommand)initWithPreprocessingWrapper:(id)wrapper clientId:(id)id
{
  wrapperCopy = wrapper;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = CDMGenericSendCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preprocessingWrapper, wrapper);
    objc_storeStrong(&v10->_clientId, id);
  }

  return v10;
}

- (CDMGenericSendCommand)initWithError:(id)error clientId:(id)id
{
  errorCopy = error;
  idCopy = id;
  v11.receiver = self;
  v11.super_class = CDMGenericSendCommand;
  v8 = [(CDMBaseCommand *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CDMBaseCommand *)v8 setCmdError:errorCopy];
    objc_storeStrong(&v9->_clientId, id);
  }

  return v9;
}

- (CDMGenericSendCommand)initWithPlannerGraphResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = CDMGenericSendCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plannerResponse, response);
  }

  return v7;
}

- (CDMGenericSendCommand)initWithSsuInferenceGraphResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = CDMGenericSendCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ssuInferenceResponse, response);
  }

  return v7;
}

- (CDMGenericSendCommand)initWithSubwordEmbeddingResponse:(id)response clientId:(id)id
{
  responseCopy = response;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = CDMGenericSendCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subwordEmbeddingResponse, response);
    objc_storeStrong(&v10->_clientId, id);
  }

  return v10;
}

- (CDMGenericSendCommand)initWithEmbeddingGraphResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = CDMGenericSendCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_embeddingResponse, response);
  }

  return v7;
}

- (CDMGenericSendCommand)initWithCDMNluResponse:(id)response clientId:(id)id
{
  responseCopy = response;
  idCopy = id;
  v16.receiver = self;
  v16.super_class = CDMGenericSendCommand;
  v9 = [(CDMBaseCommand *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cdmNluResponse, response);
    objc_storeStrong(&v10->_clientId, id);
    v11 = MEMORY[0x1E69D1428];
    objcProto = [responseCopy objcProto];
    v13 = [v11 convertResponse:objcProto];
    nluResponse = v10->_nluResponse;
    v10->_nluResponse = v13;
  }

  return v10;
}

@end