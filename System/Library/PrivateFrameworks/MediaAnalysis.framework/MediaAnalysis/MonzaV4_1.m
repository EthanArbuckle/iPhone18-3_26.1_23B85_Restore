@interface MonzaV4_1
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (MonzaV4_1)init;
- (MonzaV4_1)initWithConfiguration:(id)a3 error:(id *)a4;
- (MonzaV4_1)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (MonzaV4_1)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (MonzaV4_1)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromInputImage:(__CVBuffer *)a3 error:(id *)a4;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation MonzaV4_1

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"MonzaV4_1" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[MonzaV4_1 URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (MonzaV4_1)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = MonzaV4_1;
    v6 = [(MonzaV4_1 *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MonzaV4_1)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(MonzaV4_1 *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (MonzaV4_1)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(MonzaV4_1 *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (MonzaV4_1)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(MonzaV4_1 *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MonzaV4_1)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(MonzaV4_1 *)self initWithMLModel:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 URLOfModelInThisBundle];
  [a1 loadContentsOfURL:v8 configuration:v7 completionHandler:v6];
}

+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E695FE90];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__MonzaV4_1_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_1E8352300;
  v11 = v7;
  v9 = v7;
  [v8 loadContentsOfURL:a3 configuration:a4 completionHandler:v10];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695FF08];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [(MonzaV4_1 *)self predictionFromFeatures:v7 options:v8 error:a4];

  return v9;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MonzaV4_1 *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [MonzaV4_1Output alloc];
    v13 = [v11 featureValueForName:@"angle"];
    v14 = [v13 multiArrayValue];
    v15 = [(MonzaV4_1Output *)v12 initWithAngle:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MonzaV4_1 *)self model];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__MonzaV4_1_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_1E8352328;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MonzaV4_1 *)self model];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__MonzaV4_1_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_1E8352328;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromInputImage:(__CVBuffer *)a3 error:(id *)a4
{
  v6 = [[MonzaV4_1Input alloc] initWithInputImage:a3];
  v7 = [(MonzaV4_1 *)self predictionFromFeatures:v6 error:a4];

  return v7;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:v8];
  v11 = [(MonzaV4_1 *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v21 = v9;
      v22 = v8;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v21, v22}];
        v16 = [MonzaV4_1Output alloc];
        v17 = [v15 featureValueForName:@"angle"];
        v18 = [v17 multiArrayValue];
        v19 = [(MonzaV4_1Output *)v16 initWithAngle:v18];

        [v13 addObject:v19];
        ++v14;
      }

      while (v14 < [v12 count]);
      v9 = v21;
      v8 = v22;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end