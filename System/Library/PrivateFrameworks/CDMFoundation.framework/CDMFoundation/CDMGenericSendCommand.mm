@interface CDMGenericSendCommand
- (CDMGenericSendCommand)initWithCDMNluResponse:(id)a3 clientId:(id)a4;
- (CDMGenericSendCommand)initWithCoder:(id)a3;
- (CDMGenericSendCommand)initWithEmbeddingGraphResponse:(id)a3;
- (CDMGenericSendCommand)initWithError:(id)a3 clientId:(id)a4;
- (CDMGenericSendCommand)initWithPlannerGraphResponse:(id)a3;
- (CDMGenericSendCommand)initWithPreprocessingWrapper:(id)a3 clientId:(id)a4;
- (CDMGenericSendCommand)initWithSsuInferenceGraphResponse:(id)a3;
- (CDMGenericSendCommand)initWithSubwordEmbeddingResponse:(id)a3 clientId:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDMGenericSendCommand

- (void)encodeWithCoder:(id)a3
{
  clientId = self->_clientId;
  v5 = a3;
  [v5 encodeObject:clientId forKey:@"clientId"];
  [v5 encodeObject:self->_nluResponse forKey:@"nluResponse"];
  [v5 encodeObject:self->_cdmNluResponse forKey:@"cdmNluResponse"];
  [v5 encodeObject:self->_preprocessingWrapper forKey:@"preprocessingWrapper"];
  [v5 encodeObject:self->_embeddingResponse forKey:@"embeddingResponse"];
  [v5 encodeObject:self->_subwordEmbeddingResponse forKey:@"subwordEmbeddingResponse"];
  [v5 encodeObject:self->_ssuInferenceResponse forKey:@"ssuInferenceResponse"];
  [v5 encodeObject:self->_plannerResponse forKey:@"plannerResponse"];
}

- (CDMGenericSendCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CDMGenericSendCommand;
  v5 = [(CDMBaseCommand *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientId"];
    clientId = v5->_clientId;
    v5->_clientId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nluResponse"];
    nluResponse = v5->_nluResponse;
    v5->_nluResponse = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cdmNluResponse"];
    cdmNluResponse = v5->_cdmNluResponse;
    v5->_cdmNluResponse = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preprocessingWrapper"];
    preprocessingWrapper = v5->_preprocessingWrapper;
    v5->_preprocessingWrapper = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"embeddingResponse"];
    embeddingResponse = v5->_embeddingResponse;
    v5->_embeddingResponse = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subwordEmbeddingResponse"];
    subwordEmbeddingResponse = v5->_subwordEmbeddingResponse;
    v5->_subwordEmbeddingResponse = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ssuInferenceResponse"];
    ssuInferenceResponse = v5->_ssuInferenceResponse;
    v5->_ssuInferenceResponse = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"plannerResponse"];
    plannerResponse = v5->_plannerResponse;
    v5->_plannerResponse = v20;
  }

  return v5;
}

- (CDMGenericSendCommand)initWithPreprocessingWrapper:(id)a3 clientId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMGenericSendCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preprocessingWrapper, a3);
    objc_storeStrong(&v10->_clientId, a4);
  }

  return v10;
}

- (CDMGenericSendCommand)initWithError:(id)a3 clientId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CDMGenericSendCommand;
  v8 = [(CDMBaseCommand *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CDMBaseCommand *)v8 setCmdError:v6];
    objc_storeStrong(&v9->_clientId, a4);
  }

  return v9;
}

- (CDMGenericSendCommand)initWithPlannerGraphResponse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMGenericSendCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plannerResponse, a3);
  }

  return v7;
}

- (CDMGenericSendCommand)initWithSsuInferenceGraphResponse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMGenericSendCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ssuInferenceResponse, a3);
  }

  return v7;
}

- (CDMGenericSendCommand)initWithSubwordEmbeddingResponse:(id)a3 clientId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMGenericSendCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subwordEmbeddingResponse, a3);
    objc_storeStrong(&v10->_clientId, a4);
  }

  return v10;
}

- (CDMGenericSendCommand)initWithEmbeddingGraphResponse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMGenericSendCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_embeddingResponse, a3);
  }

  return v7;
}

- (CDMGenericSendCommand)initWithCDMNluResponse:(id)a3 clientId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CDMGenericSendCommand;
  v9 = [(CDMBaseCommand *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cdmNluResponse, a3);
    objc_storeStrong(&v10->_clientId, a4);
    v11 = MEMORY[0x1E69D1428];
    v12 = [v7 objcProto];
    v13 = [v11 convertResponse:v12];
    nluResponse = v10->_nluResponse;
    v10->_nluResponse = v13;
  }

  return v10;
}

@end