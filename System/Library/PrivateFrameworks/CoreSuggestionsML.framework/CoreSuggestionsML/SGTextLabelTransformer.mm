@interface SGTextLabelTransformer
+ (id)_preprocessedLabelsWithLabels:(id)a3 andPreprocessor:(id)a4;
+ (id)withMethods:(id)a3 withLabelStrings:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTextLabelTransformer:(id)a3;
- (SGTextLabelTransformer)initWithMethods:(id)a3 withLabelStrings:(id)a4;
- (SGTextLabelTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (SGTextLabelTransformer)initWithPreprocessor:(id)a3 labeler:(id)a4;
- (id)toPlistWithChunks:(id)a3;
- (id)transform:(id)a3;
@end

@implementation SGTextLabelTransformer

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGTextLabelTransformer *)self isEqualToTextLabelTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToTextLabelTransformer:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = self->_preprocessor;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v9 == v4[2])
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

- (SGTextLabelTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v8 = MEMORY[0x277D41F60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 alloc];
  v13 = [v12 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v14 = [v11 objectForKeyedSubscript:@"PREPROCESSOR"];
  v15 = [v13 readObjectWithPlist:v14 chunks:v10 context:v9];
  v16 = [v11 objectForKeyedSubscript:@"LABELER"];

  v17 = [v13 readObjectWithPlist:v16 chunks:v10 context:v9];

  v18 = [(SGTextLabelTransformer *)self initWithPreprocessor:v15 labeler:v17];
  return v18;
}

- (id)toPlistWithChunks:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D41F60];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v13[0] = @"PREPROCESSOR";
  v8 = [v7 writeToPlistWithObject:self->_preprocessor andChunks:v5];
  v13[1] = @"LABELER";
  v14[0] = v8;
  v9 = [v7 writeToPlistWithObject:self->_labeler andChunks:v5];

  v14[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)transform:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[SGTextLabelTransformer transform:]", "SGTextLabelTransformer.m", 71, "[input isKindOfClass:[NSString class]]");
  }

  labeler = self->_labeler;
  v6 = [(SGStringPreprocessingTransformer *)self->_preprocessor transform:v4];
  v7 = [(SGStringLabelingTransformer *)labeler transform:v6];

  return v7;
}

- (SGTextLabelTransformer)initWithPreprocessor:(id)a3 labeler:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGTextLabelTransformer.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"preprocessor"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"SGTextLabelTransformer.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"labeler"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = SGTextLabelTransformer;
  v11 = [(SGTextLabelTransformer *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_preprocessor, a3);
    objc_storeStrong(&v12->_labeler, a4);
  }

  return v12;
}

- (SGTextLabelTransformer)initWithMethods:(id)a3 withLabelStrings:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SGTextLabelTransformer.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"methods"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"SGTextLabelTransformer.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"labels"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = SGTextLabelTransformer;
  v10 = [(SGTextLabelTransformer *)&v19 init];
  if (v10)
  {
    v11 = [SGStringPreprocessingTransformer withMethods:v7];
    preprocessor = v10->_preprocessor;
    v10->_preprocessor = v11;

    v13 = [SGTextLabelTransformer _preprocessedLabelsWithLabels:v9 andPreprocessor:v10->_preprocessor];
    v14 = [SGStringLabelingTransformer withLabelStrings:v13];
    labeler = v10->_labeler;
    v10->_labeler = v14;
  }

  return v10;
}

+ (id)_preprocessedLabelsWithLabels:(id)a3 andPreprocessor:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"SGTextLabelTransformer.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"labels"}];
  }

  v9 = [v7 valueForKeyPath:@"@unionOfArrays.self"];
  if (!v9)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"SGTextLabelTransformer.m" lineNumber:56 description:@"SGTextLabelTransformer: Unexpected null value for flattened labels"];
  }

  v26 = v9;
  v27 = v8;
  v10 = [v8 transformBatch:v9];
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  if ([v7 count])
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = objc_alloc(MEMORY[0x277CBEB18]);
      v15 = [v7 objectAtIndexedSubscript:v12];
      v16 = [v14 initWithCapacity:{objc_msgSend(v15, "count")}];

      v17 = [v7 objectAtIndexedSubscript:v12];
      v18 = [v17 count];

      if (v18)
      {
        v19 = 0;
        do
        {
          v20 = [v10 objectAtIndexedSubscript:v13 + v19];
          [v16 addObject:v20];

          ++v19;
          v21 = [v7 objectAtIndexedSubscript:v12];
          v22 = [v21 count];
        }

        while (v19 < v22);
        v13 += v19;
      }

      [v11 addObject:v16];

      ++v12;
    }

    while (v12 < [v7 count]);
  }

  return v11;
}

+ (id)withMethods:(id)a3 withLabelStrings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithMethods:v7 withLabelStrings:v6];

  return v8;
}

@end