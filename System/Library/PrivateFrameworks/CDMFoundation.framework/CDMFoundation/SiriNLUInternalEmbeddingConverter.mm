@interface SiriNLUInternalEmbeddingConverter
+ (id)convertFromEmbeddingResponseCommand:(id)a3;
+ (id)convertFromProtoEmbeddingResponseCommand:(id)a3;
+ (id)convertFromProtoTensor:(id)a3;
@end

@implementation SiriNLUInternalEmbeddingConverter

+ (id)convertFromProtoTensor:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(NLv4EmbeddingTensor);
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "valuesCount")}];
    if ([v3 valuesCount])
    {
      v6 = 0;
      do
      {
        v7 = MEMORY[0x1E696AD98];
        [v3 valuesAtIndex:v6];
        v8 = [v7 numberWithFloat:?];
        [v5 addObject:v8];

        ++v6;
      }

      while (v6 < [v3 valuesCount]);
    }

    [(NLv4EmbeddingTensor *)v4 setValues:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromProtoEmbeddingResponseCommand:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [v3 embeddingTensorOutputs];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        if ([v10 isStableEmbeddingsVersion])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v11 = [v10 embeddingTensor];
      v12 = [v10 embeddingDim];

      if (!v11)
      {
        goto LABEL_13;
      }

      v13 = [objc_opt_class() convertFromProtoTensor:v11];
      v14 = [v4 tokenChain];
      v15 = [CDMTokenizerProtoService tokenChainFromProto:v14];

      v16 = -[CDMEmbeddingResponseCommand initWithTokenChain:embeddingTensor:numTokens:numLayers:embeddingDim:]([CDMEmbeddingResponseCommand alloc], "initWithTokenChain:embeddingTensor:numTokens:numLayers:embeddingDim:", v15, v13, [v4 numToken], objc_msgSend(v4, "numLayer"), v12);
    }

    else
    {
LABEL_10:

LABEL_13:
      v11 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "+[SiriNLUInternalEmbeddingConverter convertFromProtoEmbeddingResponseCommand:]";
        _os_log_error_impl(&dword_1DC287000, v11, OS_LOG_TYPE_ERROR, "%s [ERR]: No stable model version found in embedding response! Returning nil", buf, 0xCu);
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

+ (id)convertFromEmbeddingResponseCommand:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69D12B8]);
    [v4 setEmbeddingDim:{objc_msgSend(v3, "embeddingDim")}];
    [v4 setNumLayer:{objc_msgSend(v3, "numLayers")}];
    [v4 setNumToken:{objc_msgSend(v3, "numTokens")}];
    v5 = [v3 tokenChain];
    v6 = [CDMTokenChain convertCDMTokenChainToProtoTokenChain:v5];
    [v4 setTokenChain:v6];

    v7 = [v3 embeddingTensor];

    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69D1328]);
      [v8 setEmbeddingDim:{objc_msgSend(v3, "embeddingDim")}];
      [v8 setNumLayer:{objc_msgSend(v3, "numLayers")}];
      [v8 setNumToken:{objc_msgSend(v3, "numTokens")}];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [v3 embeddingTensor];
      v10 = [v9 values];

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
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
              objc_enumerationMutation(v10);
            }

            [*(*(&v18 + 1) + 8 * i) floatValue];
            [v8 addValues:?];
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
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