@interface CDMEmbeddingProtoResponseCommand
- (CDMEmbeddingProtoResponseCommand)initWithCoder:(id)coder;
- (CDMEmbeddingProtoResponseCommand)initWithResponse:(id)response embeddingConfigs:(id)configs;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDMEmbeddingProtoResponseCommand

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CDMEmbeddingProtoResponseCommand;
  coderCopy = coder;
  [(CDMBaseCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_response forKey:{@"response", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_embeddingConfigs forKey:@"embeddingConfigs"];
}

- (CDMEmbeddingProtoResponseCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CDMEmbeddingProtoResponseCommand;
  v5 = [(CDMBaseCommand *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"response"];
    response = v5->_response;
    v5->_response = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"embeddingConfigs"];
    embeddingConfigs = v5->_embeddingConfigs;
    v5->_embeddingConfigs = v8;
  }

  return v5;
}

- (id)description
{
  dictionaryRepresentation = [(CDMEmbeddingProtoResponseCommand *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  v33 = *MEMORY[0x1E69E9840];
  v3 = 24;
  embeddingTensorOutputs = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self->_response embeddingTensorOutputs];
  if (embeddingTensorOutputs && (v5 = embeddingTensorOutputs, -[SIRINLUINTERNALEMBEDDINGEmbeddingResponse embeddingTensorOutputs](selfCopy->_response, "embeddingTensorOutputs"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v5, v7))
  {
    v8 = objc_alloc(MEMORY[0x1E695DF90]);
    embeddingTensorOutputs2 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)selfCopy->_response embeddingTensorOutputs];
    v24 = [v8 initWithCapacity:{objc_msgSend(embeddingTensorOutputs2, "count")}];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)selfCopy->_response embeddingTensorOutputs];
    v25 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v25)
    {
      v23 = *v27;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v30[0] = @"numTokens";
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(&selfCopy->super.super.isa + v3), "numToken")}];
          v31[0] = v12;
          v30[1] = @"embeddingDim";
          v13 = v3;
          v14 = selfCopy;
          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v11, "embeddingDim")}];
          v31[1] = v15;
          v30[2] = @"isStableModel";
          v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "isStableEmbeddingsVersion")}];
          v31[2] = v16;
          v30[3] = @"embeddingVersion";
          embeddingVersion = [v11 embeddingVersion];
          v31[3] = embeddingVersion;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
          embeddingVersion2 = [v11 embeddingVersion];
          [v24 setObject:v18 forKeyedSubscript:embeddingVersion2];

          selfCopy = v14;
          v3 = v13;
        }

        v25 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v25);
    }
  }

  else
  {
    v24 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v24;
}

- (CDMEmbeddingProtoResponseCommand)initWithResponse:(id)response embeddingConfigs:(id)configs
{
  responseCopy = response;
  configsCopy = configs;
  v12.receiver = self;
  v12.super_class = CDMEmbeddingProtoResponseCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_response, response);
    objc_storeStrong(&v10->_embeddingConfigs, configs);
  }

  return v10;
}

@end