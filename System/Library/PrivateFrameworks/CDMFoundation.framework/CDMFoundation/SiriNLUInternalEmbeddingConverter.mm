@interface SiriNLUInternalEmbeddingConverter
+ (id)convertFromEmbeddingResponseCommand:(id)command;
+ (id)convertFromProtoEmbeddingResponseCommand:(id)command;
+ (id)convertFromProtoTensor:(id)tensor;
@end

@implementation SiriNLUInternalEmbeddingConverter

+ (id)convertFromProtoTensor:(id)tensor
{
  tensorCopy = tensor;
  if (tensorCopy)
  {
    v4 = objc_alloc_init(NLv4EmbeddingTensor);
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(tensorCopy, "valuesCount")}];
    if ([tensorCopy valuesCount])
    {
      v6 = 0;
      do
      {
        v7 = MEMORY[0x1E696AD98];
        [tensorCopy valuesAtIndex:v6];
        v8 = [v7 numberWithFloat:?];
        [v5 addObject:v8];

        ++v6;
      }

      while (v6 < [tensorCopy valuesCount]);
    }

    [(NLv4EmbeddingTensor *)v4 setValues:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromProtoEmbeddingResponseCommand:(id)command
{
  v26 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  v4 = commandCopy;
  if (commandCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    embeddingTensorOutputs = [commandCopy embeddingTensorOutputs];
    v6 = [embeddingTensorOutputs countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(embeddingTensorOutputs);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        if ([v10 isStableEmbeddingsVersion])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [embeddingTensorOutputs countByEnumeratingWithState:&v19 objects:v25 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      embeddingTensor = [v10 embeddingTensor];
      embeddingDim = [v10 embeddingDim];

      if (!embeddingTensor)
      {
        goto LABEL_13;
      }

      v13 = [objc_opt_class() convertFromProtoTensor:embeddingTensor];
      tokenChain = [v4 tokenChain];
      v15 = [CDMTokenizerProtoService tokenChainFromProto:tokenChain];

      v16 = -[CDMEmbeddingResponseCommand initWithTokenChain:embeddingTensor:numTokens:numLayers:embeddingDim:]([CDMEmbeddingResponseCommand alloc], "initWithTokenChain:embeddingTensor:numTokens:numLayers:embeddingDim:", v15, v13, [v4 numToken], objc_msgSend(v4, "numLayer"), embeddingDim);
    }

    else
    {
LABEL_10:

LABEL_13:
      embeddingTensor = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(embeddingTensor, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "+[SiriNLUInternalEmbeddingConverter convertFromProtoEmbeddingResponseCommand:]";
        _os_log_error_impl(&dword_1DC287000, embeddingTensor, OS_LOG_TYPE_ERROR, "%s [ERR]: No stable model version found in embedding response! Returning nil", buf, 0xCu);
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)convertFromEmbeddingResponseCommand:(id)command
{
  v25 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  if (commandCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69D12B8]);
    [v4 setEmbeddingDim:{objc_msgSend(commandCopy, "embeddingDim")}];
    [v4 setNumLayer:{objc_msgSend(commandCopy, "numLayers")}];
    [v4 setNumToken:{objc_msgSend(commandCopy, "numTokens")}];
    tokenChain = [commandCopy tokenChain];
    v6 = [CDMTokenChain convertCDMTokenChainToProtoTokenChain:tokenChain];
    [v4 setTokenChain:v6];

    embeddingTensor = [commandCopy embeddingTensor];

    if (embeddingTensor)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69D1328]);
      [v8 setEmbeddingDim:{objc_msgSend(commandCopy, "embeddingDim")}];
      [v8 setNumLayer:{objc_msgSend(commandCopy, "numLayers")}];
      [v8 setNumToken:{objc_msgSend(commandCopy, "numTokens")}];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      embeddingTensor2 = [commandCopy embeddingTensor];
      values = [embeddingTensor2 values];

      v11 = [values countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(values);
            }

            [*(*(&v18 + 1) + 8 * i) floatValue];
            [v8 addValues:?];
          }

          v12 = [values countByEnumeratingWithState:&v18 objects:v24 count:16];
        }

        while (v12);
      }

      v15 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = "+[SiriNLUInternalEmbeddingConverter convertFromEmbeddingResponseCommand:]";
      }

      [v8 setEmbedderId:@"rdar://72698550"];
      [v4 setEmbeddingTensor:v8];
    }
  }

  else
  {
    v4 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

@end