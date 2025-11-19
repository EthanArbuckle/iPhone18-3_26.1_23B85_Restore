@interface FCNewsPersonalizationTrainingBiases
+ (id)identifiersForEventType:(id)a3 feedType:(id)a4 groupType:(id)a5;
- (FCNewsPersonalizationTrainingBiases)initWithBiases:(id)a3;
- (double)biasForEventType:(id)a3 feedType:(id)a4 groupType:(id)a5;
- (id)description;
@end

@implementation FCNewsPersonalizationTrainingBiases

- (FCNewsPersonalizationTrainingBiases)initWithBiases:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FCNewsPersonalizationTrainingBiases;
  v5 = [(FCNewsPersonalizationTrainingBiases *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DF20];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__FCNewsPersonalizationTrainingBiases_initWithBiases___block_invoke;
    v10[3] = &unk_1E7C36EC8;
    v11 = v4;
    v7 = [v6 fc_dictionary:v10];
    biases = v5->_biases;
    v5->_biases = v7;
  }

  return v5;
}

void __54__FCNewsPersonalizationTrainingBiases_initWithBiases___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__FCNewsPersonalizationTrainingBiases_initWithBiases___block_invoke_2;
  v6[3] = &unk_1E7C41DD8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __54__FCNewsPersonalizationTrainingBiases_initWithBiases___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[FCNewsPersonalizationTrainingBias alloc] initWithDictionary:v3];

  if (v6)
  {
    v4 = *(a1 + 32);
    v5 = [(FCNewsPersonalizationTrainingBias *)v6 identifier];
    [v4 setObject:v6 forKeyedSubscript:v5];
  }
}

+ (id)identifiersForEventType:(id)a3 feedType:(id)a4 groupType:(id)a5
{
  v21[7] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [FCNewsPersonalizationTrainingBias identifierForEventType:v9 feedType:v8 groupType:v7];
  v11 = [FCNewsPersonalizationTrainingBias identifierForEventType:v9 feedType:0 groupType:v7, v10];
  v21[1] = v11;
  v12 = [FCNewsPersonalizationTrainingBias identifierForEventType:v9 feedType:v8 groupType:0];
  v21[2] = v12;
  v13 = [FCNewsPersonalizationTrainingBias identifierForEventType:0 feedType:v8 groupType:v7];
  v21[3] = v13;
  v14 = [FCNewsPersonalizationTrainingBias identifierForEventType:v9 feedType:0 groupType:0];

  v21[4] = v14;
  v15 = [FCNewsPersonalizationTrainingBias identifierForEventType:0 feedType:v8 groupType:0];

  v21[5] = v15;
  v16 = [FCNewsPersonalizationTrainingBias identifierForEventType:0 feedType:0 groupType:v7];

  v21[6] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:7];
  v18 = [v17 fc_arrayByTransformingWithBlock:&__block_literal_global_98];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void *__82__FCNewsPersonalizationTrainingBiases_identifiersForEventType_feedType_groupType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (double)biasForEventType:(id)a3 feedType:(id)a4 groupType:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FCNewsPersonalizationTrainingBiases *)self biases];
  v12 = [v11 count];

  if (v12)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [FCNewsPersonalizationTrainingBiases identifiersForEventType:v8 feedType:v9 groupType:v10, 0];
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    v15 = 1.0;
    if (v14)
    {
      v16 = v14;
      v17 = *v26;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = [(FCNewsPersonalizationTrainingBiases *)self biases];
          v21 = [v20 objectForKeyedSubscript:v19];

          if (v21)
          {
            [v21 bias];
            v15 = v22;

            goto LABEL_12;
          }
        }

        v16 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v15 = 1.0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsPersonalizationTrainingBiases *)self biases];
  [v3 appendFormat:@"; biases: %@", v4];

  [v3 appendString:@">"];

  return v3;
}

@end