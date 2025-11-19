@interface FSFCurareInteractionFeatureStoreStream
+ (BOOL)createError:(id)a3 error:(id *)a4;
- (BOOL)insert:(id)a3 error:(id *)a4;
- (FSFCurareInteractionFeatureStoreStream)initWithStreamId:(id)a3;
- (id)retrieve:(id)a3;
- (id)retrieveWithInteractionWrapper:(id)a3;
- (void)retrieve:(id)a3 completionHandler:(id)a4;
- (void)retrieveWithInteractionWrapper:(id)a3 completionHandler:(id)a4;
@end

@implementation FSFCurareInteractionFeatureStoreStream

- (BOOL)insert:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!+[FSFUtils isSupportedPlatform])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  if (+[FSFUtils isUnderLegalRestriction])
  {
    v7 = objc_opt_class();
    v8 = @"Does not insert into FeatureStore: under privacy restriction";
LABEL_12:
    [v7 createError:v8 error:a4];
    NSLog(&stru_28366A450.isa, v8);
    goto LABEL_13;
  }

  v9 = [v6 interactionId];

  if (!v9)
  {
    v7 = objc_opt_class();
    v8 = @"Failed to Insert into FeatureStore: Nil InteractionID";
    goto LABEL_12;
  }

  v10 = [v6 serialize];

  if (!v10)
  {
    v7 = objc_opt_class();
    v8 = @"Failed to Insert into FeatureStore: Nil Serialized Data";
    goto LABEL_12;
  }

  v11 = [[_CurareInternalBiomeFeature alloc] initWithCurareInteraction:v6];
  biomeStream = self->_biomeStream;
  v13 = [v6 interactionId];
  v14 = [(FSFFeatureStoreStream *)biomeStream insert:v11 withInteractionId:v13 atTime:CFAbsoluteTimeGetCurrent()];

  if ((v14 & 1) == 0)
  {
    [objc_opt_class() createError:@"Failed to Insert into FeatureStore: Biome returned false." error:a4];
    NSLog(&stru_28366A450.isa, @"Failed to Insert into FeatureStore: Biome returned false.");
  }

LABEL_14:
  return v14;
}

+ (BOOL)createError:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = a3;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a3;
    v8 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v5 errorWithDomain:@"FSFCurareInteractionStreamErrorDomain" code:1 userInfo:v8];

    v10 = v9;
    *a4 = v9;
  }

  result = a4 != 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)retrieveWithInteractionWrapper:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[FSFUtils isSupportedPlatform])
  {
    v5 = [(FSFFeatureStoreStream *)self->_biomeStream retrieveEvents:0 startDate:0 endDate:0];
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (!v7)
    {
      goto LABEL_23;
    }

    v9 = v7;
    v46 = *v48;
    *&v8 = 138412546;
    v41 = v8;
    v42 = v6;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v48 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        v12 = [v11 eventBody];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v14 = [v11 eventBody];
        if (isKindOfClass)
        {
          v44 = [FSFFeatureStoreBiomeEvent alloc];
          v45 = [v14 content];
          v15 = [v45 objectForKeyedSubscript:@"interactionId"];
          v16 = [v14 content];
          v17 = [v16 objectForKeyedSubscript:@"feature"];
          v18 = [FSFUtils getDataFromBase64EncodedStr:v17];
          v19 = v9;
          v20 = v4;
          v21 = [v14 dataVersion];
          [v11 timestamp];
          v22 = v21;
          v4 = v20;
          v9 = v19;
          v23 = [(FSFFeatureStoreBiomeEvent *)v44 initWithInteractionId:v15 featureData:v18 dataVersion:v22 timestamp:?];

          v6 = v42;
          if (v4)
          {
            goto LABEL_16;
          }
        }

        else
        {
          objc_opt_class();
          v24 = objc_opt_isKindOfClass();

          if (v24)
          {
            v23 = [v11 eventBody];
            if (v4)
            {
              goto LABEL_16;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v34 = [v11 eventBody];
              v35 = objc_opt_class();
              v36 = NSStringFromClass(v35);
              [v11 eventBody];
              v38 = v37 = v9;
              *buf = v41;
              v52 = v36;
              v53 = 2112;
              v54 = v38;
              _os_log_error_impl(&dword_223066000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Fetched event body is unexpected class %@. Skipping. Event body:\n%@", buf, 0x16u);

              v9 = v37;
            }

            v23 = 0;
            if (v4)
            {
LABEL_16:
              v25 = [(FSFFeatureStoreBiomeEvent *)v23 interactionId];
              v26 = [v4 containsObject:v25];

              if (!v26)
              {
                goto LABEL_21;
              }
            }
          }
        }

        v27 = [(FSFFeatureStoreBiomeEvent *)v23 featureData];

        if (v27)
        {
          v28 = [(FSFFeatureStoreBiomeEvent *)v23 interactionId];
          v29 = [v6 objectForKeyedSubscript:v28];

          if (!v29)
          {
            v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v31 = [(FSFFeatureStoreBiomeEvent *)v23 interactionId];
            [v6 setObject:v30 forKeyedSubscript:v31];
          }

          v32 = [(FSFFeatureStoreBiomeEvent *)v23 interactionId];
          v33 = [v6 objectForKeyedSubscript:v32];
          [v33 addObject:v23];
        }

LABEL_21:
      }

      v9 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (!v9)
      {
LABEL_23:

        goto LABEL_25;
      }
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
  v6 = 0;
LABEL_25:

  v39 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)retrieveWithInteractionWrapper:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [(FSFCurareInteractionFeatureStoreStream *)self retrieveWithInteractionWrapper:a3];
    v6[2](v6, v7);
  }
}

- (id)retrieve:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(FSFCurareInteractionFeatureStoreStream *)self retrieveWithInteractionWrapper:a3];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v3)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v3;
    v5 = v3;
    v20 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v20)
    {
      v19 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v5);
          }

          v7 = *(*(&v25 + 1) + 8 * i);
          v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v9 = [v5 objectForKeyedSubscript:v7];
          v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v22;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v22 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [*(*(&v21 + 1) + 8 * j) featureData];
                [v8 addObject:v14];
              }

              v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v11);
          }

          [v4 setObject:v8 forKeyedSubscript:v7];
        }

        v20 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v20);
    }

    v15 = v4;
    v3 = v18;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)retrieve:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [(FSFCurareInteractionFeatureStoreStream *)self retrieve:a3];
    v6[2](v6, v7);
  }
}

- (FSFCurareInteractionFeatureStoreStream)initWithStreamId:(id)a3
{
  v4 = a3;
  if (+[FSFUtils isSupportedPlatform])
  {
    v11.receiver = self;
    v11.super_class = FSFCurareInteractionFeatureStoreStream;
    v5 = [(FSFCurareInteractionFeatureStoreStream *)&v11 init];
    if (v5)
    {
      v6 = +[FSFBiomeFeatureStore singletonInstance];
      v7 = [v6 getStream:v4];
      biomeStream = v5->_biomeStream;
      v5->_biomeStream = v7;
    }

    self = v5;
    v9 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    v9 = 0;
  }

  return v9;
}

@end