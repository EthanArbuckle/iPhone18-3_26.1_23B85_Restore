@interface FCNewsPersonalizationTrainingBiases
+ (id)identifiersForEventType:(id)type feedType:(id)feedType groupType:(id)groupType;
- (FCNewsPersonalizationTrainingBiases)initWithBiases:(id)biases;
- (double)biasForEventType:(id)type feedType:(id)feedType groupType:(id)groupType;
- (id)description;
@end

@implementation FCNewsPersonalizationTrainingBiases

- (FCNewsPersonalizationTrainingBiases)initWithBiases:(id)biases
{
  biasesCopy = biases;
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
    v11 = biasesCopy;
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

+ (id)identifiersForEventType:(id)type feedType:(id)feedType groupType:(id)groupType
{
  v21[7] = *MEMORY[0x1E69E9840];
  groupTypeCopy = groupType;
  feedTypeCopy = feedType;
  typeCopy = type;
  v10 = [FCNewsPersonalizationTrainingBias identifierForEventType:typeCopy feedType:feedTypeCopy groupType:groupTypeCopy];
  v11 = [FCNewsPersonalizationTrainingBias identifierForEventType:typeCopy feedType:0 groupType:groupTypeCopy, v10];
  v21[1] = v11;
  v12 = [FCNewsPersonalizationTrainingBias identifierForEventType:typeCopy feedType:feedTypeCopy groupType:0];
  v21[2] = v12;
  v13 = [FCNewsPersonalizationTrainingBias identifierForEventType:0 feedType:feedTypeCopy groupType:groupTypeCopy];
  v21[3] = v13;
  v14 = [FCNewsPersonalizationTrainingBias identifierForEventType:typeCopy feedType:0 groupType:0];

  v21[4] = v14;
  v15 = [FCNewsPersonalizationTrainingBias identifierForEventType:0 feedType:feedTypeCopy groupType:0];

  v21[5] = v15;
  v16 = [FCNewsPersonalizationTrainingBias identifierForEventType:0 feedType:0 groupType:groupTypeCopy];

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

- (double)biasForEventType:(id)type feedType:(id)feedType groupType:(id)groupType
{
  v30 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  feedTypeCopy = feedType;
  groupTypeCopy = groupType;
  biases = [(FCNewsPersonalizationTrainingBiases *)self biases];
  v12 = [biases count];

  if (v12)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [FCNewsPersonalizationTrainingBiases identifiersForEventType:typeCopy feedType:feedTypeCopy groupType:groupTypeCopy, 0];
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
          biases2 = [(FCNewsPersonalizationTrainingBiases *)self biases];
          v21 = [biases2 objectForKeyedSubscript:v19];

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
  biases = [(FCNewsPersonalizationTrainingBiases *)self biases];
  [v3 appendFormat:@"; biases: %@", biases];

  [v3 appendString:@">"];

  return v3;
}

@end