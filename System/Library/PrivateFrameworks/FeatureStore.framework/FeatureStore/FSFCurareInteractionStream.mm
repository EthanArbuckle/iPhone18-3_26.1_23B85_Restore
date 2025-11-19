@interface FSFCurareInteractionStream
+ (id)eventFilterForEventTypes:(id)a3;
+ (id)getWithStreamId:(id)a3 sourceType:(unint64_t)a4;
- (BOOL)deleteCurrentStream;
- (BOOL)insert:(id)a3 error:(id *)a4;
- (FSFCurareInteractionStream)initWithStreamId:(id)a3 sourceType:(unint64_t)a4;
- (id)retrieve:(id)a3;
- (id)retrieveWithInteractionWrapper:(id)a3;
- (void)retrieve:(id)a3 completionHandler:(id)a4;
- (void)retrieveWithInteractionWrapper:(id)a3 completionHandler:(id)a4;
@end

@implementation FSFCurareInteractionStream

+ (id)getWithStreamId:(id)a3 sourceType:(unint64_t)a4
{
  v5 = a3;
  v6 = [[FSFCurareInteractionStream alloc] initWithStreamId:v5 sourceType:a4];

  return v6;
}

- (FSFCurareInteractionStream)initWithStreamId:(id)a3 sourceType:(unint64_t)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = FSFCurareInteractionStream;
  v7 = [(FSFCurareInteractionStream *)&v16 init];
  if (v7)
  {
    if (a4 == 1)
    {
      v10 = objc_opt_class();
      v17[0] = v6;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      v9 = [v10 eventFilterForEventTypes:v11];

      v12 = [[FSFCurareInteractionSELFStream alloc] initWithFilter:v9];
      stream = v7->_stream;
      v7->_stream = v12;

      goto LABEL_6;
    }

    if (!a4)
    {
      v8 = [[FSFCurareInteractionFeatureStoreStream alloc] initWithStreamId:v6];
      v9 = v7->_stream;
      v7->_stream = v8;
LABEL_6:
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)insert:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(FSFCurareInteractionStream *)self stream];
  LOBYTE(a4) = [v7 insert:v6 error:a4];

  return a4;
}

- (id)retrieve:(id)a3
{
  v4 = a3;
  v5 = [(FSFCurareInteractionStream *)self stream];
  v6 = [v5 retrieve:v4];

  return v6;
}

- (void)retrieve:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FSFCurareInteractionStream *)self stream];
  [v8 retrieve:v7 completionHandler:v6];
}

- (id)retrieveWithInteractionWrapper:(id)a3
{
  v4 = a3;
  v5 = [(FSFCurareInteractionStream *)self stream];
  v6 = [v5 retrieveWithInteractionWrapper:v4];

  return v6;
}

- (void)retrieveWithInteractionWrapper:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FSFCurareInteractionStream *)self stream];
  [v8 retrieveWithInteractionWrapper:v7 completionHandler:v6];
}

- (BOOL)deleteCurrentStream
{
  v2 = [(FSFCurareInteractionStream *)self stream];
  v3 = [v2 deleteCurrentStream];

  return v3;
}

+ (id)eventFilterForEventTypes:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x277CE4880] everything];
    goto LABEL_22;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = v3;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_21;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v33;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v33 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v32 + 1) + 8 * i);
      v11 = [v10 componentsSeparatedByString:@"."];
      if ([v11 count] >= 3)
        v24 = {;
        v25 = MEMORY[0x277CBEAD8];
        v26 = *MEMORY[0x277CBE660];
        goto LABEL_29;
      }

      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = NSClassFromString(v12);

      if (([(objc_class *)v13 isSubclassOfClass:objc_opt_class()]& 1) == 0)
      {
        v22 = MEMORY[0x277CCACA8];
        v23 = [v11 objectAtIndexedSubscript:0];
        v28 = LABEL_28:;

        v25 = MEMORY[0x277CBEAD8];
        v26 = *MEMORY[0x277CBE660];
        v24 = v28;
LABEL_29:
        v29 = [v25 exceptionWithName:v26 reason:v24 userInfo:0];
        objc_exception_throw(v29);
      }

      if ([v11 count] == 2 && (objc_msgSend(v11, "objectAtIndexedSubscript:", 1), v14 = objc_claimAutoreleasedReturnValue(), v15 = NSClassFromString(v14), v14, v15))
      {
        if (([(objc_class *)v15 isSubclassOfClass:objc_opt_class()]& 1) == 0)
        {
          v27 = MEMORY[0x277CCACA8];
          v23 = [v11 objectAtIndexedSubscript:1];
          goto LABEL_28;
        }

        v16 = MEMORY[0x277CE4880];
        v36 = v15;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
        v18 = [v16 someOf:v13 types:v17];

        if (!v7)
        {
LABEL_13:
          v7 = v18;
          goto LABEL_16;
        }
      }

      else
      {
        v18 = [MEMORY[0x277CE4880] allOf:v13];
        if (!v7)
        {
          goto LABEL_13;
        }
      }

      v19 = [v7 combine:v18];

      v7 = v19;
LABEL_16:
    }

    v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  }

  while (v6);
LABEL_21:

  v4 = v30;
LABEL_22:

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

@end