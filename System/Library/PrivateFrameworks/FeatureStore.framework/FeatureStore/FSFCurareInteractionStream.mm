@interface FSFCurareInteractionStream
+ (id)eventFilterForEventTypes:(id)types;
+ (id)getWithStreamId:(id)id sourceType:(unint64_t)type;
- (BOOL)deleteCurrentStream;
- (BOOL)insert:(id)insert error:(id *)error;
- (FSFCurareInteractionStream)initWithStreamId:(id)id sourceType:(unint64_t)type;
- (id)retrieve:(id)retrieve;
- (id)retrieveWithInteractionWrapper:(id)wrapper;
- (void)retrieve:(id)retrieve completionHandler:(id)handler;
- (void)retrieveWithInteractionWrapper:(id)wrapper completionHandler:(id)handler;
@end

@implementation FSFCurareInteractionStream

+ (id)getWithStreamId:(id)id sourceType:(unint64_t)type
{
  idCopy = id;
  v6 = [[FSFCurareInteractionStream alloc] initWithStreamId:idCopy sourceType:type];

  return v6;
}

- (FSFCurareInteractionStream)initWithStreamId:(id)id sourceType:(unint64_t)type
{
  v17[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v16.receiver = self;
  v16.super_class = FSFCurareInteractionStream;
  v7 = [(FSFCurareInteractionStream *)&v16 init];
  if (v7)
  {
    if (type == 1)
    {
      v10 = objc_opt_class();
      v17[0] = idCopy;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      v9 = [v10 eventFilterForEventTypes:v11];

      v12 = [[FSFCurareInteractionSELFStream alloc] initWithFilter:v9];
      stream = v7->_stream;
      v7->_stream = v12;

      goto LABEL_6;
    }

    if (!type)
    {
      v8 = [[FSFCurareInteractionFeatureStoreStream alloc] initWithStreamId:idCopy];
      v9 = v7->_stream;
      v7->_stream = v8;
LABEL_6:
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)insert:(id)insert error:(id *)error
{
  insertCopy = insert;
  stream = [(FSFCurareInteractionStream *)self stream];
  LOBYTE(error) = [stream insert:insertCopy error:error];

  return error;
}

- (id)retrieve:(id)retrieve
{
  retrieveCopy = retrieve;
  stream = [(FSFCurareInteractionStream *)self stream];
  v6 = [stream retrieve:retrieveCopy];

  return v6;
}

- (void)retrieve:(id)retrieve completionHandler:(id)handler
{
  handlerCopy = handler;
  retrieveCopy = retrieve;
  stream = [(FSFCurareInteractionStream *)self stream];
  [stream retrieve:retrieveCopy completionHandler:handlerCopy];
}

- (id)retrieveWithInteractionWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  stream = [(FSFCurareInteractionStream *)self stream];
  v6 = [stream retrieveWithInteractionWrapper:wrapperCopy];

  return v6;
}

- (void)retrieveWithInteractionWrapper:(id)wrapper completionHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  stream = [(FSFCurareInteractionStream *)self stream];
  [stream retrieveWithInteractionWrapper:wrapperCopy completionHandler:handlerCopy];
}

- (BOOL)deleteCurrentStream
{
  stream = [(FSFCurareInteractionStream *)self stream];
  deleteCurrentStream = [stream deleteCurrentStream];

  return deleteCurrentStream;
}

+ (id)eventFilterForEventTypes:(id)types
{
  v38 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v4 = typesCopy;
  if (!typesCopy)
  {
    everything = [MEMORY[0x277CE4880] everything];
    goto LABEL_22;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = typesCopy;
  obj = typesCopy;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (!v5)
  {
    everything = 0;
    goto LABEL_21;
  }

  v6 = v5;
  everything = 0;
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

        if (!everything)
        {
LABEL_13:
          everything = v18;
          goto LABEL_16;
        }
      }

      else
      {
        v18 = [MEMORY[0x277CE4880] allOf:v13];
        if (!everything)
        {
          goto LABEL_13;
        }
      }

      v19 = [everything combine:v18];

      everything = v19;
LABEL_16:
    }

    v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  }

  while (v6);
LABEL_21:

  v4 = v30;
LABEL_22:

  v20 = *MEMORY[0x277D85DE8];

  return everything;
}

@end