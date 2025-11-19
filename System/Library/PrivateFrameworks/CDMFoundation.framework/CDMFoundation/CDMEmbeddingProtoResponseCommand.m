@interface CDMEmbeddingProtoResponseCommand
- (CDMEmbeddingProtoResponseCommand)initWithCoder:(id)a3;
- (CDMEmbeddingProtoResponseCommand)initWithResponse:(id)a3 embeddingConfigs:(id)a4;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDMEmbeddingProtoResponseCommand

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CDMEmbeddingProtoResponseCommand;
  v4 = a3;
  [(CDMBaseCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_response forKey:{@"response", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_embeddingConfigs forKey:@"embeddingConfigs"];
}

- (CDMEmbeddingProtoResponseCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CDMEmbeddingProtoResponseCommand;
  v5 = [(CDMBaseCommand *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"response"];
    response = v5->_response;
    v5->_response = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"embeddingConfigs"];
    embeddingConfigs = v5->_embeddingConfigs;
    v5->_embeddingConfigs = v8;
  }

  return v5;
}

- (id)description
{
  v2 = [(CDMEmbeddingProtoResponseCommand *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

- (id)dictionaryRepresentation
{
  v2 = self;
  v33 = *MEMORY[0x1E69E9840];
  v3 = 24;
  v4 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self->_response embeddingTensorOutputs];
  if (v4 && (v5 = v4, -[SIRINLUINTERNALEMBEDDINGEmbeddingResponse embeddingTensorOutputs](v2->_response, "embeddingTensorOutputs"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v5, v7))
  {
    v8 = objc_alloc(MEMORY[0x1E695DF90]);
    v9 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)v2->_response embeddingTensorOutputs];
    v24 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)v2->_response embeddingTensorOutputs];
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
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(&v2->super.super.isa + v3), "numToken")}];
          v31[0] = v12;
          v30[1] = @"embeddingDim";
          v13 = v3;
          v14 = v2;
          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v11, "embeddingDim")}];
          v31[1] = v15;
          v30[2] = @"isStableModel";
          v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "isStableEmbeddingsVersion")}];
          v31[2] = v16;
          v30[3] = @"embeddingVersion";
          v17 = [v11 embeddingVersion];
          v31[3] = v17;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
          v19 = [v11 embeddingVersion];
          [v24 setObject:v18 forKeyedSubscript:v19];

          v2 = v14;
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

- (CDMEmbeddingProtoResponseCommand)initWithResponse:(id)a3 embeddingConfigs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMEmbeddingProtoResponseCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_response, a3);
    objc_storeStrong(&v10->_embeddingConfigs, a4);
  }

  return v10;
}

@end