@interface FCCGoalCompletionContent
- (FCCGoalCompletionContent)initWithActivitySummaryIndex:(int64_t)index identifier:(id)identifier completedGoalTypes:(id)types;
- (FCCGoalCompletionContent)initWithTransportData:(id)data;
- (id)transportData;
@end

@implementation FCCGoalCompletionContent

- (FCCGoalCompletionContent)initWithActivitySummaryIndex:(int64_t)index identifier:(id)identifier completedGoalTypes:(id)types
{
  identifierCopy = identifier;
  typesCopy = types;
  v17.receiver = self;
  v17.super_class = FCCGoalCompletionContent;
  v10 = [(FCCGoalCompletionContent *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_activitySummaryIndex = index;
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [typesCopy copy];
    completedGoalTypes = v11->_completedGoalTypes;
    v11->_completedGoalTypes = v14;
  }

  return v11;
}

- (FCCGoalCompletionContent)initWithTransportData:(id)data
{
  dataCopy = data;
  v5 = [[FCCGoalCompletionProtobuf alloc] initWithData:dataCopy];
  activitySummaryIndex = [(FCCGoalCompletionProtobuf *)v5 activitySummaryIndex];
  identifier = [(FCCGoalCompletionProtobuf *)v5 identifier];
  if ([(FCCGoalCompletionProtobuf *)v5 completedGoalTypesCount])
  {
    v8 = 0;
    v9 = MEMORY[0x277CBEBF8];
    do
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{-[FCCGoalCompletionProtobuf completedGoalTypesAtIndex:](v5, "completedGoalTypesAtIndex:", v8)}];
      v11 = [v9 arrayByAddingObject:v10];

      ++v8;
      v9 = v11;
    }

    while ([(FCCGoalCompletionProtobuf *)v5 completedGoalTypesCount]> v8);
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = [(FCCGoalCompletionContent *)self initWithActivitySummaryIndex:activitySummaryIndex identifier:identifier completedGoalTypes:v11];

  return v12;
}

- (id)transportData
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(FCCGoalCompletionProtobuf);
  [(FCCGoalCompletionProtobuf *)v3 setActivitySummaryIndex:self->_activitySummaryIndex];
  [(FCCGoalCompletionProtobuf *)v3 setIdentifier:self->_identifier];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_completedGoalTypes;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        -[FCCGoalCompletionProtobuf addCompletedGoalTypes:](v3, "addCompletedGoalTypes:", [*(*(&v12 + 1) + 8 * i) unsignedIntValue]);
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  data = [(FCCGoalCompletionProtobuf *)v3 data];

  v10 = *MEMORY[0x277D85DE8];

  return data;
}

@end