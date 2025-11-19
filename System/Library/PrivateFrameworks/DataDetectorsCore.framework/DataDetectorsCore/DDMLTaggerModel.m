@interface DDMLTaggerModel
+ (id)_buildTokenToLabelMap:(id)a3 supportedTypes:(id *)a4;
- (DDMLTaggerModel)initWithEmbeddingLocale:(id)a3 modelDictionary:(id)a4 baseURL:(id)a5;
- (id)tokenTypeForValue:(int64_t)a3;
- (void)dealloc;
@end

@implementation DDMLTaggerModel

- (id)tokenTypeForValue:(int64_t)a3
{
  v5 = [(DDMLTaggerModel *)self tokenLabelMap];

  if (v5)
  {
    v6 = [(DDMLTaggerModel *)self tokenLabelMap];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v8 = [v6 objectForKeyedSubscript:v7];
  }

  else
  {
    v8 = [[DDMLTokenType alloc] initWithClassification:10 beginning:0];
  }

  return v8;
}

- (void)dealloc
{
  taggerModel = self->_taggerModel;
  if (taggerModel)
  {
    CFRelease(taggerModel);
  }

  v4.receiver = self;
  v4.super_class = DDMLTaggerModel;
  [(DDMLTaggerModel *)&v4 dealloc];
}

- (DDMLTaggerModel)initWithEmbeddingLocale:(id)a3 modelDictionary:(id)a4 baseURL:(id)a5
{
  v30[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = DDMLTaggerModel;
  v12 = [(DDMLTaggerModel *)&v28 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_embeddingLocale, a3);
    v27 = 0;
    v14 = [objc_opt_class() _buildTokenToLabelMap:v10 supportedTypes:&v27];
    v15 = v27;
    v16 = v27;
    tokenLabelMap = v13->_tokenLabelMap;
    v13->_tokenLabelMap = v14;

    objc_storeStrong(&v13->_supportedTypes, v15);
    v18 = [v10 objectForKeyedSubscript:@"modelFile"];
    v19 = [v11 URLByAppendingPathComponent:v18];
    if (v19)
    {
      Helper_x8__kMRLNeuralNetworkOptionModelURLKey = gotLoadHelper_x8__kMRLNeuralNetworkOptionModelURLKey(v20);
      v29 = **(v22 + 2080);
      v30[0] = v19;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:{1, Helper_x8__kMRLNeuralNetworkOptionModelURLKey}];
      v13->_taggerModel = MRLNeuralNetworkCreate_delayInitStub(v24);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)_buildTokenToLabelMap:(id)a3 supportedTypes:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  if (a4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"outputMap"];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __56__DDMLTaggerModel__buildTokenToLabelMap_supportedTypes___block_invoke;
  v17 = &unk_1E80021F0;
  v9 = v6;
  v18 = v9;
  v10 = v7;
  v19 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:&v14];
  if (a4)
  {
    *a4 = [v10 allObjects];
  }

  v11 = v19;
  v12 = v9;

  return v9;
}

void __56__DDMLTaggerModel__buildTokenToLabelMap_supportedTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 isEqualToString:@"b-address"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"B-ADDR"))
  {
    v7 = 0;
  }

  else
  {
    if ([v6 isEqualToString:@"i-address"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"I-ADDR"))
    {
      v8 = 0;
      v7 = 0;
      goto LABEL_5;
    }

    if ([v6 isEqualToString:@"b-airline_name"])
    {
      v7 = 2;
    }

    else
    {
      if ([v6 isEqualToString:@"i-airline_name"])
      {
        v8 = 0;
        v7 = 2;
        goto LABEL_5;
      }

      if ([v6 isEqualToString:@"b-currency_amount"])
      {
        v7 = 4;
      }

      else
      {
        if ([v6 isEqualToString:@"i-currency_amount"])
        {
          v8 = 0;
          v7 = 4;
          goto LABEL_5;
        }

        if ([v6 isEqualToString:@"b-event"])
        {
          v7 = 5;
        }

        else
        {
          if ([v6 isEqualToString:@"i-event"])
          {
            v8 = 0;
            v7 = 5;
            goto LABEL_5;
          }

          if ([v6 isEqualToString:@"b-physical_unit"])
          {
            v7 = 6;
          }

          else
          {
            if ([v6 isEqualToString:@"i-physical_unit"])
            {
              v8 = 0;
              v7 = 6;
              goto LABEL_5;
            }

            if (([v6 isEqualToString:@"b-recurring_event"] & 1) == 0)
            {
              if ([v6 isEqualToString:@"i-recurring_event"])
              {
                v8 = 0;
                v7 = 7;
                goto LABEL_5;
              }

              if (([v6 isEqualToString:@"O"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"NONE") & 1) == 0)
              {
                if ([v6 isEqualToString:@"b-flight_number"])
                {
                  v7 = 3;
                  goto LABEL_4;
                }

                if ([v6 isEqualToString:@"i-flight_number"])
                {
                  v8 = 0;
                  v7 = 3;
                  goto LABEL_5;
                }

                if ([v6 isEqualToString:@"b-phone_number"])
                {
                  v7 = 8;
                  goto LABEL_4;
                }

                if ([v6 isEqualToString:@"i-phone_number"])
                {
                  v8 = 0;
                  v7 = 8;
                  goto LABEL_5;
                }

                if (DDLogHandle_onceToken != -1)
                {
                  dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                }

                v17 = DDLogHandle_error_log_handle;
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  v18 = 138412290;
                  v19 = v6;
                  _os_log_error_impl(&dword_1BCFDD000, v17, OS_LOG_TYPE_ERROR, "unexpected ML tag type %@", &v18, 0xCu);
                }
              }

              v8 = 0;
              v9 = 0;
              v7 = 10;
              goto LABEL_6;
            }

            v7 = 7;
          }
        }
      }
    }
  }

LABEL_4:
  v8 = 1;
LABEL_5:
  v9 = 1;
LABEL_6:
  v10 = [v5 intValue];
  v11 = [[DDMLTokenType alloc] initWithClassification:v7 beginning:v8];
  v12 = *(a1 + 32);
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  [v12 setObject:v11 forKeyedSubscript:v13];

  if (v9)
  {
    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
      [v14 addObject:v15];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end