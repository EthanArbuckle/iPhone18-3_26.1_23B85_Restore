@interface SGConversationFlatteningTransformer
+ (id)withPerMessageTransformer:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationFlatteningTransformer:(id)a3;
- (SGConversationFlatteningTransformer)initWithPerMessageTransformer:(id)a3;
- (SGConversationFlatteningTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)toPlistWithChunks:(id)a3;
- (id)transform:(id)a3;
@end

@implementation SGConversationFlatteningTransformer

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGConversationFlatteningTransformer *)self isEqualToConversationFlatteningTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToConversationFlatteningTransformer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_perMessageTranformer;
    v6 = v5;
    if (v5 == v4[1])
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

- (SGConversationFlatteningTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v8 = MEMORY[0x277D41F60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 alloc];
  v13 = [v12 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v14 = [v11 objectForKeyedSubscript:@"PER_MESSAGE_TRANSFORMER"];

  v15 = [v13 readObjectWithPlist:v14 chunks:v10 context:v9];

  v16 = [(SGConversationFlatteningTransformer *)self initWithPerMessageTransformer:v15];
  return v16;
}

- (id)toPlistWithChunks:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D41F60];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v12 = @"PER_MESSAGE_TRANSFORMER";
  v8 = [v7 writeToPlistWithObject:self->_perMessageTranformer andChunks:v5];

  v13[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)transform:(id)a3
{
  v56[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = [MEMORY[0x277CCA890] currentHandler];
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    [v39 handleFailureInMethod:a2 object:self file:@"SGConversationFlatteningTransformer.m" lineNumber:47 description:{@"Unexpected input type for %@: %@, ", v4, v41}];
  }

  v5 = [v4 objectForKeyedSubscript:@"INPUT_CONVERSATION"];
  v42 = v4;
  v6 = [v4 objectForKeyedSubscript:@"SG_MODEL_INPUT_TARGET_MESSAGE_INDEX"];
  v7 = objc_opt_new();
  v46 = v6;
  v8 = [v5 objectAtIndexedSubscript:{objc_msgSend(v6, "integerValue")}];
  v9 = [v8 message];
  v43 = [v9 senderIsAccountOwner];

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
      v15 = [v14 text];

      v16 = [v5 objectAtIndexedSubscript:v12];
      v17 = [v16 message];
      v18 = [v17 senderIsAccountOwner];

      v19 = objc_alloc(MEMORY[0x277CBEB38]);
      v55 = @"INPUT_TEXT";
      v56[0] = v15;
      v47 = v15;
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
        v26 = [v25 detectedData];
        [v21 setObject:v26 forKeyedSubscript:@"DD_MATCHES"];

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
        v31 = v43 ^ v18;
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

- (SGConversationFlatteningTransformer)initWithPerMessageTransformer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SGConversationFlatteningTransformer;
  v6 = [(SGConversationFlatteningTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_perMessageTranformer, a3);
  }

  return v7;
}

+ (id)withPerMessageTransformer:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPerMessageTransformer:v4];

  return v5;
}

@end