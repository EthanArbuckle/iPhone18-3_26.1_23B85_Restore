@interface SGConversationFlatteningTransformer
+ (id)withPerMessageTransformer:(id)transformer;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationFlatteningTransformer:(id)transformer;
- (SGConversationFlatteningTransformer)initWithPerMessageTransformer:(id)transformer;
- (SGConversationFlatteningTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)toPlistWithChunks:(id)chunks;
- (id)transform:(id)transform;
@end

@implementation SGConversationFlatteningTransformer

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGConversationFlatteningTransformer *)self isEqualToConversationFlatteningTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToConversationFlatteningTransformer:(id)transformer
{
  transformerCopy = transformer;
  if (transformerCopy)
  {
    v5 = self->_perMessageTranformer;
    v6 = v5;
    if (v5 == transformerCopy[1])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(PMLTransformerProtocol *)v5 isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SGConversationFlatteningTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  v8 = MEMORY[0x277D41F60];
  contextCopy = context;
  chunksCopy = chunks;
  plistCopy = plist;
  v12 = [v8 alloc];
  v13 = [v12 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v14 = [plistCopy objectForKeyedSubscript:@"PER_MESSAGE_TRANSFORMER"];

  v15 = [v13 readObjectWithPlist:v14 chunks:chunksCopy context:contextCopy];

  v16 = [(SGConversationFlatteningTransformer *)self initWithPerMessageTransformer:v15];
  return v16;
}

- (id)toPlistWithChunks:(id)chunks
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D41F60];
  chunksCopy = chunks;
  v6 = [v4 alloc];
  v7 = [v6 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v12 = @"PER_MESSAGE_TRANSFORMER";
  v8 = [v7 writeToPlistWithObject:self->_perMessageTranformer andChunks:chunksCopy];

  v13[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)transform:(id)transform
{
  v56[1] = *MEMORY[0x277D85DE8];
  transformCopy = transform;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGConversationFlatteningTransformer.m" lineNumber:47 description:{@"Unexpected input type for %@: %@, ", transformCopy, v41}];
  }

  v5 = [transformCopy objectForKeyedSubscript:@"INPUT_CONVERSATION"];
  v42 = transformCopy;
  v6 = [transformCopy objectForKeyedSubscript:@"SG_MODEL_INPUT_TARGET_MESSAGE_INDEX"];
  v7 = objc_opt_new();
  v46 = v6;
  v8 = [v5 objectAtIndexedSubscript:{objc_msgSend(v6, "integerValue")}];
  message = [v8 message];
  senderIsAccountOwner = [message senderIsAccountOwner];

  v10 = [v5 count];
  if (v10 <= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  v12 = (v11 - 3);
  if ([v5 count] > v12)
  {
    v44 = v5;
    do
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [v5 objectAtIndexedSubscript:v12];
      text = [v14 text];

      v16 = [v5 objectAtIndexedSubscript:v12];
      message2 = [v16 message];
      senderIsAccountOwner2 = [message2 senderIsAccountOwner];

      v19 = objc_alloc(MEMORY[0x277CBEB38]);
      v55 = @"INPUT_TEXT";
      v56[0] = text;
      v47 = text;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
      v21 = [v19 initWithDictionary:v20];

      context = v13;
      v49 = v21;
      if (v12 == [v46 intValue])
      {
        v22 = [v42 objectForKeyedSubscript:@"DD_MATCHES"];
        [v21 setObject:v22 forKeyedSubscript:@"DD_MATCHES"];

        v23 = [v42 objectForKeyedSubscript:@"TARGET_MATCH"];
        [v21 setObject:v23 forKeyedSubscript:@"TARGET_MATCH"];

        v24 = [v42 objectForKeyedSubscript:@"SG_MODEL_INPUT_TARGET_RANGE"];
        [v21 setObject:v24 forKeyedSubscript:@"SG_MODEL_INPUT_TARGET_RANGE"];
      }

      else
      {
        v25 = [v5 objectAtIndexedSubscript:v12];
        detectedData = [v25 detectedData];
        [v21 setObject:detectedData forKeyedSubscript:@"DD_MATCHES"];

        [v21 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SG_MODEL_DISABLE_TARGET_MAPPING"];
      }

      v27 = [(PMLTransformerProtocol *)self->_perMessageTranformer transform:v21];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v28 = v27;
      v29 = [v28 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = senderIsAccountOwner ^ senderIsAccountOwner2;
        v32 = *v51;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v51 != v32)
            {
              objc_enumerationMutation(v28);
            }

            v34 = *(*(&v50 + 1) + 8 * i);
            v35 = objc_autoreleasePoolPush();
            if (v31)
            {
              [v7 addObject:v34];
            }

            else
            {
              v36 = [@"SG_FEATURE_TARGET_SENT__" stringByAppendingString:v34];
              [v7 addObject:v36];
            }

            objc_autoreleasePoolPop(v35);
          }

          v30 = [v28 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v30);
      }

      [v7 addObject:@"SG_FEATURE_END_OF_MESSAGE"];
      objc_autoreleasePoolPop(context);
      ++v12;
      v5 = v44;
    }

    while ([v44 count] > v12);
  }

  v37 = *MEMORY[0x277D85DE8];

  return v7;
}

- (SGConversationFlatteningTransformer)initWithPerMessageTransformer:(id)transformer
{
  transformerCopy = transformer;
  v9.receiver = self;
  v9.super_class = SGConversationFlatteningTransformer;
  v6 = [(SGConversationFlatteningTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_perMessageTranformer, transformer);
  }

  return v7;
}

+ (id)withPerMessageTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = [[self alloc] initWithPerMessageTransformer:transformerCopy];

  return v5;
}

@end