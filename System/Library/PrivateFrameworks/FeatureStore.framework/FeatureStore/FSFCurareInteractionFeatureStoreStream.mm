@interface FSFCurareInteractionFeatureStoreStream
+ (BOOL)createError:(id)error error:(id *)a4;
- (BOOL)insert:(id)insert error:(id *)error;
- (FSFCurareInteractionFeatureStoreStream)initWithStreamId:(id)id;
- (id)retrieve:(id)retrieve;
- (id)retrieveWithInteractionWrapper:(id)wrapper;
- (void)retrieve:(id)retrieve completionHandler:(id)handler;
- (void)retrieveWithInteractionWrapper:(id)wrapper completionHandler:(id)handler;
@end

@implementation FSFCurareInteractionFeatureStoreStream

- (BOOL)insert:(id)insert error:(id *)error
{
  insertCopy = insert;
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
    [v7 createError:v8 error:error];
    NSLog(&stru_28366A450.isa, v8);
    goto LABEL_13;
  }

  interactionId = [insertCopy interactionId];

  if (!interactionId)
  {
    v7 = objc_opt_class();
    v8 = @"Failed to Insert into FeatureStore: Nil InteractionID";
    goto LABEL_12;
  }

  serialize = [insertCopy serialize];

  if (!serialize)
  {
    v7 = objc_opt_class();
    v8 = @"Failed to Insert into FeatureStore: Nil Serialized Data";
    goto LABEL_12;
  }

  v11 = [[_CurareInternalBiomeFeature alloc] initWithCurareInteraction:insertCopy];
  biomeStream = self->_biomeStream;
  interactionId2 = [insertCopy interactionId];
  v14 = [(FSFFeatureStoreStream *)biomeStream insert:v11 withInteractionId:interactionId2 atTime:CFAbsoluteTimeGetCurrent()];

  if ((v14 & 1) == 0)
  {
    [objc_opt_class() createError:@"Failed to Insert into FeatureStore: Biome returned false." error:error];
    NSLog(&stru_28366A450.isa, @"Failed to Insert into FeatureStore: Biome returned false.");
  }

LABEL_14:
  return v14;
}

+ (BOOL)createError:(id)error error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = error;
    v6 = MEMORY[0x277CBEAC0];
    errorCopy = error;
    v8 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v5 errorWithDomain:@"FSFCurareInteractionStreamErrorDomain" code:1 userInfo:v8];

    v10 = v9;
    *a4 = v9;
  }

  result = a4 != 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)retrieveWithInteractionWrapper:(id)wrapper
{
  v56 = *MEMORY[0x277D85DE8];
  wrapperCopy = wrapper;
  if (+[FSFUtils isSupportedPlatform])
  {
    v5 = [(FSFFeatureStoreStream *)self->_biomeStream retrieveEvents:0 startDate:0 endDate:0];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
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
    v42 = dictionary;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v48 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        eventBody = [v11 eventBody];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        eventBody2 = [v11 eventBody];
        if (isKindOfClass)
        {
          v44 = [FSFFeatureStoreBiomeEvent alloc];
          content = [eventBody2 content];
          v15 = [content objectForKeyedSubscript:@"interactionId"];
          content2 = [eventBody2 content];
          v17 = [content2 objectForKeyedSubscript:@"feature"];
          v18 = [FSFUtils getDataFromBase64EncodedStr:v17];
          v19 = v9;
          v20 = wrapperCopy;
          dataVersion = [eventBody2 dataVersion];
          [v11 timestamp];
          v22 = dataVersion;
          wrapperCopy = v20;
          v9 = v19;
          eventBody3 = [(FSFFeatureStoreBiomeEvent *)v44 initWithInteractionId:v15 featureData:v18 dataVersion:v22 timestamp:?];

          dictionary = v42;
          if (wrapperCopy)
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
            eventBody3 = [v11 eventBody];
            if (wrapperCopy)
            {
              goto LABEL_16;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              eventBody4 = [v11 eventBody];
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

            eventBody3 = 0;
            if (wrapperCopy)
            {
LABEL_16:
              interactionId = [(FSFFeatureStoreBiomeEvent *)eventBody3 interactionId];
              v26 = [wrapperCopy containsObject:interactionId];

              if (!v26)
              {
                goto LABEL_21;
              }
            }
          }
        }

        featureData = [(FSFFeatureStoreBiomeEvent *)eventBody3 featureData];

        if (featureData)
        {
          interactionId2 = [(FSFFeatureStoreBiomeEvent *)eventBody3 interactionId];
          v29 = [dictionary objectForKeyedSubscript:interactionId2];

          if (!v29)
          {
            v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
            interactionId3 = [(FSFFeatureStoreBiomeEvent *)eventBody3 interactionId];
            [dictionary setObject:v30 forKeyedSubscript:interactionId3];
          }

          interactionId4 = [(FSFFeatureStoreBiomeEvent *)eventBody3 interactionId];
          v33 = [dictionary objectForKeyedSubscript:interactionId4];
          [v33 addObject:eventBody3];
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
  dictionary = 0;
LABEL_25:

  v39 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)retrieveWithInteractionWrapper:(id)wrapper completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v7 = [(FSFCurareInteractionFeatureStoreStream *)self retrieveWithInteractionWrapper:wrapper];
    handlerCopy[2](handlerCopy, v7);
  }
}

- (id)retrieve:(id)retrieve
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(FSFCurareInteractionFeatureStoreStream *)self retrieveWithInteractionWrapper:retrieve];
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

                featureData = [*(*(&v21 + 1) + 8 * j) featureData];
                [v8 addObject:featureData];
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

- (void)retrieve:(id)retrieve completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v7 = [(FSFCurareInteractionFeatureStoreStream *)self retrieve:retrieve];
    handlerCopy[2](handlerCopy, v7);
  }
}

- (FSFCurareInteractionFeatureStoreStream)initWithStreamId:(id)id
{
  idCopy = id;
  if (+[FSFUtils isSupportedPlatform])
  {
    v11.receiver = self;
    v11.super_class = FSFCurareInteractionFeatureStoreStream;
    v5 = [(FSFCurareInteractionFeatureStoreStream *)&v11 init];
    if (v5)
    {
      v6 = +[FSFBiomeFeatureStore singletonInstance];
      v7 = [v6 getStream:idCopy];
      biomeStream = v5->_biomeStream;
      v5->_biomeStream = v7;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    selfCopy = 0;
  }

  return selfCopy;
}

@end