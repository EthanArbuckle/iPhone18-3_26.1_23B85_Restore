@interface SGQuickResponsesRepliesFlattened
+ (id)normalizedReplyTextsSetForArray:(id)array;
+ (unint64_t)countReplyTextsForArray:(id)array;
- (SGQuickResponsesRepliesFlattened)initWithArray:(id)array;
- (id)normalizedReplyTextsSet;
- (id)replyTextForIndex:(unint64_t)index position:(unint64_t)position;
- (id)replyTextForIndexAndPosition:(id)position;
- (id)replyTextsForIndex:(unint64_t)index;
- (unint64_t)replyCountForIndex:(unint64_t)index;
@end

@implementation SGQuickResponsesRepliesFlattened

- (SGQuickResponsesRepliesFlattened)initWithArray:(id)array
{
  arrayCopy = array;
  v6 = arrayCopy;
  if (arrayCopy)
  {

    v18.receiver = self;
    v18.super_class = SGQuickResponsesRepliesFlattened;
    v7 = [(SGQuickResponsesRepliesFlattened *)&v18 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_replyTexts, array);
      v8->_replyTextStringsCount = [SGQuickResponsesRepliesFlattened countReplyTextsForArray:v6];
      v9 = objc_alloc(MEMORY[0x277D425F8]);
      v10 = [SGLazyInit alloc];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__SGQuickResponsesRepliesFlattened_initWithArray___block_invoke;
      v16[3] = &unk_278EB74D8;
      v17 = v6;
      v11 = [(SGLazyInit *)v10 initWithInitializer:v16 destructor:0];
      v12 = [v9 initWithGuardedData:v11];
      normalizedReplyTextsSet = v8->_normalizedReplyTextsSet;
      v8->_normalizedReplyTextsSet = v12;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "array", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)replyCountForIndex:(unint64_t)index
{
  v5 = [(NSArray *)self->_replyTexts objectAtIndexedSubscript:index];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:562 description:{@"Invalid parameter not satisfying: %@", @"[obj isKindOfClass:NSArray.class]"}];
    }

    v6 = [v5 count];
  }

  return v6;
}

- (id)replyTextsForIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_replyTexts objectAtIndexedSubscript:index];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v3, 0}];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (id)replyTextForIndexAndPosition:(id)position
{
  positionCopy = position;
  first = [positionCopy first];
  unsignedIntegerValue = [first unsignedIntegerValue];
  second = [positionCopy second];

  v8 = -[SGQuickResponsesRepliesFlattened replyTextForIndex:position:](self, "replyTextForIndex:position:", unsignedIntegerValue, [second unsignedIntegerValue]);

  return v8;
}

- (id)replyTextForIndex:(unint64_t)index position:(unint64_t)position
{
  v7 = [(NSArray *)self->_replyTexts objectAtIndexedSubscript:index];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (position)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:532 description:{@"Invalid parameter not satisfying: %@", @"position == 0"}];
    }

    v8 = v7;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:535 description:{@"Invalid parameter not satisfying: %@", @"[obj isKindOfClass:NSArray.class]"}];
    }

    v8 = [v7 objectAtIndexedSubscript:position];
  }

  v9 = v8;

  return v9;
}

- (id)normalizedReplyTextsSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  normalizedReplyTextsSet = self->_normalizedReplyTextsSet;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SGQuickResponsesRepliesFlattened_normalizedReplyTextsSet__block_invoke;
  v5[3] = &unk_278EB73C8;
  v5[4] = &v6;
  [(_PASLock *)normalizedReplyTextsSet runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __59__SGQuickResponsesRepliesFlattened_normalizedReplyTextsSet__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 getObject];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

+ (id)normalizedReplyTextsSetForArray:(id)array
{
  v38 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = arrayCopy;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0x277CCA000uLL;
    v8 = *v33;
    do
    {
      v9 = 0;
      v26 = v6;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v11 = *(v7 + 3240);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [SGQuickResponsesReplies normalizeReplyTextInternal:v10];
          [v4 addObject:v12];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:611 description:{@"Invalid parameter not satisfying: %@", @"[obj isKindOfClass:NSArray.class]"}];
          }

          v12 = v10;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = v8;
            v16 = v7;
            v17 = *v29;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v29 != v17)
                {
                  objc_enumerationMutation(v12);
                }

                v19 = [SGQuickResponsesReplies normalizeReplyTextInternal:*(*(&v28 + 1) + 8 * i)];
                [v4 addObject:v19];
              }

              v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v14);
            v7 = v16;
            v8 = v15;
            v6 = v26;
          }
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v6);
  }

  v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (unint64_t)countReplyTextsForArray:(id)array
{
  v22 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [arrayCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ++v8;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x277CCA890] currentHandler];
            selfCopy = self;
            v13 = v12 = a2;
            [v13 handleFailureInMethod:v12 object:selfCopy file:@"SGQuickResponsesConfig.m" lineNumber:595 description:{@"Invalid parameter not satisfying: %@", @"[obj isKindOfClass:NSArray.class]"}];

            a2 = v12;
            self = selfCopy;
          }

          v8 += [v11 count];
        }
      }

      v7 = [arrayCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

@end