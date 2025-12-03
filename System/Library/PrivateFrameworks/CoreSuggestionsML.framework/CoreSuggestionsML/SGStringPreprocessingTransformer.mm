@interface SGStringPreprocessingTransformer
+ (id)withMethods:(id)methods;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStringPreprocessingTransformer:(id)transformer;
- (SEL)selectorForMethod:(id)method preprocessor:(id)preprocessor;
- (SGStringPreprocessingTransformer)initWithMethods:(id)methods;
- (SGStringPreprocessingTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)toPlistWithChunks:(id)chunks;
- (id)transform:(id)transform;
- (id)transformBatch:(id)batch;
- (void)applySelector:(SEL)selector preprocesor:(id)preprocesor string:(id)string value:(id)value;
@end

@implementation SGStringPreprocessingTransformer

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGStringPreprocessingTransformer *)self isEqualToStringPreprocessingTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToStringPreprocessingTransformer:(id)transformer
{
  transformerCopy = transformer;
  if (!transformerCopy)
  {
    goto LABEL_4;
  }

  v5 = self->_methodNames;
  v6 = v5;
  if (v5 == transformerCopy[1])
  {
  }

  else
  {
    v7 = [(NSArray *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_10;
    }
  }

  v9 = self->_methodValues;
  v10 = v9;
  if (v9 == transformerCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSArray *)v9 isEqual:?];
  }

LABEL_10:
  return v8;
}

- (SGStringPreprocessingTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  v6 = [plist objectForKeyedSubscript:{@"METHODS", chunks, context}];
  v7 = [(SGStringPreprocessingTransformer *)self initWithMethods:v6];

  return v7;
}

- (id)toPlistWithChunks:(id)chunks
{
  v18[1] = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v5 = objc_opt_new();
  if ([(NSArray *)self->_methodNames count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_methodNames objectAtIndexedSubscript:v6];
      v8 = [v7 rangeOfString:@":"];
      if (v9)
      {
        v10 = v8;
        v11 = objc_autoreleasePoolPush();
        v12 = [v7 substringWithRange:{0, v10}];
        objc_autoreleasePoolPop(v11);
      }

      else
      {
        v12 = v7;
      }

      [v5 addObject:v12];
      v13 = [(NSArray *)self->_methodValues objectAtIndexedSubscript:v6];
      [v5 addObject:v13];

      ++v6;
    }

    while ([(NSArray *)self->_methodNames count]> v6);
  }

  v17 = @"METHODS";
  v18[0] = v5;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)applySelector:(SEL)selector preprocesor:(id)preprocesor string:(id)string value:(id)value
{
  preprocesorCopy = preprocesor;
  stringCopy = string;
  valueCopy = value;
  if (selector && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = [preprocesorCopy methodForSelector:selector];
    if ([valueCopy length])
    {
      v11(preprocesorCopy, selector, stringCopy, valueCopy);
    }

    else
    {
      (v11)(preprocesorCopy, selector, stringCopy);
    }
  }
}

- (SEL)selectorForMethod:(id)method preprocessor:(id)preprocessor
{
  v16 = *MEMORY[0x277D85DE8];
  methodCopy = method;
  preprocessorCopy = preprocessor;
  v7 = NSSelectorFromString(methodCopy);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      v9 = MEMORY[0x277D86220];
      v10 = "SGStringPreprocessor error: NSSelectorFromString returned NULL";
      v11 = 2;
      goto LABEL_9;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = v7;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = methodCopy;
      v9 = MEMORY[0x277D86220];
      v10 = "SGStringPreprocessor received an invalid method %@";
      v11 = 12;
LABEL_9:
      _os_log_error_impl(&dword_24799E000, v9, OS_LOG_TYPE_ERROR, v10, &v14, v11);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

LABEL_7:

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)transformBatch:(id)batch
{
  v36 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  context = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(batchCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = batchCopy;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v30 + 1) + 8 * i) mutableCopy];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  if ([(NSArray *)self->_methodNames count])
  {
    v13 = 0;
    do
    {
      context = [(NSArray *)self->_methodNames objectAtIndexedSubscript:v13, context];
      v15 = [(SGStringPreprocessingTransformer *)self selectorForMethod:context preprocessor:v5];

      v25 = v13;
      v16 = [(NSArray *)self->_methodValues objectAtIndexedSubscript:v13];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v17 = v6;
      v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v27;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v27 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [(SGStringPreprocessingTransformer *)self applySelector:v15 preprocesor:v5 string:*(*(&v26 + 1) + 8 * j) value:v16];
          }

          v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v19);
      }

      v13 = v25 + 1;
    }

    while (v25 + 1 < [(NSArray *)self->_methodNames count]);
  }

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)transform:(id)transform
{
  transformCopy = transform;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[SGStringPreprocessingTransformer transform:]", "SGStringPreprocessingTransformer.m", 94, "[input isKindOfClass:[NSString class]]");
  }

  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v7 = [transformCopy mutableCopy];
  if ([(NSArray *)self->_methodNames count])
  {
    v8 = 0;
    do
    {
      v9 = [(NSArray *)self->_methodNames objectAtIndexedSubscript:v8];
      v10 = [(SGStringPreprocessingTransformer *)self selectorForMethod:v9 preprocessor:v6];

      v11 = [(NSArray *)self->_methodValues objectAtIndexedSubscript:v8];
      [(SGStringPreprocessingTransformer *)self applySelector:v10 preprocesor:v6 string:v7 value:v11];

      ++v8;
    }

    while (v8 < [(NSArray *)self->_methodNames count]);
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (SGStringPreprocessingTransformer)initWithMethods:(id)methods
{
  v36 = *MEMORY[0x277D85DE8];
  methodsCopy = methods;
  if (!methodsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGStringPreprocessingTransformer.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"methods"}];
  }

  if ([methodsCopy count])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGStringPreprocessingTransformer.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"methods.count % 2 == 0"}];
  }

  v33.receiver = self;
  v33.super_class = SGStringPreprocessingTransformer;
  v6 = [(SGStringPreprocessingTransformer *)&v33 init];
  v7 = v6;
  if (v6)
  {
    v31 = a2;
    v32 = v6;
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    if ([methodsCopy count])
    {
      v10 = 0;
      do
      {
        v11 = [methodsCopy objectAtIndexedSubscript:v10 + 1];
        v12 = [methodsCopy objectAtIndexedSubscript:v10];
        v13 = v9;
        v14 = v8;
        v15 = [v11 length];
        v16 = MEMORY[0x277CCAB68];
        v17 = v12;
        v18 = [[v16 alloc] initWithCapacity:{objc_msgSend(v17, "length") + 11}];
        [v18 appendString:v17];

        v19 = v15 == 0;
        v8 = v14;
        v9 = v13;
        if (v19)
        {
          v20 = @":";
        }

        else
        {
          v20 = @":withValue:";
        }

        [v18 appendString:v20];
        [v8 addObject:v18];

        [v13 addObject:v11];
        v10 += 2;
      }

      while (v10 < [methodsCopy count]);
    }

    v7 = v32;
    objc_storeStrong(&v32->_methodNames, v8);
    objc_storeStrong(&v32->_methodValues, v9);
    *__str = 0u;
    v35 = 0u;
    if (snprintf(__str, 0x20uLL, "%s%s%s%s", "v", "@", ":", "@") > 0x1F)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:v31 object:v32 file:@"SGStringPreprocessingTransformer.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"size >= 0 && size < TYPES_STRING_BUF_SIZE"}];
    }

    v21 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:__str];
    methodSignatureNoValue = v32->_methodSignatureNoValue;
    v32->_methodSignatureNoValue = v21;

    if (snprintf(__str, 0x20uLL, "%s%s%s%s%s", "v", "@", ":", "@", "@") >= 0x20)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:v31 object:v32 file:@"SGStringPreprocessingTransformer.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"size >= 0 && size < TYPES_STRING_BUF_SIZE"}];
    }

    v23 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:__str];
    methodSignatureWithValue = v32->_methodSignatureWithValue;
    v32->_methodSignatureWithValue = v23;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)withMethods:(id)methods
{
  methodsCopy = methods;
  v5 = [[self alloc] initWithMethods:methodsCopy];

  return v5;
}

@end