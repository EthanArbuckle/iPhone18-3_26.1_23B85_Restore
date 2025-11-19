@interface SGPipelineTransformer
+ (id)withTransformers:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPipelineTransformer:(id)a3;
- (SGPipelineTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (SGPipelineTransformer)initWithTransformers:(id)a3;
- (id)toPlistWithChunks:(id)a3;
- (id)transform:(id)a3;
- (id)transform:(id)a3 stopAfterTransformerWithIndex:(unint64_t)a4;
- (unint64_t)hash;
@end

@implementation SGPipelineTransformer

- (unint64_t)hash
{
  v2 = [(SGPipelineTransformer *)self transformers];
  v3 = [v2 hash];

  return v3;
}

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGPipelineTransformer *)self isEqualToPipelineTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToPipelineTransformer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SGPipelineTransformer *)self transformers];
    v6 = [v4 transformers];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(SGPipelineTransformer *)self transformers];
      v8 = [v4 transformers];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (SGPipelineTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277D41F60];
  v11 = a3;
  v12 = [v10 alloc];
  v13 = [v12 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v14 = [v11 objectForKeyedSubscript:@"TRANSFORMERS"];

  v21 = v13;
  v22 = v8;
  v23 = v9;
  v15 = v9;
  v16 = v8;
  v17 = v13;
  v18 = sgMap();
  v19 = [(SGPipelineTransformer *)self initWithTransformers:v18];

  return v19;
}

- (id)toPlistWithChunks:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D41F60]);
  v6 = [v5 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v7 = [(SGPipelineTransformer *)self transformers];
  v14 = v6;
  v15 = v4;
  v8 = v4;
  v9 = v6;
  v10 = sgMap();

  v16 = @"TRANSFORMERS";
  v17[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)transform:(id)a3 stopAfterTransformerWithIndex:(unint64_t)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__267;
  v15 = __Block_byref_object_dispose__268;
  v6 = a3;
  v16 = v6;
  v7 = [(SGPipelineTransformer *)self transformers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SGPipelineTransformer_transform_stopAfterTransformerWithIndex___block_invoke;
  v10[3] = &unk_278EB77E0;
  v10[4] = &v11;
  v10[5] = a4;
  [v7 enumerateObjectsUsingBlock:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __65__SGPipelineTransformer_transform_stopAfterTransformerWithIndex___block_invoke(uint64_t result, void *a2, unint64_t a3, _BYTE *a4)
{
  if (*(result + 40) >= a3)
  {
    v5 = result;
    v6 = [a2 transform:*(*(*(result + 32) + 8) + 40)];
    v7 = *(*(v5 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    return MEMORY[0x2821F96F8]();
  }

  else if (a4)
  {
    *a4 = 1;
  }

  return result;
}

- (id)transform:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__267;
  v13 = __Block_byref_object_dispose__268;
  v4 = a3;
  v14 = v4;
  v5 = [(SGPipelineTransformer *)self transformers];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SGPipelineTransformer_transform___block_invoke;
  v8[3] = &unk_278EB77B8;
  v8[4] = &v9;
  [v5 enumerateObjectsUsingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __35__SGPipelineTransformer_transform___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 transform:*(*(*(a1 + 32) + 8) + 40)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (SGPipelineTransformer)initWithTransformers:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SGPipelineTransformer;
  v5 = [(SGPipelineTransformer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SGPipelineTransformer *)v5 setTransformers:v4];
  }

  return v6;
}

+ (id)withTransformers:(id)a3
{
  v3 = a3;
  v4 = [[SGPipelineTransformer alloc] initWithTransformers:v3];

  return v4;
}

@end