@interface SGTextLabelTransformer
+ (id)_preprocessedLabelsWithLabels:(id)labels andPreprocessor:(id)preprocessor;
+ (id)withMethods:(id)methods withLabelStrings:(id)strings;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTextLabelTransformer:(id)transformer;
- (SGTextLabelTransformer)initWithMethods:(id)methods withLabelStrings:(id)strings;
- (SGTextLabelTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (SGTextLabelTransformer)initWithPreprocessor:(id)preprocessor labeler:(id)labeler;
- (id)toPlistWithChunks:(id)chunks;
- (id)transform:(id)transform;
@end

@implementation SGTextLabelTransformer

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGTextLabelTransformer *)self isEqualToTextLabelTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToTextLabelTransformer:(id)transformer
{
  transformerCopy = transformer;
  if (!transformerCopy)
  {
    goto LABEL_4;
  }

  v5 = self->_preprocessor;
  v6 = v5;
  if (v5 == transformerCopy[1])
  {
  }

  else
  {
    v7 = [(SGStringPreprocessingTransformer *)v5 isEqual:?];

    if (!v7)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_10;
    }
  }

  v9 = self->_labeler;
  v10 = v9;
  if (v9 == transformerCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(SGStringLabelingTransformer *)v9 isEqual:?];
  }

LABEL_10:
  return v8;
}

- (SGTextLabelTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  v8 = MEMORY[0x277D41F60];
  contextCopy = context;
  chunksCopy = chunks;
  plistCopy = plist;
  v12 = [v8 alloc];
  v13 = [v12 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v14 = [plistCopy objectForKeyedSubscript:@"PREPROCESSOR"];
  v15 = [v13 readObjectWithPlist:v14 chunks:chunksCopy context:contextCopy];
  v16 = [plistCopy objectForKeyedSubscript:@"LABELER"];

  v17 = [v13 readObjectWithPlist:v16 chunks:chunksCopy context:contextCopy];

  v18 = [(SGTextLabelTransformer *)self initWithPreprocessor:v15 labeler:v17];
  return v18;
}

- (id)toPlistWithChunks:(id)chunks
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D41F60];
  chunksCopy = chunks;
  v6 = [v4 alloc];
  v7 = [v6 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v13[0] = @"PREPROCESSOR";
  v8 = [v7 writeToPlistWithObject:self->_preprocessor andChunks:chunksCopy];
  v13[1] = @"LABELER";
  v14[0] = v8;
  v9 = [v7 writeToPlistWithObject:self->_labeler andChunks:chunksCopy];

  v14[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)transform:(id)transform
{
  transformCopy = transform;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[SGTextLabelTransformer transform:]", "SGTextLabelTransformer.m", 71, "[input isKindOfClass:[NSString class]]");
  }

  labeler = self->_labeler;
  v6 = [(SGStringPreprocessingTransformer *)self->_preprocessor transform:transformCopy];
  v7 = [(SGStringLabelingTransformer *)labeler transform:v6];

  return v7;
}

- (SGTextLabelTransformer)initWithPreprocessor:(id)preprocessor labeler:(id)labeler
{
  preprocessorCopy = preprocessor;
  labelerCopy = labeler;
  v10 = labelerCopy;
  if (preprocessorCopy)
  {
    if (labelerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGTextLabelTransformer.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"preprocessor"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGTextLabelTransformer.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"labeler"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = SGTextLabelTransformer;
  v11 = [(SGTextLabelTransformer *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_preprocessor, preprocessor);
    objc_storeStrong(&v12->_labeler, labeler);
  }

  return v12;
}

- (SGTextLabelTransformer)initWithMethods:(id)methods withLabelStrings:(id)strings
{
  methodsCopy = methods;
  stringsCopy = strings;
  v9 = stringsCopy;
  if (methodsCopy)
  {
    if (stringsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGTextLabelTransformer.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"methods"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGTextLabelTransformer.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"labels"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = SGTextLabelTransformer;
  v10 = [(SGTextLabelTransformer *)&v19 init];
  if (v10)
  {
    v11 = [SGStringPreprocessingTransformer withMethods:methodsCopy];
    preprocessor = v10->_preprocessor;
    v10->_preprocessor = v11;

    v13 = [SGTextLabelTransformer _preprocessedLabelsWithLabels:v9 andPreprocessor:v10->_preprocessor];
    v14 = [SGStringLabelingTransformer withLabelStrings:v13];
    labeler = v10->_labeler;
    v10->_labeler = v14;
  }

  return v10;
}

+ (id)_preprocessedLabelsWithLabels:(id)labels andPreprocessor:(id)preprocessor
{
  labelsCopy = labels;
  preprocessorCopy = preprocessor;
  if (!labelsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGTextLabelTransformer.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"labels"}];
  }

  v9 = [labelsCopy valueForKeyPath:@"@unionOfArrays.self"];
  if (!v9)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGTextLabelTransformer.m" lineNumber:56 description:@"SGTextLabelTransformer: Unexpected null value for flattened labels"];
  }

  v26 = v9;
  v27 = preprocessorCopy;
  v10 = [preprocessorCopy transformBatch:v9];
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(labelsCopy, "count")}];
  if ([labelsCopy count])
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = objc_alloc(MEMORY[0x277CBEB18]);
      v15 = [labelsCopy objectAtIndexedSubscript:v12];
      v16 = [v14 initWithCapacity:{objc_msgSend(v15, "count")}];

      v17 = [labelsCopy objectAtIndexedSubscript:v12];
      v18 = [v17 count];

      if (v18)
      {
        v19 = 0;
        do
        {
          v20 = [v10 objectAtIndexedSubscript:v13 + v19];
          [v16 addObject:v20];

          ++v19;
          v21 = [labelsCopy objectAtIndexedSubscript:v12];
          v22 = [v21 count];
        }

        while (v19 < v22);
        v13 += v19;
      }

      [v11 addObject:v16];

      ++v12;
    }

    while (v12 < [labelsCopy count]);
  }

  return v11;
}

+ (id)withMethods:(id)methods withLabelStrings:(id)strings
{
  stringsCopy = strings;
  methodsCopy = methods;
  v8 = [[self alloc] initWithMethods:methodsCopy withLabelStrings:stringsCopy];

  return v8;
}

@end